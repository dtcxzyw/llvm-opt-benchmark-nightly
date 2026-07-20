inline.NumInlined: 2116
inline.NumDeleted: 1345
begin_hunk_0_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !129
  br label %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit

_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit:     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !129
  store ptr %i.v, ptr %i.s, align 8, !tbaa !117
  store i64 0, ptr %i.ad, align 8, !tbaa !129
  store i8 0, ptr %i.v, align 8, !tbaa !111
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !511
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !128, !alias.scope !506, !noalias !509
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !117, !alias.scope !509, !noalias !506 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !129, !alias.scope !509, !noalias !506 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !511
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !117, !alias.scope !506, !noalias !509
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !111, !alias.scope !509, !noalias !506
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !111, !alias.scope !506, !noalias !509
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !129, !alias.scope !509, !noalias !506
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !129, !alias.scope !506, !noalias !509
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !117, !alias.scope !509, !noalias !506
  store i64 0, ptr %i.ar, align 8, !tbaa !129, !alias.scope !509, !noalias !506
  store i8 0, ptr %i.aj, align 8, !tbaa !111, !alias.scope !509, !noalias !506
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !512

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19, i64 32, i1 false), !alias.scope !518
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !128, !alias.scope !513, !noalias !516
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !117, !alias.scope !516, !noalias !513 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !129, !alias.scope !516, !noalias !513 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !518
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !117, !alias.scope !513, !noalias !516
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !111, !alias.scope !516, !noalias !513
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !111, !alias.scope !513, !noalias !516
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !129, !alias.scope !516, !noalias !513
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !129, !alias.scope !513, !noalias !516
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !117, !alias.scope !516, !noalias !513
  store i64 0, ptr %i.bi, align 8, !tbaa !129, !alias.scope !516, !noalias !513
  store i8 0, ptr %i.ba, align 8, !tbaa !111, !alias.scope !516, !noalias !513
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !512

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #20
  br label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !399
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !402
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !505
  ret void
}

declare void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_12MetaPipelineELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.148", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !95
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoint ptr %1 to i64                     ; 2 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !375
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !374  ; 16 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 4 uses
  %i.q = sub i64 %i.a, %i.b
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.r, 56
  %diff.check141 = icmp ult i64 %i.c, 32
  %or.cond = or i1 %min.iters.check143, %diff.check141
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %bb.d
  %n.vec146 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.u = shl i64 %n.vec146, 3                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.p, i64 %i.u
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %i.x = shl i64 %index148, 3                     ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.p, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load151 = load <2 x i64>, ptr %next.gep150, align 8
  %wide.load152 = load <2 x i64>, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %wide.load151, ptr %next.gep149, align 8
  store <2 x i64> %wide.load152, ptr %i.z, align 8
  %index.next153 = add nuw i64 %index148, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.aa, label %middle.block154, label %vector.body147, !llvm.loop !519

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %i.t, %n.vec146
  br i1 %cmp.n155, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block154
  %.013.i.i.i.i.i.ph = phi ptr [ %i.h, %bb.d ], [ %i.v, %middle.block154 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.w, %middle.block154 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8
  store i64 %i.ab, ptr %.013.i.i.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !520

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block154
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !374
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.c
  store ptr %i.af, ptr %i.g, align 8, !tbaa !374
  %i.ag = ptrtoint ptr %i.p to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !122

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ak = sub nsw i64 0, %i.ai
  %i.al = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %1, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.am = icmp eq i64 %i.ah, 8
  br i1 %i.am, label %bb.g, label %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ao = load i64, ptr %1, align 8
  store i64 %i.ao, ptr %i.an, align 8
  br label %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ap = icmp sgt i64 %i.c, 8
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !122

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit
  %i.aq = icmp eq i64 %i.c, 8
  br i1 %i.aq, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %2, align 8
  store i64 %i.ar, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.m ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.as, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.at = add i64 %i.a, %i.l
  %i.au = add i64 %i.j, %i.b
  %i.av = sub i64 %i.at, %i.au
  %i.aw = add i64 %i.av, -8                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 72
  %i.az = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond214 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond214, label %.lr.ph.i.i.i.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.h, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bd ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.as, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep119, align 8
  %wide.load120 = load <2 x i64>, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load120, ptr %i.bf, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !521

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader223

.lr.ph.i.i.i.i.preheader223:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader223, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %i.bh = load i64, ptr %.sroa.04.08.i.i.i.i, align 8
  store i64 %i.bh, ptr %.09.i.i.i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bi, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !522

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !374
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bk = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %i.bm = sub nuw nsw i64 %i.d, %i.n
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm ; 6 uses
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !374
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit
  %i.bo = sub i64 %i.j, %i.l
  %i.bp = add i64 %i.bo, -8                       ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.bp, 136
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %i.bs = add i64 %i.c, %i.bl
  %i.bt = sub i64 %i.j, %i.bs
  %diff.check123 = icmp ugt i64 %i.bt, -32
  br i1 %diff.check123, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec128 = and i64 %i.br, 4611686018427387900  ; 3 uses
  %i.bu = shl i64 %n.vec128, 3                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bu
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next135, %vector.body129 ] ; 2 uses
  %i.bx = shl i64 %index130, 3                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.bn, i64 %i.bx ; 2 uses
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load133 = load <2 x i64>, ptr %next.gep132, align 8
  %wide.load134 = load <2 x i64>, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %next.gep131, i64 16
  store <2 x i64> %wide.load133, ptr %next.gep131, align 8
  store <2 x i64> %wide.load134, ptr %i.bz, align 8
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.ca, label %middle.block136, label %vector.body129, !llvm.loop !523

middle.block136:                                  ; preds = %vector.body129
  %cmp.n137 = icmp eq i64 %i.br, %n.vec128
  br i1 %cmp.n137, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52.preheader222

.lr.ph.i.i.i.i.i52.preheader222:                  ; preds = %vector.memcheck122, %.lr.ph.i.i.i.i.i52.preheader, %middle.block136
  %.013.i.i.i.i.i53.ph = phi ptr [ %i.bn, %vector.memcheck122 ], [ %i.bn, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bv, %middle.block136 ]
  %.sroa.08.012.i.i.i.i.i54.ph = phi ptr [ %1, %vector.memcheck122 ], [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bw, %middle.block136 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader222, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i52 ], [ %.013.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.08.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %i.cb = load i64, ptr %.sroa.08.012.i.i.i.i.i54, align 8
  store i64 %i.cb, ptr %.013.i.i.i.i.i53, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 8
  %.not.i.i.i.i.i55 = icmp eq ptr %i.cc, %i.h
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !524

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52, %middle.block136
  %.pre99 = load ptr, ptr %i.g, align 8, !tbaa !374
  br label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit
  %i.ce = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit ], [ %i.bn, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.m
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !374
  %i.cg = icmp sgt i64 %i.m, 8
  br i1 %i.cg, label %bb.k, label %bb.l, !prof !122

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57
  %i.ch = icmp eq i64 %i.m, 8
  br i1 %i.ch, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ci = load i64, ptr %2, align 8
  store i64 %i.ci, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %0, align 8, !tbaa !126   ; 7 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cl = sub i64 %i.j, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3                 ; 4 uses
  %i.cn = sub nsw i64 1152921504606846975, %i.cm
  %i.co = icmp ult i64 %i.cn, %i.d
  br i1 %i.co, label %bb.o, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.d)
  %i.cp = add nsw i64 %.sroa.speculated.i, %i.cm  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cm
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #22
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cv = phi ptr [ %i.cu, %bb.p ], [ null, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.cj, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.cx = sub i64 %5, %i.ck
  %i.cy = add i64 %i.cx, -8                       ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.cy, 72
  %i.db = sub i64 %i.ck, %i.cw
  %diff.check159 = icmp ugt i64 %i.db, -32
  %or.cond215 = or i1 %min.iters.check161, %diff.check159
  br i1 %or.cond215, label %.lr.ph.i.i.i.i.i60.preheader220, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %n.vec164 = and i64 %i.da, 4611686018427387900  ; 3 uses
  %i.dc = shl i64 %n.vec164, 3                    ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cv, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.cj, i64 %i.dc
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.df = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cv, i64 %i.df ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cj, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8
  %wide.load170 = load <2 x i64>, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8
  store <2 x i64> %wide.load170, ptr %i.dh, align 8
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.di, label %middle.block172, label %vector.body165, !llvm.loop !525

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.da, %n.vec164
  br i1 %cmp.n173, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader220

.lr.ph.i.i.i.i.i60.preheader220:                  ; preds = %.lr.ph.i.i.i.i.i60.preheader, %middle.block172
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.dd, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.de, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader220, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %i.dj = load i64, ptr %.sroa.08.012.i.i.i.i.i62, align 8
  store i64 %i.dj, ptr %.013.i.i.i.i.i61, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.dk, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !526

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %middle.block172, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.cv, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit ], [ %i.dd, %middle.block172 ], [ %i.dl, %.lr.ph.i.i.i.i.i60 ] ; 4 uses
  %i.dm = sub i64 %i.a, %i.b
  %i.dn = add i64 %i.dm, -8                       ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.dn, 72
  %.0.lcssa.i.i.i.i.i64177 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.dq = sub i64 %i.b, %.0.lcssa.i.i.i.i.i64177
  %diff.check178 = icmp ugt i64 %i.dq, -32
  %or.cond216 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond216, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec183 = and i64 %i.dp, 4611686018427387900  ; 3 uses
  %i.dr = shl i64 %n.vec183, 3                    ; 2 uses
  %i.ds = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dr ; 2 uses
  %i.dt = getelementptr i8, ptr %2, i64 %i.dr
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.du = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.du ; 2 uses
  %next.gep187 = getelementptr i8, ptr %2, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8
  %wide.load189 = load <2 x i64>, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8
  store <2 x i64> %wide.load189, ptr %i.dw, align 8
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.dx, label %middle.block191, label %vector.body184, !llvm.loop !527

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.dp, %n.vec183
  br i1 %cmp.n192, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block191
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ds, %middle.block191 ]
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.dt, %middle.block191 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.dy = load i64, ptr %.sroa.04.08.i.i.i.i68, align 8
  store i64 %i.dy, ptr %.09.i.i.i.i67, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.dz, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !528

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66, %middle.block191
  %.lcssa117 = phi ptr [ %i.ds, %middle.block191 ], [ %i.ea, %.lr.ph.i.i.i.i66 ] ; 5 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71
  %.lcssa117196 = ptrtoaddr ptr %.lcssa117 to i64
  %i.eb = sub i64 %i.j, %4
  %i.ec = add i64 %i.eb, -8                       ; 2 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.ec, 72
  %i.ef = sub i64 %4, %.lcssa117196
  %diff.check197 = icmp ugt i64 %i.ef, -32
  %or.cond217 = select i1 %min.iters.check199, i1 true, i1 %diff.check197
  br i1 %or.cond217, label %.lr.ph.i.i.i.i.i73.preheader218, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec202 = and i64 %i.ee, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec202, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %.lcssa117, i64 %i.eg ; 2 uses
  %i.ei = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next209, %vector.body203 ] ; 2 uses
  %i.ej = shl i64 %index204, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.lcssa117, i64 %i.ej ; 2 uses
  %next.gep206 = getelementptr i8, ptr %1, i64 %i.ej ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8
  %wide.load208 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = getelementptr i8, ptr %next.gep205, i64 16
  store <2 x i64> %wide.load207, ptr %next.gep205, align 8
  store <2 x i64> %wide.load208, ptr %i.el, align 8
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.em, label %middle.block210, label %vector.body203, !llvm.loop !529

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.ee, %n.vec202
  br i1 %cmp.n211, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader218

.lr.ph.i.i.i.i.i73.preheader218:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block210
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa117, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.eh, %middle.block210 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ei, %middle.block210 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader218, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %i.en = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8
  store i64 %i.en, ptr %.013.i.i.i.i.i74, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.eo, %i.h
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !530

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block210, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa117, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71 ], [ %i.eh, %middle.block210 ], [ %i.ep, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.cj, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78
  tail call void @_ZdlPv(ptr noundef nonnull %i.cj) #20
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, %bb.q
  store ptr %i.cv, ptr %0, align 8, !tbaa !126
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.g, align 8, !tbaa !374
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cs
  store ptr %i.eq, ptr %i.e, align 8, !tbaa !375
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %4 = alloca %"class.duckdb::vector.757", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::unique_ptr.263", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !531
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17RecursiveCTEStateE, i64 16), ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.h

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  invoke void @_ZN6duckdb20ColumnDataCollectionC1ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_23ColumnDataAllocatorTypeENS_28ColumnDataCollectionLifetimeE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #19
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.n, ptr %i.m, align 8, !tbaa !316
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 1, ptr %i.o, align 8, !tbaa !317
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !318
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, i8 0, i64 17, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.s, i8 0, i64 26, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.u) #19
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.w, i8 0, i64 57, i1 false)
  invoke void @_ZN6duckdb19TupleDataChunkStateC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.x)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @_ZN6duckdb17TupleDataPinStateD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(560) %i.z) #19
  br label %.body27

bb.g:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 976
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !147
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !146
  %.not = icmp eq ptr %i.ad, %i.ae
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.r unwind label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %bb.x

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit
end_hunk_0
