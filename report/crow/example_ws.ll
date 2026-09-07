Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE6createERKNS_7requestES2_PS4_mRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EESt8functionIFvRNS0_10connectionEEESL_IFvSN_RKSG_bEESL_IFvSN_SR_tEESL_IFvSN_SR_EESL_IFvS8_RSt8optionalINS_8responseEEPPvEEb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.bp
  %i.kf = load i64, ptr %i.hm, align 8, !tbaa !165
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #40
  %i.kh = load ptr, ptr %26, align 8, !tbaa !604  ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.ki = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !599
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #41
  br label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156

_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.bt

bb.br:                                            ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  %.pre215 = load i8, ptr %i.hh, align 8, !tbaa !586, !range !274
  %i.kn = trunc nuw i8 %.pre215 to i1
  br i1 %i.kn, label %bb.bs, label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread

bb.bs:                                            ; preds = %bb.br
  call void @_ZNSt22_Optional_payload_baseIN4crow8responseEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %25) #40
  br label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %bb.cp

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit: ; preds = %bb.bc
  %i.ko = load ptr, ptr %14, align 8, !tbaa !583
  %i.kp = load ptr, ptr %i.f, align 8, !tbaa !179
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !607
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %.noexc.i159

bb.bt:                                            ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156, %bb.bl
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156 ], [ %i.jv, %bb.bl ]
  %i.kr = load i8, ptr %i.hh, align 8, !tbaa !586, !range !274, !noundef !275
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bu, label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157

bb.bu:                                            ; preds = %bb.bt
  call void @_ZNSt22_Optional_payload_baseIN4crow8responseEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %25) #40
  br label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %bb.dg

.noexc.i159:                                      ; preds = %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #40
  %i.kt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.kt, ptr %31, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 17, ptr %i.b, align 8, !tbaa !162
  %i.ku = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc160 unwind label %bb.cx ; 2 uses

.noexc160:                                        ; preds = %.noexc.i159
  store ptr %i.ku, ptr %31, align 8, !tbaa !164
  %i.kv = load i64, ptr %i.b, align 8, !tbaa !162 ; 3 uses
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ku, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !166
  %i.kx = load ptr, ptr %31, align 8, !tbaa !164
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kv
  store i8 0, ptr %i.ky, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.kz = load atomic i8, ptr @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11 acquire, align 8
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.bv, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162, !prof !167

bb.bv:                                            ; preds = %.noexc160
  %i.lb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11) #40
  %.not.i.i165 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i165, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 16), ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, align 8, !tbaa !160
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 8), align 8, !tbaa !166
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 16), align 8, !tbaa !165
  %i.lc = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11) #40
  br label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162

_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162: ; preds = %bb.bw, %bb.bv, %.noexc160
  %i.ld = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.bx unwind label %bb.cy     ; 2 uses

bb.bx:                                            ; preds = %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162
  %.not6.i.i163 = icmp eq ptr %i.ld, null
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %.0.i.i164 = select i1 %.not6.i.i163, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, ptr %i.le ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.lf = load ptr, ptr %.0.i.i164, align 8, !tbaa !164, !noalias !1717
  %i.lg = getelementptr inbounds nuw i8, ptr %.0.i.i164, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !166, !noalias !1717 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 8 uses
  store ptr %i.li, ptr %30, align 8, !tbaa !160, !alias.scope !1718
  %i.lj = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store i64 0, ptr %i.lj, align 8, !tbaa !166, !alias.scope !1718
  store i8 0, ptr %i.li, align 8, !tbaa !165, !alias.scope !1718
  %i.lk = add i64 %i.lh, 36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %i.lk)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !166, !alias.scope !1718
  %i.lm = sub i64 4611686018427387903, %i.ll
  %i.ln = icmp ult i64 %i.lm, %i.lh
  br i1 %i.ln, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.by
  %i.lo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.lf, i64 noundef %i.lh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.bz ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.lp = load i64, ptr %i.lj, align 8, !tbaa !166, !alias.scope !1718
  %i.lq = add i64 %i.lp, -4611686018427387868
  %i.lr = icmp ult i64 %i.lq, 36
  br i1 %i.lr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.237) #39
          to label %.cont.i.i unwind label %bb.bz

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ls = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.265, i64 noundef 36)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.bz ; 0 uses

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.bx
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = load ptr, ptr %30, align 8, !tbaa !164, !alias.scope !1718 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.li
  br i1 %i.lv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bz
  %i.lw = load i64, ptr %i.li, align 8, !tbaa !165, !alias.scope !1718
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #41
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ly = load ptr, ptr %31, align 8, !tbaa !164  ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.kt
  br i1 %i.lz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ma = load i64, ptr %i.kt, align 8, !tbaa !165
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4sha14SHA1E, i64 16), ptr %32, align 8, !tbaa !257
  %i.mc = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.mc, align 8, !tbaa !276
  %i.md = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i32 -1009589776, ptr %i.md, align 8, !tbaa !276
  %i.me = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.me, i8 0, i64 16, i1 false)
  %i.mf = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.mg = load i64, ptr %i.lj, align 8, !tbaa !166 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mg
  %.not7.i.i = icmp samesign eq i64 %i.mg, 0
  br i1 %.not7.i.i, label %_ZN4sha14SHA112processBytesEPKvm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  %i.mi = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.mj = getelementptr inbounds nuw i8, ptr %32, i64 104 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN4sha14SHA111processByteEh.exit.i.i, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.mf, %.lr.ph.i.i ], [ %i.ms, %_ZN4sha14SHA111processByteEh.exit.i.i ] ; 2 uses
  %i.mk = load i8, ptr %.08.i.i, align 1, !tbaa !165
  %i.ml = load i64, ptr %i.me, align 8, !tbaa !609 ; 2 uses
  %i.mm = add nsw i64 %i.ml, 1
  store i64 %i.mm, ptr %i.me, align 8, !tbaa !609
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml
  store i8 %i.mk, ptr %i.mn, align 1, !tbaa !165
  %i.mo = load i64, ptr %i.mj, align 8, !tbaa !610
  %i.mp = add i64 %i.mo, 1
  store i64 %i.mp, ptr %i.mj, align 8, !tbaa !610
  %i.mq = load i64, ptr %i.me, align 8, !tbaa !609
  %i.mr = icmp eq i64 %i.mq, 64
  br i1 %i.mr, label %bb.cb, label %_ZN4sha14SHA111processByteEh.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  store i64 0, ptr %i.me, align 8, !tbaa !609
  invoke void @_ZN4sha14SHA112processBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %32)
          to label %_ZN4sha14SHA111processByteEh.exit.i.i unwind label %bb.cz

_ZN4sha14SHA111processByteEh.exit.i.i:            ; preds = %bb.cb, %bb.ca
  %i.ms = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  %.not.i.i171 = icmp eq ptr %i.ms, %i.mh
  br i1 %.not.i.i171, label %_ZN4sha14SHA112processBytesEPKvm.exit, label %bb.ca, !llvm.loop !28

_ZN4sha14SHA112processBytesEPKvm.exit:            ; preds = %_ZN4sha14SHA111processByteEh.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.mt = invoke noundef ptr @_ZN4sha14SHA19getDigestEPj(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull %i.a)
          to label %bb.cc unwind label %bb.da     ; 0 uses

bb.cc:                                            ; preds = %_ZN4sha14SHA112processBytesEPKvm.exit
  %i.mu = load i32, ptr %i.a, align 16, !tbaa !276 ; 4 uses
  %i.mv = lshr i32 %i.mu, 24
  %i.mw = trunc nuw i32 %i.mv to i8
  store i8 %i.mw, ptr %i.g, align 16, !tbaa !165
  %i.mx = lshr i32 %i.mu, 16
  %i.my = trunc i32 %i.mx to i8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !165
  %i.na = lshr i32 %i.mu, 8
  %i.nb = trunc i32 %i.na to i8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.nb, ptr %i.nc, align 2, !tbaa !165
  %i.nd = trunc i32 %i.mu to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !165
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !276 ; 4 uses
  %i.nh = lshr i32 %i.ng, 24
  %i.ni = trunc nuw i32 %i.nh to i8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 %i.ni, ptr %i.nj, align 4, !tbaa !165
  %i.nk = lshr i32 %i.ng, 16
  %i.nl = trunc i32 %i.nk to i8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !165
  %i.nn = lshr i32 %i.ng, 8
  %i.no = trunc i32 %i.nn to i8
  %i.np = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  store i8 %i.no, ptr %i.np, align 2, !tbaa !165
  %i.nq = trunc i32 %i.ng to i8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !165
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !276 ; 4 uses
  %i.nu = lshr i32 %i.nt, 24
  %i.nv = trunc nuw i32 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.nv, ptr %i.nw, align 8, !tbaa !165
  %i.nx = lshr i32 %i.nt, 16
  %i.ny = trunc i32 %i.nx to i8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 %i.ny, ptr %i.nz, align 1, !tbaa !165
  %i.oa = lshr i32 %i.nt, 8
  %i.ob = trunc i32 %i.oa to i8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i8 %i.ob, ptr %i.oc, align 2, !tbaa !165
  %i.od = trunc i32 %i.nt to i8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !165
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !276 ; 4 uses
  %i.oh = lshr i32 %i.og, 24
  %i.oi = trunc nuw i32 %i.oh to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i8 %i.oi, ptr %i.oj, align 4, !tbaa !165
  %i.ok = lshr i32 %i.og, 16
  %i.ol = trunc i32 %i.ok to i8
  %i.om = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !165
  %i.on = lshr i32 %i.og, 8
  %i.oo = trunc i32 %i.on to i8
  %i.op = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  store i8 %i.oo, ptr %i.op, align 2, !tbaa !165
  %i.oq = trunc i32 %i.og to i8
  %i.or = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !165
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ot = load i32, ptr %i.os, align 16, !tbaa !276 ; 4 uses
  %i.ou = lshr i32 %i.ot, 24
  %i.ov = trunc nuw i32 %i.ou to i8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %i.ov, ptr %i.ow, align 16, !tbaa !165
  %i.ox = lshr i32 %i.ot, 16
  %i.oy = trunc i32 %i.ox to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !165
  %i.pa = lshr i32 %i.ot, 8
  %i.pb = trunc i32 %i.pa to i8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i8 %i.pb, ptr %i.pc, align 2, !tbaa !165
  %i.pd = trunc i32 %i.ot to i8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.pf = load ptr, ptr %14, align 8, !tbaa !583  ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 120
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !623
  store ptr %i.pf, ptr %33, align 8, !tbaa !626
  %i.pi = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !312 ; 3 uses
  store ptr %i.pk, ptr %i.pi, align 8, !tbaa !312
  %.not.i.i.i174 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i.i174, label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 3 uses
  %i.pm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.pm, 0
  br i1 %.not.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pn = load i32, ptr %i.pl, align 4, !tbaa !276
  %i.po = add nsw i32 %i.pn, 1
  store i32 %i.po, ptr %i.pl, align 4, !tbaa !276
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

bb.cf:                                            ; preds = %bb.cd
  %i.pp = atomicrmw volatile add ptr %i.pl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit: ; preds = %bb.cc, %bb.ce, %bb.cf
  invoke void @_ZN4crow4CrowIJEE13add_websocketESt10shared_ptrINS_9websocket10connectionEE(ptr noundef nonnull align 8 dereferenceable(4016) %i.ph, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.cg unwind label %bb.db

bb.cg:                                            ; preds = %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit
  %i.pq = load ptr, ptr %i.pi, align 8, !tbaa !312 ; 8 uses
  %.not.i.i175 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i175, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 4 uses
  %i.ps = load atomic i64, ptr %i.pr acquire, align 8 ; 2 uses
  %i.pt = icmp eq i64 %i.ps, 4294967297
  %i.pu = trunc i64 %i.ps to i32                  ; 2 uses
  br i1 %i.pt, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.pr, align 8, !tbaa !314
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  store i32 0, ptr %i.pv, align 4, !tbaa !315
  %i.pw = load ptr, ptr %i.pq, align 8, !tbaa !257
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #40, !inline_history !29
  %i.pz = load ptr, ptr %i.pq, align 8, !tbaa !257
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #40, !inline_history !29
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cj:                                            ; preds = %bb.ch
  %i.qc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i176 = icmp eq i8 %i.qc, 0
  br i1 %.not.i.i.i176, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qd = add nsw i32 %i.pu, -1
  store i32 %i.qd, ptr %i.pr, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.qe = atomicrmw volatile add ptr %i.pr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i = phi i32 [ %i.pu, %bb.ck ], [ %i.qe, %bb.cl ]
  %i.qf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.qf, label %bb.cm, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cg, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cm
  %i.qg = load ptr, ptr %14, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  invoke fastcc void @_ZN4crow7utilityL12base64encodeB5cxx11EPKhmPKc(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef %i.g)
          to label %bb.cn unwind label %bb.dc

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN4crow9websocket10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEE5startEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4592) %i.qg, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.co unwind label %bb.dd
end_hunk_0
begin_hunk_1_@_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE6createERKNS_7requestES2_PS4_mRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EESt8functionIFvRNS0_10connectionEEESL_IFvSN_RKSG_bEESL_IFvSN_SR_tEESL_IFvSN_SR_EESL_IFvS8_RSt8optionalINS_8responseEEPPvEEb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.bp
  %i.kf = load i64, ptr %i.hm, align 8, !tbaa !165
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #40
  %i.kh = load ptr, ptr %26, align 8, !tbaa !604  ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.ki = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !599
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #41
  br label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156

_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.bt

bb.br:                                            ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  %.pre215 = load i8, ptr %i.hh, align 8, !tbaa !586, !range !274
  %i.kn = trunc nuw i8 %.pre215 to i1
  br i1 %i.kn, label %bb.bs, label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread

bb.bs:                                            ; preds = %bb.br
  call void @_ZNSt22_Optional_payload_baseIN4crow8responseEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %25) #40
  br label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit.thread: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %bb.cp

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit: ; preds = %bb.bc
  %i.ko = load ptr, ptr %14, align 8, !tbaa !852
  %i.kp = load ptr, ptr %i.f, align 8, !tbaa !179
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !607
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %.noexc.i159

bb.bt:                                            ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156, %bb.bl
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit156 ], [ %i.jv, %bb.bl ]
  %i.kr = load i8, ptr %i.hh, align 8, !tbaa !586, !range !274, !noundef !275
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bu, label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157

bb.bu:                                            ; preds = %bb.bt
  call void @_ZNSt22_Optional_payload_baseIN4crow8responseEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(360) %25) #40
  br label %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157

_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit157: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  br label %bb.dg

.noexc.i159:                                      ; preds = %_ZNSt14_Optional_baseIN4crow8responseELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #40
  %i.kt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.kt, ptr %31, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 17, ptr %i.b, align 8, !tbaa !162
  %i.ku = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc160 unwind label %bb.cx ; 2 uses

.noexc160:                                        ; preds = %.noexc.i159
  store ptr %i.ku, ptr %31, align 8, !tbaa !164
  %i.kv = load i64, ptr %i.b, align 8, !tbaa !162 ; 3 uses
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ku, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !166
  %i.kx = load ptr, ptr %31, align 8, !tbaa !164
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kv
  store i8 0, ptr %i.ky, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.kz = load atomic i8, ptr @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11 acquire, align 8
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.bv, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162, !prof !167

bb.bv:                                            ; preds = %.noexc160
  %i.lb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11) #40
  %.not.i.i165 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i165, label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 16), ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, align 8, !tbaa !160
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 8), align 8, !tbaa !166
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, i64 16), align 8, !tbaa !165
  %i.lc = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11) #40
  br label %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162

_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162: ; preds = %bb.bw, %bb.bv, %.noexc160
  %i.ld = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.bx unwind label %bb.cy     ; 2 uses

bb.bx:                                            ; preds = %_ZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_.exit.i162
  %.not6.i.i163 = icmp eq ptr %i.ld, null
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %.0.i.i164 = select i1 %.not6.i.i163, ptr @_ZZN4crow16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_7ci_hashENS_9ci_key_eqESaISt4pairIKS6_S6_EEERSA_E5EMPTYB5cxx11, ptr %i.le ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  %i.lf = load ptr, ptr %.0.i.i164, align 8, !tbaa !164, !noalias !2116
  %i.lg = getelementptr inbounds nuw i8, ptr %.0.i.i164, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !166, !noalias !2116 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 8 uses
  store ptr %i.li, ptr %30, align 8, !tbaa !160, !alias.scope !2117
  %i.lj = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store i64 0, ptr %i.lj, align 8, !tbaa !166, !alias.scope !2117
  store i8 0, ptr %i.li, align 8, !tbaa !165, !alias.scope !2117
  %i.lk = add i64 %i.lh, 36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %i.lk)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !166, !alias.scope !2117
  %i.lm = sub i64 4611686018427387903, %i.ll
  %i.ln = icmp ult i64 %i.lm, %i.lh
  br i1 %i.ln, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.by
  %i.lo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.lf, i64 noundef %i.lh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.bz ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.lp = load i64, ptr %i.lj, align 8, !tbaa !166, !alias.scope !2117
  %i.lq = add i64 %i.lp, -4611686018427387868
  %i.lr = icmp ult i64 %i.lq, 36
  br i1 %i.lr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.237) #39
          to label %.cont.i.i unwind label %bb.bz

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ls = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.265, i64 noundef 36)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.bz ; 0 uses

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.bx
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = load ptr, ptr %30, align 8, !tbaa !164, !alias.scope !2117 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.li
  br i1 %i.lv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bz
  %i.lw = load i64, ptr %i.li, align 8, !tbaa !165, !alias.scope !2117
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #41
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ly = load ptr, ptr %31, align 8, !tbaa !164  ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.kt
  br i1 %i.lz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ma = load i64, ptr %i.kt, align 8, !tbaa !165
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4sha14SHA1E, i64 16), ptr %32, align 8, !tbaa !257
  %i.mc = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.mc, align 8, !tbaa !276
  %i.md = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i32 -1009589776, ptr %i.md, align 8, !tbaa !276
  %i.me = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.me, i8 0, i64 16, i1 false)
  %i.mf = load ptr, ptr %30, align 8, !tbaa !164  ; 2 uses
  %i.mg = load i64, ptr %i.lj, align 8, !tbaa !166 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mg
  %.not7.i.i = icmp samesign eq i64 %i.mg, 0
  br i1 %.not7.i.i, label %_ZN4sha14SHA112processBytesEPKvm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  %i.mi = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.mj = getelementptr inbounds nuw i8, ptr %32, i64 104 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN4sha14SHA111processByteEh.exit.i.i, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.mf, %.lr.ph.i.i ], [ %i.ms, %_ZN4sha14SHA111processByteEh.exit.i.i ] ; 2 uses
  %i.mk = load i8, ptr %.08.i.i, align 1, !tbaa !165
  %i.ml = load i64, ptr %i.me, align 8, !tbaa !609 ; 2 uses
  %i.mm = add nsw i64 %i.ml, 1
  store i64 %i.mm, ptr %i.me, align 8, !tbaa !609
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml
  store i8 %i.mk, ptr %i.mn, align 1, !tbaa !165
  %i.mo = load i64, ptr %i.mj, align 8, !tbaa !610
  %i.mp = add i64 %i.mo, 1
  store i64 %i.mp, ptr %i.mj, align 8, !tbaa !610
  %i.mq = load i64, ptr %i.me, align 8, !tbaa !609
  %i.mr = icmp eq i64 %i.mq, 64
  br i1 %i.mr, label %bb.cb, label %_ZN4sha14SHA111processByteEh.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  store i64 0, ptr %i.me, align 8, !tbaa !609
  invoke void @_ZN4sha14SHA112processBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %32)
          to label %_ZN4sha14SHA111processByteEh.exit.i.i unwind label %bb.cz

_ZN4sha14SHA111processByteEh.exit.i.i:            ; preds = %bb.cb, %bb.ca
  %i.ms = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  %.not.i.i171 = icmp eq ptr %i.ms, %i.mh
  br i1 %.not.i.i171, label %_ZN4sha14SHA112processBytesEPKvm.exit, label %bb.ca, !llvm.loop !28

_ZN4sha14SHA112processBytesEPKvm.exit:            ; preds = %_ZN4sha14SHA111processByteEh.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.mt = invoke noundef ptr @_ZN4sha14SHA19getDigestEPj(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull %i.a)
          to label %bb.cc unwind label %bb.da     ; 0 uses

bb.cc:                                            ; preds = %_ZN4sha14SHA112processBytesEPKvm.exit
  %i.mu = load i32, ptr %i.a, align 16, !tbaa !276 ; 4 uses
  %i.mv = lshr i32 %i.mu, 24
  %i.mw = trunc nuw i32 %i.mv to i8
  store i8 %i.mw, ptr %i.g, align 16, !tbaa !165
  %i.mx = lshr i32 %i.mu, 16
  %i.my = trunc i32 %i.mx to i8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !165
  %i.na = lshr i32 %i.mu, 8
  %i.nb = trunc i32 %i.na to i8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.nb, ptr %i.nc, align 2, !tbaa !165
  %i.nd = trunc i32 %i.mu to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !165
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !276 ; 4 uses
  %i.nh = lshr i32 %i.ng, 24
  %i.ni = trunc nuw i32 %i.nh to i8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 %i.ni, ptr %i.nj, align 4, !tbaa !165
  %i.nk = lshr i32 %i.ng, 16
  %i.nl = trunc i32 %i.nk to i8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !165
  %i.nn = lshr i32 %i.ng, 8
  %i.no = trunc i32 %i.nn to i8
  %i.np = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  store i8 %i.no, ptr %i.np, align 2, !tbaa !165
  %i.nq = trunc i32 %i.ng to i8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !165
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !276 ; 4 uses
  %i.nu = lshr i32 %i.nt, 24
  %i.nv = trunc nuw i32 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.nv, ptr %i.nw, align 8, !tbaa !165
  %i.nx = lshr i32 %i.nt, 16
  %i.ny = trunc i32 %i.nx to i8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 %i.ny, ptr %i.nz, align 1, !tbaa !165
  %i.oa = lshr i32 %i.nt, 8
  %i.ob = trunc i32 %i.oa to i8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i8 %i.ob, ptr %i.oc, align 2, !tbaa !165
  %i.od = trunc i32 %i.nt to i8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !165
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !276 ; 4 uses
  %i.oh = lshr i32 %i.og, 24
  %i.oi = trunc nuw i32 %i.oh to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i8 %i.oi, ptr %i.oj, align 4, !tbaa !165
  %i.ok = lshr i32 %i.og, 16
  %i.ol = trunc i32 %i.ok to i8
  %i.om = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !165
  %i.on = lshr i32 %i.og, 8
  %i.oo = trunc i32 %i.on to i8
  %i.op = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  store i8 %i.oo, ptr %i.op, align 2, !tbaa !165
  %i.oq = trunc i32 %i.og to i8
  %i.or = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !165
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ot = load i32, ptr %i.os, align 16, !tbaa !276 ; 4 uses
  %i.ou = lshr i32 %i.ot, 24
  %i.ov = trunc nuw i32 %i.ou to i8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %i.ov, ptr %i.ow, align 16, !tbaa !165
  %i.ox = lshr i32 %i.ot, 16
  %i.oy = trunc i32 %i.ox to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !165
  %i.pa = lshr i32 %i.ot, 8
  %i.pb = trunc i32 %i.pa to i8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i8 %i.pb, ptr %i.pc, align 2, !tbaa !165
  %i.pd = trunc i32 %i.ot to i8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.pf = load ptr, ptr %14, align 8, !tbaa !852  ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 120
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !860
  store ptr %i.pf, ptr %33, align 8, !tbaa !626
  %i.pi = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !312 ; 3 uses
  store ptr %i.pk, ptr %i.pi, align 8, !tbaa !312
  %.not.i.i.i174 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i.i174, label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 3 uses
  %i.pm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i = icmp eq i8 %i.pm, 0
  br i1 %.not.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pn = load i32, ptr %i.pl, align 4, !tbaa !276
  %i.po = add nsw i32 %i.pn, 1
  store i32 %i.po, ptr %i.pl, align 4, !tbaa !276
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

bb.cf:                                            ; preds = %bb.cd
  %i.pp = atomicrmw volatile add ptr %i.pl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit: ; preds = %bb.cc, %bb.ce, %bb.cf
  invoke void @_ZN4crow4CrowIJEE13add_websocketESt10shared_ptrINS_9websocket10connectionEE(ptr noundef nonnull align 8 dereferenceable(4016) %i.ph, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %33)
          to label %bb.cg unwind label %bb.db

bb.cg:                                            ; preds = %_ZNSt10shared_ptrIN4crow9websocket10connectionEEC2INS1_10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEEEvEERKS_IT_E.exit
  %i.pq = load ptr, ptr %i.pi, align 8, !tbaa !312 ; 8 uses
  %.not.i.i175 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i175, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 4 uses
  %i.ps = load atomic i64, ptr %i.pr acquire, align 8 ; 2 uses
  %i.pt = icmp eq i64 %i.ps, 4294967297
  %i.pu = trunc i64 %i.ps to i32                  ; 2 uses
  br i1 %i.pt, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.pr, align 8, !tbaa !314
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  store i32 0, ptr %i.pv, align 4, !tbaa !315
  %i.pw = load ptr, ptr %i.pq, align 8, !tbaa !257
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #40, !inline_history !29
  %i.pz = load ptr, ptr %i.pq, align 8, !tbaa !257
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #40, !inline_history !29
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cj:                                            ; preds = %bb.ch
  %i.qc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i176 = icmp eq i8 %i.qc, 0
  br i1 %.not.i.i.i176, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qd = add nsw i32 %i.pu, -1
  store i32 %i.qd, ptr %i.pr, align 8, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.qe = atomicrmw volatile add ptr %i.pr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i = phi i32 [ %i.pu, %bb.ck ], [ %i.qe, %bb.cl ]
  %i.qf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.qf, label %bb.cm, label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !316

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #40
  br label %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cg, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cm
  %i.qg = load ptr, ptr %14, align 8, !tbaa !852
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #40
  invoke fastcc void @_ZN4crow7utilityL12base64encodeB5cxx11EPKhmPKc(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef %i.g)
          to label %bb.cn unwind label %bb.dc

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIN4crow9websocket10connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN4crow9websocket10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEE5startEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4592) %i.qg, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.co unwind label %bb.dd
end_hunk_1
