Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_audit_logger_registry?download=true
inline.NumInlined: 1434
inline.NumDeleted: 894
begin_hunk_0_@_ZNK9grpc_core22XdsAuditLoggerRegistry27ConvertXdsAuditLoggerConfigERKNS_15XdsResourceType13DecodeContextEPK63envoy_config_rbac_v3_RBAC_AuditLoggingOptions_AuditLoggerConfigPNS_16ValidationErrorsE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aq
  store ptr %i.cv, ptr %24, align 8, !tbaa !79
  %i.da = load i64, ptr %i.cj, align 8, !tbaa !84
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !84
  %.pre = load i64, ptr %i.cr, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ar
  %i.db = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cx, %bb.ar ]
  %i.dc = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !82
  store ptr %i.cj, ptr %25, align 8, !tbaa !79
  store i64 0, ptr %i.cr, align 8, !tbaa !82
  store i8 0, ptr %i.cj, align 8, !tbaa !84
  %i.dd = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 2 uses
  %i.df = load i8, ptr %i.o, align 16, !tbaa !49  ; 4 uses
  switch i8 %i.df, label %bb.bb [
    i8 0, label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.av
    i8 4, label %bb.ax
    i8 5, label %bb.ba
    i8 -1, label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i
  ]

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.dg = load i8, ptr %21, align 16, !tbaa !85, !range !47, !noundef !48
  store i8 %i.dg, ptr %i.dd, align 8, !tbaa !86
  br label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i.thread

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 3 uses
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !83
  %i.di = load ptr, ptr %21, align 16, !tbaa !79  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !82 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i64 %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 16 dereferenceable(1) %i.dj, i64 %i.do, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESX_S10_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  store ptr %i.di, ptr %i.dd, align 8, !tbaa !79
  %i.dp = load i64, ptr %i.dj, align 16, !tbaa !84
  store i64 %i.dp, ptr %i.dh, align 8, !tbaa !84
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre94 = load i64, ptr %.phi.trans.insert93, align 8, !tbaa !82
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESX_S10_.exit.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESX_S10_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au
  %i.dq = phi i64 [ %.pre94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dm, %bb.au ]
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !82
  store ptr %i.dj, ptr %21, align 16, !tbaa !79
  store i64 0, ptr %i.dr, align 8, !tbaa !82
  store i8 0, ptr %i.dj, align 16, !tbaa !84
  br label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i.thread

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 3 uses
  store ptr %i.dt, ptr %i.dd, align 8, !tbaa !83
  %i.du = load ptr, ptr %21, align 16, !tbaa !79  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i16.i

bb.aw:                                            ; preds = %bb.av
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !82 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dt, ptr noundef nonnull align 16 dereferenceable(1) %i.dv, i64 %i.ea, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESX_S10_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i16.i: ; preds = %bb.av
  store ptr %i.du, ptr %i.dd, align 8, !tbaa !79
  %i.eb = load i64, ptr %i.dv, align 16, !tbaa !84
  store i64 %i.eb, ptr %i.dt, align 8, !tbaa !84
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre92 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESX_S10_.exit.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESX_S10_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i16.i, %bb.aw
  %i.ec = phi i64 [ %.pre92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i16.i ], [ %i.dy, %bb.aw ]
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 %i.ec, ptr %i.ee, align 8, !tbaa !82
  store ptr %i.dv, ptr %21, align 16, !tbaa !79
  store i64 0, ptr %i.ed, align 8, !tbaa !82
  store i8 0, ptr %i.dv, align 16, !tbaa !84
  br label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i.thread

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !15 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ef, ptr %i.ep, align 8, !tbaa !88
  %i.eq = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !18
  store ptr null, ptr %i.eg, align 16, !tbaa !15
  store ptr %i.ei, ptr %i.el, align 8, !tbaa !16
  store ptr %i.ei, ptr %i.en, align 16, !tbaa !17
  store i64 0, ptr %i.eq, align 8, !tbaa !18
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESX_S10_.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.es = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr null, ptr %i.es, align 8, !tbaa !15
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESX_S10_.exit.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESX_S10_.exit.i: ; preds = %bb.az, %bb.ay
  %.sink91 = phi ptr [ %i.ef, %bb.az ], [ %i.em, %bb.ay ]
  %.sink90 = phi ptr [ %i.ef, %bb.az ], [ %i.eo, %bb.ay ]
  %.sink = phi i64 [ 0, %bb.az ], [ %i.er, %bb.ay ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.az ], [ %i.ej, %bb.ay ]
  %i.et = getelementptr inbounds nuw i8, ptr %24, i64 56
  store ptr %.sink91, ptr %i.et, align 8, !tbaa !16
  %i.eu = getelementptr inbounds nuw i8, ptr %24, i64 64
  store ptr %.sink90, ptr %i.eu, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %24, i64 72
  store i64 %.sink, ptr %i.ev, align 8, !tbaa !18
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ef, align 8, !tbaa !8
  br label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i.thread

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ew = load <2 x ptr>, ptr %21, align 16, !tbaa !89
  store <2 x ptr> %i.ew, ptr %i.dd, align 8, !tbaa !89
  %i.ex = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ez = load ptr, ptr %i.ey, align 16, !tbaa !91
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %21, i8 0, i64 24, i1 false)
  br label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i.thread

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  unreachable

_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i.thread: ; preds = %bb.ba, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESX_S10_.exit.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESX_S10_.exit.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISF_S8_St4lessISF_ESaISt4pairIKSF_S8_EEESt6vectorIS8_SaIS8_EEEEC1EOSR_EUlOT_T0_E_OSt7variantIJS5_bS9_SF_SN_SQ_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESX_S10_.exit.i, %bb.as
  store i8 %i.df, ptr %i.de, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(56) %21)
          to label %.noexc3.i.i.i unwind label %bb.bc

_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store i8 %i.df, ptr %i.de, align 8, !tbaa !49
  %i.fa = icmp eq i8 %i.df, 0
  br i1 %i.fa, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IS5_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit, label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS0_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_bS4_SA_SI_SL_EE4typeEDpT0_EERSR_E4typeEDpOSS_.exit.i.i.i, !prof !93

.noexc3.i.i.i:                                    ; preds = %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS0_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_bS4_SA_SI_SL_EE4typeEDpT0_EERSR_E4typeEDpOSS_.exit.i.i.i

_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS0_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_bS4_SA_SI_SL_EE4typeEDpT0_EERSR_E4typeEDpOSS_.exit.i.i.i: ; preds = %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i, %.noexc3.i.i.i
  store i8 0, ptr %i.o, align 16, !tbaa !49
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IS5_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

bb.bc:                                            ; preds = %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i.thread
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #25
  unreachable

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IS5_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEC2EOSM_.exit.i.i, %_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS0_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS0_bS4_SA_SI_SL_EE4typeEDpT0_EERSR_E4typeEDpOSS_.exit.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store i32 0, ptr %i.fd, align 8, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr null, ptr %i.fe, align 8, !tbaa !15
  %i.ff = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %i.fd, ptr %i.ff, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %i.fd, ptr %i.fg, align 8, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i64 0, ptr %i.fh, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %23, ptr %7, align 8, !tbaa !94
  %i.fi = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr nonnull %i.fd, ptr noundef nonnull align 8 dereferenceable(88) %24, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc.i unwind label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader ; 0 uses

.noexc.i:                                         ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IS5_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.fj, align 8, !tbaa !49, !alias.scope !96
  %i.fk = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSISI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vIST_SQ_E15is_assignable_vIRST_SQ_EERSM_E4typeESR_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(48) %23) #23 ; 0 uses
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !15
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.fl)
          to label %.body42.a unwind label %bb.bd, !inline_history !67

.body42.a:                                        ; preds = %.noexc.i
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 80
  %27 = load i8, ptr %26, align 8, !tbaa !49
  %i.fm = icmp eq i8 %27, -1
  br i1 %i.fm, label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, label %bb.be, !prof !76

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEEC2IS5_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  %28 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #23
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %24) #23
  %29 = load ptr, ptr %25, align 8, !tbaa !79     ; 2 uses
  %.not.i.i44 = icmp eq ptr %29, %i.cj
  br i1 %.not.i.i44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

bb.bd:                                            ; preds = %.noexc.i
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #25, !inline_history !67
  unreachable

bb.be:                                            ; preds = %.body42.a
  %i.fp = getelementptr inbounds nuw i8, ptr %24, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.fp)
          to label %.noexc.i.i unwind label %bb.bf, !inline_history !99

.noexc.i.i:                                       ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN9grpc_core12experimental4JsonD2Ev.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #25, !inline_history !100
  unreachable

_ZN9grpc_core12experimental4JsonD2Ev.exit.i:      ; preds = %.noexc.i.i, %.body42.a
  %i.fs = load ptr, ptr %24, align 8, !tbaa !79   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !84
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #24, !inline_history !101
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN9grpc_core12experimental4JsonD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fx = load ptr, ptr %25, align 8, !tbaa !79   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.cj
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit
  %i.fz = load i64, ptr %i.cj, align 8, !tbaa !84
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.bh

bb.bg:                                            ; preds = %.noexc.i.i.i, %bb.am
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader
  %i.gc = load i64, ptr %i.cj, align 8, !tbaa !84
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %29, i64 noundef %i.gd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.bg ], [ %28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %28, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.br

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ai
  %i.ge = load i64, ptr %22, align 8, !tbaa !77   ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.bo

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.bh
  %i.gg = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !102 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 4 uses
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 4294967297
  %i.gl = trunc i64 %i.gj to i32                  ; 2 uses
  br i1 %i.gk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.gi, align 8, !tbaa !105
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 0, ptr %i.gm, align 4, !tbaa !107
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !19
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #23, !inline_history !108
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #23, !inline_history !108
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev.exit

bb.bk:                                            ; preds = %bb.bi
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gu = add nsw i32 %i.gl, -1
  store i32 %i.gu, ptr %i.gi, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.gv = atomicrmw volatile add ptr %i.gi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i = phi i32 [ %i.gl, %bb.bl ], [ %i.gv, %bb.bm ]
  %i.gw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.gw, label %bb.bn, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev.exit, !prof !76

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #23
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev.exit

bb.bo:                                            ; preds = %bb.bh
  %i.gx = trunc i64 %i.ge to i1
  br i1 %i.gx, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gy = inttoptr i64 %i.ge to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gy)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #25
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.bt

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.ci, %bb.ak ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #23
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.aj
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.br ], [ %i.ch, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %.body

bb.bt:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10shared_ptrIKN9grpc_core12experimental18AuditLoggerFactory6ConfigEEED2Ev.exit, %bb.ab
  %i.hb = load i8, ptr %i.o, align 16, !tbaa !49
  %.not.i49 = icmp eq i8 %i.hb, -1
  br i1 %.not.i49, label %bb.bx, label %bb.bu, !prof !76

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %21)
          to label %.noexc.i50 unwind label %bb.bv, !inline_history !65

.noexc.i50:                                       ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #25, !inline_history !66
  unreachable

.body:                                            ; preds = %bb.aa, %bb.y, %bb.u, %bb.bs
  %.pn29 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bs ], [ %i.bx, %bb.aa ], [ %i.bl, %bb.u ], [ %i.bs, %bb.y ] ; 2 uses
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.he = load i8, ptr %i.j, align 8, !tbaa !44, !range !47, !noundef !48
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.bw, label %_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit

bb.bw:                                            ; preds = %.body
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core12XdsExtensionEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %20) #23
  br label %_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit

bb.bx:                                            ; preds = %.noexc.i50, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.pre95 = load i8, ptr %i.j, align 8, !tbaa !44, !range !47
  %i.hg = trunc nuw i8 %.pre95 to i1
  br i1 %i.hg, label %bb.by, label %_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit51

bb.by:                                            ; preds = %bb.bx
  call void @_ZNSt22_Optional_payload_baseIN9grpc_core12XdsExtensionEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %20) #23
  br label %_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit51

_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit51: ; preds = %.thread, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.hh = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %.not.i52 = icmp eq ptr %i.hh, null
  br i1 %.not.i52, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit51
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hh)
          to label %bb.cc unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #25
  unreachable

_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit: ; preds = %bb.bw, %.body, %bb.h
  %.pn29.pn = phi { ptr, i32 } [ %i.n, %bb.h ], [ %.pn29, %.body ], [ %.pn29, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #23
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit, %bb.g
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.cf

bb.cc:                                            ; preds = %bb.bz, %_ZNSt14_Optional_baseIN9grpc_core12XdsExtensionELb0ELb0EED2Ev.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %.pre96 = load ptr, ptr %18, align 8, !tbaa !41 ; 2 uses
  %.not.i53 = icmp eq ptr %.pre96, null
  br i1 %.not.i53, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit54, label %bb.cd

bb.cd:                                            ; preds = %.thread118, %bb.cc
  %i.hk = phi ptr [ %4, %.thread118 ], [ %.pre96, %bb.cc ]
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hk)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit54 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #25
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit54: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  ret void

bb.cf:                                            ; preds = %bb.cb, %bb.c
  %.pn34 = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn29.pn.pn.pn, %bb.cb ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  resume { ptr, i32 } %.pn34
}

declare void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN9grpc_core19ExtractXdsExtensionERKNS_15XdsResourceType13DecodeContextEPK19google_protobuf_AnyPNS_16ValidationErrorsE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN9grpc_core12experimental19AuditLoggerRegistry11ParseConfigESt17basic_string_viewIcSt11char_traitsIcEERKNS0_4JsonE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr") align 8, i64, ptr, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
