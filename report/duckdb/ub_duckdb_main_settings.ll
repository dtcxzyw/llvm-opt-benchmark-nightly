Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_main_settings?download=true
inline.NumInlined: 2875
inline.NumDeleted: 1096
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6duckdb15ParserExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !283

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !279, !noalias !356
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !356
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !356
  invoke void @_ZN6duckdb15ParserExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb30CustomProfilingSettingsSetting10ResetLocalERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::ClientConfig", align 8 ; 31 uses
  %2 = alloca %"class.std::unordered_set.355", align 8 ; 19 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(336) ptr @_ZN6duckdb12ClientConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %0) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %1, i8 0, i64 336, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !220
  store i8 0, ptr %i.c, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZN6duckdb12MetricsUtils17GetDefaultMetricsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_set.355") align 8 %i.d)
          to label %_ZN6duckdb12ClientConfigC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.e

_ZN6duckdb12ClientConfigC2Ev.exit:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 25, ptr %i.h, align 8, !tbaa !303
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 1, ptr %i.i, align 1, !tbaa !359
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr null, ptr %i.j, align 8, !tbaa !360
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 0, ptr %i.k, align 8, !tbaa !361
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 1, ptr %i.l, align 1, !tbaa !362
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 2000, ptr %i.m, align 4, !tbaa !363
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 0, ptr %i.n, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.o, align 4, !tbaa !228
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %i.p, align 8, !tbaa !364
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 1, ptr %i.q, align 1, !tbaa !365
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 1000000, ptr %i.r, align 8, !tbaa !366
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.s, i8 0, i64 33, i1 false)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !236
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 1, ptr %i.w, align 8, !tbaa !237
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !238
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.aa, align 8, !tbaa !367
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !220
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 0, ptr %i.ad, align 8, !tbaa !221
  store i8 0, ptr %i.ac, align 8, !tbaa !222
  %i.ae = load i8, ptr %1, align 8, !tbaa !355, !range !269, !noundef !368
  store i8 %i.ae, ptr %i.a, align 8, !tbaa !355
  call void @_ZN6duckdb12ClientConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN6duckdb12MetricsUtils17GetDefaultMetricsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_set.355") align 8 %2)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.ag = icmp eq ptr %2, %i.af
  br i1 %i.ag, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit, label %bb.c, !prof !259

bb.c:                                             ; preds = %_ZN6duckdb12ClientConfigC2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !299 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not5.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_deallocate_nodesEPS4_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ai, %bb.c ] ; 2 uses
  %i.aj = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !248 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_deallocate_nodesEPS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !300

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_deallocate_nodesEPS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.c
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !294 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_deallocate_nodesEPS4_.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.ak) #27
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i: ; preds = %bb.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_deallocate_nodesEPS4_.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !326
  %i.ap = load ptr, ptr %2, align 8, !tbaa !294   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !328
  store ptr %i.as, ptr %i.al, align 8, !tbaa !328
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i
  %i.at = phi ptr [ %i.al, %bb.e ], [ %i.ap, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i ] ; 2 uses
  store ptr %i.at, ptr %i.af, align 8, !tbaa !294
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !293 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !293
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !299 ; 3 uses
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !299
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !288
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !288
  %.not.i12.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i12.i.i.i, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !296
  %i.be = urem i64 %i.bd, %i.av
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.be
  store ptr %i.ah, ptr %i.bf, align 8, !tbaa !295
  br label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit.thread

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit.thread: ; preds = %bb.f, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.bg, align 8, !tbaa !369
  store i64 1, ptr %i.au, align 8, !tbaa !293
  store ptr null, ptr %i.aq, align 8, !tbaa !328
  store ptr %i.aq, ptr %2, align 8, !tbaa !294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit: ; preds = %_ZN6duckdb12ClientConfigC2Ev.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !299 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not5.i.i.i.i4 = icmp eq ptr %.pre, null
  br i1 %.not5.i.i.i.i4, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i5

.lr.ph.i.i.i.i5:                                  ; preds = %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit, %.lr.ph.i.i.i.i5
  %.06.i.i.i.i6 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i5 ], [ %.pre, %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit ] ; 2 uses
  %i.bj = load ptr, ptr %.06.i.i.i.i6, align 8, !tbaa !248 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i6) #27
  %.not.i.i.i.i7 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i7, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i5, !llvm.loop !300

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i5, %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit.thread, %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit
  %i.bk = phi ptr [ %i.bh, %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit.thread ], [ %i.bi, %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EEaSEOS6_.exit ], [ %i.bi, %.lr.ph.i.i.i.i5 ]
  %i.bl = load ptr, ptr %2, align 8, !tbaa !294
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !293
  %i.bo = shl i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 %i.bo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bp = load ptr, ptr %2, align 8, !tbaa !294   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bp) #27
  br label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 25, ptr %i.bs, align 8, !tbaa !303
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb12ClientConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !324  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !252  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.m, %_ZNSt14_Function_baseD2Ev.exit ] ; 5 uses
  %i.n = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !248 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.p) #25
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !7    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.q) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !236
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = load i64, ptr %i.u, align 8, !tbaa !237
  %i.w = shl i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.w, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !236  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #27
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN6duckdb17LocalUserSettingsD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !324 ; 2 uses
  %.not.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ae = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !299 ; 2 uses
  %.not5.i.i.i.i3 = icmp eq ptr %i.aj, null
  br i1 %.not5.i.i.i.i3, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %_ZNSt14_Function_baseD2Ev.exit2, %.lr.ph.i.i.i.i4
  %.06.i.i.i.i5 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i4 ], [ %i.aj, %_ZNSt14_Function_baseD2Ev.exit2 ] ; 2 uses
  %i.ak = load ptr, ptr %.06.i.i.i.i5, align 8, !tbaa !248 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i5) #27
  %.not.i.i.i.i6 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i6, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i4, !llvm.loop !300

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i4, %_ZNSt14_Function_baseD2Ev.exit2
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !294
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !293
  %i.ao = shl i64 %i.an, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ao, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !294 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ap) #27
  br label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  ret void
}

declare void @_ZN6duckdb12MetricsUtils17GetDefaultMetricsEv(ptr dead_on_unwind writable sret(%"class.std::unordered_set.355") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb30CustomProfilingSettingsSetting10GetSettingERKNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.851", align 8   ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::set.63", align 8       ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::vector.515", align 16 ; 13 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %13 = alloca %"class.duckdb::vector.515", align 16 ; 7 uses
end_hunk_0
