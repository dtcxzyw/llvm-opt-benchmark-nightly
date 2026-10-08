Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !125
  %i.d = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.f, ptr %i.b, align 8, !tbaa !91
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !112
  %i.i = load i64, ptr %i.b, align 8, !tbaa !91
  store i64 %i.i, ptr %i.c, align 8, !tbaa !114
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !114
  store i8 %i.k, ptr %i.j, align 1, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !113
  %i.n = load ptr, ptr %0, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !125
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !113  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.u, ptr %i.a, align 8, !tbaa !91
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.w, ptr %i.p, align 8, !tbaa !112
  %i.x = load i64, ptr %i.a, align 8, !tbaa !91
  store i64 %i.x, ptr %i.r, align 8, !tbaa !114
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !114
  store i8 %i.z, ptr %i.y, align 1, !tbaa !114
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !91  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !113
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !112   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !114
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc14ParamFieldInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !114
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !114
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !114
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.v = load i64, ptr %i.t, align 8, !tbaa !114
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc10ParamErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK4dmlc9parameter12ParamManager7RunInitIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_PSH_NS0_15ParamInitOptionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, ptr %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::set", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !146
  invoke void @_ZNK4dmlc9parameter12ParamManager9RunUpdateIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESt6vectorISC_SaISC_EEEEEEvPvT_SK_NS0_15ParamInitOptionEPSH_PSt3setIPNS0_16FieldAccessEntryESt4lessISP_ESaISP_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr %2, ptr %3, i32 noundef %5, ptr noundef %4, ptr noundef nonnull %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !148  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.not45 = icmp eq ptr %i.g, %i.h
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre53 = load ptr, ptr %i.f, align 8, !tbaa !148
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %7 = phi ptr [ %.pre53, %._crit_edge.loopexit ], [ %i.g, %bb.b ] ; 2 uses
  %.not4047 = icmp eq ptr %7, %i.h
  br i1 %.not4047, label %._crit_edge51, label %.lr.ph50

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.sroa.035.046 = phi ptr [ %i.v, %bb.e ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.035.046, i64 64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !336 ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %.lr.ph ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !336
  %i.n = icmp ult ptr %i.m, %.pre                 ; 3 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1356

_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.a
  br i1 %i.o, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.p = load ptr, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !336
  %i.q = icmp ult ptr %.pre, %i.p
  br i1 %i.q, label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %bb.e

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, %.lr.ph, %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  %i.r = load ptr, ptr %.pre, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(128) %.pre, ptr noundef %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  %i.v = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.046) #41 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge51:                                    ; preds = %bb.h, %._crit_edge
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !120
  invoke void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.w)
          to label %_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge51
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #40
  unreachable

_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %._crit_edge51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret void

.lr.ph50:                                         ; preds = %._crit_edge, %bb.h
  %.sroa.028.048 = phi ptr [ %i.ak, %bb.h ], [ %7, %._crit_edge ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.028.048, i64 64
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !120 ; 2 uses
  %.not10.i.i.i18 = icmp eq ptr %i.aa, null
  %.pre54 = load ptr, ptr %i.z, align 8, !tbaa !336 ; 4 uses
  br i1 %.not10.i.i.i18, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph50, %.lr.ph.i.i.i19
  %.012.i.i.i20 = phi ptr [ %.1.i.i.i25, %.lr.ph.i.i.i19 ], [ %i.aa, %.lr.ph50 ] ; 4 uses
  %.0811.i.i.i21 = phi ptr [ %.19.i.i.i22, %.lr.ph.i.i.i19 ], [ %i.a, %.lr.ph50 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !336
  %i.ad = icmp ult ptr %i.ac, %.pre54             ; 3 uses
  %.19.i.i.i22 = select i1 %i.ad, ptr %.0811.i.i.i21, ptr %.012.i.i.i20 ; 2 uses
  %.1.in.v.i.i.i23 = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i24 = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 %.1.in.v.i.i.i23
  %.1.i.i.i25 = load ptr, ptr %.1.in.i.i.i24, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %.1.i.i.i25, null
  br i1 %.not.i.i.i26, label %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i19, !llvm.loop !1357

_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i19
  %i.ae = icmp eq ptr %.19.i.i.i22, %i.a
  br i1 %i.ae, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit

_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit: ; preds = %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ad, ptr %.0811.i.i.i21, ptr %.012.i.i.i20
  %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.af = load ptr, ptr %.19.i.i.i22.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !336
  %.not41 = icmp ult ptr %.pre54, %i.af
  br i1 %.not41, label %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %bb.h

_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, %.lr.ph50, %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit
  %i.ag = load ptr, ptr %.pre54, align 8, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %.pre54, ptr noundef %1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit, %_ZNKSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread
  %i.ak = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.028.048) #41 ; 2 uses
  %.not40 = icmp eq ptr %i.ak, %i.h
  br i1 %.not40, label %._crit_edge51, label %.lr.ph50, !llvm.loop !1358

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.aj, %bb.g ], [ %i.u, %bb.d ]
  call void @_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setIPN4dmlc9parameter16FieldAccessEntryESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  invoke void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #40
  unreachable

_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  tail call void @_ZNSt8_Rb_treeIPN4dmlc9parameter16FieldAccessEntryES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #39
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1359

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6ToJsonINS_4tree19HistMakerTrainParamEEENS_10JsonObjectERKT_(ptr dead_on_unwind noalias writable sret(%"class.xgboost::JsonObject") align 8 %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::map.309", align 8      ; 9 uses
  %3 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !332
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.c, align 8, !tbaa !331
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %0, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.f, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.g, align 8, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  invoke void @_ZNK4dmlc9ParameterIN7xgboost4tree19HistMakerTrainParamEE8__DICT__B5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.309") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %i.j, %i.k
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN7xgboost10JsonStringD2Ev.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.s)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #40
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

bb.d:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph, %_ZN7xgboost10JsonStringD2Ev.exit
  %.sroa.016.024 = phi ptr [ %i.j, %.lr.ph ], [ %i.bc, %_ZN7xgboost10JsonStringD2Ev.exit ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.016.024, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.016.024, i64 64
  store i32 0, ptr %i.l, align 8, !tbaa !332
  store i64 0, ptr %i.m, align 8, !tbaa !331
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %3, align 8, !tbaa !131
  store ptr %i.o, ptr %i.n, align 8, !tbaa !125
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !112  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.016.024, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !113 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !91
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !112
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !91
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !114
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.ae = phi ptr [ %i.ac, %.noexc ], [ %i.o, %bb.e ] ; 2 uses
  switch i64 %i.aa, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.y, align 1, !tbaa !114
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !114
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
end_hunk_0
