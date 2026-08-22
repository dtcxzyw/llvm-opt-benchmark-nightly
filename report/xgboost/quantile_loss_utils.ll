Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile_loss_utils?download=true
inline.NumInlined: 771
inline.NumDeleted: 360
begin_hunk_0_@_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost6common17QuantileLossParamEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #18
  resume { ptr, i32 } %i.x
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc9parameter21ParamManagerSingletonIN7xgboost6common17QuantileLossParamEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #18
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc9parameter12ParamManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %._crit_edge
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4dmlc9parameter16FieldAccessEntryESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.u = phi ptr [ %i.ac, %bb.e ], [ %i.d, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %i.ad, %bb.e ], [ %i.c, %bb.a ]
  %.04 = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.a ]   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.04
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #18
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.ac = phi ptr [ %i.u, %.lr.ph ], [ %.pre5, %bb.d ] ; 2 uses
  %i.ad = phi ptr [ %i.v, %.lr.ph ], [ %.pre, %bb.d ] ; 2 uses
  %i.ae = add nuw i64 %.04, 1                     ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp ult i64 %i.ae, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !48
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common17QuantileLossParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.xgboost::common::ParamArray", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i64 14, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.d, align 2, !tbaa !15
  %i.e = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #31
          to label %.noexc13 unwind label %bb.c   ; 15 uses

.noexc13:                                         ; preds = %._crit_edge.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.e, i8 0, i64 160, i1 false)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.i, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.k, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIN7xgboost6common10ParamArrayIfEEEE, i64 16), ptr %i.e, align 8, !tbaa !46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc14 unwind label %bb.c

.noexc14:                                         ; preds = %.noexc13
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !16, !alias.scope !53
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.r, align 8, !tbaa !15, !alias.scope !53
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !9
  store i8 0, ptr %i.t, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %i.s, align 8, !tbaa !18
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !15
  %i.u = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.r
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.w = load i64, ptr %i.r, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc14
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 8, ptr %i.y, align 8, !tbaa !58
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.e)
          to label %_ZN4dmlc9ParameterIN7xgboost6common17QuantileLossParamEE7DECLAREINS2_10ParamArrayIfEEEERNS_9parameter10FieldEntryIT_EEPNS8_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_.exit unwind label %bb.c

_ZN4dmlc9ParameterIN7xgboost6common17QuantileLossParamEE7DECLAREINS2_10ParamArrayIfEEEERNS_9parameter10FieldEntryIT_EEPNS8_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 36, ptr %i.a, align 8, !tbaa !17
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %bb.d   ; 3 uses

.noexc18:                                         ; preds = %_ZN4dmlc9ParameterIN7xgboost6common17QuantileLossParamEE7DECLAREINS2_10ParamArrayIfEEEERNS_9parameter10FieldEntryIT_EEPNS8_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_.exit
  store ptr %i.aa, ptr %4, align 8, !tbaa !9
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.aa, ptr noundef nonnull align 1 dereferenceable(36) @.str.3, i64 36, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !16, !alias.scope !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ae, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i64 14, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 14, ptr %i.af, align 8, !tbaa !18, !alias.scope !60
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i8 0, ptr %i.ag, align 2, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc22 unwind label %bb.f

.noexc22:                                         ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.a unwind label %bb.f       ; 0 uses

bb.a:                                             ; preds = %.noexc22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.aj, align 8, !tbaa !63
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.aq = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ae
  br i1 %i.ar, label %_ZN7xgboost6common10ParamArrayIfED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.as = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #28
  br label %_ZN7xgboost6common10ParamArrayIfED2Ev.exit

_ZN7xgboost6common10ParamArrayIfED2Ev.exit:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.au = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.z
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7xgboost6common10ParamArrayIfED2Ev.exit
  %i.aw = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7xgboost6common10ParamArrayIfED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ay = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.c:                                             ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i, %.noexc13, %._crit_edge.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZN4dmlc9ParameterIN7xgboost6common17QuantileLossParamEE7DECLAREINS2_10ParamArrayIfEEEERNS_9parameter10FieldEntryIT_EEPNS8_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.e:                                             ; preds = %.noexc18
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %.noexc22, %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost6common10ParamArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.f ], [ %i.be, %bb.e ] ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.z
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.g
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.d ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn.pn, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.bc, %bb.c ]
  %i.bk = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.b
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.h
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6common17QuantileLossParamD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
end_hunk_0
