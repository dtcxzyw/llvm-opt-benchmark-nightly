Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/readPLY?download=true
inline.NumInlined: 12185
inline.NumDeleted: 3089
loop-unroll.NumCompletelyUnrolled: 257
loop-unroll.NumRuntimeUnrolled: 145
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_ZN3igl7readPLYIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S3_S3_S3_S3_S3_EEbRSiRNS1_15PlainObjectBaseIT_EERNS6_IT0_EERNS6_IT1_EERNS6_IT2_EERNS6_IT3_EERNS6_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EERNS6_IT5_EESY_RNS6_IT6_EESY_SY_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_0
begin_hunk_1_@_ZN3igl7readPLYIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S3_S3_S3_S3_S3_EEbRSiRNS1_15PlainObjectBaseIT_EERNS6_IT0_EERNS6_IT1_EERNS6_IT2_EERNS6_IT3_EERNS6_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EERNS6_IT5_EESY_RNS6_IT6_EESY_SY_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_1
begin_hunk_2_@_ZN3igl7readPLYIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IdLin1ELin1ELi0ELin1ELin1EEES5_S5_S5_S5_EEbRSiRNS1_15PlainObjectBaseIT_EERNS7_IT0_EERNS7_IT1_EERNS7_IT2_EERNS7_IT3_EERNS7_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERNS7_IT5_EESZ_RNS7_IT6_EESZ_SZ_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_2
begin_hunk_3_@_ZN3igl7readPLYIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IdLin1ELin1ELi0ELin1ELin1EEES5_S5_S5_S5_EEbRSiRNS1_15PlainObjectBaseIT_EERNS7_IT0_EERNS7_IT1_EERNS7_IT2_EERNS7_IT3_EERNS7_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERNS7_IT5_EESZ_RNS7_IT6_EESZ_SZ_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_3
begin_hunk_4_@_ZN3igl7readPLYIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_EEbRSiRNS1_15PlainObjectBaseIT_EERNS8_IT0_EERNS8_IT1_EERNS8_IT2_EERNS8_IT3_EERNS8_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERNS8_IT5_EES10_RNS8_IT6_EES10_S10_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_4
begin_hunk_5_@_ZN3igl7readPLYIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_EEbRSiRNS1_15PlainObjectBaseIT_EERNS8_IT0_EERNS8_IT1_EERNS8_IT2_EERNS8_IT3_EERNS8_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERNS8_IT5_EES10_RNS8_IT6_EES10_S10_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_5
begin_hunk_6_@_ZN3igl7readPLYIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IdLin1ELin1ELi0ELin1ELin1EEES5_S5_S5_S5_EEbRSiRNS1_15PlainObjectBaseIT_EERNS7_IT0_EERNS7_IT1_EERNS7_IT2_EERNS7_IT3_EERNS7_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERNS7_IT5_EESZ_RNS7_IT6_EESZ_SZ_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_6
begin_hunk_7_@_ZN3igl7readPLYIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_EEbRSiRNS1_15PlainObjectBaseIT_EERNS8_IT0_EERNS8_IT1_EERNS8_IT2_EERNS8_IT3_EERNS8_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERNS8_IT5_EES10_RNS8_IT6_EES10_S10_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_7
begin_hunk_8_@_ZN3igl7readPLYIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_EEbRSiRNS1_15PlainObjectBaseIT_EERNS8_IT0_EERNS8_IT1_EERNS8_IT2_EERNS8_IT3_EERNS8_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERNS8_IT5_EES10_RNS8_IT6_EES10_S10_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIjLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_8
begin_hunk_9_@_ZN3igl7readPLYIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_EEbRSiRNS1_15PlainObjectBaseIT_EERNS8_IT0_EERNS8_IT1_EERNS8_IT2_EERNS8_IT3_EERNS8_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERNS8_IT5_EES10_RNS8_IT6_EES10_S10_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_9
begin_hunk_10_@_ZN3igl7readPLYIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IdLin1ELin1ELi0ELin1ELin1EEES5_S5_S5_S5_EEbRSiRNS1_15PlainObjectBaseIT_EERNS7_IT0_EERNS7_IT1_EERNS7_IT2_EERNS7_IT3_EERNS7_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISW_EERNS7_IT5_EESZ_RNS7_IT6_EESZ_SZ_:bb.a

_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213: ; preds = %bb.jv, %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1211, %bb.kb
  %i.boy = load ptr, ptr %i.bof, align 8, !tbaa !97 ; 8 uses
  %.not.i.i1214 = icmp eq ptr %i.boy, null
  br i1 %.not.i.i1214, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 8 ; 4 uses
  %i.bpa = load atomic i64, ptr %i.boz acquire, align 8 ; 2 uses
  %i.bpb = icmp eq i64 %i.bpa, 4294967297
  %i.bpc = trunc i64 %i.bpa to i32                ; 2 uses
  br i1 %i.bpb, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %i.boz, align 8, !tbaa !99
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  store i32 0, ptr %i.bpd, align 4, !tbaa !100
  %i.bpe = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  call void %i.bpg(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  %i.bph = load ptr, ptr %i.boy, align 8, !tbaa !53
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load ptr, ptr %i.bpi, align 8
  call void %i.bpj(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

bb.ke:                                            ; preds = %bb.kc
  %i.bpk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i1215 = icmp eq i8 %i.bpk, 0
  br i1 %.not.i.i.i1215, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bpl = add nsw i32 %i.bpc, -1
  store i32 %i.bpl, ptr %i.boz, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

bb.kg:                                            ; preds = %bb.ke
  %i.bpm = atomicrmw volatile add ptr %i.boz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216: ; preds = %bb.kg, %bb.kf
  %.0.i.i.i.i1217 = phi i32 [ %i.bpc, %bb.kf ], [ %i.bpm, %bb.kg ]
  %i.bpn = icmp eq i32 %.0.i.i.i.i1217, 1
  br i1 %i.bpn, label %bb.kh, label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, !prof !102

bb.kh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #32
  br label %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218

_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218: ; preds = %_ZNSt10shared_ptrIN3igl7tinyply7PlyDataEEaSEOS3_.exit1213, %bb.kd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1216, %bb.kh
  %i.bpo = load ptr, ptr %93, align 8, !tbaa !35  ; 3 uses
  %i.bpp = load ptr, ptr %i.bnv, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1219 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not4.i.i.i1219, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, label %.lr.ph.i.i.i1220

.lr.ph.i.i.i1220:                                 ; preds = %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.05.i.i.i1221 = phi ptr [ %i.bpv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %i.bpq = load ptr, ptr %.05.i.i.i1221, align 8, !tbaa !40 ; 2 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 16 ; 2 uses
  %i.bps = icmp eq ptr %i.bpq, %i.bpr
  br i1 %i.bps, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222: ; preds = %.lr.ph.i.i.i1220
  %i.bpt = load i64, ptr %i.bpr, align 8, !tbaa !41
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpu) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223: ; preds = %.lr.ph.i.i.i1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1222
  %i.bpv = getelementptr inbounds nuw i8, ptr %.05.i.i.i1221, i64 32 ; 2 uses
  %.not.i.i.i1224 = icmp eq ptr %i.bpv, %i.bpp
  br i1 %.not.i.i.i1224, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, label %.lr.ph.i.i.i1220, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1223
  %.pr.i1226 = load ptr, ptr %93, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218
  %i.bpw = phi ptr [ %.pr.i1226, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1225 ], [ %i.bpo, %_ZNSt12__shared_ptrIN3igl7tinyply7PlyDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1218 ] ; 3 uses
  %.not.i.i1.i1228 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i1.i1228, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, label %bb.ki

bb.ki:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227
  %i.bpx = load ptr, ptr %i.bnx, align 8, !tbaa !42
  %i.bpy = ptrtoint ptr %i.bpx to i64
  %i.bpz = ptrtoint ptr %i.bpw to i64
  %i.bqa = sub i64 %i.bpy, %i.bpz
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqa) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1227, %bb.ki
  %i.bqb = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqc = icmp eq ptr %i.bqb, %i.bnn
  br i1 %i.bqc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231
  %i.bqd = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqe = add i64 %i.bqd, 1
  call void @_ZdlPvm(ptr noundef %i.bqb, i64 noundef %i.bqe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.kl

bb.kj:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i1200, %.noexc.i.i1203
  %i.bqf = landingpad { ptr, i32 }
          cleanup
  br label %.body1206

bb.kk:                                            ; preds = %bb.ju
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #32
  br label %.body1206

.body1206:                                        ; preds = %bb.kj, %bb.jt, %bb.js, %bb.kk
  %.pn340 = phi { ptr, i32 } [ %i.bqg, %bb.kk ], [ %i.bqf, %bb.kj ], [ %i.bnz, %bb.jt ], [ %i.bnz, %bb.js ]
  %i.bqh = load ptr, ptr %92, align 8, !tbaa !40  ; 2 uses
  %i.bqi = icmp eq ptr %i.bqh, %i.bnn
  br i1 %i.bqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235: ; preds = %.body1206
  %i.bqj = load i64, ptr %i.bnn, align 8, !tbaa !41
  %i.bqk = add i64 %i.bqj, 1
  call void @_ZdlPvm(ptr noundef %i.bqh, i64 noundef %i.bqk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1237: ; preds = %.body1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  br label %bb.oc

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1234, %bb.jq
  invoke void @_ZN3igl7tinyply7PlyFile4readERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.km unwind label %bb.o

bb.km:                                            ; preds = %bb.kl
  %i.bql = load ptr, ptr %27, align 16, !tbaa !105 ; 4 uses
  %.not1528 = icmp eq ptr %i.bql, null
  br i1 %.not1528, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !114
  %i.bqo = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bql, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bqn, i64 noundef 3)
          to label %bb.ko unwind label %bb.o      ; 0 uses

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %i.bqp = load ptr, ptr %28, align 16, !tbaa !105 ; 3 uses
  %.not1529 = icmp eq ptr %i.bqp, null
  br i1 %.not1529, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 32
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !114
  %i.bqs = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bqr, i64 noundef 3)
          to label %bb.kq unwind label %bb.o      ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bqt = load ptr, ptr %30, align 16, !tbaa !105 ; 3 uses
  %.not1530 = icmp eq ptr %i.bqt, null
  br i1 %.not1530, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 32
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !114
  %i.bqw = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bqv, i64 noundef 2)
          to label %bb.ks unwind label %bb.o      ; 0 uses

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.bqx = load ptr, ptr %29, align 16, !tbaa !105 ; 7 uses
  %.not1531 = icmp eq ptr %i.bqx, null
  br i1 %.not1531, label %bb.la, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !114 ; 3 uses
  %i.bra = icmp eq i64 %i.bqz, 0
  br i1 %i.bra, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqx, i64 24
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !115
  %i.brd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.brd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i1238

.lr.ph.i.i.i.i1238:                               ; preds = %bb.ku
  %i.bre = load i8, ptr %i.bqx, align 8, !tbaa !31 ; 2 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i.i.i1238
  %.012.i.i.i.i = phi ptr [ %i.brd, %.lr.ph.i.i.i.i1238 ], [ %.1.i.i.i.i, %bb.kv ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1238 ], [ %.19.i.i.i.i, %bb.kv ]
  %i.brf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !31
  %i.brh = icmp ult i8 %i.brg, %i.bre             ; 2 uses
  %.19.i.i.i.i = select i1 %i.brh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.brh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1239 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1239, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %bb.kv, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.kv
  %i.bri = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bri, label %.critedge.i, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.brj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !31
  %i.brl = icmp ult i8 %i.bre, %i.brk
  br i1 %i.brl, label %.critedge.i, label %bb.kx

.critedge.i:                                      ; preds = %bb.kw, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.ku
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kw ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.ku ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.bqx, ptr %15, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.brm = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc1240 unwind label %bb.o

.noexc1240:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %.pre1593 = load i64, ptr %i.bqy, align 8, !tbaa !114
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc1240, %bb.kw
  %i.brn = phi i64 [ %.pre1593, %.noexc1240 ], [ %i.bqz, %bb.kw ]
  %.sroa.06.0.i = phi ptr [ %i.brm, %.noexc1240 ], [ %.19.i.i.i.i, %bb.kw ]
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.brp = load i32, ptr %i.bro, align 8, !tbaa !117
  %i.brq = sext i32 %i.brp to i64
  %i.brr = mul i64 %i.brn, %i.brq
  %i.brs = udiv i64 %i.brc, %i.brr
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kt, %bb.kx
  %i.brt = phi i64 [ %i.brs, %bb.kx ], [ 0, %bb.kt ]
  %i.bru = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bqx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bqz, i64 noundef %i.brt)
          to label %bb.kz unwind label %bb.o

bb.kz:                                            ; preds = %bb.ky
  br i1 %i.bru, label %bb.lf, label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ks
  %i.brv = load ptr, ptr %32, align 16, !tbaa !105 ; 6 uses
  %.not1532 = icmp eq ptr %i.brv, null
  br i1 %.not1532, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 24
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !115
  %i.bry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not10.i.i.i.i1241 = icmp eq ptr %i.bry, null
  br i1 %.not10.i.i.i.i1241, label %.critedge.i1252, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %bb.lb
  %i.brz = load i8, ptr %i.brv, align 8, !tbaa !31 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i1243 = phi ptr [ %i.bry, %.lr.ph.i.i.i.i1242 ], [ %.1.i.i.i.i1248, %bb.lc ] ; 3 uses
  %.0811.i.i.i.i1244 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %.lr.ph.i.i.i.i1242 ], [ %.19.i.i.i.i1245, %bb.lc ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 32
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !31
  %i.bsc = icmp ult i8 %i.bsb, %i.brz             ; 2 uses
  %.19.i.i.i.i1245 = select i1 %i.bsc, ptr %.0811.i.i.i.i1244, ptr %.012.i.i.i.i1243 ; 5 uses
  %.1.in.v.i.i.i.i1246 = select i1 %i.bsc, i64 24, i64 16
  %.1.in.i.i.i.i1247 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1243, i64 %.1.in.v.i.i.i.i1246
  %.1.i.i.i.i1248 = load ptr, ptr %.1.in.i.i.i.i1247, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1249 = icmp eq ptr %.1.i.i.i.i1248, null
  br i1 %.not.i.i.i.i1249, label %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, label %bb.lc, !llvm.loop !8

_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250: ; preds = %bb.lc
  %i.bsd = icmp eq ptr %.19.i.i.i.i1245, getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8)
  br i1 %i.bsd, label %.critedge.i1252, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250
  %i.bse = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i1245, i64 32
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !31
  %i.bsg = icmp ult i8 %i.brz, %i.bsf
  br i1 %i.bsg, label %.critedge.i1252, label %bb.le

.critedge.i1252:                                  ; preds = %bb.ld, %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250, %bb.lb
  %.08.lcssa.i.i.i11.i1253 = phi ptr [ %.19.i.i.i.i1245, %bb.ld ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %_ZNSt3mapIN3igl7tinyply4TypeENS1_12PropertyInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i1250 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl7tinyplyL13PropertyTableE, i64 8), %bb.lb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.brv, ptr %13, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bsh = invoke ptr @_ZNSt8_Rb_treeIN3igl7tinyply4TypeESt4pairIKS2_NS1_12PropertyInfoEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl7tinyplyL13PropertyTableE, ptr %.08.lcssa.i.i.i11.i1253, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1254 unwind label %bb.o

.noexc1254:                                       ; preds = %.critedge.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.le

bb.le:                                            ; preds = %.noexc1254, %bb.ld
  %.sroa.06.0.i1251 = phi ptr [ %i.bsh, %.noexc1254 ], [ %.19.i.i.i.i1245, %bb.ld ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1251, i64 40
  %i.bsj = load i32, ptr %i.bsi, align 8, !tbaa !117
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !114 ; 2 uses
  %i.bsn = mul i64 %i.bsm, %i.bsk
  %i.bso = udiv i64 %i.brx, %i.bsn
  %i.bsp = invoke noundef zeroext i1 @_ZN3igl26tinyply_tristrips_to_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.brv, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bsm, i64 noundef %i.bso)
          to label %bb.lf unwind label %bb.o      ; 0 uses

bb.lf:                                            ; preds = %bb.le, %bb.la, %bb.kz
  %i.bsq = load ptr, ptr %31, align 16, !tbaa !105 ; 3 uses
  %.not1533 = icmp eq ptr %i.bsq, null
  br i1 %.not1533, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 32
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !114
  %i.bst = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bsq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bss, i64 noundef 2)
          to label %bb.lh unwind label %bb.o      ; 0 uses

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bsu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.li unwind label %bb.o      ; 0 uses

bb.li:                                            ; preds = %bb.lh
  %i.bsv = load ptr, ptr %34, align 8, !tbaa !84  ; 2 uses
  %i.bsw = load ptr, ptr %i.bhg, align 8, !tbaa !84 ; 2 uses
  %i.bsx = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.bsx, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bsz = load i64, ptr %i.bsy, align 8, !tbaa !114 ; 4 uses
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = ptrtoint ptr %i.bsv to i64
  %i.btc = sub i64 %i.bta, %i.btb
  %i.btd = ashr exact i64 %i.btc, 5               ; 3 uses
  %i.bte = icmp eq i64 %i.bsz, 0
  br i1 %i.bte, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.btf = sdiv i64 9223372036854775807, %i.btd
  %i.btg = icmp sgt i64 %i.bsz, %i.btf
  br i1 %i.btg, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.lk, %bb.lj
  %i.bth = mul nsw i64 %i.bsz, %i.btd
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bth, i64 noundef %i.bsz, i64 noundef %i.btd)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.bti = load ptr, ptr %33, align 16, !tbaa !105
  %i.btj = load i64, ptr %i.bsy, align 8, !tbaa !114
  %i.btk = load ptr, ptr %i.bhg, align 8, !tbaa !36
  %i.btl = load ptr, ptr %34, align 8, !tbaa !35
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = ptrtoint ptr %i.btl to i64
  %i.bto = sub i64 %i.btm, %i.btn
  %i.btp = ashr exact i64 %i.bto, 5
  %i.btq = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bti, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.btj, i64 noundef %i.btp)
          to label %bb.ll unwind label %bb.o      ; 0 uses

bb.ll:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.li
  %i.btr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.lm unwind label %bb.o      ; 0 uses

bb.lm:                                            ; preds = %bb.ll
  %i.bts = load ptr, ptr %36, align 8, !tbaa !84  ; 2 uses
  %i.btt = load ptr, ptr %i.bki, align 8, !tbaa !84 ; 2 uses
  %i.btu = icmp eq ptr %i.bts, %i.btt
  br i1 %i.btu, label %bb.lp, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bqx, i64 32 ; 2 uses
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !114 ; 4 uses
  %i.btx = ptrtoint ptr %i.btt to i64
  %i.bty = ptrtoint ptr %i.bts to i64
  %i.btz = sub i64 %i.btx, %i.bty
  %i.bua = ashr exact i64 %i.btz, 5               ; 3 uses
  %i.bub = icmp eq i64 %i.btw, 0
  br i1 %i.bub, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.buc = sdiv i64 9223372036854775807, %i.bua
  %i.bud = icmp sgt i64 %i.btw, %i.buc
  br i1 %i.bud, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259: ; preds = %bb.lo, %bb.ln
  %i.bue = mul nsw i64 %i.btw, %i.bua
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bue, i64 noundef %i.btw, i64 noundef %i.bua)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1259
  %i.buf = load ptr, ptr %35, align 16, !tbaa !105
  %i.bug = load i64, ptr %i.btv, align 8, !tbaa !114
  %i.buh = load ptr, ptr %i.bki, align 8, !tbaa !36
  %i.bui = load ptr, ptr %36, align 8, !tbaa !35
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = ptrtoint ptr %i.bui to i64
  %i.bul = sub i64 %i.buj, %i.buk
  %i.bum = ashr exact i64 %i.bul, 5
  %i.bun = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.buf, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.bug, i64 noundef %i.bum)
          to label %bb.lp unwind label %bb.o      ; 0 uses

bb.lp:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1262, %bb.lm
  %i.buo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.lq unwind label %bb.o      ; 0 uses

bb.lq:                                            ; preds = %bb.lp
  %i.bup = load ptr, ptr %38, align 8, !tbaa !84  ; 3 uses
  %i.buq = load ptr, ptr %i.bnk, align 8, !tbaa !84 ; 2 uses
  %i.bur = icmp eq ptr %i.bup, %i.buq
  br i1 %i.bur, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bus = load ptr, ptr %37, align 16, !tbaa !105 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = load i64, ptr %i.but, align 8, !tbaa !114 ; 4 uses
  %i.buv = ptrtoint ptr %i.buq to i64
  %i.buw = ptrtoint ptr %i.bup to i64
  %i.bux = sub i64 %i.buv, %i.buw
  %i.buy = ashr exact i64 %i.bux, 5               ; 3 uses
  %i.buz = icmp eq i64 %i.buu, 0
  br i1 %i.buz, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bva = sdiv i64 9223372036854775807, %i.buy
  %i.bvb = icmp sgt i64 %i.buu, %i.bva
  br i1 %i.bvb, label %.invoke, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264

.invoke:                                          ; preds = %bb.ls, %bb.lo, %bb.lk
  %i.bvc = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bvc, align 8, !tbaa !53
  invoke void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264: ; preds = %bb.ls, %bb.lr
  %i.bvd = mul nsw i64 %i.buu, %i.buy
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bvd, i64 noundef %i.buu, i64 noundef %i.buy)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267 unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i1264
  %i.bve = load i64, ptr %i.but, align 8, !tbaa !114
  %i.bvf = load ptr, ptr %i.bnk, align 8, !tbaa !36
  %i.bvg = load ptr, ptr %38, align 8, !tbaa !35
  %i.bvh = ptrtoint ptr %i.bvf to i64
  %i.bvi = ptrtoint ptr %i.bvg to i64
  %i.bvj = sub i64 %i.bvh, %i.bvi
  %i.bvk = ashr exact i64 %i.bvj, 5
  %i.bvl = invoke noundef zeroext i1 @_ZN3igl24tinyply_buffer_to_matrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %i.bus, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.bve, i64 noundef %i.bvk)
          to label %bb.lt unwind label %bb.o      ; 0 uses

bb.lt:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit1267
  %.pre1594 = load ptr, ptr %38, align 8, !tbaa !35 ; 3 uses
  %.pre1595 = load ptr, ptr %i.bnk, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i1268 = icmp eq ptr %.pre1594, %.pre1595
  br i1 %.not4.i.i.i1268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276, label %.lr.ph.i.i.i1269

.lr.ph.i.i.i1269:                                 ; preds = %bb.lt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.05.i.i.i1270 = phi ptr [ %i.bvr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272 ], [ %.pre1594, %bb.lt ] ; 3 uses
  %i.bvm = load ptr, ptr %.05.i.i.i1270, align 8, !tbaa !40 ; 2 uses
  %i.bvn = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 16 ; 2 uses
  %i.bvo = icmp eq ptr %i.bvm, %i.bvn
  br i1 %i.bvo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271: ; preds = %.lr.ph.i.i.i1269
  %i.bvp = load i64, ptr %i.bvn, align 8, !tbaa !41
  %i.bvq = add i64 %i.bvp, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvq) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1271
  %i.bvr = getelementptr inbounds nuw i8, ptr %.05.i.i.i1270, i64 32 ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.bvr, %.pre1595
  br i1 %.not.i.i.i1273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, label %.lr.ph.i.i.i1269, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1272
  %.pr.i1275 = load ptr, ptr %38, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1276: ; preds = %bb.lq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274, %bb.lt
  %i.bvs = phi ptr [ %.pr.i1275, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1274 ], [ %.pre1594, %bb.lt ], [ %i.bup, %bb.lq ] ; 3 uses
  %.not.i.i1.i1277 = icmp eq ptr %i.bvs, null
end_hunk_10
