Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiFormSpecMenu?download=true
inline.NumInlined: 8820
inline.NumDeleted: 2296
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN15GUIFormSpecMenu13regenerateGuiEN4core8vector2dIjEE:bb.a
  br label %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP18GUIScrollContainerESaIS9_EE5clearEv.exit, %_ZSt8_DestroyIPPN3gui11IGUIElementES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !337 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.jh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.jg, %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit ] ; 4 uses
  %i.jh = load ptr, ptr %.06.i.i.i, align 8, !tbaa !338 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !253 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !252
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #33
  %.not.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt6vectorIPN3gui11IGUIElementESaIS2_EE5clearEv.exit
  %i.jo = load ptr, ptr %i.je, align 8, !tbaa !260
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !261
  %i.jr = shl i64 %i.jq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jo, i8 0, i64 %i.jr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !337 ; 2 uses
  %.not5.i.i.i230 = icmp eq ptr %i.ju, null
  br i1 %.not5.i.i.i230, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237, label %.lr.ph.i.i.i231

.lr.ph.i.i.i231:                                  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234
  %.06.i.i.i232 = phi ptr [ %i.jv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234 ], [ %i.ju, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit ] ; 4 uses
  %i.jv = load ptr, ptr %.06.i.i.i232, align 8, !tbaa !338 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.06.i.i.i232, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !253 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.06.i.i.i232, i64 24 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i233: ; preds = %.lr.ph.i.i.i231
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !252
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234: ; preds = %.lr.ph.i.i.i231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i233
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i232, i64 noundef 56) #33
  %.not.i.i.i235 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i235, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237, label %.lr.ph.i.i.i231, !llvm.loop !5

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i234, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit
  %i.kc = load ptr, ptr %i.js, align 8, !tbaa !260
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !261
  %i.kf = shl i64 %i.ke, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kc, i8 0, i64 %i.kf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i8 0, i64 16, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !337 ; 2 uses
  %.not5.i.i.i238 = icmp eq ptr %i.ki, null
  br i1 %.not5.i.i.i238, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245, label %.lr.ph.i.i.i239

.lr.ph.i.i.i239:                                  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242
  %.06.i.i.i240 = phi ptr [ %i.kj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242 ], [ %i.ki, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237 ] ; 4 uses
  %i.kj = load ptr, ptr %.06.i.i.i240, align 8, !tbaa !338 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.06.i.i.i240, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !253 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.06.i.i.i240, i64 24 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i241: ; preds = %.lr.ph.i.i.i239
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !252
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242: ; preds = %.lr.ph.i.i.i239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i240, i64 noundef 56) #33
  %.not.i.i.i243 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i243, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245, label %.lr.ph.i.i.i239, !llvm.loop !5

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i242, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit237
  %i.kq = load ptr, ptr %i.kg, align 8, !tbaa !260
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !261
  %i.kt = shl i64 %i.ks, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kq, i8 0, i64 %i.kt, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, i8 0, i64 16, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 1996
  %i.kv = load i8, ptr %i.ku, align 4, !tbaa !279, !range !309, !noundef !310
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1997
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !280
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2008
  store i8 1, ptr %i.kx, align 8, !tbaa !553
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 2009
  store i8 0, ptr %i.ky, align 1, !tbaa !554
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 7 uses
  store i16 1, ptr %i.kz, align 8, !tbaa !286
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 2012
  store i32 -1946157056, ptr %i.la, align 4, !tbaa !387
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 2232
  store i32 0, ptr %i.lb, align 8, !tbaa !293
  %i.lc = load ptr, ptr @g_settings, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ld, ptr %5, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i64 28, ptr %i.d, align 8, !tbaa !254
  %i.le = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc248 unwind label %bb.be ; 2 uses

.noexc248:                                        ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245
  store ptr %i.le, ptr %5, align 8, !tbaa !253
  %i.lf = load i64, ptr %i.d, align 8, !tbaa !254 ; 3 uses
  store i64 %i.lf, ptr %i.ld, align 8, !tbaa !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.le, ptr noundef nonnull align 1 dereferenceable(28) @.str.138, i64 28, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !251
  %i.lh = load ptr, ptr %5, align 8, !tbaa !253
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 0, ptr %i.li, align 1, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.lj = invoke { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aq unwind label %bb.bf     ; 2 uses

bb.aq:                                            ; preds = %.noexc248
  %i.lk = extractvalue { <2 x float>, i64 } %i.lj, 0
  %i.ll = extractvalue { <2 x float>, i64 } %i.lj, 1 ; 2 uses
  %.sroa.5486.sroa.0.0.extract.trunc = trunc i64 %i.ll to i32
  %i.lm = bitcast i32 %.sroa.5486.sroa.0.0.extract.trunc to float
  %i.ln = and i64 %i.ll, 4294967296
  %.not515 = icmp eq i64 %i.ln, 0                 ; 2 uses
  %.sroa.3.0.i.sroa.speculated = select i1 %.not515, float 0.000000e+00, float %i.lm
  %.sroa.02.0.i.sroa.speculated = select i1 %.not515, <2 x float> zeroinitializer, <2 x float> %i.lk ; 2 uses
  %i.lo = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ld
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.aq
  %i.lq = load i64, ptr %i.ld, align 8, !tbaa !252
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ls = load ptr, ptr @g_settings, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.lt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.lt, ptr %6, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 30, ptr %i.c, align 8, !tbaa !254
  %i.lu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc254 unwind label %bb.bg ; 2 uses

.noexc254:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  store ptr %i.lu, ptr %6, align 8, !tbaa !253
  %i.lv = load i64, ptr %i.c, align 8, !tbaa !254 ; 3 uses
  store i64 %i.lv, ptr %i.lt, align 8, !tbaa !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.lu, ptr noundef nonnull align 1 dereferenceable(30) @.str.139, i64 30, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !251
  %i.lx = load ptr, ptr %6, align 8, !tbaa !253
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lv
  store i8 0, ptr %i.ly, align 1, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.lz = invoke noundef i32 @_ZNK8Settings6getS32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ls, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ar unwind label %bb.bh

bb.ar:                                            ; preds = %.noexc254
  %.sroa.083.0.vec.extract = extractelement <2 x float> %.sroa.02.0.i.sroa.speculated, i64 0 ; 2 uses
  %i.ma = fcmp nsz olt float %.sroa.083.0.vec.extract, 0.000000e+00
  %.v.i = select i1 %i.ma, float -5.000000e-01, float 5.000000e-01
  %i.mb = fadd nsz float %.sroa.083.0.vec.extract, %.v.i
  %i.mc = fptosi float %i.mb to i32
  %i.md = insertelement <2 x float> %.sroa.02.0.i.sroa.speculated, float %.sroa.3.0.i.sroa.speculated, i64 0 ; 2 uses
  %i.me = fcmp nsz olt <2 x float> %i.md, zeroinitializer
  %i.mf = select <2 x i1> %i.me, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.mg = fadd nsz <2 x float> %i.md, %i.mf
  %i.mh = insertelement <4 x i32> poison, i32 %i.mc, i64 2
  %i.mi = insertelement <4 x i32> %i.mh, i32 %i.lz, i64 3
  %i.mj = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mk = fptosi <4 x float> %i.mj to <4 x i32>
  %i.ml = shufflevector <4 x i32> %i.mk, <4 x i32> %i.mi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ml, <4 x i32> zeroinitializer)
  %i.mn = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mm, <4 x i32> splat (i32 255))
  %14 = shl nuw <4 x i32> %i.mn, <i32 0, i32 8, i32 16, i32 24>
  %15 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %14)
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 2016
  store i32 %15, ptr %i.mo, align 8, !tbaa !387
  %i.mp = load ptr, ptr %6, align 8, !tbaa !253   ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.lt
  br i1 %i.mq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %bb.ar
  %i.mr = load i64, ptr %i.lt, align 8, !tbaa !252
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.ms) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 2020 ; 2 uses
  store i32 -9534916, ptr %i.mt, align 4, !tbaa !387
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 2 uses
  store i32 -1, ptr %i.mu, align 8, !tbaa !387
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store <4 x i32> <i32 0, i32 0, i32 110, i32 18>, ptr %7, align 16, !tbaa !387
  %i.mx = invoke noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %i.mw, i64 0, ptr nonnull @.str.22, ptr noundef nonnull align 4 dereferenceable(16) %7, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null, i32 noundef -1, i1 noundef zeroext false)
          to label %bb.as unwind label %bb.bi     ; 3 uses

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 9 uses
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !276
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !72
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 328
  %i.nb = load ptr, ptr %i.na, align 8
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(308) %i.mx, i1 noundef zeroext true)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %bb.as
  %i.nc = load ptr, ptr %i.my, align 8, !tbaa !276 ; 2 uses
  %.sroa.080.0.copyload = load i32, ptr %i.mt, align 4, !tbaa !387
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !72
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 344
  %i.nf = load ptr, ptr %i.ne, align 8
  invoke void %i.nf(ptr noundef nonnull align 8 dereferenceable(308) %i.nc, i32 %.sroa.080.0.copyload)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.ng = load ptr, ptr %i.my, align 8, !tbaa !276 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !72
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 352
  %i.nj = load ptr, ptr %i.ni, align 8
  invoke void %i.nj(ptr noundef nonnull align 8 dereferenceable(308) %i.ng, i1 noundef zeroext true)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  %i.nk = load ptr, ptr %i.my, align 8, !tbaa !276 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !72
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 376
  %i.nn = load ptr, ptr %i.nm, align 8
  invoke void %i.nn(ptr noundef nonnull align 8 dereferenceable(308) %i.nk, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.no = load ptr, ptr %i.my, align 8, !tbaa !276 ; 2 uses
  %.sroa.079.0.copyload = load i32, ptr %i.mu, align 8, !tbaa !387
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !72
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 304
  %i.nr = load ptr, ptr %i.nq, align 8
  invoke void %i.nr(ptr noundef nonnull align 8 dereferenceable(308) %i.no, i32 %.sroa.079.0.copyload)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.ns = load ptr, ptr %i.my, align 8, !tbaa !276 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !72
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 392
  %i.nv = load ptr, ptr %i.nu, align 8
  invoke void %i.nv(ptr noundef nonnull align 8 dereferenceable(308) %i.ns, i32 noundef 2, i32 noundef 2)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.nw = load ptr, ptr %i.my, align 8, !tbaa !276 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !72
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 400
  %i.nz = load ptr, ptr %i.ny, align 8
  invoke void %i.nz(ptr noundef nonnull align 8 dereferenceable(308) %i.nw, i1 noundef zeroext false)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.oa = load ptr, ptr %i.my, align 8, !tbaa !276 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !72
  %i.oc = getelementptr i8, ptr %i.ob, i64 -24
  %i.od = load i64, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds i8, ptr %i.oa, i64 %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 2 uses
  %i.og = load i32, ptr %i.of, align 8, !tbaa !349
  %i.oh = add nsw i32 %i.og, 1
  store i32 %i.oh, ptr %i.of, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 736
  invoke void @_Z5splitIcESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.157") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.oi, i8 noundef signext 93)
          to label %bb.ba unwind label %bb.bj

bb.ba:                                            ; preds = %bb.az
  %i.oj = load ptr, ptr %8, align 8, !tbaa !394   ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 11 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !394
  %i.om = icmp eq ptr %i.oj, %i.ol
  br i1 %i.om, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.on = invoke noundef zeroext i1 @_ZN15GUIFormSpecMenu18parseVersionDirectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.oj)
          to label %bb.bc unwind label %.loopexit.split-lp527.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %spec.select = zext i1 %i.on to i32
  %.pre = load ptr, ptr %i.ok, align 8, !tbaa !306
  %.pre661 = load ptr, ptr %8, align 8, !tbaa !305
  br label %bb.bk

bb.bd:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit208
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.be:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE5clearEv.exit245
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

bb.bf:                                            ; preds = %.noexc248
  %i.oq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.or = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.ld
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.bf
  %i.ot = load i64, ptr %i.ld, align 8, !tbaa !252
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261, %bb.be
  %.pn161 = phi { ptr, i32 } [ %i.op, %bb.be ], [ %i.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ], [ %i.oq, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.gb

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

bb.bh:                                            ; preds = %.noexc254
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = load ptr, ptr %6, align 8, !tbaa !253   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.lt
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.bh
  %i.oz = load i64, ptr %i.lt, align 8, !tbaa !252
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.bg
  %.pn163 = phi { ptr, i32 } [ %i.ov, %bb.bg ], [ %i.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %i.ow, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.gb

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.gb

bb.bj:                                            ; preds = %bb.az
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.loopexit526:                                     ; preds = %.lr.ph600
  %lpad.loopexit528 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp527

.loopexit.split-lp527.loopexit:                   ; preds = %.lr.ph593
  %lpad.loopexit531 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp527

.loopexit.split-lp527.loopexit.split-lp.loopexit: ; preds = %.lr.ph586
  %lpad.loopexit534 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp527

.loopexit.split-lp527.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph580
  %lpad.loopexit537 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp527

.loopexit.split-lp527.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb
  %lpad.loopexit.split-lp538 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_guiFormSpecMenu.cpp:bb.a
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.c, %bb.b
  %i.my = load ptr, ptr %i.mr, align 8, !tbaa !253 ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.mq, i64 -48 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !252
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.nd = icmp eq ptr %i.mr, %0
  br i1 %i.nd, label %__cxx_global_var_init.exit, label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.f:                                             ; preds = %.noexc445.i
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.g:                                             ; preds = %.noexc453.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.h:                                             ; preds = %.noexc515.i
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.i:                                             ; preds = %.noexc532.i
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.j:                                             ; preds = %.noexc593.i
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.k:                                             ; preds = %.noexc619.i
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.l:                                             ; preds = %.noexc628.i
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

.thread.loopexit.i:                               ; preds = %.noexc637.i
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.mi) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.mb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lk) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.la) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kj) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kc) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.js) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.je) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ix) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.iq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ij) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ic) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gn) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gg) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fz) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.er) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ek) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ed) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dw) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dp) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.di) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.db) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cn) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cg) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bz) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.be) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ax) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aj) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ac) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.v) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.o) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #32
  br label %.thread.i

.preheader.preheader.i:                           ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.44230.i = phi ptr [ %i.js, %bb.i ], [ %i.hb, %bb.g ], [ %i.er, %bb.e ], [ %i.lk, %bb.l ], [ %i.la, %bb.k ], [ %i.kq, %bb.j ], [ %i.hs, %bb.h ], [ %i.fb, %bb.f ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ni, %bb.i ], [ %i.ng, %bb.g ], [ %i.ne, %bb.e ], [ %i.nl, %bb.l ], [ %i.nk, %bb.k ], [ %i.nj, %bb.j ], [ %i.nh, %bb.h ], [ %i.nf, %bb.f ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.nn = phi ptr [ %i.no, %.preheader.i ], [ %.44230.i, %.preheader.preheader.i ]
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -64 ; 3 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.no) #32
  %i.np = icmp eq ptr %i.no, %0
  br i1 %i.np, label %.thread.i, label %.preheader.i

.thread.i:                                        ; preds = %.preheader.i, %.thread.loopexit.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn762.i = phi { ptr, i32 } [ %i.nm, %.thread.loopexit.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn762.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.nq = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS7_10parserDataERKS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairISB_SE_EEED2Ev, ptr nonnull @_ZN15GUIFormSpecMenu15element_parsersB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

declare extern_weak void @_ZTH11errorstream() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #28

declare extern_weak void @_ZTH13warningstream() #1

declare extern_weak void @_ZTH10infostream() #1

declare extern_weak void @_ZTH13verbosestream() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nobuiltin nounwind allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}
!llvm.errno.tbaa = !{!70}

!0 = distinct !{!0, !307}
!1 = distinct !{!1, !307}
!2 = distinct !{!2, !307}
!3 = distinct !{!3, !307}
!4 = distinct !{!4, !307}
!5 = distinct !{!5, !307}
!6 = distinct !{!6, !307}
!7 = distinct !{!7, !307}
!8 = distinct !{!8, !307}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!12 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !307}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{!25, !307}
!26 = distinct !{!26, !307}
!27 = distinct !{!27, !307}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{!31, !307}
!32 = distinct !{!32, !307}
!33 = distinct !{null}
!34 = distinct !{null, null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{!40, !307}
!41 = distinct !{!41, !307}
!42 = distinct !{null}
!43 = distinct !{!43, !307}
!44 = distinct !{!44, !307}
!45 = distinct !{!45, !307}
!46 = distinct !{!46, !307}
!47 = distinct !{!47, !307}
!48 = distinct !{!48, !307}
!49 = distinct !{!49, !307}
!50 = distinct !{!50, !307}
!51 = distinct !{!51, !307}
!52 = distinct !{!52, !307}
!53 = distinct !{!53, !307}
!54 = distinct !{!54, !307}
!55 = distinct !{!55, !307}
!56 = distinct !{null, null}
!57 = distinct !{null, null, null}
!58 = distinct !{!58, !307}
!59 = distinct !{null, null, null}
!60 = distinct !{!60, !307}
!61 = distinct !{!61, !307}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!"omnipotent char", !66, i64 0}
!68 = !{!"int", !67, i64 0}
!69 = !{!"__libc_errno", !68, i64 0}
!70 = !{!69, !68, i64 0}
!71 = !{!"vtable pointer", !66, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTS14IEventReceiver"}
!74 = !{!"any pointer", !67, i64 0}
!75 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !74, i64 0}
!76 = !{!"_ZTSNSt8__detail15_List_node_baseE", !75, i64 0, !75, i64 8}
!77 = !{!"long", !67, i64 0}
!78 = !{!"_ZTSNSt8__detail17_List_node_headerE", !76, i64 0, !77, i64 16}
!79 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !78, i64 0}
!80 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !79, i64 0}
!81 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !80, i64 0}
!82 = !{!"p1 _ZTSN3gui11IGUIElementE", !74, i64 0}
!83 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !75, i64 0}
!84 = !{!"_ZTSN4core8vector2dIiEE", !68, i64 0, !68, i64 4}
!85 = !{!"_ZTSN4core4rectIiEE", !84, i64 0, !84, i64 8}
!86 = !{!"float", !67, i64 0}
!87 = !{!"_ZTSN4core8vector2dIfEE", !86, i64 0, !86, i64 4}
!88 = !{!"_ZTSN4core4rectIfEE", !87, i64 0, !87, i64 8}
!89 = !{!"_ZTSN4core11dimension2dIjEE", !68, i64 0, !68, i64 4}
!90 = !{!"bool", !67, i64 0}
!91 = !{!"p1 wchar_t", !74, i64 0}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !91, i64 0}
!93 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !92, i64 0, !77, i64 8, !67, i64 16}
!94 = !{!"_ZTSN4core6stringIwEE", !93, i64 0}
!95 = !{!"p1 omnipotent char", !74, i64 0}
!96 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !95, i64 0}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !96, i64 0, !77, i64 8, !67, i64 16}
!98 = !{!"_ZTSN4core6stringIcEE", !97, i64 0}
!99 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !67, i64 0}
!100 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !74, i64 0}
!101 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !67, i64 0}
!102 = !{!"_ZTSN3gui11IGUIElementE", !73, i64 0, !81, i64 8, !82, i64 32, !83, i64 40, !85, i64 48, !85, i64 64, !85, i64 80, !85, i64 96, !85, i64 112, !88, i64 128, !89, i64 144, !89, i64 152, !90, i64 160, !90, i64 161, !90, i64 162, !90, i64 163, !94, i64 168, !94, i64 200, !98, i64 232, !68, i64 264, !90, i64 268, !68, i64 272, !90, i64 276, !99, i64 280, !99, i64 284, !99, i64 288, !99, i64 292, !100, i64 296, !101, i64 304}
!103 = !{!"_ZTSN4core8vector2dIjEE", !68, i64 0, !68, i64 4}
!104 = !{!"p1 _ZTS12IMenuManager", !74, i64 0}
!105 = !{!"_ZTS13PointerAction", !84, i64 0, !77, i64 8}
!106 = !{!"_ZTS7irr_ptrIN3gui11IGUIElementEE", !82, i64 0}
!107 = !{!"_ZTS12GUIModalMenu", !102, i64 0, !84, i64 308, !84, i64 316, !103, i64 324, !86, i64 332, !90, i64 336, !104, i64 344, !90, i64 352, !105, i64 360, !90, i64 376, !106, i64 384, !105, i64 392}
!108 = !{!"any p2 pointer", !74, i64 0}
!109 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !108, i64 0}
!110 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !74, i64 0}
!111 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !110, i64 0}
!112 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !86, i64 0, !77, i64 8}
!113 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI9StyleSpecSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !109, i64 0, !77, i64 8, !111, i64 16, !77, i64 24, !112, i64 32, !110, i64 48}
!114 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI9StyleSpecSaIS7_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !113, i64 0}
!115 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !109, i64 0, !77, i64 8, !111, i64 16, !77, i64 24, !112, i64 32, !110, i64 48}
!116 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !115, i64 0}
!117 = !{!"p2 _ZTSN4core8vector2dIfEE", !108, i64 0}
!118 = !{!"p1 _ZTSN4core8vector2dIfEE", !74, i64 0}
!119 = !{!"_ZTSSt15_Deque_iteratorIN4core8vector2dIfEERS2_PS2_E", !118, i64 0, !118, i64 8, !118, i64 16, !117, i64 24}
!120 = !{!"_ZTSNSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE16_Deque_impl_dataE", !117, i64 0, !77, i64 8, !119, i64 16, !119, i64 48}
!121 = !{!"_ZTSNSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE11_Deque_implE", !120, i64 0}
!122 = !{!"_ZTSSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE", !121, i64 0}
!123 = !{!"_ZTSSt5dequeIN4core8vector2dIfEESaIS2_EE", !122, i64 0}
!124 = !{!"_ZTSSt5stackIN4core8vector2dIfEESt5dequeIS2_SaIS2_EEE", !123, i64 0}
!125 = !{!"p1 _ZTS16InventoryManager", !74, i64 0}
!126 = !{!"p1 _ZTS20ISimpleTextureSource", !74, i64 0}
!127 = !{!"p1 _ZTS13ISoundManager", !74, i64 0}
!128 = !{!"p1 _ZTS6Client", !74, i64 0}
!129 = !{!"_ZTSN17InventoryLocation4TypeE", !67, i64 0}
!130 = !{!"short", !67, i64 0}
!131 = !{!"_ZTSN4core8vector3dIsEE", !130, i64 0, !130, i64 2, !130, i64 4}
!132 = !{!"_ZTS17InventoryLocation", !129, i64 0, !97, i64 8, !131, i64 40}
!133 = !{!"p2 _ZTS16GUIInventoryList", !108, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIP16GUIInventoryListSaIS1_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIP16GUIInventoryListSaIS1_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIP16GUIInventoryListSaIS1_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorIP16GUIInventoryListSaIS1_EE", !136, i64 0}
!138 = !{!"p1 _ZTSN15GUIFormSpecMenu12ListRingSpecE", !74, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE12_Vector_implE", !139, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorIN15GUIFormSpecMenu12ListRingSpecESaIS1_EE", !141, i64 0}
!143 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !109, i64 0, !77, i64 8, !111, i64 16, !77, i64 24, !112, i64 32, !110, i64 48}
!144 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE", !143, i64 0}
!145 = !{!"p1 _ZTSN15GUIFormSpecMenu9FieldSpecE", !74, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIN15GUIFormSpecMenu9FieldSpecESaIS1_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!147 = !{!"_ZTSNSt12_Vector_baseIN15GUIFormSpecMenu9FieldSpecESaIS1_EE12_Vector_implE", !146, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseIN15GUIFormSpecMenu9FieldSpecESaIS1_EE", !147, i64 0}
!149 = !{!"_ZTSSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE", !148, i64 0}
!150 = !{!"p1 _ZTSSt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableE", !74, i64 0}
!151 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableESaIS5_EE17_Vector_impl_dataE", !150, i64 0, !150, i64 8, !150, i64 16}
!152 = !{!"_ZTSNSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableESaIS5_EE12_Vector_implE", !151, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseISt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableESaIS5_EE", !152, i64 0}
!154 = !{!"_ZTSSt6vectorISt4pairIN15GUIFormSpecMenu9FieldSpecEP8GUITableESaIS5_EE", !153, i64 0}
!155 = !{!"p1 _ZTSSt4pairIN15GUIFormSpecMenu9FieldSpecEPN3gui12IGUICheckBoxEE", !74, i64 0}
end_hunk_1
