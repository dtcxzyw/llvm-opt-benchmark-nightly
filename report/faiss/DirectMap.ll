Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/DirectMap?download=true
inline.NumInlined: 560
inline.NumDeleted: 273
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5faiss12DirectMapAddC2ERNS_9DirectMapEmPKl:bb.a
  ret void

bb.t:                                             ; preds = %bb.r, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.al, %bb.o ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %bb.r ]
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !41  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #23
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.t, %bb.u
  resume { ptr, i32 } %.pn14

bb.v:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss12DirectMapAdd3addEmlm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink7 = phi ptr [ %i.j, %bb.c ], [ %i.h, %bb.b ]
  %.pn = shl i64 %2, 32
  %.sink = or i64 %.pn, %3
  %i.k = getelementptr [8 x i8], ptr %.sink7, i64 %1
  store i64 %.sink, ptr %i.k, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss12DirectMapAddD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %.preheader, label %.loopexit7

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !63
  %.not11 = icmp eq i64 %i.e, 0
  br i1 %.not11, label %.loopexit7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.an, %.loopexit ] ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.010
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !65
  %i.m = add i64 %i.l, %.010
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i64 [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 5 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.010
  %i.q = load i64, ptr %i.p, align 8, !tbaa !46
  %i.r = load ptr, ptr %0, align 8, !tbaa !66, !nonnull !67, !align !68 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %i.v = urem i64 %i.n, %i.u                      ; 3 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.ac = icmp eq i64 %i.n, %i.ab
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.n, %i.ag
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.z, %bb.f ]
  %i.ae = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !44 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.u
  %.not19.i.i.i.i = icmp eq i64 %i.ah, %i.v
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit.i.i, !llvm.loop !2

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  %i.ai = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.n, ptr %i.aj, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !55
  %i.al = invoke ptr @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 noundef %i.v, i64 noundef %i.n, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 24) #23
  br label %.body

.loopexit:                                        ; preds = %bb.g, %.noexc, %bb.f
  %.pn.i.i = phi ptr [ %i.al, %.noexc ], [ %i.z, %bb.f ], [ %i.ae, %bb.g ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 %i.q, ptr %.1.i.i, align 8, !tbaa !46
  %i.an = add nuw i64 %.010, 1                    ; 2 uses
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !63
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.b, label %.loopexit7, !llvm.loop !85

.loopexit7:                                       ; preds = %.loopexit, %.preheader, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit7
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #23
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %.loopexit7, %bb.i
  ret void

bb.j:                                             ; preds = %.loopexit.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %i.am, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  %i.ay = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5faiss9DirectMap10remove_idsERKNS_10IDSelectorEPNS_13InvertedListsE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.std::vector", align 8       ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 6 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %.noexc92

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc92:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.f = shl nuw nsw i64 %i.d, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 4 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !57
  store i64 0, ptr %i.g, align 8, !tbaa !46
  %i.j = getelementptr i8, ptr %i.g, i64 8        ; 3 uses
  %i.k = add nsw i64 %i.d, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc92
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc92, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.j, %.noexc92 ], [ %i.m, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8, !tbaa !42
  %i.o = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN5faiss13InvertedListsE, ptr nonnull @_ZTIN5faiss18BlockInvertedListsE, i64 0) #20 ; 3 uses
  %i.p = load i32, ptr %0, align 8, !tbaa !30
  switch i32 %i.p, label %bb.bc [
    i32 0, label %bb.c
    i32 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %.not88 = icmp eq ptr %i.o, null
  br i1 %.not88, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = invoke noundef i64 @_ZN5faiss18BlockInvertedLists10remove_idsERKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN5faiss9DirectMap10remove_idsERKNS_10IDSelectorEPNS_13InvertedListsE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %3)
  %i.r = load i64, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph161, label %.loopexit

.lr.ph161:                                        ; preds = %bb.e, %bb.h
  %i.t = phi i64 [ %i.al, %bb.h ], [ %i.r, %bb.e ]
  %.050160 = phi i64 [ %i.am, %bb.h ], [ 0, %bb.e ] ; 5 uses
  %.051159 = phi i64 [ %.152, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.050160
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph161
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(25) %i.y, i64 noundef %.050160)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %3, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.050160
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ag = sub i64 %i.ac, %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(25) %i.y, i64 noundef %.050160, i64 noundef %i.ag)
          to label %._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.g
  %i.ak = add i64 %i.w, %.051159
  %.pre186 = load i64, ptr %i.b, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.lr.ph161
  %i.al = phi i64 [ %.pre186, %._crit_edge ], [ %i.t, %.lr.ph161 ] ; 2 uses
  %.152 = phi i64 [ %i.ak, %._crit_edge ], [ %.051159, %.lr.ph161 ] ; 2 uses
  %i.am = add nuw nsw i64 %.050160, 1             ; 2 uses
  %i.an = icmp slt i64 %i.am, %i.al
  br i1 %i.an, label %.lr.ph161, label %.loopexit, !llvm.loop !86

bb.i:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !38
  store i8 0, ptr %i.ao, align 8, !tbaa !39
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #20 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.at)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %4, align 8, !tbaa !40
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !38
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.as)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l, %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.ay = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9DirectMap10remove_idsERKNS_10IDSelectorEPNS_13InvertedListsE, ptr noundef nonnull @.str.2, i32 noundef 198)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #22
          to label %bb.bj unwind label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ay) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn86 = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %i.az, %bb.p ]
  %i.ba = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ao
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bc = load i64, ptr %i.ao, align 8, !tbaa !39
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

bb.r:                                             ; preds = %bb.i
  %i.be = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5faiss10IDSelectorE, ptr nonnull @_ZTIN5faiss15IDSelectorArrayE, i64 0) #20 ; 3 uses
  %.not75 = icmp eq ptr %i.be, null
  br i1 %.not75, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !92 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.aa

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.bn, ptr %5, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !38
  store i8 0, ptr %i.bn, align 8, !tbaa !39
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #20 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.br = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.bs = add nuw nsw i64 %i.br, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bs)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = load ptr, ptr %5, align 8, !tbaa !40
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !38
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.br)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u, %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.u, %bb.s
  %i.bx = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9DirectMap10remove_idsERKNS_10IDSelectorEPNS_13InvertedListsE, ptr noundef nonnull @.str.2, i32 noundef 202)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #22
          to label %bb.bj unwind label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bx) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pn76 = phi { ptr, i32 } [ %i.bw, %bb.v ], [ %i.by, %bb.y ]
  %i.bz = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bn
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.z
  %i.cb = load i64, ptr %i.bn, align 8, !tbaa !39
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.body

bb.aa:                                            ; preds = %.lr.ph, %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread
  %i.cd = phi i64 [ %i.bg, %.lr.ph ], [ %i.fz, %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread ] ; 4 uses
  %8 = phi ptr [ %2, %.lr.ph ], [ %9, %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread ] ; 6 uses
  %.049158 = phi i64 [ 0, %.lr.ph ], [ %i.ga, %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread ] ; 2 uses
  %.253157 = phi i64 [ 0, %.lr.ph ], [ %.354, %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread ] ; 5 uses
  %i.ce = load ptr, ptr %i.bi, align 8, !tbaa !93
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.049158
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !46 ; 4 uses
  %i.ch = load i64, ptr %i.bk, align 8, !tbaa !59
  %.not.not.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.not.i.i, label %.preheader163, label %bb.ac

.preheader163:                                    ; preds = %bb.aa, %bb.ab
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ab ], [ %i.bm, %bb.aa ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !44 ; 4 uses
  %i.ci = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.ci, label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.preheader163
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !46
  %i.cl = icmp eq i64 %i.cg, %i.ck
  br i1 %i.cl, label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit, label %.preheader163, !llvm.loop !87

bb.ac:                                            ; preds = %bb.aa
  %i.cm = load i64, ptr %i.bl, align 8, !tbaa !32 ; 2 uses
  %i.cn = urem i64 %i.cg, %i.cm                   ; 2 uses
  %i.co = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i96, label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !44 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !46
  %i.cu = icmp eq i64 %i.cg, %i.ct
  br i1 %i.cu, label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.ae:                                            ; preds = %bb.af
  %i.cv = icmp eq i64 %i.cg, %i.cy
  br i1 %i.cv, label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ae
  %.020.i.i.i.i = phi ptr [ %i.cw, %bb.ae ], [ %i.cr, %bb.ad ]
  %i.cw = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !44 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !46 ; 2 uses
  %i.cz = urem i64 %i.cy, %i.cm
  %.not19.i.i.i.i = icmp eq i64 %i.cz, %i.cn
  br i1 %.not19.i.i.i.i, label %bb.ae, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.af
  br label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread, !llvm.loop !2

_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit: ; preds = %bb.ae, %bb.ab, %bb.ad
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ab ], [ %i.cr, %bb.ad ], [ %i.cw, %bb.ae ] ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !55 ; 3 uses
  %i.dc = lshr i64 %i.db, 32                      ; 7 uses
  %i.dd = and i64 %i.db, 4294967295               ; 2 uses
  %i.de = load ptr, ptr %8, align 8, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i64 %i.dg(ptr noundef nonnull align 8 dereferenceable(25) %8, i64 noundef %i.dc)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 8
  %i.dj = load i64, ptr %i.bl, align 8, !tbaa !32 ; 3 uses
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !46
  %i.dl = urem i64 %i.dk, %i.dj                   ; 3 uses
  %i.dm = load ptr, ptr %i.bj, align 8, !tbaa !31 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !52 ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i = phi ptr [ %i.do, %bb.ag ], [ %i.dp, %bb.ah ] ; 4 uses
  %i.dp = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.dp, %.sroa.06.1.i.i
  br i1 %.not.i.i.i.i97, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit.i.i.i, label %bb.ah, !llvm.loop !88

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit.i.i.i: ; preds = %bb.ah
  %i.dq = add i64 %i.dh, -1                       ; 4 uses
  %i.dr = icmp eq ptr %.0.i.i.i.i, %i.do
  %i.ds = load ptr, ptr %.sroa.06.1.i.i, align 8, !tbaa !44 ; 4 uses
  %.not18.i.i.i.i98 = icmp eq ptr %i.ds, null     ; 2 uses
  br i1 %i.dr, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i98, label %._crit_edge.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !46
  %i.dv = urem i64 %i.du, %i.dj                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.dv, %i.dl
  br i1 %.not9.i.i.i.i.i, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dv
  store ptr %i.do, ptr %i.dw, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ak, %bb.ai
  %i.dx = icmp eq ptr %i.bm, %i.do
  br i1 %i.dx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.ds, ptr %i.bm, align 8, !tbaa !43
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.dn, align 8, !tbaa !52
  br label %bb.aq

bb.an:                                            ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i98, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !46
  %i.ea = urem i64 %i.dz, %i.dj                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ea, %i.dl
  br i1 %.not17.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ea
  store ptr %.0.i.i.i.i, ptr %i.eb, align 8, !tbaa !52
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.aj
  %i.ec = load ptr, ptr %.sroa.06.1.i.i, align 8, !tbaa !44
  store ptr %i.ec, ptr %.0.i.i.i.i, align 8, !tbaa !44
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.1.i.i, i64 noundef 24) #23
  %i.ed = load i64, ptr %i.bk, align 8, !tbaa !59
  %i.ee = add i64 %i.ed, -1
  store i64 %i.ee, ptr %i.bk, align 8, !tbaa !59
  %i.ef = icmp ult i64 %i.dd, %i.dq
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !70  ; 13 uses
  br i1 %i.ef, label %bb.ar, label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  %i.eg = load ptr, ptr %.pre, align 8, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef i64 %i.ei(ptr noundef nonnull align 8 dereferenceable(25) %.pre, i64 noundef %i.dc, i64 noundef %i.dq)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.as:                                            ; preds = %bb.ar
  %i.ek = load ptr, ptr %.pre, align 8, !tbaa !51
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef ptr %i.em(ptr noundef nonnull align 8 dereferenceable(25) %.pre, i64 noundef %i.dc, i64 noundef %i.dq)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3 ; 3 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit: ; preds = %bb.as
  %i.eo = load ptr, ptr %.pre, align 8, !tbaa !51
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 112
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(25) %.pre, i64 noundef %i.dc, i64 noundef %i.dd, i64 noundef %i.ej, ptr noundef %i.en)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit
  %i.er = load ptr, ptr %.pre, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(25) %.pre, i64 noundef %i.dc, ptr noundef %i.en)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  tail call void @__clang_call_terminate(ptr %i.ev) #25
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %bb.at
  %i.ew = load i64, ptr %i.bl, align 8, !tbaa !32 ; 2 uses
  %i.ex = urem i64 %i.ej, %i.ew                   ; 3 uses
  %i.ey = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ex
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i100, label %.loopexit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !44 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !46
  %i.fe = icmp eq i64 %i.ej, %i.fd
  br i1 %i.fe, label %.loopexit130, label %.lr.ph.i.i.i.i101

bb.aw:                                            ; preds = %bb.ax
  %i.ff = icmp eq i64 %i.ej, %i.fi
  br i1 %i.ff, label %.loopexit130, label %.lr.ph.i.i.i.i101, !llvm.loop !2

.lr.ph.i.i.i.i101:                                ; preds = %bb.av, %bb.aw
  %.020.i.i.i.i102 = phi ptr [ %i.fg, %bb.aw ], [ %i.fb, %bb.av ]
  %i.fg = load ptr, ptr %.020.i.i.i.i102, align 8, !tbaa !44 ; 4 uses
  %.not18.i.i.i.i103 = icmp eq ptr %i.fg, null
  br i1 %.not18.i.i.i.i103, label %.loopexit.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i101
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !46 ; 2 uses
  %i.fj = urem i64 %i.fi, %i.ew
  %.not19.i.i.i.i104 = icmp eq i64 %i.fj, %i.ex
  br i1 %.not19.i.i.i.i104, label %bb.aw, label %..loopexit_crit_edge21.i.i.i.i105, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i105:                ; preds = %bb.ax
  br label %.loopexit.i.i, !llvm.loop !2

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i101, %..loopexit_crit_edge21.i.i.i.i105, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.fk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc106:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.fk, align 8, !tbaa !44
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %i.ej, ptr %i.fl, align 8, !tbaa !54
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 0, ptr %i.fm, align 8, !tbaa !55
  %i.fn = invoke ptr @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, i64 noundef %i.ex, i64 noundef %i.ej, ptr noundef nonnull %i.fk, i64 noundef 1)
          to label %.loopexit130 unwind label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc106
  %i.fo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef 24) #23
  br label %.body

.loopexit130:                                     ; preds = %bb.aw, %.noexc106, %bb.av
  %.pn.i.i = phi ptr [ %i.fn, %.noexc106 ], [ %i.fb, %bb.av ], [ %i.fg, %bb.aw ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 %i.db, ptr %.1.i.i, align 8, !tbaa !46
  br label %bb.ba

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.f, %bb.ar, %.loopexit.i.i, %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit, %bb.ba, %bb.as, %bb.d
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %.pre, align 8, !tbaa !51
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr noundef nonnull align 8 dereferenceable(25) %.pre, i64 noundef %i.dc, ptr noundef %i.en)
          to label %.body unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  tail call void @__clang_call_terminate(ptr %i.fu) #25
  unreachable

bb.ba:                                            ; preds = %.loopexit130, %bb.aq
  %i.fv = load ptr, ptr %.pre, align 8, !tbaa !51
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 128
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(25) %.pre, i64 noundef %i.dc, i64 noundef %i.dq)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  %i.fy = add i64 %.253157, 1
  %.pre185 = load i64, ptr %i.bf, align 8, !tbaa !92
  br label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread

_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader163, %bb.ac, %..loopexit_crit_edge21.i.i.i.i, %bb.bb
  %i.fz = phi i64 [ %.pre185, %bb.bb ], [ %i.cd, %..loopexit_crit_edge21.i.i.i.i ], [ %i.cd, %.preheader163 ], [ %i.cd, %bb.ac ], [ %i.cd, %.lr.ph.i.i.i.i ] ; 2 uses
  %9 = phi ptr [ %.pre, %bb.bb ], [ %8, %..loopexit_crit_edge21.i.i.i.i ], [ %8, %.preheader163 ], [ %8, %bb.ac ], [ %8, %.lr.ph.i.i.i.i ]
  %.354 = phi i64 [ %i.fy, %bb.bb ], [ %.253157, %..loopexit_crit_edge21.i.i.i.i ], [ %.253157, %.preheader163 ], [ %.253157, %bb.ac ], [ %.253157, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ga = add nuw nsw i64 %.049158, 1             ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.fz
  br i1 %i.gb, label %bb.aa, label %.loopexit, !llvm.loop !89

bb.bc:                                            ; preds = %bb.b
  %i.gc = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9DirectMap10remove_idsERKNS_10IDSelectorEPNS_13InvertedListsE, ptr noundef nonnull @.str.2, i32 noundef 228)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  invoke void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #22
          to label %bb.bj unwind label %bb.bf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread: ; preds = %bb.bc
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0 = phi i1 [ false, %bb.be ], [ true, %bb.bd ] ; 2 uses
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gf = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bf
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !39
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.0, label %bb.bg, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.0, label %bb.bg, label %.body

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn128 = phi { ptr, i32 } [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  call void @__cxa_free_exception(ptr %i.gc) #20
  br label %.body

.loopexit:                                        ; preds = %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread, %bb.h, %.preheader, %bb.e, %bb.d
  %.046 = phi i64 [ %i.q, %bb.d ], [ %.152, %bb.h ], [ 0, %bb.e ], [ 0, %.preheader ], [ %.354, %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE4findERS5_.exit.thread ]
  %i.gk = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !57
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #23
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %.loopexit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i64 %.046

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.ay, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn89 = phi { ptr, i32 } [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn128, %bb.bg ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.fp, %bb.ay ], [ %i.fo, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %lpad.loopexit.split-lp262, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %10 = load ptr, ptr %3, align 8, !tbaa !41      ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %10, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIlSaIlEED2Ev.exit112, label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !57
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %10 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %10, i64 noundef %i.gu) #23
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit112

_ZNSt6vectorIlSaIlEED2Ev.exit112:                 ; preds = %bb.bi, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  resume { ptr, i32 } %.pn89

bb.bj:                                            ; preds = %bb.be, %bb.x, %bb.o
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #18

declare noundef i64 @_ZN5faiss18BlockInvertedLists10remove_idsERKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss9DirectMap10remove_idsERKNS_10IDSelectorEPNS_13InvertedListsE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.g, ptr %i.b, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 1, ptr %i.c, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !95
  %i.h = load i32, ptr %0, align 4, !tbaa !95     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !46
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !46
  %i.k = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not43 = icmp sgt i64 %i.k, %i.j
  br i1 %.not43, label %._crit_edge, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.b, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %.03344 = phi i64 [ %i.be, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit ], [ %i.k, %bb.b ] ; 10 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(25) %i.l, i64 noundef %.03344)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.c:                                             ; preds = %.lr.ph45
  %i.q = load ptr, ptr %3, align 8, !tbaa !70     ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(25) %i.q, i64 noundef %.03344)
          to label %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1 ; 2 uses

_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.preheader: ; preds = %bb.c
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph, label %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.preheader, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %.042 = phi i64 [ %.1, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ], [ 0, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.preheader ] ; 4 uses
  %.03141 = phi i64 [ %.132, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ], [ %i.p, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.042
  %i.x = load i64, ptr %i.w, align 8, !tbaa !46
  %i.y = load ptr, ptr %4, align 8, !tbaa !51
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.x)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.aa, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i64 %.03141, -1                 ; 3 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !70    ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, i64 noundef %.03344, i64 noundef %i.ab)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %3, align 8, !tbaa !70    ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, i64 noundef %.03344, i64 noundef %i.ab)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3 ; 2 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit: ; preds = %bb.f
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, i64 noundef %.03344, i64 noundef %.042, i64 noundef %i.ag, ptr noundef %i.al)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, i64 noundef %.03344, ptr noundef %i.al)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #25
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.au = add nsw i64 %.042, 1
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %bb.g, %bb.i
  %.132 = phi i64 [ %.03141, %bb.i ], [ %i.ab, %bb.g ] ; 3 uses
  %.1 = phi i64 [ %i.au, %bb.i ], [ %.042, %bb.g ] ; 2 uses
  %i.av = icmp slt i64 %.1, %.132
  br i1 %i.av, label %.lr.ph, label %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit._crit_edge, !llvm.loop !94

_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit._crit_edge: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.preheader
  %.031.lcssa = phi i64 [ %i.p, %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.preheader ], [ %.132, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ]
  %i.aw = sub nsw i64 %i.p, %.031.lcssa
  %i.ax = load ptr, ptr %5, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.03344
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !46
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(25) %i.q, i64 noundef %.03344, ptr noundef %i.u)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit._crit_edge
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #25
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit:      ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit._crit_edge
  %i.be = add nsw i64 %.03344, 1
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !46
  %.not.not = icmp slt i64 %.03344, %i.bf
  br i1 %.not.not, label %.lr.ph45, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit, %bb.e, %.lr.ph, %bb.c, %.lr.ph45
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %lpad.loopexit.split-lp50, 0
  call void @__clang_call_terminate(ptr %i.bg) #25
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare !callback !72 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss9DirectMap12update_codesEPNS_13InvertedListsEiPKlS4_PKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !38
  store i8 0, ptr %i.c, align 8, !tbaa !39
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.25) #20 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.f
end_hunk_0
