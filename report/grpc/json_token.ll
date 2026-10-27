Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/json_token?download=true
inline.NumInlined: 1117
inline.NumDeleted: 638
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z24grpc_jwt_encode_and_signPK18grpc_auth_json_keyPKc12gpr_timespecS3_:bb.a
          to label %.noexc.i123.i unwind label %bb.ch, !inline_history !0

.noexc.i123.i:                                    ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit124.i

bb.ch:                                            ; preds = %bb.cg
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #30, !inline_history !37
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit124.i:   ; preds = %.noexc.i123.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cb
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %._crit_edge.i.i111.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %i.hy = load ptr, ptr %28, align 8, !tbaa !43   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hf
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i: ; preds = %bb.cj
  %i.ia = load i64, ptr %i.hf, align 8, !tbaa !42
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #26
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i, %bb.ci
  %.pn79.pn.i = phi { ptr, i32 } [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i ], [ %i.hw, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.cv

bb.cl:                                            ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit124.i, %_ZN9grpc_core12experimental4JsonD2Ev.exit107.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.ic = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  store i8 0, ptr %i.ic, align 8, !tbaa !24, !alias.scope !109
  %i.id = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %30, ptr noundef nonnull align 8 dereferenceable(48) %19) #26 ; 0 uses
  invoke void @_ZN9grpc_core8JsonDumpB5cxx11ERKNS_12experimental4JsonEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(56) %30, i32 noundef 0)
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %i.ie = load i8, ptr %i.ic, align 8, !tbaa !24
  %.not.i128.i = icmp eq i8 %i.ie, -1
  br i1 %.not.i128.i, label %_ZN9grpc_core12experimental4JsonD2Ev.exit130.i, label %bb.cn, !prof !36

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %30)
          to label %.noexc.i129.i unwind label %bb.co, !inline_history !0

.noexc.i129.i:                                    ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit130.i

bb.co:                                            ; preds = %bb.cn
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #30, !inline_history !37
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit130.i:   ; preds = %.noexc.i129.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.ih = load ptr, ptr %29, align 8, !tbaa !43
  %i.ii = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !41
  invoke void @_ZN4absl12lts_2025051219WebSafeBase64EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, i64 %i.ij, ptr %i.ih)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit130.i
  %i.ik = load ptr, ptr %31, align 8, !tbaa !43
  %i.il = invoke ptr @gpr_strdup(ptr noundef %i.ik)
          to label %bb.cq unwind label %bb.cu     ; 3 uses

bb.cq:                                            ; preds = %bb.cp
  %i.im = load ptr, ptr %31, align 8, !tbaa !43   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i: ; preds = %bb.cq
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !42
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.ir = load ptr, ptr %29, align 8, !tbaa !43   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !42
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.iw = load ptr, ptr %i.dn, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.iw)
          to label %_ZL17encoded_jwt_claimPK18grpc_auth_json_keyPKc12gpr_timespecS3_.exit unwind label %bb.cr, !inline_history !104

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #30, !inline_history !104
  unreachable

bb.cs:                                            ; preds = %bb.cl
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %30) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i

bb.ct:                                            ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit130.i
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i

bb.cu:                                            ; preds = %bb.cp
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load ptr, ptr %31, align 8, !tbaa !43   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i: ; preds = %bb.cu
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !42
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i, %bb.ct
  %.pn85.i = phi { ptr, i32 } [ %i.ja, %bb.ct ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i ], [ %i.jb, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.jh = load ptr, ptr %29, align 8, !tbaa !43   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !42
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i, %bb.cs
  %.pn85.pn.i = phi { ptr, i32 } [ %i.iz, %bb.cs ], [ %.pn85.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i ], [ %.pn85.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i, %bb.ck, %bb.ca
  %.pn85.pn.pn.i = phi { ptr, i32 } [ %.pn85.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i ], [ %.pn82.pn.i, %bb.ca ], [ %.pn79.pn.i, %bb.ck ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %19) #26
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.loopexit.i26
  %.pn85.pn.pn.pn.i = phi { ptr, i32 } [ %.pn85.pn.pn.i, %bb.cv ], [ %.pn70.pn.pn.pn.pn.pn.pn.pn153.i, %.loopexit.i26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %common.resume

_ZL17encoded_jwt_claimPK18grpc_auth_json_keyPKc12gpr_timespecS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.jm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #25 ; 3 uses
  %i.jn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.il) #25 ; 3 uses
  %i.jo = add i64 %i.jm, 2
  %i.jp = add i64 %i.jo, %i.jn
  %i.jq = call ptr @gpr_malloc(i64 noundef %i.jp) ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jq, ptr nonnull align 1 %i.bk, i64 %i.jm, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jm ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1 ; 2 uses
  store i8 46, ptr %i.jr, align 1, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.js, ptr nonnull align 1 %i.il, i64 %i.jn, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jn
  store i8 0, ptr %i.jt, align 1, !tbaa !42
  call void @gpr_free(ptr noundef nonnull %i.bk)
  call void @gpr_free(ptr noundef nonnull %i.il)
  %i.ju = call noundef ptr @_Z28compute_and_encode_signaturePK18grpc_auth_json_keyPKcS3_(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef %i.jq) ; 4 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %46, label %bb.cx

46:                                               ; preds = %_ZL17encoded_jwt_claimPK18grpc_auth_json_keyPKc12gpr_timespecS3_.exit
  call void @gpr_free(ptr noundef nonnull %i.jq)
  br label %bb.cy

bb.cx:                                            ; preds = %_ZL17encoded_jwt_claimPK18grpc_auth_json_keyPKc12gpr_timespecS3_.exit
  %i.jw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jq) #25 ; 3 uses
  %i.jx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ju) #25 ; 3 uses
  %i.jy = add i64 %i.jw, 2
  %i.jz = add i64 %i.jy, %i.jx
  %i.ka = call ptr @gpr_malloc(i64 noundef %i.jz) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr nonnull align 1 %i.jq, i64 %i.jw, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jw ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 1 ; 2 uses
  store i8 46, ptr %i.kb, align 1, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kc, ptr nonnull align 1 %i.ju, i64 %i.jx, i1 false)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jx
  store i8 0, ptr %i.kd, align 1, !tbaa !42
  call void @gpr_free(ptr noundef nonnull %i.jq)
  call void @gpr_free(ptr noundef nonnull %i.ju)
  br label %bb.cy

bb.cy:                                            ; preds = %46, %bb.cx, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ null, %46 ], [ %i.ka, %bb.cx ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z37grpc_jwt_encode_and_sign_set_overridePFPcPK18grpc_auth_json_keyPKc12gpr_timespecS4_E(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  store ptr %0, ptr @_ZL30g_jwt_encode_and_sign_override, align 8, !tbaa !46
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare noundef zeroext i1 @_Z14grpc_log_errorPKcN4absl12lts_202505126StatusES0_i(ptr noundef, ptr noundef align 8, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEEaSEOSQ_EUlOT_T0_E_JRSt7variantIJS4_bS8_SE_SM_SP_EEEEDcOSU_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.35, align 1             ; 3 uses
  %3 = alloca %"struct.std::integral_constant.45", align 1 ; 3 uses
  %4 = alloca %class.anon.35, align 1             ; 3 uses
  %5 = alloca %class.anon.35, align 1             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24
  switch i8 %i.b, label %bb.m [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 -1, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !24
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !35

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(49) %i.c), !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !24
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !34     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !24
  switch i8 %i.h, label %bb.f [
    i8 1, label %bb.e
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !35

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 8, !tbaa !59, !range !60, !noundef !61
  store i8 %i.i, ptr %i.f, align 8, !tbaa !59
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(49) %i.f), !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.j = load i8, ptr %1, align 8, !tbaa !59, !range !60, !noundef !61
  store i8 %i.j, ptr %i.f, align 8, !tbaa !63
  store i8 1, ptr %i.g, align 8, !tbaa !24
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEaSEOSO_ENUlOT_T0_E_clIRS6_St17integral_constantImLm2EEEEDaSR_SS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEaSEOSO_ENUlOT_T0_E_clIRSC_St17integral_constantImLm3EEEEDaSR_SS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit

bb.i:                                             ; preds = %bb.a
  tail call void @_ZZNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEEaSEOSO_ENUlOT_T0_E_clIRSK_St17integral_constantImLm4EEEEDaSR_SS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEEaSEOSP_EUlOT_T0_E_JRSO_St17integral_constantImLm5EEEESR_St14__invoke_otherOST_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit

bb.k:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(49) %i.k), !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store i8 -1, ptr %i.l, align 8, !tbaa !24
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit

bb.m:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEaSEOSR_EUlOT_T0_E_RSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESX_S10_.exit: ; preds = %bb.l, %bb.k, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.e, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.b, %bb.j, %bb.i, %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.35, align 1             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24
  switch i8 %i.b, label %bb.j [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_bS8_SE_SM_SP_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESU_SX_.exit
    i8 1, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_bS8_SE_SM_SP_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESU_SX_.exit
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_bS8_SE_SM_SP_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESU_SX_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !42
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_bS8_SE_SM_SP_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESU_SX_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_bS8_SE_SM_SP_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESU_SX_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !42
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISE_S7_St4lessISE_ESaISt4pairIKSE_S7_EEESt6vectorIS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_bS8_SE_SM_SP_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESU_SX_.exit

bb.d:                                             ; preds = %bb.a
end_hunk_0
