inline.NumInlined: 2962
inline.NumDeleted: 1077
begin_hunk_0_@_ZN6duckdbL11AddCubeSetsERKSt3setImSt4lessImESaImEERNS_6vectorIS4_Lb1ESaIS4_EEESA_m:bb.a
bb.j:                                             ; preds = %bb.i
  store ptr %.0.i.i7.i.i.i.i, ptr %i.al, align 8, !tbaa !354
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !312
  store i64 %i.av, ptr %i.am, align 8, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !354
  br label %_ZNSt3setImSt4lessImESaImEEC2ERKS3_.exit

_ZNSt3setImSt4lessImESaImEEC2ERKS3_.exit:         ; preds = %bb.g, %bb.j
  %i.aw = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.015)
          to label %bb.k unwind label %bb.n       ; 3 uses

bb.k:                                             ; preds = %_ZNSt3setImSt4lessImESaImEEC2ERKS3_.exit
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !312
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !312
  %i.ba = add i64 %i.az, %i.ax
  invoke fastcc void @_ZN6duckdbL19CheckGroupingSetMaxEm(i64 noundef %i.ba)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !306
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  invoke void @_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %i.bc, ptr nonnull %i.bd)
          to label %_ZN6duckdbL16MergeGroupingSetERSt3setImSt4lessImESaImEES5_.exit unwind label %bb.n

_ZN6duckdbL16MergeGroupingSetERSt3setImSt4lessImESaImEES5_.exit: ; preds = %.noexc
  %i.be = add nuw i64 %.015, 1                    ; 3 uses
  invoke fastcc void @_ZN6duckdbL11AddCubeSetsERKSt3setImSt4lessImESaImEERNS_6vectorIS4_Lb1ESaIS4_EEESA_m(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.be)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZN6duckdbL16MergeGroupingSetERSt3setImSt4lessImESaImEES5_.exit
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !349
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.bf)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #23
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !302
  %i.bj = load ptr, ptr %1, align 8, !tbaa !357
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 48
  %i.bo = icmp ult i64 %i.be, %i.bn
  br i1 %i.bo, label %bb.g, label %._crit_edge, !llvm.loop !368

bb.n:                                             ; preds = %.noexc, %bb.k, %_ZN6duckdbL16MergeGroupingSetERSt3setImSt4lessImESaImEES5_.exit, %_ZNSt3setImSt4lessImESaImEEC2ERKS3_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.bp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRN17duckdb_libpgquery15GroupingSetKindEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.275", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !369
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIN17duckdb_libpgquery15GroupingSetKindEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !258, !noalias !369 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261, !noalias !369 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #21
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !262

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !258, !noalias !369
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJN17duckdb_libpgquery15GroupingSetKindEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #21
  br label %_ZN6duckdb9Exception16ConstructMessageIJN17duckdb_libpgquery15GroupingSetKindEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !369
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJN17duckdb_libpgquery15GroupingSetKindEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !369
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJN17duckdb_libpgquery15GroupingSetKindEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJN17duckdb_libpgquery15GroupingSetKindEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb11Transformer16TransformGroupByENS_12optional_ptrIN17duckdb_libpgquery6PGListELb1EEERNS_10SelectNodeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(240) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.226", align 8 ; 3 uses
  %4 = alloca %"struct.duckdb::GroupingExpressionMap", align 8 ; 14 uses
  %5 = alloca %"class.duckdb::optional_ptr.150", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::vector.185", align 16 ; 17 uses
  %7 = alloca %"class.std::set", align 8          ; 10 uses
  store ptr %1, ptr %3, align 8
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !276
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.d, align 8, !tbaa !275
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit unwind label %bb.c

_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !372
  %.035.in280 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.035281 = load ptr, ptr %.035.in280, align 8, !tbaa !7 ; 2 uses
  %.not282 = icmp eq ptr %.035281, null
  br i1 %.not282, label %._crit_edge285, label %.lr.ph284

.lr.ph284:                                        ; preds = %_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 15 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.d

._crit_edge285:                                   ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit127, %_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp eq i64 %i.x, 8
  br i1 %i.y, label %bb.aq, label %bb.ay

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.d:                                             ; preds = %.lr.ph284, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit127
  %.035283 = phi ptr [ %.035281, %.lr.ph284 ], [ %.035, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit127 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.aa = load ptr, ptr %.035283, align 8, !tbaa !10
  store ptr %i.aa, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %5, align 8, !tbaa !345
  invoke void @_ZN6duckdb11Transformer20TransformGroupByNodeERN17duckdb_libpgquery6PGNodeERNS_21GroupingExpressionMapERNS_10SelectNodeERNS_6vectorISt3setImSt4lessImESaImEELb1ESaISD_EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(240) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !302
  %i.ad = load ptr, ptr %6, align 16, !tbaa !357
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 48
  invoke fastcc void @_ZN6duckdbL19CheckGroupingSetMaxEm(i64 noundef %i.ah)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !374 ; 4 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !374 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %bb.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.g
  %i.al = load <2 x ptr>, ptr %6, align 16, !tbaa !374
  store <2 x ptr> %i.al, ptr %i.j, align 8, !tbaa !374
  %i.am = load ptr, ptr %i.r, align 16, !tbaa !305
  store ptr %i.am, ptr %i.q, align 8, !tbaa !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit, label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit.sink.split

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit117

bb.i:                                             ; preds = %bb.g
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 48                ; 2 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !302
  %i.at = load ptr, ptr %6, align 16, !tbaa !357
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = sdiv exact i64 %i.aw, 48
  %i.ay = mul i64 %i.ax, %i.ar                    ; 4 uses
  invoke fastcc void @_ZN6duckdbL19CheckGroupingSetMaxEm(i64 noundef %i.ay)
          to label %bb.j unwind label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115.thread.loopexit

bb.j:                                             ; preds = %bb.i
  %i.az = icmp ugt i64 %i.ay, 192153584101141162
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.447) #20
          to label %.noexc unwind label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115.thread.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not198 = icmp eq i64 %i.ay, 0
  br i1 %.not198, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.l
  %i.ba = mul i64 %i.aw, %i.ar
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #22
          to label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit.i unwind label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115.thread.loopexit ; 2 uses

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %i.ay
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit: ; preds = %bb.l, %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %.sroa.0.3 = phi ptr [ %i.bb, %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ null, %bb.l ] ; 4 uses
  %.sroa.23.2 = phi ptr [ %i.bc, %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ null, %bb.l ] ; 2 uses
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !302 ; 3 uses
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !357 ; 3 uses
  %.not286 = icmp eq ptr %i.bd, %i.be
  br i1 %.not286, label %._crit_edge274, label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader

_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !302
  %.pre308 = load ptr, ptr %6, align 16, !tbaa !357
  br label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit

._crit_edge274:                                   ; preds = %._crit_edge, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.3, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit ], [ %.sroa.0.1.lcssa, %._crit_edge ]
  %.sroa.14.0.lcssa = phi ptr [ %.sroa.0.3, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit ], [ %.sroa.14.1.lcssa, %._crit_edge ]
  %.sroa.23.0.lcssa = phi ptr [ %.sroa.23.2, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit ], [ %.sroa.23.1.lcssa, %._crit_edge ]
  %.lcssa243 = phi ptr [ %i.bd, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit ], [ %i.bs, %._crit_edge ] ; 2 uses
  %.lcssa237 = phi ptr [ %i.be, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE7reserveEm.exit ], [ %i.br, %._crit_edge ] ; 4 uses
  store ptr %.sroa.0.0.lcssa, ptr %i.j, align 8, !tbaa !357
  store ptr %.sroa.14.0.lcssa, ptr %i.k, align 8, !tbaa !302
  store ptr %.sroa.23.0.lcssa, ptr %i.q, align 8, !tbaa !305
  %.not4.i.i.i.i.i.i55 = icmp eq ptr %.lcssa237, %.lcssa243
  br i1 %.not4.i.i.i.i.i.i55, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i56:                             ; preds = %._crit_edge274, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i.i.i58
  %.05.i.i.i.i.i.i57 = phi ptr [ %i.bj, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i.i.i58 ], [ %.lcssa237, %._crit_edge274 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i57, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !349
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i.i57, ptr noundef %i.bg)
          to label %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i.i.i58 unwind label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i56
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #23
  unreachable

_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i.i.i58: ; preds = %.lr.ph.i.i.i.i.i.i56
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i57, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq ptr %i.bj, %.lcssa243
  br i1 %.not.i.i.i.i.i.i59, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i56, !llvm.loop !361

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i60: ; preds = %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i.i.i58, %._crit_edge274
  %.not.i.i1.i.i.i.i61 = icmp eq ptr %.lcssa237, null
  br i1 %.not.i.i1.i.i.i.i61, label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit, label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit.sink.split

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115.thread.loopexit: ; preds = %bb.i, %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i
  %lpad.loopexit204 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit117

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115.thread.loopexit.split-lp: ; preds = %bb.k
  %lpad.loopexit.split-lp205 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit117

_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit: ; preds = %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader, %._crit_edge
  %i.bk = phi ptr [ %i.br, %._crit_edge ], [ %i.be, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader ] ; 2 uses
  %i.bl = phi ptr [ %i.bs, %._crit_edge ], [ %i.bd, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader ]
  %i.bm = phi ptr [ %i.bt, %._crit_edge ], [ %.pre308, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader ] ; 4 uses
  %i.bn = phi ptr [ %i.bu, %._crit_edge ], [ %.pre, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader ]
  %.045273 = phi i64 [ %i.bv, %._crit_edge ], [ 0, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader ] ; 2 uses
  %.sroa.23.0272 = phi ptr [ %.sroa.23.1.lcssa, %._crit_edge ], [ %.sroa.23.2, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader ] ; 2 uses
  %.sroa.14.0271 = phi ptr [ %.sroa.14.1.lcssa, %._crit_edge ], [ %.sroa.0.3, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader ] ; 2 uses
  %.sroa.0.0270 = phi ptr [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.3, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit.preheader ] ; 2 uses
  %.not287 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not287, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.bk, i64 %.045273 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  br label %bb.n

._crit_edge.loopexit:                             ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit
  %.pre310 = load ptr, ptr %i.k, align 8, !tbaa !302
  %.pre311 = load ptr, ptr %i.j, align 8, !tbaa !357
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit
  %i.br = phi ptr [ %i.bk, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit ], [ %.pre311, %._crit_edge.loopexit ] ; 3 uses
  %i.bs = phi ptr [ %i.bl, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit ], [ %.pre310, %._crit_edge.loopexit ] ; 3 uses
  %i.bt = phi ptr [ %i.bm, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit ], [ %i.go, %._crit_edge.loopexit ]
  %i.bu = phi ptr [ %i.bm, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit ], [ %i.gn, %._crit_edge.loopexit ]
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0270, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit ], [ %.sroa.0.4, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.14.0271, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit ], [ %.sroa.14.4, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.0272, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit ], [ %.sroa.23.3, %._crit_edge.loopexit ] ; 2 uses
  %i.bv = add nuw i64 %.045273, 1                 ; 2 uses
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 48
  %i.ca = icmp ult i64 %i.bv, %i.bz
  br i1 %i.ca, label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEixEm.exit, label %._crit_edge274, !llvm.loop !375

bb.n:                                             ; preds = %.lr.ph, %_ZNSt3setImSt4lessImESaImEED2Ev.exit
  %i.cb = phi ptr [ %i.bm, %.lr.ph ], [ %i.go, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ]
  %.044267 = phi i64 [ 0, %.lr.ph ], [ %i.gm, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ] ; 2 uses
  %.sroa.23.1266 = phi ptr [ %.sroa.23.0272, %.lr.ph ], [ %.sroa.23.3, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ] ; 7 uses
  %.sroa.14.1265 = phi ptr [ %.sroa.14.0271, %.lr.ph ], [ %.sroa.14.4, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ] ; 12 uses
  %.sroa.0.1264 = phi ptr [ %.sroa.0.0270, %.lr.ph ], [ %.sroa.0.4, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ] ; 10 uses
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.cb, i64 %.044267 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 0, ptr %i.l, align 8, !tbaa !348
  store ptr null, ptr %i.m, align 8, !tbaa !349
  store ptr %i.l, ptr %i.n, align 8, !tbaa !306
  store ptr %i.l, ptr %i.o, align 8, !tbaa !311
  store i64 0, ptr %i.p, align 8, !tbaa !312
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !306 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cd, %i.bq
  br i1 %.not7.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i
  %i.ce = phi i64 [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i ], [ 0, %bb.n ] ; 2 uses
  %.sroa.04.08.i.i = phi ptr [ %i.dc, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i ], [ %i.cd, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 32
  %.not.i4.i = icmp eq i64 %i.ce, 0
  %.pre.i.i.i.pre.pre.pre.i = load i64, ptr %i.cf, align 8, !tbaa !24 ; 5 uses
  br i1 %.not.i4.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !354 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !24
  %i.cj = icmp ult i64 %i.ci, %.pre.i.i.i.pre.pre.pre.i
  br i1 %i.cj, label %select.unfold.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.02022.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !354 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %bb.p, %.lr.ph.i.i.i74
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i74 ], [ %.02022.i.i.i, %bb.p ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24 ; 2 uses
  %i.cm = icmp ult i64 %.pre.i.i.i.pre.pre.pre.i, %i.cl ; 2 uses
  %.in.v.i.i.i = select i1 %i.cm, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !354 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i5.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i74, !llvm.loop !365

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i74
  br i1 %i.cm, label %._crit_edge.thread.i.i.i, label %bb.r

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.p
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.l, %bb.p ] ; 4 uses
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !306
  %i.co = icmp eq ptr %.019.lcssa29.i.i.i, %i.cn
  br i1 %i.co, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #24
  %.phi.trans.insert80.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %.pre81.i.i = load i64, ptr %.phi.trans.insert80.i.i, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i
  %i.cq = phi i64 [ %.pre81.i.i, %bb.q ], [ %i.cl, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.q ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.cr = icmp ult i64 %i.cq, %.pre.i.i.i.pre.pre.pre.i
  br i1 %i.cr, label %select.unfold.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i

select.unfold.i:                                  ; preds = %bb.r, %._crit_edge.thread.i.i.i, %bb.o
  %.sroa.12.2.i.ph.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.cg, %bb.o ], [ %.019.lcssa28.i.i.i, %bb.r ] ; 3 uses
  %i.cs = icmp eq ptr %.sroa.12.2.i.ph.i, %i.l
  br i1 %i.cs, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %select.unfold.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph.i, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !24
  %i.cv = icmp ult i64 %.pre.i.i.i.pre.pre.pre.i, %i.cu
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.s, %select.unfold.i
  %i.cw = phi i1 [ %i.cv, %bb.s ], [ true, %select.unfold.i ]
  %i.cx = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc75:                                         ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store i64 %.pre.i.i.i.pre.pre.pre.i, ptr %i.cy, align 8, !tbaa !24
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cw, ptr noundef nonnull %i.cx, ptr noundef nonnull %.sroa.12.2.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #19
  %i.cz = load i64, ptr %i.p, align 8, !tbaa !312
  %i.da = add i64 %i.cz, 1                        ; 2 uses
  store i64 %i.da, ptr %i.p, align 8, !tbaa !312
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i: ; preds = %.noexc75, %bb.r
  %i.db = phi i64 [ %i.ce, %bb.r ], [ %i.da, %.noexc75 ] ; 2 uses
  %i.dc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.08.i.i) #24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dc, %i.bq
  br i1 %.not.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !376

_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i, %bb.n
  %.pre.i78 = phi i64 [ 0, %bb.n ], [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !306 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %.not7.i.i76 = icmp eq ptr %i.de, %i.df
  br i1 %.not7.i.i76, label %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit102, label %.lr.ph.i.i77

.lr.ph.i.i77:                                     ; preds = %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i92
  %i.dg = phi i64 [ %i.ed, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i92 ], [ %.pre.i78, %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit ] ; 2 uses
  %.sroa.04.08.i.i79 = phi ptr [ %i.ee, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i92 ], [ %i.de, %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i79, i64 32
  %.not.i4.i80 = icmp eq i64 %i.dg, 0
  %.pre.i.i.i.pre.pre.pre.i81 = load i64, ptr %i.dh, align 8, !tbaa !24 ; 5 uses
  br i1 %.not.i4.i80, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i77
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !354 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !24
  %i.dl = icmp ult i64 %i.dk, %.pre.i.i.i.pre.pre.pre.i81
  br i1 %i.dl, label %select.unfold.i94, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i77
  %.02022.i.i.i82 = load ptr, ptr %i.m, align 8, !tbaa !354 ; 2 uses
  %.not23.i.i.i83 = icmp eq ptr %.02022.i.i.i82, null
  br i1 %.not23.i.i.i83, label %._crit_edge.thread.i.i.i97, label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %bb.u, %.lr.ph.i.i.i84
  %.02024.i.i.i85 = phi ptr [ %.020.i.i.i88, %.lr.ph.i.i.i84 ], [ %.02022.i.i.i82, %bb.u ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i85, i64 32
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !24 ; 2 uses
  %i.do = icmp ult i64 %.pre.i.i.i.pre.pre.pre.i81, %i.dn ; 2 uses
  %.in.v.i.i.i86 = select i1 %i.do, i64 16, i64 24
  %.in.i.i.i87 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i85, i64 %.in.v.i.i.i86
  %.020.i.i.i88 = load ptr, ptr %.in.i.i.i87, align 8, !tbaa !354 ; 2 uses
  %.not.i.i5.i89 = icmp eq ptr %.020.i.i.i88, null
  br i1 %.not.i.i5.i89, label %._crit_edge.i.i.i90, label %.lr.ph.i.i.i84, !llvm.loop !365

._crit_edge.i.i.i90:                              ; preds = %.lr.ph.i.i.i84
  br i1 %i.do, label %._crit_edge.thread.i.i.i97, label %bb.w

._crit_edge.thread.i.i.i97:                       ; preds = %._crit_edge.i.i.i90, %bb.u
  %.019.lcssa29.i.i.i98 = phi ptr [ %.02024.i.i.i85, %._crit_edge.i.i.i90 ], [ %i.l, %bb.u ] ; 4 uses
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !306
  %i.dq = icmp eq ptr %.019.lcssa29.i.i.i98, %i.dp
  br i1 %i.dq, label %select.unfold.i94, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i.i.i97
  %i.dr = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i98) #24
  %.phi.trans.insert80.i.i99 = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %.pre81.i.i100 = load i64, ptr %.phi.trans.insert80.i.i99, align 8, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i90
  %i.ds = phi i64 [ %.pre81.i.i100, %bb.v ], [ %i.dn, %._crit_edge.i.i.i90 ]
  %.019.lcssa28.i.i.i91 = phi ptr [ %.019.lcssa29.i.i.i98, %bb.v ], [ %.02024.i.i.i85, %._crit_edge.i.i.i90 ]
  %i.dt = icmp ult i64 %i.ds, %.pre.i.i.i.pre.pre.pre.i81
  br i1 %i.dt, label %select.unfold.i94, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i92

select.unfold.i94:                                ; preds = %bb.w, %._crit_edge.thread.i.i.i97, %bb.t
  %.sroa.12.2.i.ph.i95 = phi ptr [ %.019.lcssa29.i.i.i98, %._crit_edge.thread.i.i.i97 ], [ %i.di, %bb.t ], [ %.019.lcssa28.i.i.i91, %bb.w ] ; 3 uses
  %i.du = icmp eq ptr %.sroa.12.2.i.ph.i95, %i.l
  br i1 %i.du, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i96, label %bb.x

bb.x:                                             ; preds = %select.unfold.i94
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph.i95, i64 32
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !24
  %i.dx = icmp ult i64 %.pre.i.i.i.pre.pre.pre.i81, %i.dw
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i96

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i96: ; preds = %bb.x, %select.unfold.i94
  %i.dy = phi i1 [ %i.dx, %bb.x ], [ true, %select.unfold.i94 ]
  %i.dz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %.noexc101 unwind label %.loopexit ; 2 uses

.noexc101:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i96
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %.pre.i.i.i.pre.pre.pre.i81, ptr %i.ea, align 8, !tbaa !24
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dy, ptr noundef nonnull %i.dz, ptr noundef nonnull %.sroa.12.2.i.ph.i95, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #19
  %i.eb = load i64, ptr %i.p, align 8, !tbaa !312
  %i.ec = add i64 %i.eb, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.p, align 8, !tbaa !312
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i92

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i92: ; preds = %.noexc101, %bb.w
  %i.ed = phi i64 [ %i.dg, %bb.w ], [ %i.ec, %.noexc101 ] ; 2 uses
  %i.ee = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.08.i.i79) #24 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.ee, %i.df
  br i1 %.not.i.i93, label %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit102, label %.lr.ph.i.i77, !llvm.loop !376

_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit102: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i92, %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit
  %i.ef = phi i64 [ %.pre.i78, %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit ], [ %i.ed, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_insert_unique_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImESt23_Rb_tree_const_iteratorImEOT_RT0_.exit.i.i92 ] ; 2 uses
  %.not.i.i103 = icmp eq ptr %.sroa.14.1265, %.sroa.23.1266
  br i1 %.not.i.i103, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit102
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.14.1265, i64 8 ; 4 uses
  %i.eh = load ptr, ptr %i.m, align 8, !tbaa !349 ; 3 uses
  %.not.i.i.i.i.i.i104 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i104, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = load i32, ptr %i.l, align 8, !tbaa !348
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.14.1265, i64 16
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !349
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.14.1265, i64 24
  %i.el = load <2 x ptr>, ptr %i.n, align 8, !tbaa !354
  store <2 x ptr> %i.el, ptr %i.ek, align 8, !tbaa !354
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.eg, ptr %i.em, align 8, !tbaa !359
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.14.1265, i64 40
  store i64 %i.ef, ptr %i.en, align 8, !tbaa !312
  store ptr null, ptr %i.m, align 8, !tbaa !349
  store ptr %i.l, ptr %i.n, align 8, !tbaa !306
  store ptr %i.l, ptr %i.o, align 8, !tbaa !311
  store i64 0, ptr %i.p, align 8, !tbaa !312
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.14.1265, i64 16
  store ptr null, ptr %i.eo, align 8, !tbaa !349
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.14.1265, i64 24
  store ptr %i.eg, ptr %i.ep, align 8, !tbaa !306
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.14.1265, i64 32
  store ptr %i.eg, ptr %i.eq, align 8, !tbaa !311
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.14.1265, i64 40
  store i64 0, ptr %i.er, align 8, !tbaa !312
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i

_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i:      ; preds = %bb.aa, %bb.z
  %.sink.i.i.i.i.i.i105 = phi i32 [ 0, %bb.aa ], [ %i.ei, %bb.z ]
  store i32 %.sink.i.i.i.i.i.i105, ptr %i.eg, align 8, !tbaa !348
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit

bb.ab:                                            ; preds = %_ZNSt3setImSt4lessImESaImEE6insertISt23_Rb_tree_const_iteratorImEEEvT_S7_.exit102
  %i.es = ptrtoint ptr %.sroa.23.1266 to i64
  %i.et = ptrtoint ptr %.sroa.0.1264 to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775776
  br i1 %i.ev, label %bb.ac, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #20
          to label %.noexc173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc173:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ab
  %i.ew = sdiv exact i64 %i.eu, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i, %i.ew ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ex, i64 192153584101141162)
  %i.fa = select i1 %i.ey, i64 192153584101141162, i64 %i.ez ; 3 uses
  %.not.i.i158 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i158, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i159, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.fb = mul nuw nsw i64 %i.fa, 48
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #22
          to label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i159 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i159: ; preds = %bb.ad, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.fd = phi ptr [ null, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.fc, %bb.ad ] ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.eu ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 4 uses
  %i.fg = load ptr, ptr %i.m, align 8, !tbaa !349 ; 3 uses
  %.not.i.i.i.i.i160 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i160, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i159
  %i.fh = load i32, ptr %i.l, align 8, !tbaa !348
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !349
  %i.fj = load ptr, ptr %i.n, align 8, !tbaa !306
  %i.fk = load ptr, ptr %i.o, align 8, !tbaa !311
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.ff, ptr %i.fl, align 8, !tbaa !359
  store ptr null, ptr %i.m, align 8, !tbaa !349
  store ptr %i.l, ptr %i.n, align 8, !tbaa !306
  store ptr %i.l, ptr %i.o, align 8, !tbaa !311
  store i64 0, ptr %i.p, align 8, !tbaa !312
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE11_M_allocateEm.exit.i159
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr null, ptr %i.fm, align 8, !tbaa !349
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i

_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i:        ; preds = %bb.af, %bb.ae
  %.sink37.i = phi ptr [ %i.ff, %bb.af ], [ %i.fj, %bb.ae ]
  %.sink36.i = phi ptr [ %i.ff, %bb.af ], [ %i.fk, %bb.ae ]
  %.sink.i = phi i64 [ 0, %bb.af ], [ %i.ef, %bb.ae ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.af ], [ %i.fh, %bb.ae ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store ptr %.sink37.i, ptr %i.fn, align 8, !tbaa !306
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store ptr %.sink36.i, ptr %i.fo, align 8, !tbaa !311
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i64 %.sink.i, ptr %i.fp, align 8, !tbaa !312
  store i32 %.sink.i.i.i.i.i, ptr %i.ff, align 8, !tbaa !348
  %.not10.i.i.i.i.i161 = icmp eq ptr %.sroa.0.1264, %.sroa.23.1266
  br i1 %.not10.i.i.i.i.i161, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29.i, label %.lr.ph.i.i.i.i.i162

.lr.ph.i.i.i.i.i162:                              ; preds = %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i.i166
  %.012.i.i.i.i.i163 = phi ptr [ %i.gh, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i.i166 ], [ %i.fd, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i ] ; 6 uses
  %.0911.i.i.i.i.i164 = phi ptr [ %i.gg, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i.i166 ], [ %.sroa.0.1264, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i163, i64 8 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i164, i64 16 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !349, !alias.scope !380, !noalias !377 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i165 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i165, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i.i166, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i162
  %i.ft = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i164, i64 8 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !348, !alias.scope !380, !noalias !377
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i164, i64 24 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !306, !alias.scope !380, !noalias !377
  %i.fx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i164, i64 32 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !311, !alias.scope !380, !noalias !377
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.fq, ptr %i.fz, align 8, !tbaa !359, !noalias !382
  %i.ga = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i164, i64 40 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !312, !alias.scope !380, !noalias !377
  store ptr null, ptr %i.fr, align 8, !tbaa !349, !alias.scope !380, !noalias !377
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !306, !alias.scope !380, !noalias !377
  store ptr %i.ft, ptr %i.fx, align 8, !tbaa !311, !alias.scope !380, !noalias !377
  store i64 0, ptr %i.ga, align 8, !tbaa !312, !alias.scope !380, !noalias !377
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i.i166

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i.i166: ; preds = %bb.ag, %.lr.ph.i.i.i.i.i162
  %.sink6.i.i.i.i.i.i167 = phi ptr [ %i.fw, %bb.ag ], [ %i.fq, %.lr.ph.i.i.i.i.i162 ]
  %.sink5.i.i.i.i.i.i168 = phi ptr [ %i.fy, %bb.ag ], [ %i.fq, %.lr.ph.i.i.i.i.i162 ]
  %.sink.i.i.i.i.i.i169 = phi i64 [ %i.gb, %bb.ag ], [ 0, %.lr.ph.i.i.i.i.i162 ]
  %.sink.i.i.i.i.i.i.i.i.i.i170 = phi i32 [ %i.fu, %bb.ag ], [ 0, %.lr.ph.i.i.i.i.i162 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i163, i64 16
  store ptr %i.fs, ptr %i.gc, align 8, !tbaa !349, !alias.scope !377, !noalias !380
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i163, i64 24
  store ptr %.sink6.i.i.i.i.i.i167, ptr %i.gd, align 8, !tbaa !306, !alias.scope !377, !noalias !380
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i163, i64 32
  store ptr %.sink5.i.i.i.i.i.i168, ptr %i.ge, align 8, !tbaa !311, !alias.scope !377, !noalias !380
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i163, i64 40
  store i64 %.sink.i.i.i.i.i.i169, ptr %i.gf, align 8, !tbaa !312, !alias.scope !377, !noalias !380
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i170, ptr %i.fq, align 8, !tbaa !348, !alias.scope !377, !noalias !380
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i164, i64 48 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i163, i64 48 ; 2 uses
  %.not.i.i.i.i16.i = icmp eq ptr %i.gg, %.sroa.23.1266
  br i1 %.not.i.i.i.i16.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29.i, label %.lr.ph.i.i.i.i.i162, !llvm.loop !383

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i.i166, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fd, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i ], [ %i.gh, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i.i166 ]
  %.not.i30.i = icmp eq ptr %.sroa.0.1264, null
  br i1 %.not.i30.i, label %.noexc106, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1264) #21
  br label %.noexc106

.noexc106:                                        ; preds = %bb.ah, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29.i
  %i.gi = getelementptr inbounds nuw [48 x i8], ptr %i.fd, i64 %i.fa
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit: ; preds = %.noexc106, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i
  %.sroa.0.4 = phi ptr [ %i.fd, %.noexc106 ], [ %.sroa.0.1264, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %.noexc106 ], [ %.sroa.14.1265, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i ]
  %.sroa.23.3 = phi ptr [ %i.gi, %.noexc106 ], [ %.sroa.23.1266, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i ] ; 2 uses
  %i.gj = load ptr, ptr %i.m, align 8, !tbaa !349
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.gj)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #23
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit
  %.sroa.14.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.gm = add nuw i64 %.044267, 1                 ; 2 uses
  %i.gn = load ptr, ptr %i.i, align 8, !tbaa !302 ; 2 uses
  %i.go = load ptr, ptr %6, align 16, !tbaa !357  ; 3 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 48
  %i.gt = icmp ult i64 %i.gm, %i.gs
  br i1 %i.gt, label %bb.n, label %._crit_edge.loopexit, !llvm.loop !384

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i96
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ad
  %lpad.loopexit202 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %.sroa.14.1265303 = phi ptr [ %.sroa.14.1265, %.loopexit ], [ %.sroa.14.1265, %.loopexit.split-lp.loopexit ], [ %.sroa.23.1266, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.23.1266, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit199, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit202, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !349
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.gu)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit107 unwind label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #23
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit107:          ; preds = %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not4.i.i.i108 = icmp eq ptr %.sroa.0.1264, %.sroa.14.1265303
  br i1 %.not4.i.i.i108, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115, label %.lr.ph.i.i.i109

.lr.ph.i.i.i109:                                  ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit107, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i111
  %.05.i.i.i110 = phi ptr [ %i.hb, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i111 ], [ %.sroa.0.1264, %_ZNSt3setImSt4lessImESaImEED2Ev.exit107 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i110, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !349
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i110, ptr noundef %i.gy)
          to label %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i111 unwind label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i109
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #23
  unreachable

_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i111: ; preds = %.lr.ph.i.i.i109
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i110, i64 48 ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %i.hb, %.sroa.14.1265303
  br i1 %.not.i.i.i112, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115, label %.lr.ph.i.i.i109, !llvm.loop !361

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115: ; preds = %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i111, %_ZNSt3setImSt4lessImESaImEED2Ev.exit107
  %.not.i.i1.i116 = icmp eq ptr %.sroa.0.1264, null
  br i1 %.not.i.i1.i116, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit117, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i115
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1264) #21
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit117

_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit.sink.split: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i60, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %.lcssa237.sink = phi ptr [ %i.ai, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i ], [ %.lcssa237, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i60 ]
  call void @_ZdlPv(ptr noundef nonnull %.lcssa237.sink) #21
  br label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit

_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit: ; preds = %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit.sink.split, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i60, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.hc = load ptr, ptr %6, align 16, !tbaa !357  ; 3 uses
  %i.hd = load ptr, ptr %i.i, align 8, !tbaa !302 ; 2 uses
  %.not4.i.i.i118 = icmp eq ptr %i.hc, %i.hd
  br i1 %.not4.i.i.i118, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i125, label %.lr.ph.i.i.i119

.lr.ph.i.i.i119:                                  ; preds = %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i121
  %.05.i.i.i120 = phi ptr [ %i.hi, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i121 ], [ %i.hc, %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i120, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !349
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i120, ptr noundef %i.hf)
          to label %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i121 unwind label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i119
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #23
end_hunk_0
