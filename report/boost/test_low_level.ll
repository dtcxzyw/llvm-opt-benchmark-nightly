inline.NumInlined: 13734
inline.NumDeleted: 6366
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_St4lessISD_ESaISt4pairIKSD_SD_EEEENS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcSB_EEEbRKNS0_5resp310basic_nodeIT_EE:bb.a
bb.n:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE7emplaceILm1EJSL_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load i32, ptr %1, align 8, !tbaa !78
  store i32 %i.a, ptr %2, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !11
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !17
  %i.l = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit

_ZN5boost5redis7adapter5errorC2EOS2_.exit:        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %i.m, ptr %i.o, align 8, !tbaa !20
  store ptr %i.f, ptr %i.c, align 8, !tbaa !17
  store i64 0, ptr %i.n, align 8, !tbaa !20
  store i8 0, ptr %i.f, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !132
  switch i8 %i.q, label %bb.c [
    i8 0, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit
    i8 2, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN5boost5redis7adapter5errorC2EOS2_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !134, !range !86, !noundef !87
  %i.t = trunc nuw i8 %i.s to i1
  store i8 0, ptr %i.r, align 8, !tbaa !134
  br i1 %i.t, label %bb.d, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %i.v)
          to label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #29
  unreachable

bb.f:                                             ; preds = %_ZN5boost5redis7adapter5errorC2EOS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit

_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit: ; preds = %bb.f, %_ZN5boost5redis7adapter5errorC2EOS2_.exit, %bb.c, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = load i32, ptr %2, align 8, !tbaa !78
  store i32 %i.ae, ptr %0, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !11
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !20  ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.al, i1 false)
  br label %_ZN5boost5redis7adapter5errorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !17
  %i.am = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !19
  %.pre6 = load i64, ptr %i.o, align 8, !tbaa !20
  br label %_ZN5boost5redis7adapter5errorD2Ev.exit

_ZN5boost5redis7adapter5errorD2Ev.exit:           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %.pre6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.aj, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !20
  store i8 2, ptr %i.p, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5redis5resp35parseINS0_7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_St4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_SF_EEEENS3_5errorEEEEEEEbRNS1_6parserERKSt17basic_string_viewIcSD_ERT_RNS6_10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #8 comdat {
bb.a:
  %4 = alloca %"class.std::optional.884", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5boost5redis5resp36parser10is_parsingEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28 ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZNK5boost5redis5resp36parser4doneEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.b

.critedge:                                        ; preds = %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.backedge

bb.b:                                             ; preds = %.lr.ph, %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !209
  call void @_ZN5boost5redis5resp36parser7consumeESt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.884") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  %i.e = load i64, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 1
  br i1 %i.g, label %_ZNK5boost6system10error_codecvbEv.exit, label %.loopexit.sink.split

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.c
  %i.h = load i32, ptr %3, align 8, !tbaa !197
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread17, label %.loopexit.sink.split

_ZNK5boost6system10error_codecvbEv.exit.thread17: ; preds = %bb.b, %_ZNK5boost6system10error_codecvbEv.exit
  %i.i = load i8, ptr %i.d, align 8, !tbaa !1247, !range !86, !noundef !87
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit, label %.loopexit.sink.split

_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread17
  call void @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_St4hashISD_ESt8equal_toISD_ESaISt4pairIKSD_SD_EEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSB_EEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.k = load i64, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i.i13 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i13, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit
  %i.m = icmp eq i64 %i.k, 1
  br i1 %i.m, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %3, align 8, !tbaa !197
  %i.o = icmp eq i32 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.o, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.e, %.critedge
  %i.p = call noundef zeroext i1 @_ZNK5boost5redis5resp36parser4doneEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  br i1 %i.p, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %bb.c, %_ZNK5boost6system10error_codecvbEv.exit.thread17, %_ZNK5boost6system10error_codecvbEv.exit, %bb.d
  %.2.ph = phi i1 [ true, %bb.d ], [ true, %_ZNK5boost6system10error_codecvbEv.exit ], [ false, %_ZNK5boost6system10error_codecvbEv.exit.thread17 ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.backedge, %.loopexit.sink.split, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %.2.ph, %.loopexit.sink.split ], [ true, %.backedge ], [ true, %bb.e ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_St4hashISD_ESt8equal_toISD_ESaISt4pairIKSD_SD_EEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSB_EEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !556
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !539
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_St4hashISD_ESt8equal_toISD_ESaISt4pairIKSD_SD_EEEENS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcSB_EEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #28
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !208, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  store i8 1, ptr %i.f, align 8, !tbaa !208
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %1, align 8, !tbaa !185
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.k, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !556    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @.str.133, ptr %3, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.134, ptr %i.l, align 8, !tbaa !178
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 659, ptr %i.m, align 8, !tbaa !179
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 21, ptr %i.n, align 4, !tbaa !180
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load i8, ptr %i.o, align 8, !tbaa !539
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  unreachable

_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit: ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !537, !range !86, !noundef !87
  %i.t = trunc nuw i8 %i.s to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.t, label %.thread, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i

.thread:                                          ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  br label %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !440
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i32 1065353216, ptr %i.w, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %.sroa_idx, align 4
  %.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %6 = load i64, ptr %.sroa.5, align 8, !tbaa !15
  store i64 %6, ptr %.sroa.5.32..sroa_idx, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store ptr %i.x, ptr %i.k, align 8, !tbaa !438
  store ptr null, ptr %i.x, align 8, !tbaa !1428
  store i8 1, ptr %i.r, align 8, !tbaa !537
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %0, align 8, !tbaa !556    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr @.str.133, ptr %4, align 8, !tbaa !176
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.134, ptr %i.aa, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 661, ptr %i.ab, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 44, ptr %i.ac, align 4, !tbaa !180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !539
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  unreachable

_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit7: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !537, !range !86, !noundef !87
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit7
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

bb.h:                                             ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit7
  store ptr null, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre = load i8, ptr %i.ad, align 8, !tbaa !539
  %i.aj = icmp eq i8 %.pre, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr @.str.133, ptr %5, align 8, !tbaa !176
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.134, ptr %i.ak, align 8, !tbaa !178
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 664, ptr %i.al, align 8, !tbaa !179
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 30, ptr %i.am, align 4, !tbaa !180
  br i1 %i.aj, label %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %5) #30
  unreachable

_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8: ; preds = %.thread, %bb.h
  %i.an = phi ptr [ %i.k, %.thread ], [ %i.z, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !537, !range !86, !noundef !87
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNRSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE5valueEv.exit9, label %bb.j

bb.j:                                             ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNRSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE5valueEv.exit9: ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost5redis7adapter6detail8map_implISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEE7on_nodeISt17basic_string_viewIcS8_EEEvRSJ_RKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(9) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.b, %bb.a, %_ZNRSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE5valueEv.exit9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_St4hashISD_ESt8equal_toISD_ESaISt4pairIKSD_SD_EEEENS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcSB_EEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.boost::system::result.687", align 8 ; 11 uses
  %4 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !185    ; 2 uses
  switch i32 %i.b, label %bb.q [
    i32 12, label %bb.b
    i32 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 %i.b, ptr %4, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191  ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !190  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 10 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.g, ptr %i.a, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.g, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %i.c, align 8, !tbaa !17
  %i.l = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.l, ptr %i.h, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !19
  store i8 %i.n, ptr %i.m, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  store i64 %i.o, ptr %i.i, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.r = load i32, ptr %4, align 8, !tbaa !78     ; 2 uses
  store i32 %i.r, ptr %3, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 10 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.y, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.s, align 8, !tbaa !17
  %i.z = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.z, ptr %i.t, align 8, !tbaa !19
  %.pre = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.aa = phi ptr [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.ab = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !17
  store i64 0, ptr %i.i, align 8, !tbaa !20
  store i8 0, ptr %i.h, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i8 2, ptr %i.ad, align 8, !tbaa !539
  %i.ae = load ptr, ptr %0, align 8, !tbaa !556   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 %i.r, ptr %2, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !11
  %i.ah = icmp eq ptr %i.aa, %i.t
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.aj, i1 false)
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.g
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !17
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !19
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !19
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i

_ZN5boost5redis7adapter5errorC2EOS2_.exit.i:      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %i.ab, ptr %i.al, align 8, !tbaa !20
  store ptr %i.t, ptr %i.s, align 8, !tbaa !17
  store i64 0, ptr %i.ac, align 8, !tbaa !20
  store i8 0, ptr %i.t, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !539
  switch i8 %i.an, label %bb.i [
    i8 0, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEENS_5redis7adapter5errorEEE8_destroyEv.exit.i
    i8 2, label %bb.k
  ]

end_hunk_0
begin_hunk_1_@_ZN5boost4mp116detail19mp_with_index_impl_ILm2EE4callILm0ENS_8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISF_ESaISF_EEENS_5redis7adapter5errorEEE2L1EEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSQ_:bb.a

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1079 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e, !llvm.loop !1092

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !116
  store i64 %i.w, ptr %i.n, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  store ptr %i.q, ptr %i.k, align 8, !tbaa !119
  br label %_ZNSt22_Optional_payload_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EEE12_M_constructIJRKSA_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EEE12_M_constructIJRKSA_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.c
  store i8 1, ptr %i.g, align 8, !tbaa !573
  br label %_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm0EEEEvT_.exit

bb.g:                                             ; preds = %bb.a
  %i.x = load i32, ptr %i.e, align 8, !tbaa !78
  store i32 %i.x, ptr %i.c, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !11
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !15
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.g
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %i.y, align 8, !tbaa !17
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.g
  %i.ah = phi ptr [ %i.af, %.noexc.i.i.i.i.i.i.i ], [ %i.aa, %bb.g ] ; 2 uses
  switch i64 %i.ad, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm1EEEEvT_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !19
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !19
  br label %_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm1EEEEvT_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm1EEEEvT_.exit

_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm1EEEEvT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.h, %bb.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !20
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm0EEEEvT_.exit

_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm0EEEEvT_.exit: ; preds = %_ZNSt22_Optional_payload_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EEE12_M_constructIJRKSA_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i, %bb.b, %_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm1EEEEvT_.exit
  %.sink = phi i8 [ 2, %_ZNK5boost8variant26detail20variant_cc_base_implILb1ELb0EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE2L1clISt17integral_constantImLm1EEEEvT_.exit ], [ 1, %bb.b ], [ 1, %_ZNSt22_Optional_payload_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EEE12_M_constructIJRKSA_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 %.sink, ptr %i.an, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !575
  switch i8 %i.b, label %bb.b [
    i8 0, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE8_destroyEv.exit
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !573, !range !86, !noundef !87
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8, !tbaa !573
  br i1 %i.e, label %bb.c, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE8_destroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %i.g)
          to label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE8_destroyEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE8_destroyEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #31
  br label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE8_destroyEv.exit

_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEENS_5redis7adapter5errorEEE8_destroyEv.exit: ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5redis5resp35parseINS0_7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISF_ESt8equal_toISF_ESaISF_EEENS3_5errorEEEEEEEbRNS1_6parserERKSt17basic_string_viewIcSD_ERT_RNS6_10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #8 comdat {
bb.a:
  %4 = alloca %"class.std::optional.884", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5boost5redis5resp36parser10is_parsingEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28 ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZNK5boost5redis5resp36parser4doneEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.b

.critedge:                                        ; preds = %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.backedge

bb.b:                                             ; preds = %.lr.ph, %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !209
  call void @_ZN5boost5redis5resp36parser7consumeESt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.884") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  %i.e = load i64, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 1
  br i1 %i.g, label %_ZNK5boost6system10error_codecvbEv.exit, label %.loopexit.sink.split

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.c
  %i.h = load i32, ptr %3, align 8, !tbaa !197
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread17, label %.loopexit.sink.split

_ZNK5boost6system10error_codecvbEv.exit.thread17: ; preds = %bb.b, %_ZNK5boost6system10error_codecvbEv.exit
  %i.i = load i8, ptr %i.d, align 8, !tbaa !1247, !range !86, !noundef !87
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit, label %.loopexit.sink.split

_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread17
  call void @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISD_ESt8equal_toISD_ESaISD_EEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSB_EEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.k = load i64, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i.i13 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i13, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit
  %i.m = icmp eq i64 %i.k, 1
  br i1 %i.m, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %3, align 8, !tbaa !197
  %i.o = icmp eq i32 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.o, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.e, %.critedge
  %i.p = call noundef zeroext i1 @_ZNK5boost5redis5resp36parser4doneEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  br i1 %i.p, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %bb.c, %_ZNK5boost6system10error_codecvbEv.exit.thread17, %_ZNK5boost6system10error_codecvbEv.exit, %bb.d
  %.2.ph = phi i1 [ true, %bb.d ], [ true, %_ZNK5boost6system10error_codecvbEv.exit ], [ false, %_ZNK5boost6system10error_codecvbEv.exit.thread17 ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.backedge, %.loopexit.sink.split, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %.2.ph, %.loopexit.sink.split ], [ true, %.backedge ], [ true, %bb.e ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISD_ESt8equal_toISD_ESaISD_EEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSB_EEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !625
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !606
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISD_ESt8equal_toISD_ESaISD_EEENS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcSB_EEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #28
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !208, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  store i8 1, ptr %i.f, align 8, !tbaa !208
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %1, align 8, !tbaa !185
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.k, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !625    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @.str.133, ptr %3, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.134, ptr %i.l, align 8, !tbaa !178
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 659, ptr %i.m, align 8, !tbaa !179
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 21, ptr %i.n, align 4, !tbaa !180
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load i8, ptr %i.o, align 8, !tbaa !606
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  unreachable

_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit: ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !604, !range !86, !noundef !87
  %i.t = trunc nuw i8 %i.s to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.t, label %.thread, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i

.thread:                                          ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  br label %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i32 1065353216, ptr %i.w, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %.sroa_idx, align 4
  %.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %6 = load i64, ptr %.sroa.5, align 8, !tbaa !15
  store i64 %6, ptr %.sroa.5.32..sroa_idx, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store ptr %i.x, ptr %i.k, align 8, !tbaa !51
  store ptr null, ptr %i.x, align 8, !tbaa !933
  store i8 1, ptr %i.r, align 8, !tbaa !604
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %0, align 8, !tbaa !625    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr @.str.133, ptr %4, align 8, !tbaa !176
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.134, ptr %i.aa, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 661, ptr %i.ab, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 44, ptr %i.ac, align 4, !tbaa !180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !606
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  unreachable

_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit7: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !604, !range !86, !noundef !87
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit7
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

bb.h:                                             ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit7
  store ptr null, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre = load i8, ptr %i.ad, align 8, !tbaa !606
  %i.aj = icmp eq i8 %.pre, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr @.str.133, ptr %5, align 8, !tbaa !176
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.134, ptr %i.ak, align 8, !tbaa !178
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 664, ptr %i.al, align 8, !tbaa !179
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 30, ptr %i.am, align 4, !tbaa !180
  br i1 %i.aj, label %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %5) #30
  unreachable

_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8: ; preds = %.thread, %bb.h
  %i.an = phi ptr [ %i.k, %.thread ], [ %i.z, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !604, !range !86, !noundef !87
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNRSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE5valueEv.exit9, label %bb.j

bb.j:                                             ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8
  tail call void @_ZSt27__throw_bad_optional_accessv() #30
  unreachable

_ZNRSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE5valueEv.exit9: ; preds = %_ZNR5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost5redis7adapter6detail8set_implISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISA_ESt8equal_toISA_ESaISA_EEE7on_nodeISt17basic_string_viewIcS8_EEEvRSG_RKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.b, %bb.a, %_ZNRSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE5valueEv.exit9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISD_ESt8equal_toISD_ESaISD_EEENS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcSB_EEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::variant2::detail::variant_base_impl<false, true, std::optional<std::unordered_set<std::__cxx11::basic_string<char>>>, boost::redis::adapter::error>::_destroy_L1", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.boost::system::result.741", align 8 ; 9 uses
  %4 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !185    ; 2 uses
  switch i32 %i.b, label %bb.h [
    i32 12, label %bb.b
    i32 6, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 %i.b, ptr %4, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191  ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !190  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 10 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.g, ptr %i.a, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.g, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %i.c, align 8, !tbaa !17
  %i.l = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.l, ptr %i.h, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !19
  store i8 %i.n, ptr %i.m, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  store i64 %i.o, ptr %i.i, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.r = load i32, ptr %4, align 8, !tbaa !78
  store i32 %i.r, ptr %3, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !11
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.y, i1 false)
  br label %_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEEC2ISJ_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_SJ_EE5valuentsr3std14is_convertibleISN_SG_EE5valueEiE4typeELi0EEEOSN_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.s, align 8, !tbaa !17
  %i.z = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.z, ptr %i.t, align 8, !tbaa !19
  %.pre = load i64, ptr %i.i, align 8, !tbaa !20
  br label %_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEEC2ISJ_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_SJ_EE5valuentsr3std14is_convertibleISN_SG_EE5valueEiE4typeELi0EEEOSN_.exit

_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEEC2ISJ_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_SJ_EE5valuentsr3std14is_convertibleISN_SG_EE5valueEiE4typeELi0EEEOSN_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = phi i64 [ %i.w, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !20
  store ptr %i.h, ptr %i.c, align 8, !tbaa !17
  store i64 0, ptr %i.i, align 8, !tbaa !20
  store i8 0, ptr %i.h, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i8 2, ptr %i.ac, align 8, !tbaa !606
  %i.ad = load ptr, ptr %0, align 8, !tbaa !625
  %i.ae = call noundef nonnull align 8 dereferenceable(65) ptr @_ZN5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISA_ESt8equal_toISA_ESaISA_EEENS_5redis7adapter5errorEEEaSEOSL_(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %3) #28 ; 0 uses
  %i.af = load i8, ptr %i.ac, align 8, !tbaa !606 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEEC2ISJ_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_SJ_EE5valuentsr3std14is_convertibleISN_SG_EE5valueEiE4typeELi0EEEOSN_.exit
  %i.ag = zext i8 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %3, ptr %2, align 8, !tbaa !615
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm3EE4callILm0ENS_8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISF_ESt8equal_toISF_ESaISF_EEENS_5redis7adapter5errorEEE11_destroy_L1EEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSS_(i64 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEED2Ev.exit

_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEED2Ev.exit: ; preds = %_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEEC2ISJ_vTnNSt9enable_ifIXaasr3std14is_convertibleIT_SJ_EE5valuentsr3std14is_convertibleISN_SG_EE5valueEiE4typeELi0EEEOSN_.exit, %bb.g
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZN5boost5redis7adapter5errorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEED2Ev.exit
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !19
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #31
  br label %_ZN5boost5redis7adapter5errorD2Ev.exit

_ZN5boost5redis7adapter5errorD2Ev.exit:           ; preds = %_ZN5boost6system6resultISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS9_ESt8equal_toIS9_ESaIS9_EEENS_5redis7adapter5errorEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5boost5redis7adapter5errorD2Ev.exit
  %.0 = phi i1 [ true, %_ZN5boost5redis7adapter5errorD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0

end_hunk_1
begin_hunk_2_@_ZN5boost5redis7adapter6detail10array_implISt5arrayIiLm3EEE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRS5_RKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE:bb.a
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !188
  %i.g = icmp samesign ugt i32 %i.a, 2
  %i.h = zext i1 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  %.not11 = icmp eq i64 %i.i, 3
  br i1 %.not11, label %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %7, i32 noundef 13)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit13 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit13: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %6, i32 noundef 7)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit14 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit14: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.n = sext i32 %i.b to i64                     ; 2 uses
  %i.o = icmp ugt i32 %i.b, 2
  br i1 %i.o, label %bb.l, label %_ZNSt5arrayIiLm3EE2atEm.exit

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.167, i64 noundef %i.n, i64 noundef 3) #30
  unreachable

_ZNSt5arrayIiLm3EE2atEm.exit:                     ; preds = %bb.k
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !191  ; 5 uses
  %i.t = load i64, ptr %i.q, align 8, !tbaa !190  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 3 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %.not.i.i.i.i = icmp samesign eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt5arrayIiLm3EE2atEm.exit
  %i.w = load i8, ptr %i.s, align 1, !tbaa !19
  %i.x = icmp eq i8 %i.w, 45
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZNSt5arrayIiLm3EE2atEm.exit
  %.067.i.i.i.i = phi ptr [ %i.s, %_ZNSt5arrayIiLm3EE2atEm.exit ], [ %i.y, %bb.n ], [ %i.s, %bb.m ] ; 5 uses
  %i.z = phi i1 [ false, %_ZNSt5arrayIiLm3EE2atEm.exit ], [ true, %bb.n ], [ false, %bb.m ] ; 3 uses
  %.017.i.i.i.i = phi i32 [ 1, %_ZNSt5arrayIiLm3EE2atEm.exit ], [ -1, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %.not37.i.i.i.i.i = icmp eq ptr %.067.i.i.i.i, %i.u
  br i1 %.not37.i.i.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %.lr.ph.i41.preheader.i.i.i.i

.lr.ph.i41.preheader.i.i.i.i:                     ; preds = %bb.o
  %.067117.i.i.i.i = ptrtoaddr ptr %.067.i.i.i.i to i64
  %i.aa = sub i64 %i.v, %.067117.i.i.i.i
  %scevgep119.i.i.i.i = getelementptr i8, ptr %.067.i.i.i.i, i64 %i.aa
  br label %.lr.ph.i41.i.i.i.i

.lr.ph.i41.i.i.i.i:                               ; preds = %.critedge.i42.i.i.i.i, %.lr.ph.i41.preheader.i.i.i.i
  %.471.i.i.i.i = phi ptr [ %i.ao, %.critedge.i42.i.i.i.i ], [ %.067.i.i.i.i, %.lr.ph.i41.preheader.i.i.i.i ] ; 3 uses
  %.9.i.i.i.i = phi i32 [ %.10.i.i.i.i, %.critedge.i42.i.i.i.i ], [ 0, %.lr.ph.i41.preheader.i.i.i.i ] ; 3 uses
  %.02338.i.i.i.i.i = phi i32 [ %i.ae, %.critedge.i42.i.i.i.i ], [ 32, %.lr.ph.i41.preheader.i.i.i.i ]
  %i.ab = load i8, ptr %.471.i.i.i.i, align 1, !tbaa !19
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %.not31.i.i.i.i.i = icmp ult i8 %i.ac, 10
  br i1 %.not31.i.i.i.i.i, label %bb.p, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i41.i.i.i.i
  %i.ae = add i32 %.02338.i.i.i.i.i, -4           ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.q, label %bb.r, !prof !1303

bb.q:                                             ; preds = %bb.p
  %i.ag = mul i32 %.9.i.i.i.i, 10
  %i.ah = add i32 %i.ag, %i.ad
  br label %.critedge.i42.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ai = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i.i.i.i, i32 10) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %.split.i.i.i.i.i, !prof !1304

.split.i.i.i.i.i:                                 ; preds = %bb.r
  %i.ak = extractvalue { i32, i1 } %i.ai, 0
  %i.al = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ak, i32 %i.ad) ; 2 uses
  %i.am = extractvalue { i32, i1 } %i.al, 1
  %i.an = extractvalue { i32, i1 } %i.al, 0
  br i1 %i.am, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %.critedge.i42.i.i.i.i, !prof !1082

.critedge.i42.i.i.i.i:                            ; preds = %.split.i.i.i.i.i, %bb.q
  %.10.i.i.i.i = phi i32 [ %i.ah, %bb.q ], [ %i.an, %.split.i.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.471.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i, label %.lr.ph.i41.i.i.i.i, !llvm.loop !1305

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i: ; preds = %.critedge.i42.i.i.i.i, %.lr.ph.i41.i.i.i.i
  %.168.i.i.i.i = phi ptr [ %.471.i.i.i.i, %.lr.ph.i41.i.i.i.i ], [ %scevgep119.i.i.i.i, %.critedge.i42.i.i.i.i ]
  %.0.i.i.i.i = phi i32 [ %.9.i.i.i.i, %.lr.ph.i41.i.i.i.i ], [ %.10.i.i.i.i, %.critedge.i42.i.i.i.i ]
  %.not.i.i.i = icmp eq ptr %.168.i.i.i.i, %.067.i.i.i.i
  br i1 %.not.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %bb.s, !prof !1306

bb.s:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i
  %i.ap = sub nsw i32 0, %.017.i.i.i.i
  %i.aq = select i1 %i.z, i32 %i.ap, i32 %.017.i.i.i.i
  %i.ar = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.aq, i32 %.0.i.i.i.i) ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  %i.at = extractvalue { i32, i1 } %i.ar, 0       ; 3 uses
  %i.au = select i1 %i.z, i32 -2147483648, i32 2147483647
  %i.av = icmp ugt i32 %i.at, %i.au
  %i.aw = or i1 %i.as, %i.av
  br i1 %i.aw, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i, label %_ZSt10from_charsIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i.i.i

_ZSt10from_charsIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i.i.i: ; preds = %bb.s
  %i.ax = sub i32 0, %i.at
  %i.ay = select i1 %i.z, i32 %i.ax, i32 %i.at
  store i32 %i.ay, ptr %i.p, align 4, !tbaa !181
  br label %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i: ; preds = %.split.i.i.i.i.i, %bb.r, %bb.s, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN5boost5redis15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 2)
          to label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i.i.i unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #29
  unreachable

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i.i.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit

_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i.i.i, %_ZSt10from_charsIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i.i.i, %bb.e
  %i.bb = load i32, ptr %0, align 4, !tbaa !1546
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 4, !tbaa !1546
  br label %bb.u

bb.u:                                             ; preds = %_ZN5boost5redis7adapter6detail21boost_redis_from_bulkIiSt17basic_string_viewIcSt11char_traitsIcEEEEvRT_RKNS0_5resp310basic_nodeIT0_EERNS_6system10error_codeE.exit, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit14, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit13, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm2EE4callILm0ENS_8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4EEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSF_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::redis::adapter::error", align 8 ; 7 uses
  %.sroa.0.i.i = alloca [3 x i32], align 4        ; 4 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = load ptr, ptr %1, align 8, !tbaa !1542   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1547, !nonnull !87, !align !1259 ; 7 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !746
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !94
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !19
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit

_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit: ; preds = %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.i, i64 12, i1 false), !tbaa.struct !746
  store i8 1, ptr %i.e, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.n = load i32, ptr %i.d, align 8, !tbaa !78   ; 3 uses
  store i32 %i.n, ptr %2, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !11
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.r, ptr %i.o, align 8, !tbaa !17
  %i.y = load i64, ptr %i.s, align 8, !tbaa !19
  store i64 %i.y, ptr %i.q, align 8, !tbaa !19
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20
  br label %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i

_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i:    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %i.z = phi ptr [ %i.q, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.aa = phi i64 [ %i.v, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !20
  store ptr %i.s, ptr %i.p, align 8, !tbaa !17
  store i64 0, ptr %i.ab, align 8, !tbaa !20
  store i8 0, ptr %i.s, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !94
  %i.af = icmp eq i8 %i.ae, 2
  br i1 %i.af, label %bb.f, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE8_destroyEv.exit.i.i

bb.f:                                             ; preds = %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE8_destroyEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2: ; preds = %bb.f
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #31
  %.pre6.i.i = load i32, ptr %2, align 8, !tbaa !78
  %.pre7.i.i = load ptr, ptr %i.o, align 8, !tbaa !17
  br label %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE8_destroyEv.exit.i.i

_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE8_destroyEv.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2, %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i
  %i.am = phi ptr [ %i.z, %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i ], [ %.pre7.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2 ], [ %i.z, %bb.f ] ; 2 uses
  %i.an = phi i32 [ %i.n, %_ZN5boost5redis7adapter5errorC2EOS2_.exit.i.i ], [ %.pre6.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2 ], [ %i.n, %bb.f ]
  store i32 %i.an, ptr %i.b, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !11
  %i.aq = icmp eq ptr %i.am, %i.q
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE8_destroyEv.exit.i.i
  %i.ar = load i64, ptr %i.ac, align 8, !tbaa !20 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.at, i1 false)
  br label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm1EEEEvT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE8_destroyEv.exit.i.i
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !17
  %i.au = load i64, ptr %i.q, align 8, !tbaa !19
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !19
  %.pre8.i.i = load i64, ptr %i.ac, align 8, !tbaa !20
  br label %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm1EEEEvT_.exit

_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm1EEEEvT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.av = phi i64 [ %.pre8.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ar, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !20
  store i8 2, ptr %i.ad, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm1EEEEvT_.exit, %_ZNK5boost8variant26detail20variant_ma_base_implILb1ELb0EJSt5arrayIiLm3EENS_5redis7adapter5errorEEE2L4clISt17integral_constantImLm0EEEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5redis5resp35parseINS0_7adapter6detail7wrapperINS_6system6resultINSt7__cxx114listIiSaIiEEENS3_5errorEEEEEEEbRNS1_6parserERKSt17basic_string_viewIcSt11char_traitsIcEERT_RNS6_10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(10) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::source_location", align 16 ; 6 uses
  %5 = alloca %"class.std::optional.884", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5boost5redis5resp36parser10is_parsingEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28 ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZNK5boost5redis5resp36parser4doneEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

.critedge:                                        ; preds = %_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx114listIiSaIiEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.backedge

bb.b:                                             ; preds = %.lr.ph, %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !209
  call void @_ZN5boost5redis5resp36parser7consumeESt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.884") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  %i.i = load i64, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %_ZNK5boost6system10error_codecvbEv.exit, label %.loopexit.sink.split

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.c
  %i.l = load i32, ptr %3, align 8, !tbaa !197
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread17, label %.loopexit.sink.split

_ZNK5boost6system10error_codecvbEv.exit.thread17: ; preds = %bb.b, %_ZNK5boost6system10error_codecvbEv.exit
  %i.m = load i8, ptr %i.d, align 8, !tbaa !1247, !range !86, !noundef !87
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit, label %.loopexit.sink.split

_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread17
  %i.o = load ptr, ptr %2, align 8, !tbaa !1548   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !96    ; 2 uses
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx114listIiSaIiEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit
  %i.s = load i8, ptr %i.e, align 1, !tbaa !208, !range !86, !noundef !87
  %i.t = trunc nuw i8 %i.s to i1
  store i8 1, ptr %i.e, align 1, !tbaa !208
  br i1 %i.t, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call noundef zeroext i1 @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx114listIiSaIiEEENS1_5errorEEEE18set_if_resp3_errorISt17basic_string_viewIcSt11char_traitsIcEEEEbRKNS0_5resp310basic_nodeIT_EE(ptr noundef nonnull align 8 dereferenceable(10) %2, ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  br i1 %i.u, label %_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx114listIiSaIiEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE.exit, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !1548 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %.pre4.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.d
  %i.v = phi i8 [ %.pre4.i, %..critedge_crit_edge.i ], [ %i.q, %bb.d ]
  %i.w = phi ptr [ %.pre.i, %..critedge_crit_edge.i ], [ %i.o, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x ptr> <ptr @.str.133, ptr @.str.134>, ptr %4, align 16, !tbaa !209
  store i32 608, ptr %i.f, align 16, !tbaa !179
  store i32 30, ptr %i.g, align 4, !tbaa !180
  %i.x = icmp eq i8 %i.v, 1
  br i1 %i.x, label %_ZNR5boost6system6resultINSt7__cxx114listIiSaIiEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  call void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  unreachable

_ZNR5boost6system6resultINSt7__cxx114listIiSaIiEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i: ; preds = %.critedge.i
  call void @_ZN5boost5redis7adapter6detail9list_implINSt7__cxx114listIiSaIiEEEE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRS7_RKNS0_5resp310basic_nodeIT_EERNS_6system10error_codeE(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx114listIiSaIiEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE.exit

_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx114listIiSaIiEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE.exit: ; preds = %_ZNKRSt8optionalIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE5valueEv.exit, %bb.e, %_ZNR5boost6system6resultINSt7__cxx114listIiSaIiEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i
  %i.y = load i64, ptr %i.c, align 8, !tbaa !196  ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not.i.i13 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i13, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultINSt7__cxx114listIiSaIiEEENS1_5errorEEEE7on_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEvRKNS0_5resp310basic_nodeIT_EERNS4_10error_codeE.exit
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %3, align 8, !tbaa !197
  %i.ac = icmp eq i32 %i.ab, 0
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_insert_lowerIRKS8_EESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseOT_:bb.a
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !116
  ret ptr %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::__detail::_AllocNode.1026", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1013
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !1015
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !294
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 6
  %i.j = uitofp i64 %i.i to double
  %i.k = fptoui double %i.j to i64
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.k)
  %i.l = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %.sroa.speculated)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.b, align 8, !tbaa !1015
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !1082

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !1697
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.p, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !1082

bb.f:                                             ; preds = %bb.e
  %i.q = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.q, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

.noexc7.i.i:                                      ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %.noexc7.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #33
          to label %.noexc22 unwind label %bb.h   ; 2 uses

.noexc22:                                         ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit: ; preds = %.noexc22, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.d ], [ %i.s, %.noexc22 ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !1013
  store i64 %i.l, ptr %i.b, align 8, !tbaa !1015
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, %.noexc7.i.i, %.noexc.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %0, ptr %7, align 8, !tbaa !1501
  %.not27 = icmp eq ptr %1, %2
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_insertIRKS8_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEENSA_14_Node_iteratorIS8_Lb0ELb1EEEOT_RKT0_St17integral_constantIbLb0EE.exit
  %.028 = phi ptr [ %i.w, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_insertIRKS8_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEENSA_14_Node_iteratorIS8_Lb0ELb1EEEOT_RKT0_St17integral_constantIbLb0EE.exit ], [ %1, %bb.i ] ; 2 uses
  %i.v = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_insertIRKS8_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEEOT_RKT0_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(64) %.028, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_insertIRKS8_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEENSA_14_Node_iteratorIS8_Lb0ELb1EEEOT_RKT0_St17integral_constantIbLb0EE.exit unwind label %bb.j ; 0 uses

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_insertIRKS8_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEENSA_14_Node_iteratorIS8_Lb0ELb1EEEOT_RKT0_St17integral_constantIbLb0EE.exit: ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.w, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1745

bb.j:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_insertIRKS8_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEENSA_14_Node_iteratorIS8_Lb0ELb1EEEOT_RKT0_St17integral_constantIbLb0EE.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.x, %bb.j ], [ %i.u, %bb.h ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_insertIRKS8_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEEOT_RKT0_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, false>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #31
  invoke void @__cxa_rethrow() #30
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit: ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !1699
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !1701
  %i.j = invoke { ptr, i64 } @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_compute_hash_codeENSA_20_Node_const_iteratorIS8_Lb0ELb1EEERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb1EEEmSO_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.k, i64 noundef %i.l, ptr noundef nonnull %i.a)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.h

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret ptr %i.m

bb.g:                                             ; preds = %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEclIJRKSA_EEEPSB_DpOT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.n, %bb.g ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_test_low_level.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [1 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 10 uses
  %1 = alloca [7 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 52 uses
  %.sroa.0 = alloca [22 x i8], align 8            ; 4 uses
  %2 = alloca [8 x %"class.std::__cxx11::basic_string"], align 8 ; 39 uses
  %3 = alloca %"class.std::unordered_multimap", align 8 ; 12 uses
  %4 = alloca [4 x %"struct.std::pair"], align 8  ; 24 uses
  %5 = alloca %"struct.std::hash", align 1        ; 4 uses
  %6 = alloca %"struct.std::equal_to", align 1    ; 4 uses
  %7 = alloca %"class.std::allocator.238", align 1 ; 4 uses
  %8 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 7 uses
  %9 = alloca %"class.std::multimap", align 8     ; 14 uses
  %10 = alloca [4 x %"struct.std::pair"], align 8 ; 23 uses
  %11 = alloca %"class.std::unordered_map", align 8 ; 12 uses
  %12 = alloca [3 x %"struct.std::pair"], align 8 ; 20 uses
  %13 = alloca %"struct.std::hash", align 1       ; 4 uses
  %14 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %15 = alloca %"class.std::allocator.238", align 1 ; 4 uses
  %16 = alloca %"class.std::map", align 8         ; 9 uses
  %17 = alloca [3 x %"struct.std::pair"], align 8 ; 19 uses
  %18 = alloca %"struct.std::less", align 1       ; 4 uses
  %19 = alloca %"class.std::allocator.238", align 1 ; 4 uses
  %20 = alloca [9 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 67 uses
  %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %21 = alloca %"class.std::deque", align 8       ; 18 uses
  %22 = alloca %"class.std::__cxx11::list", align 8 ; 16 uses
  %23 = alloca [1 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 10 uses
  %24 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 19 uses
  %25 = alloca [4 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 32 uses
  %26 = alloca [6 x %"class.std::__cxx11::basic_string"], align 8 ; 31 uses
  %27 = alloca %"class.std::unordered_multiset", align 8 ; 12 uses
  %28 = alloca [6 x %"class.std::__cxx11::basic_string"], align 8 ; 31 uses
  %29 = alloca %"struct.std::hash", align 1       ; 4 uses
  %30 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %31 = alloca %"class.std::allocator.62", align 1 ; 4 uses
  %32 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %33 = alloca [5 x %"class.std::__cxx11::basic_string"], align 8 ; 27 uses
  %34 = alloca %"struct.std::hash", align 1       ; 4 uses
  %35 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %36 = alloca %"class.std::allocator.62", align 1 ; 4 uses
  %37 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 9 uses
  %38 = alloca %"class.std::multiset", align 8    ; 16 uses
  %39 = alloca [6 x %"class.std::__cxx11::basic_string"], align 8 ; 30 uses
  %40 = alloca [7 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 53 uses
  %41 = alloca [1 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 10 uses
  %42 = alloca [5 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 39 uses
  %43 = alloca [2 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 17 uses
  %44 = alloca [5 x %"struct.boost::redis::resp3::basic_node"], align 8 ; 38 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_14blobB5cxx11E, i64 16), ptr @_ZN12_GLOBAL__N_14blobB5cxx11E, align 8, !tbaa !11
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) @_ZN12_GLOBAL__N_14blobB5cxx11E, i64 noundef 100000, i8 noundef signext 97)
  %i.a = load ptr, ptr @_ZN12_GLOBAL__N_14blobB5cxx11E, align 8, !tbaa !17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  store i8 13, ptr %i.b, align 1, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1001
  store i8 10, ptr %i.c, align 1, !tbaa !19
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_14blobB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6system6resultISt8optionalIiENS_5redis7adapter5errorEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_19op_int_okE, ptr nonnull @__dso_handle) #28 ; 0 uses
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6system6resultISt8optionalIbENS_5redis7adapter5errorEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_110op_bool_okE, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  store i32 15, ptr %44, align 8, !tbaa !225
  %i.g = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 1, ptr %i.h, align 8, !tbaa !228
  %i.i = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %44, i64 40 ; 6 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !20
  store i8 0, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %44, i64 56
  store i32 16, ptr %i.l, align 8, !tbaa !225
  %i.m = getelementptr inbounds nuw i8, ptr %44, i64 64
  store i64 1, ptr %i.m, align 8, !tbaa !227
  %i.n = getelementptr inbounds nuw i8, ptr %44, i64 72
  store i64 1, ptr %i.n, align 8, !tbaa !228
  %i.o = getelementptr inbounds nuw i8, ptr %44, i64 80 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %44, i64 96 ; 6 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !11
  store i32 1819043144, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %44, i64 88
  store i64 4, ptr %i.q, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %44, i64 100
  store i8 0, ptr %i.r, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %44, i64 112
  store i32 16, ptr %i.s, align 8, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %44, i64 120
  store i64 1, ptr %i.t, align 8, !tbaa !227
  %i.u = getelementptr inbounds nuw i8, ptr %44, i64 128
  store i64 1, ptr %i.u, align 8, !tbaa !228
  %i.v = getelementptr inbounds nuw i8, ptr %44, i64 136 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %44, i64 152 ; 6 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %44, i64 144
  store i64 5, ptr %i.x, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %44, i64 157
  store i8 0, ptr %i.y, align 1, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %44, i64 168
  store i32 16, ptr %i.z, align 8, !tbaa !225
  %i.aa = getelementptr inbounds nuw i8, ptr %44, i64 176
  store i64 1, ptr %i.aa, align 8, !tbaa !227
  %i.ab = getelementptr inbounds nuw i8, ptr %44, i64 184
  store i64 1, ptr %i.ab, align 8, !tbaa !228
  %i.ac = getelementptr inbounds nuw i8, ptr %44, i64 192 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %44, i64 208 ; 6 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !11
  store i8 100, ptr %i.ad, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %44, i64 200
  store i64 1, ptr %i.ae, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %44, i64 209
  store i8 0, ptr %i.af, align 1, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %44, i64 224
  store i32 16, ptr %i.ag, align 8, !tbaa !225
  %i.ah = getelementptr inbounds nuw i8, ptr %44, i64 232
  store i64 1, ptr %i.ah, align 8, !tbaa !227
  %i.ai = getelementptr inbounds nuw i8, ptr %44, i64 240
  store i64 1, ptr %i.ai, align 8, !tbaa !228
  %i.aj = getelementptr inbounds nuw i8, ptr %44, i64 248 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %44, i64 264 ; 6 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %44, i64 256
  store i64 0, ptr %i.al, align 8, !tbaa !20
  store i8 0, ptr %i.ak, align 8, !tbaa !19
  %i.am = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #33
          to label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_M_allocateEm.exit.i.i.i unwind label %.body.thread.i ; 4 uses

.body.thread.i:                                   ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit42.i

_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %44, i64 280
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPSA_ET0_T_SF_SE_(ptr noundef nonnull %44, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.am)
          to label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit.i unwind label %.body.i

_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit.i: ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_M_allocateEm.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 280
  store ptr %i.am, ptr @_ZN12_GLOBAL__N_118streamed_string_e1B5cxx11E, align 8, !tbaa !25
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118streamed_string_e1B5cxx11E, i64 8), align 8, !tbaa !28
  store ptr %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118streamed_string_e1B5cxx11E, i64 16), align 8, !tbaa !31
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118streamed_string_e1B5cxx11E, i64 40), align 8, !tbaa !32
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ak
  br i1 %i.as, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit.i
  %i.at = load i64, ptr %i.ak, align 8, !tbaa !19
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ad
  br i1 %i.aw, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.ax = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !17  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.w
  br i1 %i.ba, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i
  %i.bb = load i64, ptr %i.w, align 8, !tbaa !19
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !17  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.p
  br i1 %i.be, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !19
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !17  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.j
  br i1 %i.bi, label %__cxx_global_var_init.3.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !19
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #31
  br label %__cxx_global_var_init.3.exit

.body.i:                                          ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_M_allocateEm.exit.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 280) #31
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.bm = icmp eq ptr %.pre.i, %i.ak
  br i1 %i.bm, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit42.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_test_low_level.cpp:bb.a
  %i.avh = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.avi = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %2, ptr noundef nonnull %i.avh, ptr noundef nonnull %i.avf)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i330 unwind label %.body.i327

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i330: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i326
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avf, i64 256
  store ptr %i.avf, ptr @_ZN12_GLOBAL__N_115map_expected_1cB5cxx11E, align 8, !tbaa !67
  store ptr %i.avi, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115map_expected_1cB5cxx11E, i64 8), align 8, !tbaa !70
  store ptr %i.avj, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115map_expected_1cB5cxx11E, i64 16), align 8, !tbaa !72
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115map_expected_1cB5cxx11E, i64 40), align 8, !tbaa !73
  %i.avk = load ptr, ptr %i.avb, align 8, !tbaa !17 ; 2 uses
  %i.avl = icmp eq ptr %i.avk, %i.avc
  br i1 %i.avl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i330
  %i.avm = load i64, ptr %i.avc, align 8, !tbaa !19
  %i.avn = add i64 %i.avm, 1
  call void @_ZdlPvm(ptr noundef %i.avk, i64 noundef %i.avn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i332: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331
  %i.avo = load ptr, ptr %i.aux, align 8, !tbaa !17 ; 2 uses
  %i.avp = icmp eq ptr %i.avo, %i.auy
  br i1 %i.avp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i332
  %i.avq = load i64, ptr %i.auy, align 8, !tbaa !19
  %i.avr = add i64 %i.avq, 1
  call void @_ZdlPvm(ptr noundef %i.avo, i64 noundef %i.avr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i333
  %i.avs = load ptr, ptr %i.aut, align 8, !tbaa !17 ; 2 uses
  %i.avt = icmp eq ptr %i.avs, %i.auu
  br i1 %i.avt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i334
  %i.avu = load i64, ptr %i.auu, align 8, !tbaa !19
  %i.avv = add i64 %i.avu, 1
  call void @_ZdlPvm(ptr noundef %i.avs, i64 noundef %i.avv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i335
  %i.avw = load ptr, ptr %i.aup, align 8, !tbaa !17 ; 2 uses
  %i.avx = icmp eq ptr %i.avw, %i.auq
  br i1 %i.avx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i336
  %i.avy = load i64, ptr %i.auq, align 8, !tbaa !19
  %i.avz = add i64 %i.avy, 1
  call void @_ZdlPvm(ptr noundef %i.avw, i64 noundef %i.avz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i337
  %i.awa = load ptr, ptr %i.aul, align 8, !tbaa !17 ; 2 uses
  %i.awb = icmp eq ptr %i.awa, %i.aum
  br i1 %i.awb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4.i339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i338
  %i.awc = load i64, ptr %i.aum, align 8, !tbaa !19
  %i.awd = add i64 %i.awc, 1
  call void @_ZdlPvm(ptr noundef %i.awa, i64 noundef %i.awd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4.i339
  %i.awe = load ptr, ptr %i.auh, align 8, !tbaa !17 ; 2 uses
  %i.awf = icmp eq ptr %i.awe, %i.aui
  br i1 %i.awf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5.i341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i340
  %i.awg = load i64, ptr %i.aui, align 8, !tbaa !19
  %i.awh = add i64 %i.awg, 1
  call void @_ZdlPvm(ptr noundef %i.awe, i64 noundef %i.awh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4.i340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5.i341
  %i.awi = load ptr, ptr %i.aud, align 8, !tbaa !17 ; 2 uses
  %i.awj = icmp eq ptr %i.awi, %i.aue
  br i1 %i.awj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5.i
  %i.awk = load i64, ptr %i.aue, align 8, !tbaa !19
  %i.awl = add i64 %i.awk, 1
  call void @_ZdlPvm(ptr noundef %i.awi, i64 noundef %i.awl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6.i
  %i.awm = load ptr, ptr %2, align 8, !tbaa !17   ; 2 uses
  %i.awn = icmp eq ptr %i.awm, %i.aua
  br i1 %i.awn, label %__cxx_global_var_init.47.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6.i
  %i.awo = load i64, ptr %i.aua, align 8, !tbaa !19
  %i.awp = add i64 %i.awo, 1
  call void @_ZdlPvm(ptr noundef %i.awm, i64 noundef %i.awp) #31
  br label %__cxx_global_var_init.47.exit

.body.i327:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i326
  %i.awq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.avf, i64 noundef 256) #31
  %.pre.i329 = load ptr, ptr %i.avb, align 8, !tbaa !17 ; 2 uses
  %i.awr = icmp eq ptr %.pre.i329, %i.avc
  br i1 %i.awr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i: ; preds = %.body.i327
  %i.aws = load i64, ptr %i.avc, align 8, !tbaa !19
  %i.awt = add i64 %i.aws, 1
  call void @_ZdlPvm(ptr noundef %.pre.i329, i64 noundef %i.awt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i: ; preds = %.body.thread.i325, %.body.i327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i
  %eh.lpad-body125.i = phi { ptr, i32 } [ %i.awq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i ], [ %i.avg, %.body.thread.i325 ], [ %i.awq, %.body.i327 ]
  %i.awu = load ptr, ptr %i.aux, align 8, !tbaa !17 ; 2 uses
  %i.awv = icmp eq ptr %i.awu, %i.auy
  br i1 %i.awv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i
  %i.aww = load i64, ptr %i.auy, align 8, !tbaa !19
  %i.awx = add i64 %i.aww, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.1.i
  %i.awy = load ptr, ptr %i.aut, align 8, !tbaa !17 ; 2 uses
  %i.awz = icmp eq ptr %i.awy, %i.auu
  br i1 %i.awz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.1.i
  %i.axa = load i64, ptr %i.auu, align 8, !tbaa !19
  %i.axb = add i64 %i.axa, 1
  call void @_ZdlPvm(ptr noundef %i.awy, i64 noundef %i.axb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.2.i
  %i.axc = load ptr, ptr %i.aup, align 8, !tbaa !17 ; 2 uses
  %i.axd = icmp eq ptr %i.axc, %i.auq
  br i1 %i.axd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.2.i
  %i.axe = load i64, ptr %i.auq, align 8, !tbaa !19
  %i.axf = add i64 %i.axe, 1
  call void @_ZdlPvm(ptr noundef %i.axc, i64 noundef %i.axf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.3.i
  %i.axg = load ptr, ptr %i.aul, align 8, !tbaa !17 ; 2 uses
  %i.axh = icmp eq ptr %i.axg, %i.aum
  br i1 %i.axh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.3.i
  %i.axi = load i64, ptr %i.aum, align 8, !tbaa !19
  %i.axj = add i64 %i.axi, 1
  call void @_ZdlPvm(ptr noundef %i.axg, i64 noundef %i.axj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.4.i
  %i.axk = load ptr, ptr %i.auh, align 8, !tbaa !17 ; 2 uses
  %i.axl = icmp eq ptr %i.axk, %i.aui
  br i1 %i.axl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.4.i
  %i.axm = load i64, ptr %i.aui, align 8, !tbaa !19
  %i.axn = add i64 %i.axm, 1
  call void @_ZdlPvm(ptr noundef %i.axk, i64 noundef %i.axn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.5.i
  %i.axo = load ptr, ptr %i.aud, align 8, !tbaa !17 ; 2 uses
  %i.axp = icmp eq ptr %i.axo, %i.aue
  br i1 %i.axp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.5.i
  %i.axq = load i64, ptr %i.aue, align 8, !tbaa !19
  %i.axr = add i64 %i.axq, 1
  call void @_ZdlPvm(ptr noundef %i.axo, i64 noundef %i.axr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.6.i
  %i.axs = load ptr, ptr %2, align 8, !tbaa !17   ; 2 uses
  %i.axt = icmp eq ptr %i.axs, %i.aua
  br i1 %i.axt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.6.i
  %i.axu = load i64, ptr %i.aua, align 8, !tbaa !19
  %i.axv = add i64 %i.axu, 1
  call void @_ZdlPvm(ptr noundef %i.axs, i64 noundef %i.axv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

__cxx_global_var_init.47.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.axw = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6system6resultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EENS_5redis7adapter5errorEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_115map_expected_1cB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @_ZN5boost6system6resultISt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEEC2ISG_SK_vEERKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) @_ZN12_GLOBAL__N_115map_expected_1dB5cxx11E, ptr noundef nonnull align 8 dereferenceable(56) @_ZN12_GLOBAL__N_115map_expected_1bB5cxx11E)
  %i.axx = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6system6resultISt8optionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEENS_5redis7adapter5errorEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_115map_expected_1dB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @_ZN5boost6system6resultISt8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENS_5redis7adapter5errorEEC2ISB_SF_vEERKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(48) @_ZN12_GLOBAL__N_115map_expected_1eB5cxx11E, ptr noundef nonnull align 8 dereferenceable(48) @_ZN12_GLOBAL__N_115map_expected_1cB5cxx11E)
  %i.axy = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6system6resultISt8optionalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENS_5redis7adapter5errorEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_115map_expected_1eB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %.sroa.0.16..sroa_idx803 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.0.16..sroa_idx803, ptr noundef nonnull align 1 dereferenceable(6) @.str.42, i64 6, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 16), ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, align 8, !tbaa !11
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 16), ptr noundef nonnull align 8 dereferenceable(6) %.sroa.0.16..sroa_idx, i64 6, i1 false)
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 22), align 2
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 8), align 8, !tbaa !20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 40), align 8, !tbaa !159
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 48), align 8, !tbaa !11
  store i32 863593835, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 64), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 68), align 4
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 56), align 8, !tbaa !20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 88), align 8, !tbaa !159
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 96), align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 112), ptr noundef nonnull align 1 dereferenceable(6) @.str.42, i64 6, i1 false)
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 118), align 2
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 104), align 8, !tbaa !20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 136), align 8, !tbaa !159
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 160), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 144), align 8, !tbaa !11
  store i32 863593835, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 160), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 164), align 4
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 152), align 8, !tbaa !20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 184), align 8, !tbaa !159
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 192), align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(6) @.str.40, i64 6, i1 false)
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 214), align 2
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 200), align 8, !tbaa !20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 232), align 8, !tbaa !159
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 256), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 240), align 8, !tbaa !11
  store i32 846816619, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 256), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 260), align 4
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 248), align 8, !tbaa !20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 280), align 8, !tbaa !159
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 304), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 288), align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 304), ptr noundef nonnull align 1 dereferenceable(6) @.str.38, i64 6, i1 false)
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 310), align 2
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 296), align 8, !tbaa !20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 328), align 8, !tbaa !159
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 352), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 336), align 8, !tbaa !11
  store i32 830039403, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 352), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 356), align 4
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 344), align 8, !tbaa !20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 376), align 8, !tbaa !159
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, i64 384), align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.axz = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6system6resultISt5tupleIJNS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEEESC_SC_SC_SC_SC_SC_SC_EESB_ED2Ev, ptr nonnull @_ZN12_GLOBAL__N_17map_e1fB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i32 4, ptr %1, align 8, !tbaa !225
  %i.aya = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.aya, align 8, !tbaa !227
  %i.ayb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ayb, align 8, !tbaa !228
  %i.ayc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  store ptr %i.ayd, ptr %i.ayc, align 8, !tbaa !11
  %i.aye = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.aye, align 8, !tbaa !20
  store i8 0, ptr %i.ayd, align 8, !tbaa !19
  %i.ayf = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 5, ptr %i.ayf, align 8, !tbaa !225
  %i.ayg = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 1, ptr %i.ayg, align 8, !tbaa !227
  %i.ayh = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 1, ptr %i.ayh, align 8, !tbaa !228
  %i.ayi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  store ptr %i.ayj, ptr %i.ayi, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ayj, ptr noundef nonnull align 1 dereferenceable(14) @.str.52, i64 14, i1 false)
  %i.ayk = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 14, ptr %i.ayk, align 8, !tbaa !20
  %i.ayl = getelementptr inbounds nuw i8, ptr %1, i64 110
  store i8 0, ptr %i.ayl, align 2, !tbaa !19
  %i.aym = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 3, ptr %i.aym, align 8, !tbaa !225
  %i.ayn = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 2, ptr %i.ayn, align 8, !tbaa !227
  %i.ayo = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 1, ptr %i.ayo, align 8, !tbaa !228
  %i.ayp = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  store ptr %i.ayq, ptr %i.ayp, align 8, !tbaa !11
  %i.ayr = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 0, ptr %i.ayr, align 8, !tbaa !20
  store i8 0, ptr %i.ayq, align 8, !tbaa !19
  %i.ays = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i32 14, ptr %i.ays, align 8, !tbaa !225
  %i.ayt = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 1, ptr %i.ayt, align 8, !tbaa !227
  %i.ayu = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 2, ptr %i.ayu, align 8, !tbaa !228
  %i.ayv = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  store ptr %i.ayw, ptr %i.ayv, align 8, !tbaa !11
  store i8 97, ptr %i.ayw, align 8, !tbaa !19
  %i.ayx = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 1, ptr %i.ayx, align 8, !tbaa !20
  %i.ayy = getelementptr inbounds nuw i8, ptr %1, i64 209
  store i8 0, ptr %i.ayy, align 1, !tbaa !19
  %i.ayz = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 8, ptr %i.ayz, align 8, !tbaa !225
  %i.aza = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 1, ptr %i.aza, align 8, !tbaa !227
  %i.azb = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 2, ptr %i.azb, align 8, !tbaa !228
  %i.azc = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 6 uses
  store ptr %i.azd, ptr %i.azc, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.azd, ptr noundef nonnull align 1 dereferenceable(6) @.str.54, i64 6, i1 false)
  %i.aze = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 6, ptr %i.aze, align 8, !tbaa !20
  %i.azf = getelementptr inbounds nuw i8, ptr %1, i64 270
  store i8 0, ptr %i.azf, align 2, !tbaa !19
  %i.azg = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 14, ptr %i.azg, align 8, !tbaa !225
  %i.azh = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 1, ptr %i.azh, align 8, !tbaa !227
  %i.azi = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 2, ptr %i.azi, align 8, !tbaa !228
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 6 uses
  store ptr %i.azk, ptr %i.azj, align 8, !tbaa !11
  store i8 98, ptr %i.azk, align 8, !tbaa !19
  %i.azl = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 1, ptr %i.azl, align 8, !tbaa !20
  %i.azm = getelementptr inbounds nuw i8, ptr %1, i64 321
  store i8 0, ptr %i.azm, align 1, !tbaa !19
  %i.azn = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 8, ptr %i.azn, align 8, !tbaa !225
  %i.azo = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 1, ptr %i.azo, align 8, !tbaa !227
  %i.azp = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 2, ptr %i.azp, align 8, !tbaa !228
  %i.azq = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 6 uses
  store ptr %i.azr, ptr %i.azq, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.azr, ptr noundef nonnull align 1 dereferenceable(6) @.str.56, i64 6, i1 false)
  %i.azs = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 6, ptr %i.azs, align 8, !tbaa !20
  %i.azt = getelementptr inbounds nuw i8, ptr %1, i64 382
  store i8 0, ptr %i.azt, align 2, !tbaa !19
  %i.azu = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #33
          to label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_M_allocateEm.exit.i.i.i363 unwind label %.body.thread.i348 ; 4 uses

.body.thread.i348:                                ; preds = %__cxx_global_var_init.47.exit
  %i.azv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit42.i350

_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_M_allocateEm.exit.i.i.i363: ; preds = %__cxx_global_var_init.47.exit
  %i.azw = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.azx = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPSA_ET0_T_SF_SE_(ptr noundef nonnull %1, ptr noundef nonnull %i.azw, ptr noundef nonnull %i.azu)
          to label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit.i368 unwind label %.body.i364

_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit.i368: ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_M_allocateEm.exit.i.i.i363
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azu, i64 392
  store ptr %i.azu, ptr @_ZN12_GLOBAL__N_18attr_e1aB5cxx11E, align 8, !tbaa !25
  store ptr %i.azx, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18attr_e1aB5cxx11E, i64 8), align 8, !tbaa !28
  store ptr %i.azy, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18attr_e1aB5cxx11E, i64 16), align 8, !tbaa !31
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18attr_e1aB5cxx11E, i64 40), align 8, !tbaa !32
  %i.azz = load ptr, ptr %i.azq, align 8, !tbaa !17 ; 2 uses
  %i.baa = icmp eq ptr %i.azz, %i.azr
  br i1 %i.baa, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit.i368
  %i.bab = load i64, ptr %i.azr, align 8, !tbaa !19
  %i.bac = add i64 %i.bab, 1
  call void @_ZdlPvm(ptr noundef %i.azz, i64 noundef %i.bac) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i370

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i370: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit.i368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369
  %i.bad = load ptr, ptr %i.azj, align 8, !tbaa !17 ; 2 uses
  %i.bae = icmp eq ptr %i.bad, %i.azk
  br i1 %i.bae, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i371: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i370
  %i.baf = load i64, ptr %i.azk, align 8, !tbaa !19
  %i.bag = add i64 %i.baf, 1
  call void @_ZdlPvm(ptr noundef %i.bad, i64 noundef %i.bag) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i372

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i372: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i371
  %i.bah = load ptr, ptr %i.azc, align 8, !tbaa !17 ; 2 uses
  %i.bai = icmp eq ptr %i.bah, %i.azd
  br i1 %i.bai, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i373: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i372
  %i.baj = load i64, ptr %i.azd, align 8, !tbaa !19
  %i.bak = add i64 %i.baj, 1
  call void @_ZdlPvm(ptr noundef %i.bah, i64 noundef %i.bak) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i374

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i374: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i373
  %i.bal = load ptr, ptr %i.ayv, align 8, !tbaa !17 ; 2 uses
  %i.bam = icmp eq ptr %i.bal, %i.ayw
  br i1 %i.bam, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i375: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i374
  %i.ban = load i64, ptr %i.ayw, align 8, !tbaa !19
  %i.bao = add i64 %i.ban, 1
  call void @_ZdlPvm(ptr noundef %i.bal, i64 noundef %i.bao) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i376

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i376: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i375
  %i.bap = load ptr, ptr %i.ayp, align 8, !tbaa !17 ; 2 uses
  %i.baq = icmp eq ptr %i.bap, %i.ayq
  br i1 %i.baq, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.4.i378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i377: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i376
  %i.bar = load i64, ptr %i.ayq, align 8, !tbaa !19
  %i.bas = add i64 %i.bar, 1
  call void @_ZdlPvm(ptr noundef %i.bap, i64 noundef %i.bas) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.4.i378

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.4.i378: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i377
  %i.bat = load ptr, ptr %i.ayi, align 8, !tbaa !17 ; 2 uses
  %i.bau = icmp eq ptr %i.bat, %i.ayj
  br i1 %i.bau, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.5.i380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5.i379: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.4.i378
  %i.bav = load i64, ptr %i.ayj, align 8, !tbaa !19
  %i.baw = add i64 %i.bav, 1
  call void @_ZdlPvm(ptr noundef %i.bat, i64 noundef %i.baw) #31
  br label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.5.i380

_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.5.i380: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.4.i378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5.i379
  %i.bax = load ptr, ptr %i.ayc, align 8, !tbaa !17 ; 2 uses
  %i.bay = icmp eq ptr %i.bax, %i.ayd
  br i1 %i.bay, label %__cxx_global_var_init.51.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6.i381: ; preds = %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.5.i380
  %i.baz = load i64, ptr %i.ayd, align 8, !tbaa !19
  %i.bba = add i64 %i.baz, 1
  call void @_ZdlPvm(ptr noundef %i.bax, i64 noundef %i.bba) #31
  br label %__cxx_global_var_init.51.exit

.body.i364:                                       ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE11_M_allocateEm.exit.i.i.i363
  %i.bbb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.azu, i64 noundef 392) #31
  %.pre.i366 = load ptr, ptr %i.azq, align 8, !tbaa !17 ; 2 uses
  %i.bbc = icmp eq ptr %.pre.i366, %i.azr
  br i1 %i.bbc, label %_ZN5boost5redis5resp310basic_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit42.i350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i367: ; preds = %.body.i364
  %i.bbd = load i64, ptr %i.azr, align 8, !tbaa !19
end_hunk_4
