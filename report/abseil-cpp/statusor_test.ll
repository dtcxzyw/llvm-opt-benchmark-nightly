Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/statusor_test?download=true
inline.NumInlined: 18654
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_131StatusOr_ConstImplicitCast_Test8TestBodyEv:_ZN4absl12lts_2026052613implicit_castINS0_8StatusOrIbEEEENSt9enable_ifIXntsr20type_traits_internal6IsViewINS4_IXntsr3stdE14is_reference_vIT_EENSt9remove_cvIS5_E4typeEE4typeEEE5valueES5_E4typeENS0_13type_identityIS5_E4typeE.exit
_ZN4absl12lts_2026052617internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit180: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178, %bb.cm, %bb.cn
  %i.ht = load i64, ptr %40, align 8, !tbaa !31   ; 3 uses
  %i.hu = icmp eq i64 %i.ht, 1
  br i1 %i.hu, label %_ZN4absl12lts_202605266StatusD2Ev.exit.i181, label %bb.cp

_ZN4absl12lts_202605266StatusD2Ev.exit.i181:      ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit180
  %i.hv = load ptr, ptr %i.gn, align 8, !tbaa !45 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.go
  br i1 %i.hw, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i182: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i181
  %i.hx = load i64, ptr %i.go, align 8, !tbaa !52
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #30
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit184

bb.cp:                                            ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit180
  %i.hz = trunc i64 %i.ht to i1
  br i1 %i.hz, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit184, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ia = inttoptr i64 %i.ht to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ia)
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit184 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #29
  unreachable

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit184: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i182, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  %i.id = load i8, ptr %36, align 8, !tbaa !33, !range !43, !noundef !68
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.dd, label %bb.cu

bb.cs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit165, %bb.bw
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit165 ], [ %i.fq, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.fh

bb.ct:                                            ; preds = %_ZN4absl12lts_2026052613implicit_castINS0_8StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENSt9enable_ifIXntsr20type_traits_internal6IsViewINSA_IXntsr3stdE14is_reference_vIT_EENSt9remove_cvISB_E4typeEE4typeEEE5valueESB_E4typeENS0_13type_identityISB_E4typeE.exit
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052617internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %38) #28
  call void @_ZN4absl12lts_2026052617internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %39) #28
  call void @_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.eq

bb.cu:                                            ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.cv unwind label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.ig = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !44 ; 2 uses
  %.not.i.i185 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i185, label %_ZNK7testing15AssertionResult15failure_messageEv.exit186, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit186

_ZNK7testing15AssertionResult15failure_messageEv.exit186: ; preds = %bb.cw, %bb.cv
  %i.ij = phi ptr [ %i.ii, %bb.cw ], [ @.str.258, %bb.cv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 668, ptr noundef %i.ij)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  %i.ik = load ptr, ptr %41, align 8, !tbaa !49   ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.cy
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !9
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(128) %i.ik) #28, !inline_history !51
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %bb.cy, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %bb.dd

bb.cz:                                            ; preds = %bb.cu
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.da:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.cx
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #28
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn75 = phi { ptr, i32 } [ %i.iq, %bb.db ], [ %i.ip, %bb.da ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  %i.ir = load ptr, ptr %41, align 8, !tbaa !49   ; 3 uses
  %.not.i.i190 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i190, label %_ZN7testing7MessageD2Ev.exit192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.dc
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !9
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(128) %i.ir) #28, !inline_history !51
  br label %_ZN7testing7MessageD2Ev.exit192

_ZN7testing7MessageD2Ev.exit192:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, %bb.dc, %bb.cz
  %.pn75.pn = phi { ptr, i32 } [ %i.io, %bb.cz ], [ %.pn75, %bb.dc ], [ %.pn75, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #28
  br label %bb.eq

bb.dd:                                            ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit184, %_ZN7testing7MessageD2Ev.exit189
  %i.iv = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !44 ; 4 uses
  %.not.i.i193 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i193, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !45 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194: ; preds = %bb.de
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !52
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef 32) #30
  br label %bb.df

bb.df:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  %i.jc = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  store ptr %i.jc, ptr %47, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.jc, ptr noundef nonnull align 1 dereferenceable(3) @.str.449, i64 3, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 3, ptr %i.jd, align 8, !tbaa !62
  %i.je = getelementptr inbounds nuw i8, ptr %47, i64 19
  store i8 0, ptr %i.je, align 1, !tbaa !52
  %i.jf = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  store ptr %i.jf, ptr %46, align 8, !tbaa !78, !alias.scope !2187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.jf, ptr noundef nonnull align 1 dereferenceable(3) @.str.449, i64 3, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 3, ptr %i.jg, align 8, !tbaa !62, !alias.scope !2187
  %i.jh = getelementptr inbounds nuw i8, ptr %46, i64 19
  store i8 0, ptr %i.jh, align 1, !tbaa !52
  invoke void @_ZN12absl_testing12lts_2026052612IsOkAndHoldsIN7testing8internal14PointeeMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS0_15status_internal19IsOkAndHoldsMatcherINSt5decayIT_E4typeEEEOSF_(ptr dead_on_unwind nonnull writable sret(%"class.absl_testing::lts_20260526::status_internal::IsOkAndHoldsMatcher.915") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.dg unwind label %bb.er

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN7testing8internal33MakePredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS0_14PointeeMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS0_29PredicateFormatterFromMatcherIT_EESG_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::PredicateFormatterFromMatcher.914") align 8 %44, ptr noundef nonnull align 8 %45)
          to label %bb.dh unwind label %bb.es

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  %i.ji = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31
          to label %.noexc247 unwind label %bb.et ; 8 uses

.noexc247:                                        ; preds = %bb.dh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store i32 1, ptr %i.jj, align 8, !tbaa !400
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 1, ptr %i.jk, align 4, !tbaa !402
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ji, align 8, !tbaa !9
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 2 uses
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jm, ptr noundef nonnull align 1 dereferenceable(4) @.str.449, i64 3, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store i64 3, ptr %i.jo, align 8, !tbaa !62
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 35
  store i8 0, ptr %i.jp, align 1, !tbaa !52
  %i.jq = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  store ptr null, ptr %i.jn, align 8, !tbaa !390
  store ptr null, ptr %51, align 8, !tbaa !2190
  store i64 1, ptr %50, align 8, !tbaa !31
  %i.js = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  store ptr null, ptr %i.jr, align 8, !tbaa !390
  store ptr null, ptr %i.jq, align 8, !tbaa !2190
  store i64 1, ptr %49, align 8, !tbaa !31
  call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  %i.ju = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %i.jl, ptr %i.ju, align 8, !tbaa !2195, !alias.scope !2192
  %i.jv = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  store ptr null, ptr %i.jt, align 8, !tbaa !390, !noalias !2192
  store ptr %i.ji, ptr %i.jv, align 8, !tbaa !390, !alias.scope !2192
  store ptr null, ptr %i.js, align 8, !tbaa !2195, !noalias !2192
  store i64 1, ptr %48, align 8, !tbaa !31, !alias.scope !2192
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS0_14PointeeMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclIN4absl12lts_202605268StatusOrISt10shared_ptrIKSC_EEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.452, ptr noundef nonnull align 8 dereferenceable(24) %48)
          to label %bb.di unwind label %bb.eu

bb.di:                                            ; preds = %.noexc247
  %i.jw = load i64, ptr %48, align 8, !tbaa !31   ; 3 uses
  %i.jx = icmp eq i64 %i.jw, 1
  br i1 %i.jx, label %_ZN4absl12lts_202605266StatusD2Ev.exit.i202, label %bb.dp

_ZN4absl12lts_202605266StatusD2Ev.exit.i202:      ; preds = %bb.di
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !390 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.dj

bb.dj:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i202
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.ka = load atomic i64, ptr %i.jz acquire, align 8 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 4294967297
  %i.kc = trunc i64 %i.ka to i32                  ; 2 uses
  br i1 %i.kb, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.jz, align 8, !tbaa !400
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kd, align 4, !tbaa !402
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #28, !inline_history !2197
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !9
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #28, !inline_history !2197
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.dl:                                            ; preds = %bb.dj
  %i.kk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.kk, 0
  br i1 %.not.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.kl = add nsw i32 %i.kc, -1
  store i32 %i.kl, ptr %i.jz, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.km = atomicrmw volatile add ptr %i.jz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i.i = phi i32 [ %i.kc, %bb.dm ], [ %i.km, %bb.dn ]
  %i.kn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kn, label %bb.do, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, !prof !186

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #28
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.dp:                                            ; preds = %bb.di
  %i.ko = trunc i64 %i.jw to i1
  br i1 %i.ko, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kp = inttoptr i64 %i.jw to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.kp)
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #29
  unreachable

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i202, %bb.dk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.do, %bb.dp, %bb.dq
  %i.ks = load i64, ptr %49, align 8, !tbaa !31   ; 3 uses
  %i.kt = icmp eq i64 %i.ks, 1
  br i1 %i.kt, label %_ZN4absl12lts_202605266StatusD2Ev.exit.i203, label %bb.dy

_ZN4absl12lts_202605266StatusD2Ev.exit.i203:      ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit
  %i.ku = load ptr, ptr %i.jt, align 8, !tbaa !390 ; 8 uses
  %.not.i.i.i204 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i204, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit208, label %bb.ds

bb.ds:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i203
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 4 uses
  %i.kw = load atomic i64, ptr %i.kv acquire, align 8 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 4294967297
  %i.ky = trunc i64 %i.kw to i32                  ; 2 uses
  br i1 %i.kx, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %i.kv, align 8, !tbaa !400
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i32 0, ptr %i.kz, align 4, !tbaa !402
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !9
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #28, !inline_history !2197
  %i.ld = load ptr, ptr %i.ku, align 8, !tbaa !9
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #28, !inline_history !2197
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit208

bb.du:                                            ; preds = %bb.ds
  %i.lg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i205 = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i.i.i205, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.lh = add nsw i32 %i.ky, -1
  store i32 %i.lh, ptr %i.kv, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206

bb.dw:                                            ; preds = %bb.du
  %i.li = atomicrmw volatile add ptr %i.kv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206: ; preds = %bb.dw, %bb.dv
  %.0.i.i.i.i.i207 = phi i32 [ %i.ky, %bb.dv ], [ %i.li, %bb.dw ]
  %i.lj = icmp eq i32 %.0.i.i.i.i.i207, 1
  br i1 %i.lj, label %bb.dx, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit208, !prof !186

bb.dx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #28
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit208

bb.dy:                                            ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit
  %i.lk = trunc i64 %i.ks to i1
  br i1 %i.lk, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit208, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ll = inttoptr i64 %i.ks to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ll)
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit208 unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  call void @__clang_call_terminate(ptr %i.ln) #29
  unreachable

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit208: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i203, %bb.dt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i206, %bb.dx, %bb.dy, %bb.dz
  %i.lo = load i64, ptr %50, align 8, !tbaa !31   ; 3 uses
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %_ZN4absl12lts_202605266StatusD2Ev.exit.i209, label %bb.eh

_ZN4absl12lts_202605266StatusD2Ev.exit.i209:      ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit208
  %i.lq = load ptr, ptr %i.jr, align 8, !tbaa !390 ; 8 uses
  %.not.i.i.i210 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i210, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i209
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 4 uses
  %i.ls = load atomic i64, ptr %i.lr acquire, align 8 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 4294967297
  %i.lu = trunc i64 %i.ls to i32                  ; 2 uses
  br i1 %i.lt, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i32 0, ptr %i.lr, align 8, !tbaa !400
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  store i32 0, ptr %i.lv, align 4, !tbaa !402
  %i.lw = load ptr, ptr %i.lq, align 8, !tbaa !9
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #28, !inline_history !2198
  %i.lz = load ptr, ptr %i.lq, align 8, !tbaa !9
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #28, !inline_history !2198
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.ed:                                            ; preds = %bb.eb
  %i.mc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i211 = icmp eq i8 %i.mc, 0
end_hunk_0
begin_hunk_1_@_ZN7testing7MatcherIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEED0Ev:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #29, !inline_history !2814
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2785
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.299, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.300, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !2785
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2793
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2785 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2812
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !2785
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2812
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !52
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEED2Ev.exit unwind label %bb.d, !inline_history !2813

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #29, !inline_history !2814
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE19MatchAndExplainImplINSB_11ValuePolicyIPKNS_16MatcherInterfaceISA_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSB_SA_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2788 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE12DescribeImplINSB_11ValuePolicyIPKNS_16MatcherInterfaceISA_EELb1EEEEEvRKSB_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2788 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEE16GetDescriberImplINSB_11ValuePolicyIPKNS_16MatcherInterfaceISA_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2788
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEESt14default_deleteISE_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2788 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEESt14default_deleteISE_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEEEclEPSC_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEEEclEPSC_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #28, !inline_history !2832
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEESt14default_deleteISE_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEESt14default_deleteISE_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEEEclEPSC_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605268StatusOrISt6vectorIiSaIiEEEEEESt14default_deleteISE_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_143StatusOr_UniquePtrImplicitConstruction_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_143StatusOr_UniquePtrImplicitConstruction_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_143StatusOr_UniquePtrImplicitConstruction_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_143StatusOr_UniquePtrImplicitConstruction_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_143StatusOr_UniquePtrImplicitConstruction_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::StatusOr.1218", align 8 ; 8 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31, !noalias !2833 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !noalias !2833
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_17DerivedE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !2833
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_17DerivedE, i64 48), ptr %i.b, align 8, !tbaa !9, !noalias !2833
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = ptrtoint ptr %i.a to i64
  store i64 %i.d, ptr %i.c, align 8, !tbaa !2836, !alias.scope !2838
  store i64 1, ptr %1, align 8, !tbaa !31, !alias.scope !2838
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS0_9NeMatcherIDnEEEEEclIN4absl12lts_202605268StatusOrISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteISG_EEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable align 8 %2, i64 0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 8, !tbaa !33, !range !43, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.m, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.i, null
  br i1 %.not.i.i12, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %i.j, %bb.f ], [ @.str.258, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 715, ptr noundef %i.k)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.l = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.l, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(128) %i.l) #28, !inline_history !51
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit16

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.q, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.s = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZN7testing7MessageD2Ev.exit16, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i15

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i15: ; preds = %bb.l
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #28, !inline_history !51
  br label %_ZN7testing7MessageD2Ev.exit16

_ZN7testing7MessageD2Ev.exit16:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i15, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  br label %bb.r

bb.m:                                             ; preds = %bb.b, %_ZN7testing7MessageD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 4 uses
  %.not.i.i17 = icmp eq ptr %i.x, null
  br i1 %.not.i.i17, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !52
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.val.i18 = load i64, ptr %1, align 8, !tbaa !31 ; 3 uses
  %i.ad = icmp eq i64 %.val.i18, 1
  br i1 %i.ad, label %_ZN4absl12lts_202605266StatusD2Ev.exit.i19, label %bb.o

_ZN4absl12lts_202605266StatusD2Ev.exit.i19:       ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !2836 ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i20, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit22, label %_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i21

_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i21: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i19
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #28, !inline_history !2841
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit22

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ai = trunc i64 %.val.i18 to i1
  br i1 %i.ai, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit22, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = inttoptr i64 %.val.i18 to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aj)
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit22 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #29
  unreachable

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit22: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i19, %_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i21, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.r:                                             ; preds = %_ZN7testing7MessageD2Ev.exit16, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit16 ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call fastcc void @_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !31    ; 3 uses
  %i.a = icmp eq i64 %.val, 1
  br i1 %i.a, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.b

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2836 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i

_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #28, !inline_history !2842
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %.val to i1
  br i1 %i.g, label %_ZNSt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %.val to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %_ZNSt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS1_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_145StatusOr_ImplicitCastFromInitializerList_Test8TestBodyEv:bb.a
bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %.not.i.i14 = icmp eq ptr %i.m, null
  br i1 %.not.i.i14, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #28, !inline_history !51
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit17

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn7 = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.r, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.t = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.t, null
  br i1 %.not.i.i15, label %_ZN7testing7MessageD2Ev.exit17, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i16

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i16: ; preds = %bb.l
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #28, !inline_history !51
  br label %_ZN7testing7MessageD2Ev.exit17

_ZN7testing7MessageD2Ev.exit17:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i16, %bb.l, %bb.i
  %.pn7.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn7, %bb.l ], [ %.pn7, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  br label %bb.s

bb.m:                                             ; preds = %bb.b, %_ZN7testing7MessageD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 4 uses
  %.not.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i.i18, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ae = load i64, ptr %1, align 8, !tbaa !31    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %_ZN4absl12lts_202605266StatusD2Ev.exit.i, label %bb.p

_ZN4absl12lts_202605266StatusD2Ev.exit.i:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !872 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt6vectorIiSaIiEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !874
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #30
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt6vectorIiSaIiEEED2Ev.exit

bb.p:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.al = trunc i64 %i.ae to i1
  br i1 %i.al, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt6vectorIiSaIiEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = inttoptr i64 %i.ae to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt6vectorIiSaIiEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29
  unreachable

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt6vectorIiSaIiEEED2Ev.exit: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit17, %bb.c
  %.pn7.pn.pn = phi { ptr, i32 } [ %.pn7.pn, %_ZN7testing7MessageD2Ev.exit17 ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt6vectorIiSaIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn7.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141StatusOr_UniquePtrImplicitAssignment_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141StatusOr_UniquePtrImplicitAssignment_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_141StatusOr_UniquePtrImplicitAssignment_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_141StatusOr_UniquePtrImplicitAssignment_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_141StatusOr_UniquePtrImplicitAssignment_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::Status", align 8 ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::StatusOr.1218", align 8 ; 12 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 9, i64 0, ptr nonnull @.str.258, i64 727, ptr nonnull @.str.278) ; 2 uses
  store i64 %i.a, ptr %2, align 8, !tbaa !31
  store i64 55, ptr %1, align 8, !tbaa !31
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_202605268StatusOrISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS4_EEEC2Ev.exit, !prof !186

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052617internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4absl12lts_202605268StatusOrISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS4_EEEC2Ev.exit unwind label %.body.i

common.resume:                                    ; preds = %bb.aa, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.c, %.body.i ], [ %.pn7.pn.pn.pn, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %2) #28
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %common.resume

_ZN4absl12lts_202605268StatusOrISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS4_EEEC2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.c unwind label %bb.j       ; 5 uses

bb.c:                                             ; preds = %_ZN4absl12lts_202605268StatusOrISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS4_EEEC2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !3498
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_17DerivedE, i64 16), ptr %i.d, align 8, !tbaa !9, !noalias !3498
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_17DerivedE, i64 48), ptr %i.e, align 8, !tbaa !9, !noalias !3498
  %.val.i.i = load i64, ptr %2, align 8, !tbaa !31 ; 3 uses
  %i.f = icmp eq i64 %.val.i.i, 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2836 ; 3 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !2836
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #28, !inline_history !3501
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.g, align 8, !tbaa !3502
  store i64 1, ptr %2, align 8, !tbaa !31
  %i.l = trunc i64 %.val.i.i to i1
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = inttoptr i64 %.val.i.i to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #29
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS0_9NeMatcherIDnEEEEEclIN4absl12lts_202605268StatusOrISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteISG_EEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable align 8 %3, i64 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = load i8, ptr %3, align 8, !tbaa !33, !range !43, !noundef !68
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.u, label %bb.l

bb.j:                                             ; preds = %_ZN4absl12lts_202605268StatusOrISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS4_EEEC2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %bb.m
  %i.w = phi ptr [ %i.v, %bb.n ], [ @.str.258, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 907, ptr noundef %i.w)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.x = load ptr, ptr %4, align 8, !tbaa !49     ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.x, null
  br i1 %.not.i.i15, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #28, !inline_history !51
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit18

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn7 = phi { ptr, i32 } [ %i.ad, %bb.s ], [ %i.ac, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ae = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i16, label %_ZN7testing7MessageD2Ev.exit18, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i17

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i17: ; preds = %bb.t
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #28, !inline_history !51
  br label %_ZN7testing7MessageD2Ev.exit18

_ZN7testing7MessageD2Ev.exit18:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i17, %bb.t, %bb.q
  %.pn7.pn = phi { ptr, i32 } [ %i.ab, %bb.q ], [ %.pn7, %bb.t ], [ %.pn7, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  br label %bb.z

bb.u:                                             ; preds = %bb.i, %_ZN7testing7MessageD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 4 uses
  %.not.i.i19 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i19, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.an = load i64, ptr %i.al, align 8, !tbaa !52
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val.i = load i64, ptr %2, align 8, !tbaa !31  ; 3 uses
  %i.ap = icmp eq i64 %.val.i, 1
  br i1 %i.ap, label %_ZN4absl12lts_202605266StatusD2Ev.exit.i, label %bb.w

_ZN4absl12lts_202605266StatusD2Ev.exit.i:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !2836 ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i20, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #28, !inline_history !2841
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.au = trunc i64 %.val.i to i1
  br i1 %i.au, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = inttoptr i64 %.val.i to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.av)
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #29
  unreachable

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataISt10unique_ptrIN12_GLOBAL__N_15Base1ESt14default_deleteIS5_EEED2Ev.exit: ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i, %_ZNKSt14default_deleteIN12_GLOBAL__N_15Base1EEclEPS1_.exit.i.i, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit18, %bb.k
  %.pn7.pn.pn = phi { ptr, i32 } [ %.pn7.pn, %_ZN7testing7MessageD2Ev.exit18 ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.aa

end_hunk_2
begin_hunk_3_@_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_NS2_INS0_16AnyOfMatcherImplEJNS2_IS3_JNS4_INS0_17StartsWithMatcherISB_EEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESL_EEEEEEEENS0_29PredicateFormatterFromMatcherIT_EESP_:bb.a
  store ptr %i.j, ptr %i.c, align 8, !tbaa !45
  %i.k = load i64, ptr %i.b, align 8, !tbaa !234
  store i64 %i.k, ptr %i.e, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEC2ERKSM_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !52
  store i8 %i.m, ptr %i.l, align 1, !tbaa !52
  br label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEC2ERKSM_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEC2ERKSM_.exit

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Tuple_implILm1EJN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS2_15VariadicMatcherINS2_16AnyOfMatcherImplEJNSC_INS2_16AllOfMatcherImplEJNS1_INS2_17StartsWithMatcherIS9_EEEENS1_INS2_15EndsWithMatcherIS9_EEEEEEESL_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(192) %2) #28
  br label %common.resume

_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEC2ERKSM_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !234  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !62
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZNSt11_Tuple_implILm1EJN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS2_15VariadicMatcherINS2_16AnyOfMatcherImplEJNSC_INS2_16AllOfMatcherImplEJNS1_INS2_17StartsWithMatcherIS9_EEEENS1_INS2_15EndsWithMatcherIS9_EEEEEEESL_EEEEEC2ERKSN_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEC2ERKSM_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !78
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.v = load i64, ptr %i.p, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.v, ptr %i.a, align 8, !tbaa !234
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %bb.g ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.x, ptr %i.s, align 8, !tbaa !45
  %i.y = load i64, ptr %i.a, align 8, !tbaa !234
  store i64 %i.y, ptr %i.t, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i, %.noexc
  %i.z = phi ptr [ %i.x, %.noexc.i.i.i.i ], [ %i.t, %.noexc ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !52
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !52
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Tuple_implILm1EJN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS2_15VariadicMatcherINS2_16AnyOfMatcherImplEJNSC_INS2_16AllOfMatcherImplEJNS1_INS2_17StartsWithMatcherIS9_EEEENS1_INS2_15EndsWithMatcherIS9_EEEEEEESL_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(192) %0) #28
  br label %.body

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !234 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !62
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.e
  br i1 %i.ah, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #30
  br label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt10_Head_baseILm1EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !52
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt10_Head_baseILm1EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm1EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm1EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !52
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm1EN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt10_Head_baseILm0EN7testing8internal15VariadicMatcherINS1_16AllOfMatcherImplEJNS0_18PolymorphicMatcherINS1_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS1_15EndsWithMatcherISB_EEEEEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !52
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #30
  br label %_ZNSt10_Head_baseILm0EN7testing8internal15VariadicMatcherINS1_16AllOfMatcherImplEJNS0_18PolymorphicMatcherINS1_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS1_15EndsWithMatcherISB_EEEEEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0EN7testing8internal15VariadicMatcherINS1_16AllOfMatcherImplEJNS0_18PolymorphicMatcherINS1_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS1_15EndsWithMatcherISB_EEEEEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !45 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i2.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing8internal15VariadicMatcherINS1_16AllOfMatcherImplEJNS0_18PolymorphicMatcherINS1_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS1_15EndsWithMatcherISB_EEEEEEELb0EED2Ev.exit.i.i.i.i.i
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !52
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #30
  br label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i2.i.i.i.i.i

_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i2.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing8internal15VariadicMatcherINS1_16AllOfMatcherImplEJNS0_18PolymorphicMatcherINS1_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS1_15EndsWithMatcherISB_EEEEEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1.i.i.i.i.i
  %i.bi = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt11_Tuple_implILm0EJN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESB_NS2_15VariadicMatcherINS2_16AnyOfMatcherImplEJNSC_INS2_16AllOfMatcherImplEJNS1_INS2_17StartsWithMatcherIS9_EEEENS1_INS2_15EndsWithMatcherIS9_EEEEEEESL_EEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i3.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i3.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i2.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !52
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  br label %_ZNSt11_Tuple_implILm0EJN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESB_NS2_15VariadicMatcherINS2_16AnyOfMatcherImplEJNSC_INS2_16AllOfMatcherImplEJNS1_INS2_17StartsWithMatcherIS9_EEEENS1_INS2_15EndsWithMatcherIS9_EEEEEEESL_EEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESB_NS2_15VariadicMatcherINS2_16AnyOfMatcherImplEJNSC_INS2_16AllOfMatcherImplEJNS1_INS2_17StartsWithMatcherIS9_EEEENS1_INS2_15EndsWithMatcherIS9_EEEEEEESL_EEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEELb0EED2Ev.exit.i.i.i2.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i3.i.i.i.i.i
  ret void

bb.i:                                             ; preds = %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEC2ERKSM_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bn, %bb.i ], [ %i.ab, %bb.g ]
  call void @_ZNSt11_Tuple_implILm0EJN7testing18PolymorphicMatcherINS0_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESB_NS2_15VariadicMatcherINS2_16AnyOfMatcherImplEJNSC_INS2_16AllOfMatcherImplEJNS1_INS2_17StartsWithMatcherIS9_EEEENS1_INS2_15EndsWithMatcherIS9_EEEEEEESL_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %2) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_NS2_INS0_16AnyOfMatcherImplEJNS2_IS3_JNS4_INS0_17StartsWithMatcherISB_EEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESL_EEEEEEEclISB_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.1572", align 16 ; 9 uses
  %5 = alloca %"class.std::vector.1572", align 8  ; 4 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %10 = alloca %"class.testing::Matcher.227", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %12 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4226)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !4226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !4226
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEE21CreateVariadicMatcherIRKSA_Lm0EEEvPSt6vectorINS_7MatcherIT_EESaIST_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.d, !noalias !4226

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.c unwind label %bb.d, !noalias !4226 ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !4229, !noalias !4226
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load <2 x ptr>, ptr %4, align 16, !tbaa !4232, !noalias !4226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !4226
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal16AllOfMatcherImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !4226
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !4232, !noalias !4226
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.f, align 8, !tbaa !4229, !noalias !4226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !4226
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.g, align 8, !tbaa !380, !alias.scope !4226
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit unwind label %bb.e, !noalias !4226 ; 3 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28, !noalias !4226
  br label %bb.f

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn21, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  call void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28, !noalias !4226
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !4226
  br label %common.resume

_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit: ; preds = %bb.c
  store i32 1, ptr %i.i, align 4, !tbaa !310, !noalias !4226
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = ptrtoint ptr %i.a to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !398, !noalias !4226
  store ptr %i.i, ptr %i.h, align 8, !tbaa !52, !alias.scope !4226
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %10, align 8, !tbaa !9, !alias.scope !4226
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !4226
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %9, align 8, !tbaa !9
  %i.o = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit
  br i1 %i.o, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 3, ptr noundef nonnull @.str.299, i32 noundef 234)
          to label %.noexc23 unwind label %bb.i

.noexc23:                                         ; preds = %.noexc3.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.300, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc23
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !380
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2432
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %9)
          to label %bb.g unwind label %bb.i, !inline_history !4233

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.ap unwind label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.290, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !11
  %i.ad = or i32 %i.ac, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i32 noundef %i.ad)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.t

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %2, i64 noundef %i.ae)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.l, %bb.m
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.291, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.292, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !380
  %i.aj = icmp ne ptr %i.ai, null
  %i.ak = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.aj)
          to label %.noexc33 unwind label %bb.t

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.ak, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 3, ptr noundef nonnull @.str.299, i32 noundef 246)
          to label %.noexc34 unwind label %bb.t

.noexc34:                                         ; preds = %bb.n
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.300, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc34
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.p

bb.o:                                             ; preds = %.noexc34
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body35

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc33
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !380
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !421
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %i.v, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit unwind label %bb.t, !inline_history !2430

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %12, align 8, !tbaa !9
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.aq)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.u

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit
  %i.at = invoke noundef zeroext i1 @_ZN7testing8internal20MatchPrintAndExplainIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_EEbRT_RKNS_7MatcherIT0_EEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %12)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.at, label %bb.r, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40

bb.r:                                             ; preds = %bb.q
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.293, i64 noundef 96)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.v ; 0 uses

bb.s:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.t:                                             ; preds = %bb.p, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %bb.m, %bb.l, %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body35

bb.u:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit
  %i.ax = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZNK7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcvNS_7MatcherIT_EEIRKS8_EEv:bb.a
  store i64 %i.g, ptr %i.a, align 8, !tbaa !234
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !45
  %i.j = load i64, ptr %i.a, align 8, !tbaa !234
  store i64 %i.j, ptr %i.d, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !52
  store i8 %i.l, ptr %i.k, align 1, !tbaa !52
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !62
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.q, align 8, !tbaa !380
  %i.s = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 3 uses
  store i32 1, ptr %i.s, align 4, !tbaa !310
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = ptrtoint ptr %i.b to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !398
  store ptr %i.s, ptr %i.r, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !9
  ret void

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #30
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !52
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZN7testing8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !52
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30, !inline_history !4269
  br label %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_E10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.297, i64 noundef 14) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62
  tail call void @_ZN7testing8internal13PrintStringToESt17basic_string_viewIcSt11char_traitsIcEEPSo(i64 %i.e, ptr %i.c, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_E18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.298, i64 noundef 17) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62
  tail call void @_ZN7testing8internal13PrintStringToESt17basic_string_viewIcSt11char_traitsIcEEPSo(i64 %i.e, ptr %i.c, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_E15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !78
  %i.d = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.f, ptr %i.a, align 8, !tbaa !234
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !45
  %i.i = load i64, ptr %i.a, align 8, !tbaa !234
  store i64 %i.i, ptr %i.c, align 8, !tbaa !52
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !52
  store i8 %i.k, ptr %i.j, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !62
  %i.n = load ptr, ptr %3, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !62
  %i.s = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.p, i64 noundef 0, i64 noundef %i.r) #28
  %i.t = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZNK7testing8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIS7_EEbRKT_PNS_19MatchResultListenerE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.v = load i64, ptr %i.c, align 8, !tbaa !52
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #30
  br label %_ZNK7testing8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIS7_EEbRKT_PNS_19MatchResultListenerE.exit

_ZNK7testing8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIS7_EEbRKT_PNS_19MatchResultListenerE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.x = icmp ne i64 %i.s, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_NS1_INS0_16AnyOfMatcherImplEJNS1_IS2_JNS3_INS0_17StartsWithMatcherISA_EEEENS3_INS0_15EndsWithMatcherISA_EEEEEEESK_EEEEE21CreateVariadicMatcherIRKSA_Lm2EEEvPSt6vectorINS_7MatcherIT_EESaIST_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.1572", align 16 ; 9 uses
  %3 = alloca %"class.std::vector.1572", align 8  ; 4 uses
  %4 = alloca %"class.testing::Matcher.227", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4270)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !4270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !4270
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AnyOfMatcherImplEJNS1_INS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESH_EE21CreateVariadicMatcherIRKSB_Lm0EEEvPSt6vectorINS_7MatcherIT_EESaISP_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.d, !noalias !4270

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.c unwind label %bb.d, !noalias !4270 ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !4229, !noalias !4270
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load <2 x ptr>, ptr %2, align 16, !tbaa !4232, !noalias !4270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !4270
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal16AnyOfMatcherImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !4270
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !4232, !noalias !4270
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.f, align 8, !tbaa !4229, !noalias !4270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !4270
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.g, align 8, !tbaa !380, !alias.scope !4270
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %_ZNK7testing8internal15VariadicMatcherINS0_16AnyOfMatcherImplEJNS1_INS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESH_EEcvNS_7MatcherIT_EEIRKSB_EEv.exit unwind label %bb.e, !noalias !4270 ; 4 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28, !noalias !4270
  br label %bb.f

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %i.ah, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  call void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28, !noalias !4270
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !4270
  br label %common.resume

_ZNK7testing8internal15VariadicMatcherINS0_16AnyOfMatcherImplEJNS1_INS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESH_EEcvNS_7MatcherIT_EEIRKSB_EEv.exit: ; preds = %bb.c
  store i32 1, ptr %i.i, align 4, !tbaa !310, !noalias !4270
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = ptrtoint ptr %i.a to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !398, !noalias !4270
  store ptr %i.i, ptr %i.h, align 8, !tbaa !52, !alias.scope !4270
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %4, align 8, !tbaa !9, !alias.scope !4270
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !4270
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !4251 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4229
  %.not.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread: ; preds = %_ZNK7testing8internal15VariadicMatcherINS0_16AnyOfMatcherImplEJNS1_INS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESH_EEcvNS_7MatcherIT_EEIRKSB_EEv.exit
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.s, align 8, !tbaa !380
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.r, ptr %i.t, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.o, align 8, !tbaa !9
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !4251
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.v, ptr %i.n, align 8, !tbaa !4251
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.g:                                             ; preds = %_ZNK7testing8internal15VariadicMatcherINS0_16AnyOfMatcherImplEJNS1_INS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESH_EEcvNS_7MatcherIT_EEIRKSB_EEv.exit
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit unwind label %bb.k

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit: ; preds = %bb.g
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !380  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %4, align 8, !tbaa !9
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !383
  %.not.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i4, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.z = atomicrmw sub ptr %i.y, i32 1 acq_rel, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !380
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !383
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !52
  invoke void %i.ad(ptr noundef %i.ae)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.j, !inline_history !385

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29, !inline_history !386
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread, %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.k:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal15VariadicMatcherINS0_16AnyOfMatcherImplEJNS1_INS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESH_EE21CreateVariadicMatcherIRKSB_Lm0EEEvPSt6vectorINS_7MatcherIT_EESaISP_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.1572", align 16 ; 9 uses
  %3 = alloca %"class.std::vector.1572", align 8  ; 4 uses
  %4 = alloca %"class.testing::Matcher.227", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4273)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !4273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !4273
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEE21CreateVariadicMatcherIRKSA_Lm0EEEvPSt6vectorINS_7MatcherIT_EESaISN_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.d, !noalias !4273

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.c unwind label %bb.d, !noalias !4273 ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !4229, !noalias !4273
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load <2 x ptr>, ptr %2, align 16, !tbaa !4232, !noalias !4273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !4273
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal16AllOfMatcherImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.b, align 8, !tbaa !9, !noalias !4273
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !4232, !noalias !4273
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.g, align 8, !tbaa !4229, !noalias !4273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !4273
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.h, align 8, !tbaa !380, !alias.scope !4273
  %i.j = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit unwind label %bb.e, !noalias !4273 ; 4 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28, !noalias !4273
  br label %bb.f

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %i.ai, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  call void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28, !noalias !4273
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !4273
  br label %common.resume

_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit: ; preds = %bb.c
  store i32 1, ptr %i.j, align 4, !tbaa !310, !noalias !4273
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = ptrtoint ptr %i.b to i64
  store i64 %i.n, ptr %i.m, align 8, !tbaa !398, !noalias !4273
  store ptr %i.j, ptr %i.i, align 8, !tbaa !52, !alias.scope !4273
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %4, align 8, !tbaa !9, !alias.scope !4273
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !4273
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4251 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !4229
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread: ; preds = %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.t, align 8, !tbaa !380
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.s, ptr %i.u, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.p, align 8, !tbaa !9
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !4251
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.w, ptr %i.o, align 8, !tbaa !4251
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.g:                                             ; preds = %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit unwind label %bb.k

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit: ; preds = %bb.g
  %.pr = load ptr, ptr %i.h, align 8, !tbaa !380  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %4, align 8, !tbaa !9
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !383
  %.not.i.i4 = icmp eq ptr %i.y, null
  br i1 %.not.i.i4, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !380
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !383
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !52
  invoke void %i.ae(ptr noundef %i.af)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.j, !inline_history !385

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #29, !inline_history !386
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread, %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZNK7testing8internal15VariadicMatcherINS0_16AnyOfMatcherImplEJNS1_INS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESH_EE21CreateVariadicMatcherIRKSB_Lm1EEEvPSt6vectorINS_7MatcherIT_EESaISP_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1)
  ret void

bb.k:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal15VariadicMatcherINS0_16AnyOfMatcherImplEJNS1_INS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS4_INS0_15EndsWithMatcherISB_EEEEEEESH_EE21CreateVariadicMatcherIRKSB_Lm1EEEvPSt6vectorINS_7MatcherIT_EESaISP_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.1572", align 16 ; 9 uses
  %3 = alloca %"class.std::vector.1572", align 8  ; 4 uses
  %4 = alloca %"class.testing::Matcher.227", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4276)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !4276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !4276
  invoke void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEE21CreateVariadicMatcherIRKSA_Lm0EEEvPSt6vectorINS_7MatcherIT_EESaISN_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.d, !noalias !4276

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.c unwind label %bb.d, !noalias !4276 ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !4229, !noalias !4276
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load <2 x ptr>, ptr %2, align 16, !tbaa !4232, !noalias !4276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !4276
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal16AllOfMatcherImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !4276
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !4232, !noalias !4276
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.f, align 8, !tbaa !4229, !noalias !4276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !4276
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.g, align 8, !tbaa !380, !alias.scope !4276
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit unwind label %bb.e, !noalias !4276 ; 4 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28, !noalias !4276
  br label %bb.f

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %i.ah, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  call void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28, !noalias !4276
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !4276
  br label %common.resume

_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit: ; preds = %bb.c
  store i32 1, ptr %i.i, align 4, !tbaa !310, !noalias !4276
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = ptrtoint ptr %i.a to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !398, !noalias !4276
  store ptr %i.i, ptr %i.h, align 8, !tbaa !52, !alias.scope !4276
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %4, align 8, !tbaa !9, !alias.scope !4276
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !4276
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !4251 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4229
  %.not.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread: ; preds = %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.s, align 8, !tbaa !380
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.r, ptr %i.t, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.o, align 8, !tbaa !9
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !4251
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.v, ptr %i.n, align 8, !tbaa !4251
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.g:                                             ; preds = %_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEEcvNS_7MatcherIT_EEIRKSA_EEv.exit
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit unwind label %bb.k

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit: ; preds = %bb.g
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !380  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %4, align 8, !tbaa !9
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !383
  %.not.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i4, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.z = atomicrmw sub ptr %i.y, i32 1 acq_rel, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !380
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !383
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !52
  invoke void %i.ad(ptr noundef %i.ae)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.j, !inline_history !385

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29, !inline_history !386
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread, %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.k:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEE21CreateVariadicMatcherIRKSA_Lm0EEEvPSt6vectorINS_7MatcherIT_EESaISN_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Matcher.227", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNK7testing18PolymorphicMatcherINS_8internal17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcvNS_7MatcherIT_EEIRKS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher.227") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4251 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4229
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.b, label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !380
  store ptr %i.h, ptr %i.f, align 8, !tbaa !380
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !52
  store i64 %i.k, ptr %i.i, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.c, align 8, !tbaa !9
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !4251
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.b, align 8, !tbaa !4251
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit unwind label %bb.f

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !380 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !383
  %.not.i.i4 = icmp eq ptr %i.p, null
  br i1 %.not.i.i4, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !380
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !383
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !52
  invoke void %i.w(ptr noundef %i.x)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.e, !inline_history !385

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29, !inline_history !386
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread, %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEE21CreateVariadicMatcherIRKSA_Lm1EEEvPSt6vectorINS_7MatcherIT_EESaISN_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_17StartsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS3_INS0_15EndsWithMatcherISA_EEEEEE21CreateVariadicMatcherIRKSA_Lm1EEEvPSt6vectorINS_7MatcherIT_EESaISN_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Matcher.227", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNK7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcvNS_7MatcherIT_EEIRKS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher.227") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4251 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_4
