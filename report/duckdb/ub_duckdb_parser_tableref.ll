inline.NumInlined: 3131
inline.NumDeleted: 1642
begin_hunk_0_@_ZN6duckdb11DelimGetRefC2ERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEE:bb.a
  %i.bx = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.by = load i64, ptr %i.q, align 8, !tbaa !14  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.by, ptr %i.a, align 8, !tbaa !37
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.o
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.u   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i.i
  store ptr %i.ca, ptr %i.bu, align 8, !tbaa !11
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.cb, ptr %i.bw, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc16, %bb.o
  %i.cc = phi ptr [ %i.ca, %.noexc16 ], [ %i.bw, %bb.o ] ; 2 uses
  switch i64 %i.by, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.cd = load i8, ptr %i.bx, align 1, !tbaa !15
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.bx, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !14
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store ptr %i.cj, ptr %i.r, align 8, !tbaa !52
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit unwind label %bb.u

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.r
  %i.ck = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.p
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef %i.ck) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.cm = add nuw i64 %.036, 1                    ; 2 uses
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 24
  %i.ct = icmp ult i64 %i.cm, %i.cs
  br i1 %i.ct, label %bb.c, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit._crit_edge, !llvm.loop !164

bb.s:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.t:                                             ; preds = %bb.l
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.n
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.s ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.cv, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.u:                                             ; preds = %bb.r, %.noexc.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.p
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.cz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn11 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.cy, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.b
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.t, %bb.b ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #25
  call void @_ZN6duckdb8TableRefD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #25
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !148    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #25
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !155

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #27
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK6duckdb13EmptyTableRef8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb13EmptyTableRef6EqualsERKNS_8TableRefE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb8TableRef6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13EmptyTableRef4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.23") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #28, !noalias !165, !inline_history !168 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 8, ptr %i.b, align 8, !tbaa !58, !noalias !165
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !7, !noalias !165
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !14, !noalias !165
  store i8 0, ptr %i.d, align 8, !tbaa !15, !noalias !165
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !84, !noalias !165
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !85, !noalias !165
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false), !noalias !165
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb13EmptyTableRefE, i64 16), ptr %i.a, align 8, !tbaa !27, !noalias !165
  store ptr %i.a, ptr %0, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb17ExpressionListRef8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !7
  store i64 2329281664934565416, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 8, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !172
  %.not96 = icmp eq ptr %i.k, %i.l
  br i1 %.not96, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %.lr.ph95

.lr.ph95:                                         ; preds = %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40
  %.pre115 = load i64, ptr %i.g, align 8, !tbaa !14
  %i.o = icmp eq i64 %.pre115, 4611686018427387903
  br i1 %i.o, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc27 unwind label %bb.v

.noexc27:                                         ; preds = %bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i, %._crit_edge
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.v ; 0 uses

bb.b:                                             ; preds = %.lr.ph95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40
  %.01394 = phi i64 [ 0, %.lr.ph95 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40 ] ; 3 uses
  %.not = icmp eq i64 %.01394, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !tbaa !14
  %i.r = and i64 %i.q, -2
  %i.s = icmp eq i64 %i.r, 4611686018427387902
  br i1 %i.s, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i29

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc30 unwind label %.loopexit.split-lp83

.noexc30:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i29: ; preds = %bb.c
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32 unwind label %.loopexit82 ; 0 uses

.loopexit82:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i29
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

.loopexit.split-lp83:                             ; preds = %bb.d
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i29, %bb.b
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.01394)
          to label %bb.e unwind label %.loopexit87 ; 5 uses

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32
  %i.v = load i64, ptr %i.g, align 8, !tbaa !14
  %i.w = icmp eq i64 %i.v, 4611686018427387903
  br i1 %i.w, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36._crit_edge, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.cont unwind label %.loopexit.split-lp88

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33: ; preds = %bb.e
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36.preheader unwind label %.loopexit87 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !173
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !174 ; 2 uses
  %.not97 = icmp eq ptr %i.z, %i.aa
  br i1 %.not97, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36._crit_edge, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %.not.i.peel = icmp eq ptr %i.ab, null
  br i1 %.not.i.peel, label %.noexc.i72, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel, !prof !35

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel: ; preds = %bb.f
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.ab)
          to label %bb.g unwind label %.loopexit.split-lp103

bb.g:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel
  %i.af = load i64, ptr %i.m, align 8, !tbaa !14  ; 2 uses
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !14
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %.loopexit106, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.g
  %i.aj = load ptr, ptr %5, align 8, !tbaa !11
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.aj, i64 noundef %i.af)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit77.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.al = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.n
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  call void @_ZdlPv(ptr noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !173
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !174
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ugt i64 %i.ar, 8
  br i1 %i.as, label %.lr.ph.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36.preheader
  %i.at = load i64, ptr %i.g, align 8, !tbaa !14
  %i.au = icmp eq i64 %i.at, 4611686018427387903
  br i1 %i.au, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36._crit_edge
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40 unwind label %.loopexit87 ; 0 uses

.loopexit87:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37
  %lpad.loopexit89 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

.loopexit.split-lp88:                             ; preds = %.invoke
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

.lr.ph.peel.next:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.093 = phi i64 [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 4 uses
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !14
  %i.ax = and i64 %i.aw, -2
  %i.ay = icmp eq i64 %i.ax, 4611686018427387902
  br i1 %i.ay, label %.loopexit99, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41

.loopexit99:                                      ; preds = %.lr.ph.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %.loopexit99
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41: ; preds = %.lr.ph.peel.next
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

.loopexit.split-lp:                               ; preds = %.loopexit99
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41
  %.pre114 = load ptr, ptr %i.u, align 8, !tbaa !174 ; 2 uses
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ba = ptrtoint ptr %.pre to i64
  %i.bb = ptrtoint ptr %.pre114 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.093, ptr %i.d, align 8, !tbaa !37
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !37
  %.not.i.i.i = icmp ult i64 %.093, %i.bd
  br i1 %.not.i.i.i, label %bb.l, label %.noexc.i68, !prof !175

.noexc.i68:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44
  %i.be = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bf, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 55, ptr %i.b, align 8, !tbaa !37
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc69 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc69:                                         ; preds = %.noexc.i68
  store ptr %i.bg, ptr %3, align 8, !tbaa !11
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !37  ; 3 uses
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bg, ptr noundef nonnull align 1 dereferenceable(55) @.str.49, i64 55, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc69
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.k unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i68
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %.noexc69
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ true, %.noexc69 ] ; 2 uses
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bm = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bf
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.bm) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i, label %bb.j, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i.i.i, label %bb.j, label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.be) #25
  br label %.body

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.pre114, i64 %.093
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !16 ; 3 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %.noexc.i72, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !35

.noexc.i72:                                       ; preds = %bb.f, %bb.l
  %i.bq = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.br, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 49, ptr %i.a, align 8, !tbaa !37
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc73 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc73:                                         ; preds = %.noexc.i72
  store ptr %i.bs, ptr %2, align 8, !tbaa !11
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !37  ; 3 uses
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.bs, ptr noundef nonnull align 1 dereferenceable(49) @.str.47, i64 49, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc73
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.p unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i72
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %.noexc73
  %.0.i.i = phi i1 [ false, %bb.m ], [ true, %.noexc73 ] ; 2 uses
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.br
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.by) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0.i.i, label %bb.o, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0.i.i, label %bb.o, label %.body

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bq) #25
  br label %.body

bb.p:                                             ; preds = %bb.m
  unreachable

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.l
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.bp)
          to label %bb.q unwind label %.loopexit102

bb.q:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !14  ; 2 uses
  %i.ce = load i64, ptr %i.g, align 8, !tbaa !14
  %i.cf = sub i64 4611686018427387903, %i.ce
  %i.cg = icmp ult i64 %i.cf, %i.cd
  br i1 %i.cg, label %.loopexit106, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit106:                                     ; preds = %bb.g, %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc47 unwind label %.loopexit.split-lp78

.noexc47:                                         ; preds = %.loopexit106
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.q
  %i.ch = load ptr, ptr %5, align 8, !tbaa !11
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ch, i64 noundef %i.cd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit77.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cj = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.n
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.cj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cl = add nuw i64 %.093, 1                    ; 2 uses
  %i.cm = load ptr, ptr %i.y, align 8, !tbaa !173
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !174
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3
  %i.cs = icmp ult i64 %i.cl, %i.cr
  br i1 %i.cs, label %.lr.ph.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36._crit_edge, !llvm.loop !176

.loopexit102:                                     ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp103:                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit77.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit107 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit77

.loopexit77.loopexit.split-lp:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit77

.loopexit.split-lp78:                             ; preds = %.loopexit106
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit77

.loopexit77:                                      ; preds = %.loopexit77.loopexit, %.loopexit77.loopexit.split-lp, %.loopexit.split-lp78
  %lpad.phi81 = phi { ptr, i32 } [ %lpad.loopexit.split-lp80, %.loopexit.split-lp78 ], [ %lpad.loopexit107, %.loopexit77.loopexit ], [ %lpad.loopexit.split-lp108, %.loopexit77.loopexit.split-lp ] ; 2 uses
  %i.ct = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.n
  br i1 %i.cu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %.loopexit77
  call void @_ZdlPv(ptr noundef %i.ct) #27
  br label %.body

.body:                                            ; preds = %.loopexit77, %.loopexit102, %.loopexit.split-lp103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.j ], [ %lpad.phi81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.o ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp103 ], [ %lpad.loopexit, %.loopexit102 ], [ %lpad.phi81, %.loopexit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37
  %i.cv = add nuw i64 %.01394, 1                  ; 2 uses
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !169
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !172
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 24
  %i.dc = icmp ult i64 %i.cv, %i.db
  br i1 %i.dc, label %bb.b, label %._crit_edge, !llvm.loop !178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.dd, ptr %6, align 8, !tbaa !7
  %i.de = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.df = load i64, ptr %i.g, align 8, !tbaa !14  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.df, ptr %i.c, align 8, !tbaa !37
  %i.dg = icmp ugt i64 %i.df, 15
  br i1 %i.dg, label %.noexc.i53, label %._crit_edge.i.i52

.noexc.i53:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.dh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc54 unwind label %bb.v   ; 2 uses

.noexc54:                                         ; preds = %.noexc.i53
  store ptr %i.dh, ptr %6, align 8, !tbaa !11
  %i.di = load i64, ptr %i.c, align 8, !tbaa !37
  store i64 %i.di, ptr %i.dd, align 8, !tbaa !15
  br label %._crit_edge.i.i52

._crit_edge.i.i52:                                ; preds = %.noexc54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.dj = phi ptr [ %i.dh, %.noexc54 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ] ; 2 uses
  switch i64 %i.df, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i52
  %i.dk = load i8, ptr %i.de, align 1, !tbaa !15
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !15
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.de, i64 %i.df, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i52
  %i.dl = load i64, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !14
end_hunk_0
