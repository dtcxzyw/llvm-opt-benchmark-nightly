inline.NumInlined: 816
inline.NumDeleted: 466
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__clang_call_terminate:bb.a
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @_ZN11OpenImageIO4v3_110ImageInputC2Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !65 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !16
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !76

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil13string_is_intENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil15string_is_floatENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !78     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = load ptr, ptr %0, align 8, !tbaa !78     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, !prof !128

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #20
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !79
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !129

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 4
  store i64 %i.aa, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !129

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !78    ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !127 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !78
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %2 = ptrtoint ptr %i.al to i64
  %3 = ptrtoint ptr %i.ae to i64
  %i.an = add i64 %i.ai, %2
  %i.ao = add i64 %i.an, -8
  %i.ap = add i64 %3, %i.ah
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bb, ptr %.011.i.i.i.i, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !133

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !127
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !74     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = load ptr, ptr %0, align 8, !tbaa !74     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !65 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !16
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !76

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !77
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !134

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !135
  %.pre45 = ptrtoint ptr %i.ak to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.f ]
  %i.an = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.af, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.j, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.an
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %i.ao = sub i64 %.pre-phi46, %i.l
  %i.ap = getelementptr inbounds i8, ptr %i.j, i64 %i.ao
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28 ], [ %i.ap, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !65 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26, !llvm.loop !136

bb.g:                                             ; preds = %bb.e
  %i.aw = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.aw, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i32 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %bb.g ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIfSaIfEE17_M_default_appendEm:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %3, align 4, !tbaa !99   ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !129

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !95
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !99
  store float %i.s, ptr %i.d, align 4, !tbaa !99
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !95
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !129

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load float, ptr %1, align 4, !tbaa !99
  store float %i.ac, ptr %i.ab, align 4, !tbaa !99
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %broadcast.splatinsert131, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x float> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !99
  store <4 x float> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !99
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !153

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i, align 4, !tbaa !99
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !154

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !99
  store <4 x float> %broadcast.splat, ptr %i.ay, align 4, !tbaa !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !156

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !95
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !129

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !95
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load float, ptr %1, align 4, !tbaa !99
  store float %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !99
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !95
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69
  %4 = sub i64 %i.f, %i.j
  %5 = add i64 %4, -4                             ; 2 uses
  %i.bg = lshr i64 %5, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %5, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bh, 9223372036854775800  ; 3 uses
  %i.bi = shl i64 %n.vec116, 2
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %broadcast.splatinsert117 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x float> %broadcast.splatinsert117, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bk = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x float> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !99
  store <4 x float> %broadcast.splat118, ptr %i.bl, align 4, !tbaa !99
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bm, label %middle.block123, label %vector.body119, !llvm.loop !157

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bh, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bj, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bn, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i72, align 4, !tbaa !99
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !158

bb.q:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %0, align 8, !tbaa !98    ; 5 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.bq = sub i64 %i.f, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 4 uses
  %i.bs = sub nsw i64 2305843009213693951, %i.br
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %bb.r, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %2)
  %i.bu = add nsw i64 %.sroa.speculated.i, %i.br  ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.br
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 2305843009213693951)
  %i.bx = select i1 %i.bv, i64 2305843009213693951, i64 %i.bw ; 3 uses
  %i.by = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bz = sub i64 %i.by, %i.bp                    ; 4 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ca = shl nuw nsw i64 %i.bx, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bz ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i75
  %i.cf = load float, ptr %3, align 4, !tbaa !99  ; 2 uses
  %i.cg = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.cg, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cj = shl i64 %n.vec144, 2
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %broadcast.splatinsert145 = insertelement <4 x float> poison, float %i.cf, i64 0
  %broadcast.splat146 = shufflevector <4 x float> %broadcast.splatinsert145, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cl = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x float> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !99
  store <4 x float> %broadcast.splat146, ptr %i.cm, align 4, !tbaa !99
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cn, label %middle.block151, label %vector.body147, !llvm.loop !159

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.ci, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cd, %bb.t ], [ %i.ck, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store float %i.cf, ptr %.07.i.i.i.i.i.i.i77, align 4, !tbaa !99
  %i.co = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.co, %i.ce
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !160

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cp = icmp sgt i64 %i.bz, 4
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !129

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr align 4 %i.bo, i64 %i.bz, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cq = icmp eq i64 %i.bz, 4
  br i1 %i.cq, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = load float, ptr %i.bo, align 4, !tbaa !99
  store float %i.cr, ptr %i.cc, align 4, !tbaa !99
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %2 ; 3 uses
  %i.ct = sub i64 %i.f, %i.by                     ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, 4
  br i1 %i.cu, label %bb.x, label %bb.y, !prof !129

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %1, i64 %i.ct, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.cv = icmp eq i64 %i.ct, 4
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = load float, ptr %1, align 4, !tbaa !99
  store float %i.cw, ptr %i.cs, align 4, !tbaa !99
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %.not.i82 = icmp eq ptr %i.bo, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = sub i64 %i.e, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cy) #20
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.cc, ptr %0, align 8, !tbaa !98
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !95
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bx
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !101
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
