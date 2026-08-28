Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projsync?download=true
inline.NumInlined: 3666
inline.NumDeleted: 1202
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:bb.a
  br i1 %i.akx, label %bb.ju, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit883.thread

bb.ju:                                            ; preds = %bb.jt
  %i.aky = load ptr, ptr %i.aap, align 8, !tbaa !16
  %i.akz = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIA9_cvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.aky, ptr noundef nonnull align 1 dereferenceable(9) @.str.48)
          to label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit883 unwind label %.loopexit1342

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit883: ; preds = %bb.ju
  %i.ala = load ptr, ptr %i.aap, align 8, !tbaa !16
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %.not1323 = icmp eq ptr %i.akz, %i.alb
  br i1 %.not1323, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit883.thread, label %bb.jv

.loopexit1342:                                    ; preds = %bb.ju, %bb.mu, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit911, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit913, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit915, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit917, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit919, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit921, %bb.mx, %.noexc1181, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1178, %.noexc1183
  %lpad.loopexit1344 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.nv

.loopexit.split-lp1343:                           ; preds = %bb.mv
  %lpad.loopexit.split-lp1345 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.nv

bb.jv:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA9_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit883
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  %i.alc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixIKcEERKSC_PT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aal, ptr noundef @.str.48)
          to label %bb.jw unwind label %bb.jy

bb.jw:                                            ; preds = %bb.jv
  invoke void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %i.alc)
          to label %bb.jx unwind label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.ald = load i8, ptr %48, align 8, !tbaa !90
  %i.ale = icmp eq i8 %i.ald, 1
  br i1 %i.ale, label %bb.jz, label %bb.ml

bb.jy:                                            ; preds = %bb.jw, %bb.jv
  %i.alf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ms

bb.jz:                                            ; preds = %bb.jx
  %i.alg = load ptr, ptr %i.zg, align 8, !tbaa !16
  %i.alh = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIA12_cvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.alg, ptr noundef nonnull align 1 dereferenceable(12) @.str.49)
          to label %bb.ka unwind label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.ali = load ptr, ptr %i.zg, align 8, !tbaa !16
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %.not1324 = icmp eq ptr %i.alh, %i.alj
  br i1 %.not1324, label %bb.ml, label %bb.kc

bb.kb:                                            ; preds = %bb.jz
  %i.alk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mr

bb.kc:                                            ; preds = %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #29
  %i.all = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixIKcEERKSC_PT_(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef @.str.49)
          to label %bb.kd unwind label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  invoke void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %i.all)
          to label %bb.ke unwind label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.alm = load i8, ptr %49, align 8, !tbaa !90
  %i.aln = icmp eq i8 %i.alm, 2
  %i.alo = load i8, ptr %48, align 8
  %i.alp = icmp eq i8 %i.alo, 1
  %or.cond1311 = select i1 %i.aln, i1 %i.alp, i1 false
  br i1 %or.cond1311, label %bb.kg, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit887.thread

bb.kf:                                            ; preds = %bb.kd, %bb.kc
  %i.alq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mq

bb.kg:                                            ; preds = %bb.ke
  %i.alr = load ptr, ptr %i.zg, align 8, !tbaa !16
  %i.als = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIA5_cvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.alr, ptr noundef nonnull align 1 dereferenceable(5) @.str.50)
          to label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit887 unwind label %bb.kh

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit887: ; preds = %bb.kg
  %i.alt = load ptr, ptr %i.zg, align 8, !tbaa !16
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %.not1325 = icmp eq ptr %i.als, %i.alu
  br i1 %.not1325, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit887.thread, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.alv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mp

bb.ki:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA5_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit887
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #29
  %i.alw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixIKcEERKSC_PT_(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef @.str.50)
          to label %bb.kj unwind label %bb.kl

bb.kj:                                            ; preds = %bb.ki
  invoke void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %i.alw)
          to label %bb.kk unwind label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.alx = load i8, ptr %50, align 8, !tbaa !90   ; 2 uses
  %i.aly = icmp eq i8 %i.alx, 3
  br i1 %i.aly, label %bb.km, label %bb.mk

bb.kl:                                            ; preds = %bb.kj, %bb.ki
  %i.alz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mo

bb.km:                                            ; preds = %bb.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #29
  invoke void @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(16) %50)
          to label %bb.kn unwind label %bb.kt

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %i.ama = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @.str.51)
          to label %bb.ko unwind label %bb.ku

bb.ko:                                            ; preds = %bb.kn
  br i1 %i.ama, label %bb.kp, label %bb.lw

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  store ptr %49, ptr %54, align 8, !tbaa !99, !alias.scope !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zk, i8 0, i64 16, i1 false), !alias.scope !150
  store i64 -9223372036854775808, ptr %i.zl, align 8, !tbaa !107, !alias.scope !150
  %i.amb = load i8, ptr %49, align 8, !tbaa !90, !noalias !150
  switch i8 %i.amb, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888 [
    i8 1, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread1296
    i8 2, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread1297
    i8 0, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread
  ]

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread1296: ; preds = %bb.kp
  %i.amc = load ptr, ptr %i.zo, align 8, !tbaa !16, !noalias !150 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 24
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !87, !noalias !150
  store ptr %i.ame, ptr %i.zk, align 8, !tbaa !108, !alias.scope !150
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #29
  store ptr %49, ptr %55, align 8, !tbaa !99, !alias.scope !151
  store i64 0, ptr %i.aag, align 8
  store i64 -9223372036854775808, ptr %i.zn, align 8, !tbaa !107, !alias.scope !151
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amc, i64 8
  store ptr %i.amf, ptr %i.zm, align 8, !tbaa !108, !alias.scope !156
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.preheader

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread1297: ; preds = %bb.kp
  %i.amg = load ptr, ptr %i.zo, align 8, !tbaa !16, !noalias !150 ; 2 uses
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !117, !noalias !150
  store ptr %i.amh, ptr %i.zp, align 8, !tbaa !117, !alias.scope !150
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #29
  store ptr %49, ptr %55, align 8, !tbaa !99, !alias.scope !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zm, i8 0, i64 16, i1 false), !alias.scope !159
  store i64 -9223372036854775808, ptr %i.zn, align 8, !tbaa !107, !alias.scope !159
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 8
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !117, !noalias !156
  store ptr %i.amj, ptr %i.zq, align 8, !tbaa !117, !alias.scope !156
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.preheader

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread: ; preds = %bb.kp
  store i64 1, ptr %i.zl, align 8, !tbaa !107, !alias.scope !150
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #29
  br label %bb.kq

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888: ; preds = %bb.kp
  store i64 0, ptr %i.zl, align 8, !tbaa !107, !alias.scope !150
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  br label %bb.kq

bb.kq:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread
  store ptr %49, ptr %55, align 8, !tbaa !99, !alias.scope !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zm, i8 0, i64 16, i1 false), !alias.scope !164
  store i64 1, ptr %i.zn, align 8, !tbaa !107, !alias.scope !156
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.preheader

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.preheader: ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread1296, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv.exit888.thread1297, %bb.kq
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889: ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.backedge, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.preheader
  %.0254 = phi i1 [ false, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.preheader ], [ %.3257, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.backedge ] ; 4 uses
  %.0253 = phi i1 [ false, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.preheader ], [ %.3, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.backedge ] ; 5 uses
  %i.amk = invoke noundef zeroext i1 @_ZNK13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEeqERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %55)
          to label %bb.kr unwind label %bb.kv

bb.kr:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889
  br i1 %i.amk, label %bb.ks, label %bb.kw

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #29
  %i.aml = load ptr, ptr %53, align 8, !tbaa !167 ; 2 uses
  %i.amm = load ptr, ptr %i.zt, align 8, !tbaa !167 ; 2 uses
  %.not13262193 = icmp eq ptr %i.aml, %i.amm
  br i1 %.not13262193, label %._crit_edge2197, label %.lr.ph2196

.lr.ph2196:                                       ; preds = %bb.ks
  %or.cond19 = select i1 %.0254, i1 %.0253, i1 false
  br label %bb.ln

bb.kt:                                            ; preds = %bb.km
  %i.amn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit909

bb.ku:                                            ; preds = %bb.kn
  %i.amo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.mm

bb.kv:                                            ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889
  %i.amp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.lm

bb.kw:                                            ; preds = %bb.kr
  %i.amq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann6detail9iter_implIKNS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %bb.kx unwind label %bb.lb     ; 2 uses

bb.kx:                                            ; preds = %bb.kw
  %i.amr = load i8, ptr %i.amq, align 8, !tbaa !90
  %i.ams = icmp eq i8 %i.amr, 2
  br i1 %i.ams, label %bb.ky, label %bb.lj

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #29
  invoke fastcc void @_ZL8get_bboxRKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE(ptr dead_on_unwind noalias writable align 8 %56, ptr noundef nonnull align 8 dereferenceable(16) %i.amq)
          to label %bb.kz unwind label %bb.lc

bb.kz:                                            ; preds = %bb.ky
  %i.amt = load ptr, ptr %i.zr, align 8, !tbaa !169
  %i.amu = load ptr, ptr %56, align 8, !tbaa !172 ; 4 uses
  %i.amv = ptrtoint ptr %i.amt to i64
  %i.amw = ptrtoint ptr %i.amu to i64
  %i.amx = sub i64 %i.amv, %i.amw
  %i.amy = icmp eq i64 %i.amx, 32
  br i1 %i.amy, label %bb.la, label %bb.lh

bb.la:                                            ; preds = %bb.kz
  %i.amz = load double, ptr %i.amu, align 8, !tbaa !173
  %i.ana = fcmp oeq double %i.amz, -1.800000e+02
  br i1 %i.ana, label %bb.le, label %bb.ld

bb.lb:                                            ; preds = %bb.kw
  %i.anb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.lm

bb.lc:                                            ; preds = %bb.ky
  %i.anc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.ld:                                            ; preds = %bb.la
  %i.and = getelementptr inbounds nuw i8, ptr %i.amu, i64 16
  %i.ane = load double, ptr %i.and, align 8, !tbaa !173
  %i.anf = fcmp oeq double %i.ane, 1.800000e+02
  %spec.select528 = select i1 %i.anf, i1 true, i1 %.0253
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.la
  %.1255 = phi i1 [ %.0254, %bb.ld ], [ true, %bb.la ]
  %.1 = phi i1 [ %spec.select528, %bb.ld ], [ %.0253, %bb.la ]
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(24) %56)
          to label %._crit_edge2442 unwind label %bb.lf

._crit_edge2442:                                  ; preds = %bb.le
  %.pre2443 = load ptr, ptr %56, align 8, !tbaa !172
  br label %bb.lh

bb.lf:                                            ; preds = %bb.le
  %i.ang = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.anh = load ptr, ptr %56, align 8, !tbaa !172 ; 3 uses
  %.not.i.i.i892 = icmp eq ptr %i.anh, null
  br i1 %.not.i.i.i892, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.ani = load ptr, ptr %i.zs, align 8, !tbaa !175
  %i.anj = ptrtoint ptr %i.ani to i64
  %i.ank = ptrtoint ptr %i.anh to i64
  %i.anl = sub i64 %i.anj, %i.ank
  call void @_ZdlPvm(ptr noundef nonnull %i.anh, i64 noundef %i.anl) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.lh:                                            ; preds = %._crit_edge2442, %bb.kz
  %i.anm = phi ptr [ %.pre2443, %._crit_edge2442 ], [ %i.amu, %bb.kz ] ; 3 uses
  %.2256 = phi i1 [ %.1255, %._crit_edge2442 ], [ %.0254, %bb.kz ]
  %.2 = phi i1 [ %.1, %._crit_edge2442 ], [ %.0253, %bb.kz ]
  %.not.i.i.i893 = icmp eq ptr %i.anm, null
  br i1 %.not.i.i.i893, label %_ZNSt6vectorIdSaIdEED2Ev.exit894, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.ann = load ptr, ptr %i.zs, align 8, !tbaa !175
  %i.ano = ptrtoint ptr %i.ann to i64
  %i.anp = ptrtoint ptr %i.anm to i64
  %i.anq = sub i64 %i.ano, %i.anp
  call void @_ZdlPvm(ptr noundef nonnull %i.anm, i64 noundef %i.anq) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit894

_ZNSt6vectorIdSaIdEED2Ev.exit894:                 ; preds = %bb.lh, %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #29
  br label %bb.lj

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.lg, %bb.lf, %bb.lc
  %.pn467 = phi { ptr, i32 } [ %i.anc, %bb.lc ], [ %i.ang, %bb.lf ], [ %i.ang, %bb.lg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #29
  br label %bb.lm

bb.lj:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit894, %bb.kx
  %.3257 = phi i1 [ %.2256, %_ZNSt6vectorIdSaIdEED2Ev.exit894 ], [ %.0254, %bb.kx ]
  %.3 = phi i1 [ %.2, %_ZNSt6vectorIdSaIdEED2Ev.exit894 ], [ %.0253, %bb.kx ]
  %i.anr = load ptr, ptr %54, align 8, !tbaa !99
  %i.ans = load i8, ptr %i.anr, align 8, !tbaa !90
  switch i8 %i.ans, label %bb.ll [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerESC_IhSaIhEEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.lk
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerESC_IhSaIhEEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %bb.lj
  %.promoted11.i.i = load ptr, ptr %i.zk, align 8, !tbaa !176
  %i.ant = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #34
  store ptr %i.ant, ptr %i.zk, align 8, !tbaa !176
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.backedge

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS7_blmdSaNS9_14adl_serializerESC_IhSaIhEEEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.lk, %bb.ll
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889

bb.lk:                                            ; preds = %bb.lj
  %i.anu = load ptr, ptr %i.zp, align 8, !tbaa !177
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 16
  store ptr %i.anv, ptr %i.zp, align 8, !tbaa !177
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.backedge

bb.ll:                                            ; preds = %bb.lj
  %i.anw = load i64, ptr %i.zl, align 8, !tbaa !107
  %i.anx = add nsw i64 %i.anw, 1
  store i64 %i.anx, ptr %i.zl, align 8, !tbaa !107
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv.exit889.backedge

bb.lm:                                            ; preds = %bb.lb, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.kv
  %.pn470 = phi { ptr, i32 } [ %i.amp, %bb.kv ], [ %.pn467, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.anb, %bb.lb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #29
  br label %bb.lv

._crit_edge2197:                                  ; preds = %bb.lu, %bb.ks
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %53) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #29
  br label %bb.ma

bb.ln:                                            ; preds = %.lr.ph2196, %bb.lu
  %.sroa.01231.02194 = phi ptr [ %i.aml, %.lr.ph2196 ], [ %i.apg, %bb.lu ] ; 4 uses
  br i1 %or.cond19, label %bb.lo, label %bb.lq

bb.lo:                                            ; preds = %bb.ln
  %i.any = load ptr, ptr %.sroa.01231.02194, align 8, !tbaa !172 ; 3 uses
  %i.anz = load double, ptr %i.any, align 8, !tbaa !173
  %i.aoa = fcmp oeq double %i.anz, -1.800000e+02
  br i1 %i.aoa, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  store double 1.800000e+02, ptr %i.any, align 8, !tbaa !173
  %i.aob = getelementptr inbounds nuw i8, ptr %i.any, i64 16 ; 2 uses
  %i.aoc = load double, ptr %i.aob, align 8, !tbaa !173
  %i.aod = fadd double %i.aoc, 3.600000e+02
  store double %i.aod, ptr %i.aob, align 8, !tbaa !173
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo, %bb.ln
  %i.aoe = load ptr, ptr %52, align 16, !tbaa !178 ; 6 uses
  %i.aof = load ptr, ptr %i.zh, align 8, !tbaa !178
  %i.aog = icmp eq ptr %i.aoe, %i.aof
  br i1 %i.aog, label %bb.lr, label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  %i.aoh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01231.02194)
          to label %bb.lu unwind label %bb.ls     ; 0 uses

bb.ls:                                            ; preds = %bb.lr
  %i.aoi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.lv

bb.lt:                                            ; preds = %bb.lq
  %i.aoj = load ptr, ptr %.sroa.01231.02194, align 8, !tbaa !172 ; 4 uses
  %i.aok = load double, ptr %i.aoj, align 8, !tbaa !173 ; 2 uses
  %i.aol = load double, ptr %i.aoe, align 8, !tbaa !173 ; 2 uses
  %i.aom = fcmp olt double %i.aok, %i.aol
  %i.aon = select i1 %i.aom, double %i.aok, double %i.aol
  store double %i.aon, ptr %i.aoe, align 8, !tbaa !173
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aoq = load double, ptr %i.aop, align 8, !tbaa !173 ; 2 uses
  %i.aor = load double, ptr %i.aoo, align 8, !tbaa !173 ; 2 uses
  %i.aos = fcmp olt double %i.aoq, %i.aor
  %i.aot = select i1 %i.aos, double %i.aoq, double %i.aor
  store double %i.aot, ptr %i.aoo, align 8, !tbaa !173
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoe, i64 16 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoj, i64 16
  %i.aow = load double, ptr %i.aou, align 8, !tbaa !173 ; 2 uses
  %i.aox = load double, ptr %i.aov, align 8, !tbaa !173 ; 2 uses
  %i.aoy = fcmp olt double %i.aow, %i.aox
  %i.aoz = select i1 %i.aoy, double %i.aox, double %i.aow
  store double %i.aoz, ptr %i.aou, align 8, !tbaa !173
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoe, i64 24 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoj, i64 24
  %i.apc = load double, ptr %i.apa, align 8, !tbaa !173 ; 2 uses
  %i.apd = load double, ptr %i.apb, align 8, !tbaa !173 ; 2 uses
  %i.ape = fcmp olt double %i.apc, %i.apd
  %i.apf = select i1 %i.ape, double %i.apd, double %i.apc
  store double %i.apf, ptr %i.apa, align 8, !tbaa !173
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lr, %bb.lt
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.01231.02194, i64 24 ; 2 uses
  %.not1326 = icmp eq ptr %i.apg, %i.amm
  br i1 %.not1326, label %._crit_edge2197, label %bb.ln

bb.lv:                                            ; preds = %bb.ls, %bb.lm
  %.pn470.pn = phi { ptr, i32 } [ %.pn470, %bb.lm ], [ %i.aoi, %bb.ls ]
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %53) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #29
  br label %bb.mm

bb.lw:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #29
  invoke fastcc void @_ZL8get_bboxRKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE(ptr dead_on_unwind noalias writable align 8 %57, ptr noundef nonnull align 8 dereferenceable(16) %49)
          to label %bb.lx unwind label %bb.lz

bb.lx:                                            ; preds = %bb.lw
  %i.aph = load ptr, ptr %52, align 16, !tbaa !172 ; 3 uses
  %i.api = load ptr, ptr %i.zi, align 16, !tbaa !175
  %i.apj = load <2 x ptr>, ptr %57, align 16, !tbaa !178
  store <2 x ptr> %i.apj, ptr %52, align 16, !tbaa !178
  %i.apk = load ptr, ptr %i.zj, align 16, !tbaa !175
  store ptr %i.apk, ptr %i.zi, align 16, !tbaa !175
  %.not.i.i.i.i.i = icmp eq ptr %i.aph, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit899, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.apl = ptrtoint ptr %i.api to i64
  %i.apm = ptrtoint ptr %i.aph to i64
  %i.apn = sub i64 %i.apl, %i.apm
  call void @_ZdlPvm(ptr noundef nonnull %i.aph, i64 noundef %i.apn) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit899

_ZNSt6vectorIdSaIdEED2Ev.exit899:                 ; preds = %bb.ly, %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #29
  br label %bb.ma

bb.lz:                                            ; preds = %bb.lw
  %i.apo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #29
  br label %bb.mm

bb.ma:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit899, %._crit_edge2197
  %i.app = load ptr, ptr %i.zh, align 8, !tbaa !169
  %i.apq = load ptr, ptr %52, align 16, !tbaa !172 ; 7 uses
end_hunk_0
