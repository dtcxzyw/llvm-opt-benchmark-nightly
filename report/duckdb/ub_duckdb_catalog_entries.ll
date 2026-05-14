inline.NumInlined: 10301
inline.NumDeleted: 5043
begin_hunk_0_@_ZN6duckdb12SequenceDataC2ERNS_18CreateSequenceInfoE:bb.a
  store i64 %i.e, ptr %i.j, align 8, !tbaa !1397
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.m = load <2 x i64>, ptr %i.l, align 8, !tbaa !19
  store <2 x i64> %i.m, ptr %i.k, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1398, !range !70, !noundef !71
  store i8 %i.p, ptr %i.n, align 8, !tbaa !1399
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20SequenceCatalogEntryC2ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_18CreateSequenceInfoE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(393) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !12
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 328
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8, !tbaa !19
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !15
  %i.i = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  %i.n = load ptr, ptr %5, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !12
  %i.q = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = load i64, ptr %i.m, align 8, !tbaa !18   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  store ptr %i.q, ptr %4, align 8, !tbaa !15
  %i.v = load i64, ptr %i.c, align 8, !tbaa !20
  store i64 %i.v, ptr %i.p, align 8, !tbaa !20
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.w = phi i64 [ %i.s, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !18
  store ptr %i.c, ptr %5, align 8, !tbaa !15
  store i64 0, ptr %i.m, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !20
  invoke void @_ZN6duckdb14InCatalogEntryC2ENS_11CatalogTypeERNS_7CatalogENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, i8 noundef zeroext 6, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.y = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.p
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.p
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ab) #31
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb13StandardEntryE, i64 16), ptr %0, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %2, ptr %i.ad, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 1, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ak = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @_ZdlPv(ptr noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb20SequenceCatalogEntryE, i64 16), ptr %0, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i8 0, i64 40, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke void @_ZN6duckdb12SequenceDataC1ERNS_18CreateSequenceInfoE(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(393) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 81
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !163, !range !70, !noundef !71
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !164
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.ar)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEaSERKS9_(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(80) %i.au)
          to label %.noexc unwind label %bb.j     ; 0 uses

.noexc:                                           ; preds = %bb.h
  %i.ax = icmp eq ptr %i.au, %i.av
  br i1 %i.ax, label %_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 264
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSK_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(56) %i.az)
          to label %_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit unwind label %bb.j

_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit: ; preds = %.noexc, %bb.i
  ret void

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  %i.ba = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.c
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ba) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb13StandardEntryE, i64 16), ptr %0, align 8, !tbaa !7
  call void @_ZNSt10_HashtableIN6duckdb17LogicalDependencyES1_SaIS1_ENSt8__detail9_IdentityENS0_25LogicalDependencyEqualityENS0_29LogicalDependencyHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #30, !inline_history !87
  call void @_ZN6duckdb14InCatalogEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) #30, !inline_history !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.aa, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20SequenceCatalogEntry4CopyERNS_13ClientContextE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(416) %1, ptr nonnull readnone align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.244", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr.570", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::SequenceData", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.244") align 8 %3, ptr noundef nonnull align 8 dereferenceable(416) %1)
  %i.d = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203, !nonnull !71, !align !204
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205, !nonnull !71, !align !204
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.i = invoke noalias noundef nonnull dereferenceable(416) ptr @_Znwm(i64 noundef 416) #33
          to label %.noexc unwind label %bb.h, !inline_history !1403 ; 3 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6duckdb20SequenceCatalogEntryC1ERNS_7CatalogERNS_18SchemaCatalogEntryERNS_18CreateSequenceInfoE(ptr noundef nonnull align 8 dereferenceable(416) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(248) %i.h, ptr noundef nonnull align 8 dereferenceable(393) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !1400, !inline_history !1403

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.i) #31, !noalias !1400, !inline_history !1403
  br label %.body

bb.d:                                             ; preds = %.noexc
  store ptr %i.i, ptr %4, align 8, !tbaa !1404, !alias.scope !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.l = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #30, !noalias !1406 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #32
          to label %.noexc7 unwind label %bb.i

.noexc7:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !tbaa.struct !1409
  %i.n = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #30, !noalias !1406 ; 0 uses
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20SequenceCatalogEntryESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt10unique_ptrIN6duckdb20SequenceCatalogEntryESt14default_deleteIS1_EED2Ev.exit unwind label %bb.i

_ZNSt10unique_ptrIN6duckdb20SequenceCatalogEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.p, ptr noundef nonnull align 8 dereferenceable(57) %5, i64 57, i1 false), !tbaa.struct !1409
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.q = load ptr, ptr %4, align 8, !tbaa !1404
  store ptr %i.q, ptr %0, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.r = load ptr, ptr %3, align 8, !tbaa !214    ; 3 uses
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb20SequenceCatalogEntryESt14default_deleteIS1_EED2Ev.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(320) %i.r) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb20SequenceCatalogEntryESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.g:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.e, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.y = load ptr, ptr %4, align 8, !tbaa !1404   ; 3 uses
  %.not.i9 = icmp eq ptr %i.y, null
  br i1 %.not.i9, label %.body, label %_ZNKSt14default_deleteIN6duckdb20SequenceCatalogEntryEEclEPS1_.exit.i10

_ZNKSt14default_deleteIN6duckdb20SequenceCatalogEntryEEclEPS1_.exit.i10: ; preds = %bb.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(416) %i.y) #30, !inline_history !1410
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb20SequenceCatalogEntryEEclEPS1_.exit.i10, %bb.i, %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.w, %bb.h ], [ %i.x, %bb.i ], [ %i.x, %_ZNKSt14default_deleteIN6duckdb20SequenceCatalogEntryEEclEPS1_.exit.i10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.v, %bb.g ]
  %i.ac = load ptr, ptr %3, align 8, !tbaa !214   ; 3 uses
  %.not.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i13: ; preds = %bb.j
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(320) %i.ac) #30, !inline_history !216
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit14: ; preds = %bb.j, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20SequenceCatalogEntry7GetDataEv(ptr dead_on_unwind noalias writable writeonly sret(%"struct.duckdb::SequenceData") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(416) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !tbaa.struct !1409
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_20SequenceCatalogEntryESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1404   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20SequenceCatalogEntryESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.131, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_20SequenceCatalogEntryESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb20SequenceCatalogEntry12CurrentValueEv(ptr noundef nonnull align 8 dereferenceable(416) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1411
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17SequenceExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17SequenceExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %.pn11, %bb.g ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.l = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1415
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret i64 %i.n

bb.j:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN6duckdb17SequenceExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb20SequenceCatalogEntry9NextValueERNS_15DuckTransactionE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(480) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1416 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1417
  %i.h = invoke noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.e, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.j = load i8, ptr %i.i, align 8, !tbaa !1418, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.f, align 8, !tbaa !1417
  %i.m = icmp slt i64 %i.l, 0
  %.in.v = select i1 %i.m, i64 400, i64 392
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.n = load i64, ptr %.in, align 8, !tbaa !19
  br label %.sink.split

bb.f:                                             ; preds = %bb.w, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIN6duckdb12LogicalIndexESaIS1_EE17_M_reallocate_mapEmb:bb.a
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !162

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !1690
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !1690
  br label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !162

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !1690
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !1690
  br label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN6duckdb12LogicalIndexESaIS1_EE15_M_allocate_mapEm.exit, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt11_Deque_baseIN6duckdb12LogicalIndexESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #33 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !162

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN6duckdb12LogicalIndexESaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN6duckdb12LogicalIndexESaIS1_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !1690
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !1690
  br label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1720
  tail call void @_ZdlPv(ptr noundef %i.bc) #31
  store ptr %i.aq, ptr %0, align 8, !tbaa !1720
  store i64 %i.am, ptr %i.k, align 8, !tbaa !1719
  br label %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN6duckdb12LogicalIndexES3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !1716
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !1690 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !1717
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !1718
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !1716
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1690 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !1717
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !1718
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN6duckdb12LogicalIndexESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1716 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1716
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1710
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1717
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1718
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !1710
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1719
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1720
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN6duckdb12LogicalIndexESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN6duckdb12LogicalIndexESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1725
  br label %_ZNSt5dequeIN6duckdb12LogicalIndexESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN6duckdb12LogicalIndexESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #33 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1690
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !1713
  %i.aq = load i64, ptr %1, align 8, !tbaa !19
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !19
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !1716
  store ptr %i.an, ptr %i.o, align 8, !tbaa !1717
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1718
  store ptr %i.an, ptr %i.a, align 8, !tbaa !1713
  ret void
}

declare noundef zeroext i1 @_ZNK6duckdb14ScalarFunction5EqualERKS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(360) ptr @_ZN6duckdb14ScalarFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.615", align 8 ; 11 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(236) %1) ; 0 uses
  %i.b = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.b, label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.e = load i8, ptr %i.d, align 8, !tbaa !557
  store i8 %i.e, ptr %i.c, align 8, !tbaa !557
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 209
  %i.g = load i8, ptr %i.f, align 1, !tbaa !937
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 %i.g, ptr %i.h, align 1, !tbaa !937
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94   ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !95
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94   ; 8 uses
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !95
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !101
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #30, !inline_history !2320
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #30, !inline_history !2320
  br label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.k, label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit, !prof !37

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #30
  br label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit

_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit:      ; preds = %bb.a, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.al = load i32, ptr %i.ak, align 8
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1057 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ar = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.as = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !95
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !1057 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %i.at

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i: ; preds = %bb.m, %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit
  %i.ay = phi <2 x ptr> [ splat (ptr null), %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit ], [ %i.as, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !2321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false), !tbaa.struct !2321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !2321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !95
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !95 ; 2 uses
  store <2 x ptr> %i.ba, ptr %i.an, align 8, !tbaa !95
  store <2 x ptr> %i.ay, ptr %i.az, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSERKS8_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSERKS8_.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #34
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSERKS8_.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %i.bg, i64 72, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 344
  br i1 %i.b, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSERKS8_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !94 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !95
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEC2ERKS2_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEC2ERKS2_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEC2ERKS2_.exit.i: ; preds = %bb.v, %bb.u, %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !94 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.bh, align 8, !tbaa !95
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSERKS2_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEC2ERKS2_.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bt, align 8, !tbaa !99
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !101
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !2322
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !2322
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSERKS2_.exit

bb.y:                                             ; preds = %bb.w
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i5.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i5.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.z ], [ %i.cg, %bb.aa ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.ab, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSERKS2_.exit, !prof !37

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSERKS2_.exit

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSERKS2_.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSERKS8_.exit, %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEC2ERKS2_.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1737 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1740
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(360) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1057 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !95
  store <2 x ptr> %i.k, ptr %i.f, align 8, !tbaa !95
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !1057 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %.body.i unwind label %bb.g    ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i: ; preds = %bb.d, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94   ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.t, align 8, !tbaa !95
  store <2 x ptr> %i.w, ptr %i.s, align 8, !tbaa !95
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3
  br label %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit

.body.i:                                          ; preds = %bb.f, %bb.e
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %i.b) #30
  resume { ptr, i32 } %i.l

_ZN6duckdb14ScalarFunctionC2ERKS0_.exit:          ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit.i, %bb.i, %bb.j
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1737
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 360
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !1737
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(360) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6duckdb14ScalarFunctionC2ERKS0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
begin_hunk_2_@bcmp
!1209 = distinct !{!1209, !1210, !"_ZN6duckdb9make_uniqINS_14DuckTableEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoERKNS_10shared_ptrINS_9DataTableELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1210 = distinct !{!1210, !"_ZN6duckdb9make_uniqINS_14DuckTableEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_20BoundCreateTableInfoERKNS_10shared_ptrINS_9DataTableELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1211 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_9DataTableELb1EED2Ev, null, null, null}
!1212 = !{!1213, !17, i64 0}
!1213 = !{!"_ZTSN6duckdb12optional_idxE", !17, i64 0}
!1214 = !{!1215}
!1215 = distinct !{!1215, !1216, !"_ZN6duckdb10ColumnList18ColumnListIterator5beginEv: argument 0"}
!1216 = distinct !{!1216, !"_ZN6duckdb10ColumnList18ColumnListIterator5beginEv"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1219, !"_ZN6duckdb9make_uniqINS_17TableScanBindDataEJRNS_14DuckTableEntryEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1219 = distinct !{!1219, !"_ZN6duckdb9make_uniqINS_17TableScanBindDataEJRNS_14DuckTableEntryEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1220 = !{!1221, !1221, i64 0}
!1221 = !{!"p1 _ZTSN6duckdb17TableCatalogEntryE", !11, i64 0}
!1222 = !{!1223, !44, i64 40}
!1223 = !{!"_ZTSN6duckdb17TableScanBindDataE", !1224, i64 0, !1221, i64 32, !44, i64 40, !44, i64 41, !1226, i64 48}
!1224 = !{!"_ZTSN6duckdb17TableFunctionDataE", !1225, i64 0, !129, i64 8}
!1225 = !{!"_ZTSN6duckdb12FunctionDataE"}
!1226 = !{!"_ZTSN6duckdb10unique_ptrINS_20RowGroupOrderOptionsESt14default_deleteIS1_ELb1EEE", !1227, i64 0}
!1227 = !{!"_ZTSSt10unique_ptrIN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_EE", !1228, i64 0}
!1228 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_ELb1ELb1EE", !1229, i64 0}
!1229 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_EE", !1230, i64 0}
!1230 = !{!"_ZTSSt5tupleIJPN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_EEE", !1231, i64 0}
!1231 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb20RowGroupOrderOptionsESt14default_deleteIS1_EEE", !1232, i64 0}
!1232 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb20RowGroupOrderOptionsELb0EE", !1233, i64 0}
!1233 = !{!"p1 _ZTSN6duckdb20RowGroupOrderOptionsE", !11, i64 0}
!1234 = !{!1223, !44, i64 41}
!1235 = !{!1232, !1233, i64 0}
!1236 = !{!1237, !1237, i64 0}
!1237 = !{!"p1 _ZTSN6duckdb12FunctionDataE", !11, i64 0}
!1238 = distinct !{null, null, null, null, null, null}
!1239 = !{!1240, !11, i64 384}
!1240 = !{!"_ZTSN6duckdb14CreateTypeInfoE", !39, i64 0, !16, i64 320, !48, i64 352, !1241, i64 376, !11, i64 384}
!1241 = !{!"_ZTSN6duckdb10unique_ptrINS_12SQLStatementESt14default_deleteIS1_ELb1EEE", !1242, i64 0}
!1242 = !{!"_ZTSSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EE", !1243, i64 0}
!1243 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12SQLStatementESt14default_deleteIS1_ELb1ELb1EE", !1244, i64 0}
!1244 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12SQLStatementESt14default_deleteIS1_EE", !1245, i64 0}
!1245 = !{!"_ZTSSt5tupleIJPN6duckdb12SQLStatementESt14default_deleteIS1_EEE", !1246, i64 0}
!1246 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12SQLStatementESt14default_deleteIS1_EEE", !1247, i64 0}
!1247 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12SQLStatementELb0EE", !1248, i64 0}
!1248 = !{!"p1 _ZTSN6duckdb12SQLStatementE", !11, i64 0}
!1249 = !{!1250, !11, i64 336}
!1250 = !{!"_ZTSN6duckdb16TypeCatalogEntryE", !155, i64 0, !48, i64 312, !11, i64 336}
!1251 = distinct !{null}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1254, !"_ZN6duckdb9make_uniqINS_16TypeCatalogEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_14CreateTypeInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1254 = distinct !{!1254, !"_ZN6duckdb9make_uniqINS_16TypeCatalogEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_14CreateTypeInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1257, !"_ZN6duckdb9make_uniqINS_14CreateTypeInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1257 = distinct !{!1257, !"_ZN6duckdb9make_uniqINS_14CreateTypeInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1258 = !{!1259, !1259, i64 0}
!1259 = !{!"p1 _ZTSN6duckdb14CreateTypeInfoE", !11, i64 0}
!1260 = distinct !{null, null}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1263 = distinct !{!1263, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1266, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1266 = distinct !{!1266, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1267 = !{!1265, !1262}
!1268 = !{!1269, !14, i64 40}
!1269 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !1270, i64 56}
!1270 = !{!"_ZTSSt6locale", !1271, i64 0}
!1271 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!1272 = !{!1269, !14, i64 32}
!1273 = !{ptr @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev}
!1274 = !{!1275, !17, i64 8}
!1275 = !{!"_ZTSSi", !17, i64 8}
!1276 = !{!1277, !1284, i64 216}
!1277 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1278, i64 0, !1284, i64 216, !5, i64 224, !44, i64 225, !1285, i64 232, !1286, i64 240, !1287, i64 248, !1288, i64 256}
!1278 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !1279, i64 24, !1280, i64 28, !1280, i64 32, !1281, i64 40, !1282, i64 48, !5, i64 64, !4, i64 192, !1283, i64 200, !1270, i64 208}
!1279 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!1280 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!1281 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!1282 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !17, i64 8}
!1283 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!1284 = !{!"p1 _ZTSSo", !11, i64 0}
!1285 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!1286 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!1287 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!1288 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!1289 = !{!1277, !5, i64 224}
!1290 = !{!1277, !44, i64 225}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN6duckdb9make_uniqINS_15CreateIndexInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1293 = distinct !{!1293, !"_ZN6duckdb9make_uniqINS_15CreateIndexInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1294 = !{!1295, !1295, i64 0}
!1295 = !{!"p1 _ZTSN6duckdb15CreateIndexInfoE", !11, i64 0}
!1296 = !{!1297}
!1297 = distinct !{!1297, !1298, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1298 = distinct !{!1298, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1298, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1301 = !{!1300, !1302}
!1302 = distinct !{!1302, !1303}
!1303 = distinct !{!1303, !"LVerDomain"}
!1304 = !{!1297, !1305}
!1305 = distinct !{!1305, !1303}
!1306 = distinct !{!1306, !93, !182, !183}
!1307 = distinct !{!1307, !93, !182}
!1308 = !{!1309}
!1309 = distinct !{!1309, !1310, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1310 = distinct !{!1310, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1311 = !{!1312}
!1312 = distinct !{!1312, !1310, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1313 = !{!1312, !1314}
!1314 = distinct !{!1314, !1315}
!1315 = distinct !{!1315, !"LVerDomain"}
!1316 = !{!1309, !1317}
!1317 = distinct !{!1317, !1315}
!1318 = distinct !{!1318, !93, !182, !183}
!1319 = distinct !{!1319, !93, !182}
!1320 = distinct !{null, null}
!1321 = !{!1322, !1323, i64 8}
!1322 = !{!"_ZTSN6duckdb13MacroFunctionE", !1323, i64 8, !135, i64 16, !1324, i64 40, !141, i64 120}
!1323 = !{!"_ZTSN6duckdb9MacroTypeE", !5, i64 0}
!1324 = !{!"_ZTSN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEE", !1325, i64 0, !68, i64 24}
!1325 = !{!"_ZTSN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS9_ELb1EEEELb1ESaISD_EEE", !1326, i64 0}
!1326 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_16ParsedExpressionESt14default_deleteIS9_ELb1EEEESaISD_EE", !1327, i64 0}
!1327 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_16ParsedExpressionESt14default_deleteIS9_ELb1EEEESaISD_EE", !1328, i64 0}
!1328 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_16ParsedExpressionESt14default_deleteIS9_ELb1EEEESaISD_EE12_Vector_implE", !1329, i64 0}
!1329 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_16ParsedExpressionESt14default_deleteIS9_ELb1EEEESaISD_EE17_Vector_impl_dataE", !1330, i64 0, !1330, i64 8, !1330, i64 16}
!1330 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS6_16ParsedExpressionESt14default_deleteIS8_ELb1EEEE", !11, i64 0}
!1331 = !{!1332, !1332, i64 0}
!1332 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_13MacroFunctionESt14default_deleteIS1_ELb1EEE", !11, i64 0}
!1333 = !{!1334, !1332, i64 16}
!1334 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !1332, i64 0, !1332, i64 8, !1332, i64 16}
!1335 = !{!1334, !1332, i64 8}
!1336 = !{!1334, !1332, i64 0}
!1337 = !{!1338, !1338, i64 0}
!1338 = !{!"p1 _ZTSN6duckdb13MacroFunctionE", !11, i64 0}
!1339 = distinct !{null, null, null, null, null}
!1340 = distinct !{!1340, !93}
!1341 = distinct !{null}
!1342 = !{!1343}
!1343 = distinct !{!1343, !1344, !"_ZN6duckdb9make_uniqINS_23ScalarMacroCatalogEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_15CreateMacroInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1344 = distinct !{!1344, !"_ZN6duckdb9make_uniqINS_23ScalarMacroCatalogEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_15CreateMacroInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1345 = distinct !{null}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_ZN6duckdb9make_uniqINS_22TableMacroCatalogEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_15CreateMacroInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1348 = distinct !{!1348, !"_ZN6duckdb9make_uniqINS_22TableMacroCatalogEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_15CreateMacroInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1351, !"_ZN6duckdb9make_uniqINS_15CreateMacroInfoEJRKNS_11CatalogTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1351 = distinct !{!1351, !"_ZN6duckdb9make_uniqINS_15CreateMacroInfoEJRKNS_11CatalogTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1352 = !{!42, !42, i64 0}
!1353 = !{!1354, !1354, i64 0}
!1354 = !{!"p1 _ZTSN6duckdb15CreateMacroInfoE", !11, i64 0}
!1355 = !{!1356}
!1356 = distinct !{!1356, !1357, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1357 = distinct !{!1357, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1358 = !{!1359}
!1359 = distinct !{!1359, !1357, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_13MacroFunctionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1360 = !{!1359, !1361}
!1361 = distinct !{!1361, !1362}
!1362 = distinct !{!1362, !"LVerDomain"}
!1363 = !{!1356, !1364}
!1364 = distinct !{!1364, !1362}
!1365 = distinct !{!1365, !93, !182, !183}
!1366 = distinct !{!1366, !93, !182}
!1367 = distinct !{null, null}
!1368 = distinct !{null, null}
!1369 = !{!1370, !1370, i64 0}
!1370 = !{!"p1 _ZTSN6duckdb14PragmaFunctionE", !11, i64 0}
!1371 = !{!1372, !1370, i64 16}
!1372 = !{!"_ZTSNSt12_Vector_baseIN6duckdb14PragmaFunctionESaIS1_EE17_Vector_impl_dataE", !1370, i64 0, !1370, i64 8, !1370, i64 16}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1375, !"_ZN6duckdb18SchemaCatalogEntry21GetCatalogTransactionERNS_13ClientContextE: argument 0"}
!1375 = distinct !{!1375, !"_ZN6duckdb18SchemaCatalogEntry21GetCatalogTransactionERNS_13ClientContextE"}
!1376 = !{!1377, !1377, i64 0}
!1377 = !{!"p1 _ZTSN6duckdb15EntryLookupInfoE", !11, i64 0}
!1378 = !{!1379, !1379, i64 0}
!1379 = !{!"p1 _ZTSN6duckdb19SimilarCatalogEntryE", !11, i64 0}
!1380 = !{!1381, !11, i64 24}
!1381 = !{!"_ZTSSt8functionIFvRN6duckdb12CatalogEntryEEE", !1056, i64 0, !11, i64 24}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1384, !"_ZN6duckdb9make_uniqINS_16CreateSchemaInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1384 = distinct !{!1384, !"_ZN6duckdb9make_uniqINS_16CreateSchemaInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1385 = !{!1386, !1386, i64 0}
!1386 = !{!"p1 _ZTSN6duckdb16CreateSchemaInfoE", !11, i64 0}
!1387 = distinct !{null, null}
!1388 = !{!1389, !17, i64 352}
!1389 = !{!"_ZTSN6duckdb18CreateSequenceInfoE", !39, i64 0, !16, i64 320, !17, i64 352, !17, i64 360, !17, i64 368, !17, i64 376, !17, i64 384, !44, i64 392}
!1390 = !{!1391, !17, i64 0}
!1391 = !{!"_ZTSN6duckdb12SequenceDataE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !44, i64 56}
!1392 = !{!1389, !17, i64 384}
!1393 = !{!1391, !17, i64 8}
!1394 = !{!1391, !17, i64 16}
!1395 = !{!1389, !17, i64 360}
!1396 = !{!1391, !17, i64 24}
!1397 = !{!1391, !17, i64 32}
!1398 = !{!1389, !44, i64 392}
!1399 = !{!1391, !44, i64 56}
!1400 = !{!1401}
!1401 = distinct !{!1401, !1402, !"_ZN6duckdb9make_uniqINS_20SequenceCatalogEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_18CreateSequenceInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1402 = distinct !{!1402, !"_ZN6duckdb9make_uniqINS_20SequenceCatalogEntryEJRNS_7CatalogERNS_18SchemaCatalogEntryERNS_18CreateSequenceInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1403 = distinct !{null}
!1404 = !{!1405, !1405, i64 0}
!1405 = !{!"p1 _ZTSN6duckdb20SequenceCatalogEntryE", !11, i64 0}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1408, !"_ZNK6duckdb20SequenceCatalogEntry7GetDataEv: argument 0"}
!1408 = distinct !{!1408, !"_ZNK6duckdb20SequenceCatalogEntry7GetDataEv"}
!1409 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 8, !19, i64 24, i64 8, !19, i64 32, i64 8, !19, i64 40, i64 8, !19, i64 48, i64 8, !19, i64 56, i64 1, !433}
!1410 = distinct !{null, null}
!1411 = !{!1412, !17, i64 352}
!1412 = !{!"_ZTSN6duckdb20SequenceCatalogEntryE", !155, i64 0, !1413, i64 312, !1391, i64 352}
!1413 = !{!"_ZTSSt5mutex", !1414, i64 0}
!1414 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!1415 = !{!1412, !17, i64 368}
!1416 = !{!1412, !17, i64 360}
!1417 = !{!1412, !17, i64 376}
!1418 = !{!1412, !44, i64 408}
!1419 = !{!1412, !17, i64 392}
!1420 = !{!1412, !17, i64 400}
!1421 = !{!1422}
!1422 = distinct !{!1422, !1423, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEES7_RKS7_DpRKT_: argument 0"}
!1423 = distinct !{!1423, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEES7_RKS7_DpRKT_"}
!1424 = !{!1425}
!1425 = distinct !{!1425, !1426, !"_ZNK6duckdb20SequenceCatalogEntry7GetDataEv: argument 0"}
!1426 = distinct !{!1426, !"_ZNK6duckdb20SequenceCatalogEntry7GetDataEv"}
!1427 = !{!1428}
!1428 = distinct !{!1428, !1429, !"_ZN6duckdb9make_uniqINS_18CreateSequenceInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1429 = distinct !{!1429, !"_ZN6duckdb9make_uniqINS_18CreateSequenceInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1430 = !{!1431, !1431, i64 0}
!1431 = !{!"p1 _ZTSN6duckdb18CreateSequenceInfoE", !11, i64 0}
!1432 = !{!1389, !17, i64 368}
!1433 = !{!1389, !17, i64 376}
!1434 = distinct !{null, null}
!1435 = !{!1436}
!1436 = distinct !{!1436, !1437, !"_ZNK6duckdb20SequenceCatalogEntry7GetDataEv: argument 0"}
!1437 = distinct !{!1437, !"_ZNK6duckdb20SequenceCatalogEntry7GetDataEv"}
!1438 = !{!1439}
!1439 = distinct !{!1439, !1440, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1440 = distinct !{!1440, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1441 = !{!1442}
!1442 = distinct !{!1442, !1443, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1443 = distinct !{!1443, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1444 = !{!1442, !1439}
!1445 = distinct !{null, null, null, null, null}
!1446 = distinct !{!1446, !93}
!1447 = !{!1448}
!1448 = distinct !{!1448, !1449, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_: argument 0"}
!1449 = distinct !{!1449, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_"}
!1450 = !{!1451, !1452, i64 0}
!1451 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14BlockingSampleELb0EE", !1452, i64 0}
!1452 = !{!"p1 _ZTSN6duckdb14BlockingSampleE", !11, i64 0}
!1453 = !{!1454}
!1454 = distinct !{!1454, !1455, !"_ZN6duckdb10ColumnList18ColumnListIterator5beginEv: argument 0"}
!1455 = distinct !{!1455, !"_ZN6duckdb10ColumnList18ColumnListIterator5beginEv"}
!1456 = !{!145, !146, i64 8}
!1457 = !{!145, !146, i64 16}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZN6duckdb9make_uniqINS_15CreateTableInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1460 = distinct !{!1460, !"_ZN6duckdb9make_uniqINS_15CreateTableInfoEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1463, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1463 = distinct !{!1463, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1463, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1466 = !{!1465, !1467}
!1467 = distinct !{!1467, !1468}
!1468 = distinct !{!1468, !"LVerDomain"}
!1469 = !{!1462, !1470}
!1470 = distinct !{!1470, !1468}
!1471 = distinct !{!1471, !93, !182, !183}
!1472 = distinct !{!1472, !93, !182}
!1473 = distinct !{null}
!1474 = !{!1475}
!1475 = distinct !{!1475, !1476, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1476 = distinct !{!1476, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1477 = !{!1478}
!1478 = distinct !{!1478, !1476, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ConstraintESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1479 = !{!1478, !1480}
!1480 = distinct !{!1480, !1481}
!1481 = distinct !{!1481, !"LVerDomain"}
!1482 = !{!1475, !1483}
!1483 = distinct !{!1483, !1481}
!1484 = distinct !{!1484, !93, !182, !183}
!1485 = distinct !{!1485, !93, !182}
!1486 = distinct !{null, null, null, null}
!1487 = distinct !{!1487, !93}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1490, !"_ZN6duckdb10ColumnList18ColumnListIterator5beginEv: argument 0"}
!1490 = distinct !{!1490, !"_ZN6duckdb10ColumnList18ColumnListIterator5beginEv"}
!1491 = !{!1492, !54, i64 0}
!1492 = !{!"_ZTSN6duckdb12optional_ptrINS_13ExtraTypeInfoELb1EEE", !54, i64 0}
!1493 = !{!1494, !1495, i64 8}
!1494 = !{!"_ZTSN6duckdb13ExtraTypeInfoE", !1495, i64 8, !16, i64 16, !1496, i64 48}
!1495 = !{!"_ZTSN6duckdb17ExtraTypeInfoTypeE", !5, i64 0}
!1496 = !{!"_ZTSN6duckdb10unique_ptrINS_17ExtensionTypeInfoESt14default_deleteIS1_ELb1EEE", !1497, i64 0}
!1497 = !{!"_ZTSSt10unique_ptrIN6duckdb17ExtensionTypeInfoESt14default_deleteIS1_EE", !1498, i64 0}
!1498 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb17ExtensionTypeInfoESt14default_deleteIS1_ELb1ELb1EE", !1499, i64 0}
!1499 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb17ExtensionTypeInfoESt14default_deleteIS1_EE", !1500, i64 0}
!1500 = !{!"_ZTSSt5tupleIJPN6duckdb17ExtensionTypeInfoESt14default_deleteIS1_EEE", !1501, i64 0}
!1501 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb17ExtensionTypeInfoESt14default_deleteIS1_EEE", !1502, i64 0}
!1502 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb17ExtensionTypeInfoELb0EE", !1503, i64 0}
!1503 = !{!"p1 _ZTSN6duckdb17ExtensionTypeInfoE", !11, i64 0}
!1504 = !{!1505}
!1505 = distinct !{!1505, !1506, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!1506 = distinct !{!1506, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!1507 = !{!1508, !1505}
!1508 = distinct !{!1508, !1509, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!1509 = distinct !{!1509, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!1510 = distinct !{!1510, !93}
!1511 = !{!1512}
!1512 = distinct !{!1512, !1513, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1513 = distinct !{!1513, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1514 = !{!1515}
!1515 = distinct !{!1515, !1516, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1516 = distinct !{!1516, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1517 = !{!1515, !1512}
!1518 = !{!1519, !1521, i64 9}
!1519 = !{!"_ZTSN6duckdb14BaseExpressionE", !1520, i64 8, !1521, i64 9, !16, i64 16, !1213, i64 48}
!1520 = !{!"_ZTSN6duckdb14ExpressionTypeE", !5, i64 0}
!1521 = !{!"_ZTSN6duckdb15ExpressionClassE", !5, i64 0}
!1522 = !{!1523}
!1523 = distinct !{!1523, !1524, !"_ZN6duckdb10ColumnList18ColumnListIterator5beginEv: argument 0"}
!1524 = distinct !{!1524, !"_ZN6duckdb10ColumnList18ColumnListIterator5beginEv"}
!1525 = !{!1526}
!1526 = distinct !{!1526, !1527, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1527 = distinct !{!1527, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1528 = !{!1529}
!1529 = distinct !{!1529, !1530, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1530 = distinct !{!1530, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1531 = !{!1529, !1526}
!1532 = !{!315, !316, i64 8}
!1533 = distinct !{!1533, !93}
!1534 = !{!1535, !17, i64 104}
!1535 = !{!"_ZTSN6duckdb17LogicalProjectionE", !1536, i64 0, !17, i64 104}
!1536 = !{!"_ZTSN6duckdb15LogicalOperatorE", !1537, i64 8, !1538, i64 16, !1544, i64 40, !141, i64 64, !17, i64 88, !44, i64 96}
!1537 = !{!"_ZTSN6duckdb19LogicalOperatorTypeE", !5, i64 0}
!1538 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !1539, i64 0}
!1539 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE", !1540, i64 0}
!1540 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE", !1541, i64 0}
!1541 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !1542, i64 0}
!1542 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !1543, i64 0, !1543, i64 8, !1543, i64 16}
!1543 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEE", !11, i64 0}
!1544 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !1545, i64 0}
!1545 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE", !1546, i64 0}
!1546 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE", !1547, i64 0}
!1547 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !782, i64 0}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNS_11LogicalTypeENS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1550 = distinct !{!1550, !"_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNS_11LogicalTypeENS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1551 = !{!782, !783, i64 16}
!1552 = !{!1553}
!1553 = distinct !{!1553, !1554, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1554 = distinct !{!1554, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!1555 = !{!1556}
!1556 = distinct !{!1556, !1554, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1557 = !{!1556, !1558}
!1558 = distinct !{!1558, !1559}
!1559 = distinct !{!1559, !"LVerDomain"}
!1560 = !{!1553, !1561}
!1561 = distinct !{!1561, !1559}
!1562 = distinct !{!1562, !93, !182, !183}
!1563 = distinct !{!1563, !93, !182}
!1564 = !{!1565, !17, i64 104}
!1565 = !{!"_ZTSN6duckdb10LogicalGetE", !1536, i64 0, !17, i64 104, !1566, i64 112, !1578, i64 656, !141, i64 664, !147, i64 688, !1585, i64 712, !129, i64 768, !1587, i64 792, !1597, i64 840, !127, i64 864, !141, i64 920, !147, i64 944, !129, i64 968, !1603, i64 992, !1612, i64 1048, !1213, i64 1064, !1226, i64 1072, !575, i64 1080}
!1566 = !{!"_ZTSN6duckdb13TableFunctionE", !1567, i64 0, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !44, i64 512, !44, i64 513, !44, i64 514, !44, i64 515, !44, i64 516, !44, i64 517, !1572, i64 520, !1576, i64 536, !1577, i64 540}
!1567 = !{!"_ZTSN6duckdb28SimpleNamedParameterFunctionE", !1568, i64 0, !1570, i64 208}
!1568 = !{!"_ZTSN6duckdb14SimpleFunctionE", !1569, i64 0, !141, i64 136, !141, i64 160, !48, i64 184}
!1569 = !{!"_ZTSN6duckdb8FunctionE", !16, i64 8, !16, i64 40, !16, i64 72, !16, i64 104}
!1570 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE", !1571, i64 0}
!1571 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !25, i64 0, !17, i64 8, !27, i64 16, !17, i64 24, !29, i64 32, !28, i64 48}
!1572 = !{!"_ZTSN6duckdb10shared_ptrINS_17TableFunctionInfoELb1EEE", !1573, i64 0}
!1573 = !{!"_ZTSSt10shared_ptrIN6duckdb17TableFunctionInfoEE", !1574, i64 0}
!1574 = !{!"_ZTSSt12__shared_ptrIN6duckdb17TableFunctionInfoELN9__gnu_cxx12_Lock_policyE2EE", !1575, i64 0, !55, i64 8}
!1575 = !{!"p1 _ZTSN6duckdb17TableFunctionInfoE", !11, i64 0}
!1576 = !{!"_ZTSN6duckdb21OrderPreservationTypeE", !5, i64 0}
!1577 = !{!"_ZTSN6duckdb27TableFunctionInitializationE", !5, i64 0}
!1578 = !{!"_ZTSN6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEE", !1579, i64 0}
!1579 = !{!"_ZTSSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EE", !1580, i64 0}
!1580 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12FunctionDataESt14default_deleteIS1_ELb1ELb1EE", !1581, i64 0}
!1581 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12FunctionDataESt14default_deleteIS1_EE", !1582, i64 0}
!1582 = !{!"_ZTSSt5tupleIJPN6duckdb12FunctionDataESt14default_deleteIS1_EEE", !1583, i64 0}
!1583 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12FunctionDataESt14default_deleteIS1_EEE", !1584, i64 0}
!1584 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12FunctionDataELb0EE", !1237, i64 0}
!1585 = !{!"_ZTSSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE", !1586, i64 0}
!1586 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !25, i64 0, !17, i64 8, !27, i64 16, !17, i64 24, !29, i64 32, !28, i64 48}
!1587 = !{!"_ZTSN6duckdb14TableFilterSetE", !1588, i64 0}
!1588 = !{!"_ZTSSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE", !1589, i64 0}
!1589 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE", !1590, i64 0}
!1590 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !1591, i64 0, !1593, i64 8}
!1591 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !1592, i64 0}
!1592 = !{!"_ZTSSt4lessImE"}
!1593 = !{!"_ZTSSt15_Rb_tree_header", !1594, i64 0, !17, i64 32}
!1594 = !{!"_ZTSSt18_Rb_tree_node_base", !1595, i64 0, !1596, i64 8, !1596, i64 16, !1596, i64 24}
!1595 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!1596 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!1597 = !{!"_ZTSN6duckdb6vectorINS_5ValueELb1ESaIS1_EEE", !1598, i64 0}
!1598 = !{!"_ZTSSt6vectorIN6duckdb5ValueESaIS1_EE", !1599, i64 0}
!1599 = !{!"_ZTSSt12_Vector_baseIN6duckdb5ValueESaIS1_EE", !1600, i64 0}
!1600 = !{!"_ZTSNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE12_Vector_implE", !1601, i64 0}
!1601 = !{!"_ZTSNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE17_Vector_impl_dataE", !1602, i64 0, !1602, i64 8, !1602, i64 16}
!1602 = !{!"p1 _ZTSN6duckdb5ValueE", !11, i64 0}
!1603 = !{!"_ZTSN6duckdb17ExtraOperatorInfoE", !16, i64 0, !1213, i64 32, !1213, i64 40, !1604, i64 48}
!1604 = !{!"_ZTSN6duckdb10unique_ptrINS_13SampleOptionsESt14default_deleteIS1_ELb1EEE", !1605, i64 0}
!1605 = !{!"_ZTSSt10unique_ptrIN6duckdb13SampleOptionsESt14default_deleteIS1_EE", !1606, i64 0}
!1606 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb13SampleOptionsESt14default_deleteIS1_ELb1ELb1EE", !1607, i64 0}
!1607 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb13SampleOptionsESt14default_deleteIS1_EE", !1608, i64 0}
!1608 = !{!"_ZTSSt5tupleIJPN6duckdb13SampleOptionsESt14default_deleteIS1_EEE", !1609, i64 0}
!1609 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb13SampleOptionsESt14default_deleteIS1_EEE", !1610, i64 0}
!1610 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb13SampleOptionsELb0EE", !1611, i64 0}
end_hunk_2
