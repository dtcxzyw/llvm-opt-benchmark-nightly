Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GsymCreator?download=true
inline.NumInlined: 2704
inline.NumDeleted: 1408
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_:bb.a
  %i.bpw = sub i64 %i.bpu, %i.bpv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bpe, i64 noundef %i.bpw) #29
  br label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit351

bb.rc:                                            ; preds = %_ZNSt22_Optional_payload_baseIN4llvm4gsym19MergedFunctionsInfoEE14_M_move_assignEOS3_.exit367
  br i1 %i.bpd, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %bb.rc
  %i.bpx = load <2 x ptr>, ptr %i.box, align 8, !tbaa !258
  store <2 x ptr> %i.bpx, ptr %i.bow, align 8, !tbaa !258
  %i.bpy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 216
  %i.bpz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i30, i64 216
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !242
  store ptr %i.bqa, ptr %i.bpy, align 8, !tbaa !242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.box, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.boy, align 8, !tbaa !196
  br label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit351

bb.re:                                            ; preds = %bb.rc
  store i8 0, ptr %i.boy, align 8, !tbaa !196
  br i1 %i.bpa, label %bb.rf, label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit351

bb.rf:                                            ; preds = %bb.re
  %i.bqb = load ptr, ptr %i.bow, align 8, !tbaa !200 ; 3 uses
  %i.bqc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 208
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !199 ; 2 uses
  %.not4.i.i.i.i.i.i7.i333 = icmp eq ptr %i.bqb, %i.bqd
  br i1 %.not4.i.i.i.i.i.i7.i333, label %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i341, label %.lr.ph.i.i.i.i.i.i8.i334

.lr.ph.i.i.i.i.i.i8.i334:                         ; preds = %bb.rf, %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i337
  %.05.i.i.i.i.i.i9.i335 = phi ptr [ %i.bql, %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i337 ], [ %i.bqb, %bb.rf ] ; 3 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i9.i335, i64 8
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !209 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i10.i336 = icmp eq ptr %i.bqf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i10.i336, label %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i337, label %bb.rg

bb.rg:                                            ; preds = %.lr.ph.i.i.i.i.i.i8.i334
  %i.bqg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i9.i335, i64 24
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !241
  %i.bqi = ptrtoint ptr %i.bqh to i64
  %i.bqj = ptrtoint ptr %i.bqf to i64
  %i.bqk = sub i64 %i.bqi, %i.bqj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bqf, i64 noundef %i.bqk) #29
  br label %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i337

_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i337: ; preds = %bb.rg, %.lr.ph.i.i.i.i.i.i8.i334
  %i.bql = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i9.i335, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i12.i338 = icmp eq ptr %i.bql, %i.bqd
  br i1 %.not.i.i.i.i.i.i12.i338, label %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exitthread-pre-split.i.i.i.i.i339, label %.lr.ph.i.i.i.i.i.i8.i334, !llvm.loop !7

_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exitthread-pre-split.i.i.i.i.i339: ; preds = %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i337
  %.pr.i.i.i.i.i340 = load ptr, ptr %i.bow, align 8, !tbaa !200
  br label %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i341

_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i341: ; preds = %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exitthread-pre-split.i.i.i.i.i339, %bb.rf
  %i.bqm = phi ptr [ %.pr.i.i.i.i.i340, %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exitthread-pre-split.i.i.i.i.i339 ], [ %i.bqb, %bb.rf ] ; 3 uses
  %.not.i.i1.i.i.i.i14.i342 = icmp eq ptr %i.bqm, null
  br i1 %.not.i.i1.i.i.i.i14.i342, label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit351, label %bb.rh

bb.rh:                                            ; preds = %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i341
  %i.bqn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 216
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !242
  %i.bqp = ptrtoint ptr %i.bqo to i64
  %i.bqq = ptrtoint ptr %i.bqm to i64
  %i.bqr = sub i64 %i.bqp, %i.bqq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bqm, i64 noundef %i.bqr) #29
  br label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit351

_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit351: ; preds = %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i.i349, %bb.rb, %bb.rd, %bb.re, %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i341, %bb.rh
  %i.bqs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 232 ; 6 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i30, i64 232 ; 4 uses
  %i.bqu = icmp eq ptr %.0811.i.i.i.i.i.i29, %.0910.i.i.i.i.i.i30
  br i1 %i.bqu, label %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit331, label %bb.ri

bb.ri:                                            ; preds = %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit351
  %i.bqv = load ptr, ptr %i.bqt, align 8, !tbaa !211 ; 6 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i30, i64 256 ; 2 uses
  %i.bqx = icmp eq ptr %i.bqv, %i.bqw
  br i1 %i.bqx, label %bb.rl, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.bqy = load ptr, ptr %i.bqs, align 8, !tbaa !211 ; 2 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 256
  %i.bra = icmp eq ptr %i.bqy, %i.bqz
  br i1 %i.bra, label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i321, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  tail call void @free(ptr noundef %i.bqy) #26
  %.pre.i320 = load ptr, ptr %i.bqt, align 8, !tbaa !211
  br label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i321

_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i321: ; preds = %bb.rk, %bb.rj
  %i.brb = phi ptr [ %i.bqv, %bb.rj ], [ %.pre.i320, %bb.rk ]
  %i.brc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 240
  store ptr %i.brb, ptr %i.bqs, align 8, !tbaa !211
  %i.brd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i30, i64 240 ; 2 uses
  %i.bre = load <2 x i64>, ptr %i.brd, align 8, !tbaa !103
  store <2 x i64> %i.bre, ptr %i.brc, align 8, !tbaa !103
  store ptr %i.bqw, ptr %i.bqt, align 8, !tbaa !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.brd, i8 0, i64 16, i1 false)
  br label %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit331

bb.rl:                                            ; preds = %bb.ri
  %i.brf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i30, i64 240 ; 4 uses
  %i.brg = load i64, ptr %i.brf, align 8, !tbaa !212 ; 9 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 240 ; 4 uses
  %i.bri = load i64, ptr %i.brh, align 8, !tbaa !212 ; 7 uses
  %.not.i322 = icmp ult i64 %i.bri, %i.brg
  br i1 %.not.i322, label %bb.rr, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.brj = load ptr, ptr %i.bqs, align 8, !tbaa !211 ; 2 uses
  %.not33.i323 = icmp eq i64 %i.brg, 0
  br i1 %.not33.i323, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i324, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.brk = icmp sgt i64 %i.brg, 1
  br i1 %i.brk, label %bb.ro, label %bb.rp, !prof !94

bb.ro:                                            ; preds = %bb.rn
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.brj, ptr align 1 %i.bqv, i64 %i.brg, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i324

bb.rp:                                            ; preds = %bb.rn
  %i.brl = icmp eq i64 %i.brg, 1
  br i1 %i.brl, label %bb.rq, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i324

bb.rq:                                            ; preds = %bb.rp
  %i.brm = load i8, ptr %i.bqv, align 1, !tbaa !98
  store i8 %i.brm, ptr %i.brj, align 1, !tbaa !98
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i324

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i324:            ; preds = %bb.rq, %bb.rp, %bb.ro, %bb.rm
  store i64 %i.brg, ptr %i.brh, align 8, !tbaa !212
  store i64 0, ptr %i.brf, align 8, !tbaa !212
  br label %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit331

bb.rr:                                            ; preds = %bb.rl
  %i.brn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 248
  %i.bro = load i64, ptr %i.brn, align 8, !tbaa !213
  %i.brp = icmp ult i64 %i.bro, %i.brg
  br i1 %i.brp, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  store i64 0, ptr %i.brh, align 8, !tbaa !212
  %i.brq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 256
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %i.bqs, ptr noundef nonnull %i.brq, i64 noundef %i.brg, i64 noundef 1) #26
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i326

bb.rt:                                            ; preds = %bb.rr
  %.not32.i325 = icmp eq i64 %i.bri, 0
  br i1 %.not32.i325, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i326, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.brr = load ptr, ptr %i.bqs, align 8, !tbaa !211 ; 2 uses
  %i.brs = icmp sgt i64 %i.bri, 1
  br i1 %i.brs, label %bb.rv, label %bb.rw, !prof !94

bb.rv:                                            ; preds = %bb.ru
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.brr, ptr align 1 %i.bqv, i64 %i.bri, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i326

bb.rw:                                            ; preds = %bb.ru
  %i.brt = icmp eq i64 %i.bri, 1
  br i1 %i.brt, label %bb.rx, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i326

bb.rx:                                            ; preds = %bb.rw
  %i.bru = load i8, ptr %i.bqv, align 1, !tbaa !98
  store i8 %i.bru, ptr %i.brr, align 1, !tbaa !98
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i326

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i326:          ; preds = %bb.rx, %bb.rw, %bb.rv, %bb.rt, %bb.rs
  %.026.i327 = phi i64 [ 0, %bb.rs ], [ 0, %bb.rt ], [ %i.bri, %bb.rv ], [ %i.bri, %bb.rw ], [ 1, %bb.rx ] ; 4 uses
  %i.brv = load i64, ptr %i.brf, align 8, !tbaa !212 ; 2 uses
  %.not.i.i.i328 = icmp samesign eq i64 %.026.i327, %i.brv
  br i1 %.not.i.i.i328, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit.i330, label %bb.ry

bb.ry:                                            ; preds = %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i326
  %i.brw = load ptr, ptr %i.bqt, align 8, !tbaa !211
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 %.026.i327
  %i.bry = load ptr, ptr %i.bqs, align 8, !tbaa !211
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bry, i64 %.026.i327
  %gepdiff.i329 = sub nsw i64 %i.brv, %.026.i327
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.brz, ptr align 1 %i.brx, i64 %gepdiff.i329, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit.i330

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit.i330: ; preds = %bb.ry, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i326
  store i64 %i.brg, ptr %i.brh, align 8, !tbaa !212
  store i64 0, ptr %i.brf, align 8, !tbaa !212
  br label %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit331

_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit331:      ; preds = %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit351, %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i321, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i324, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit.i330
  %i.bsa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i30, i64 288
  %i.bsb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 288 ; 2 uses
  %i.bsc = add nsw i64 %.012.i.i.i.i.i.i28, -1
  %i.bsd = icmp samesign ugt i64 %.012.i.i.i.i.i.i28, 1
  br i1 %i.bsd, label %.lr.ph.i.i.i.i.i.i27, label %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, !llvm.loop !12

_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i: ; preds = %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit331, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i25 = phi ptr [ %i.bip, %._crit_edge.i ], [ %i.bsb, %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit331 ]
  %i.bse = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i25 to i64 ; 3 uses
  %i.bsf = ptrtoint ptr %i.bip to i64
  %i.bsg = sub i64 %i.bse, %i.bsf
  %i.bsh = getelementptr inbounds i8, ptr %i.bip, i64 %i.bsg ; 2 uses
  %i.bsi = ptrtoint ptr %i.anq to i64             ; 2 uses
  %i.bsj = ptrtoint ptr %.117.i to i64
  %i.bsk = sub i64 %i.bsi, %i.bsj                 ; 2 uses
  %i.bsl = icmp sgt i64 %i.bsk, 0
  br i1 %i.bsl, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %i.bsm = udiv exact i64 %i.bsk, 288
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.cbr, %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276 ], [ %i.bsm, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.cbq, %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276 ], [ %i.bsh, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 52 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.cbp, %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 36 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.0811.i.i.i.i.i22.i, ptr noundef nonnull align 8 dereferenceable(288) %.0910.i.i.i.i.i23.i, i64 24, i1 false)
  %i.bsn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24 ; 4 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24 ; 4 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 48 ; 3 uses
  %i.bsq = load i8, ptr %i.bsp, align 8, !tbaa !187, !range !113, !noundef !114
  %i.bsr = trunc nuw i8 %i.bsq to i1              ; 2 uses
  %i.bss = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 48
  %i.bst = load i8, ptr %i.bss, align 8, !range !113
  %i.bsu = trunc nuw i8 %i.bst to i1              ; 2 uses
  %or.cond.i.i.i.i.i.i45 = select i1 %i.bsr, i1 %i.bsu, i1 false
  br i1 %or.cond.i.i.i.i.i.i45, label %bb.rz, label %bb.sb

bb.rz:                                            ; preds = %.lr.ph.i.i.i.i.i20.i
  %i.bsv = load ptr, ptr %i.bsn, align 8, !tbaa !191 ; 3 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40 ; 2 uses
  %i.bsx = load ptr, ptr %i.bsw, align 8, !tbaa !239
  %i.bsy = load <2 x ptr>, ptr %i.bso, align 8, !tbaa !237
  store <2 x ptr> %i.bsy, ptr %i.bsn, align 8, !tbaa !237
  %i.bsz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 40
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !239
  store ptr %i.bta, ptr %i.bsw, align 8, !tbaa !239
  %.not.i.i.i.i.i.i.i.i.i.i.i.i47 = icmp eq ptr %i.bsv, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bso, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i47, label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit48, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.btb = ptrtoint ptr %i.bsx to i64
  %i.btc = ptrtoint ptr %i.bsv to i64
  %i.btd = sub i64 %i.btb, %i.btc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bsv, i64 noundef %i.btd) #29
  br label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit48

bb.sb:                                            ; preds = %.lr.ph.i.i.i.i.i20.i
  br i1 %i.bsu, label %bb.sc, label %bb.sd

bb.sc:                                            ; preds = %bb.sb
  %i.bte = load <2 x ptr>, ptr %i.bso, align 8, !tbaa !237
  store <2 x ptr> %i.bte, ptr %i.bsn, align 8, !tbaa !237
  %i.btf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40
  %i.btg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 40
  %i.bth = load ptr, ptr %i.btg, align 8, !tbaa !239
  store ptr %i.bth, ptr %i.btf, align 8, !tbaa !239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bso, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.bsp, align 8, !tbaa !187
  br label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit48

bb.sd:                                            ; preds = %bb.sb
  store i8 0, ptr %i.bsp, align 8, !tbaa !187
  br i1 %i.bsr, label %bb.se, label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit48

bb.se:                                            ; preds = %bb.sd
  %i.bti = load ptr, ptr %i.bsn, align 8, !tbaa !191 ; 3 uses
  %.not.i.i.i.i.i.i7.i.i.i.i.i.i46 = icmp eq ptr %i.bti, null
  br i1 %.not.i.i.i.i.i.i7.i.i.i.i.i.i46, label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit48, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.btj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40
  %i.btk = load ptr, ptr %i.btj, align 8, !tbaa !239
  %i.btl = ptrtoint ptr %i.btk to i64
  %i.btm = ptrtoint ptr %i.bti to i64
  %i.btn = sub i64 %i.btl, %i.btm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bti, i64 noundef %i.btn) #29
  br label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit48

_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit48:        ; preds = %bb.rz, %bb.sa, %bb.sc, %bb.sd, %bb.se, %bb.sf
  %i.bto = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 56 ; 2 uses
  %i.btp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 56 ; 2 uses
  %i.btq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 160 ; 3 uses
  %i.btr = load i8, ptr %i.btq, align 8, !tbaa !195, !range !113, !noundef !114
  %i.bts = trunc nuw i8 %i.btr to i1              ; 2 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 160
  %i.btu = load i8, ptr %i.btt, align 8, !range !113
  %i.btv = trunc nuw i8 %i.btu to i1              ; 2 uses
  %or.cond.i313 = select i1 %i.bts, i1 %i.btv, i1 false
  br i1 %or.cond.i313, label %bb.sg, label %bb.sw

bb.sg:                                            ; preds = %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bto, ptr noundef nonnull align 8 dereferenceable(112) %i.btp, i64 16, i1 false)
  %i.btw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 72 ; 6 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 72 ; 4 uses
  %i.bty = icmp eq ptr %.0811.i.i.i.i.i22.i, %.0910.i.i.i.i.i23.i
  br i1 %i.bty, label %_ZN4llvm15SmallVectorImplINS_12AddressRangeEEaSEOS2_.exit625, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.btz = load ptr, ptr %i.btx, align 8, !tbaa !217 ; 6 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 88 ; 2 uses
  %i.bub = icmp eq ptr %i.btz, %i.bua
  br i1 %i.bub, label %bb.sk, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.buc = load ptr, ptr %i.btw, align 8, !tbaa !217 ; 2 uses
  %i.bud = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 88
  %i.bue = icmp eq ptr %i.buc, %i.bud
  br i1 %i.bue, label %_ZN4llvm15SmallVectorImplINS_12AddressRangeEE12assignRemoteEOS2_.exit.i612, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  tail call void @free(ptr noundef %i.buc) #26
  %.pre.i611 = load ptr, ptr %i.btx, align 8, !tbaa !217
  br label %_ZN4llvm15SmallVectorImplINS_12AddressRangeEE12assignRemoteEOS2_.exit.i612

_ZN4llvm15SmallVectorImplINS_12AddressRangeEE12assignRemoteEOS2_.exit.i612: ; preds = %bb.sj, %bb.si
  %i.buf = phi ptr [ %i.btz, %bb.si ], [ %.pre.i611, %bb.sj ]
  %i.bug = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 80
  store ptr %i.buf, ptr %i.btw, align 8, !tbaa !217
  %i.buh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 80 ; 2 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 84
  %i.buj = load <2 x i32>, ptr %i.buh, align 8, !tbaa !91
  store <2 x i32> %i.buj, ptr %i.bug, align 8, !tbaa !91
  store ptr %i.bua, ptr %i.btx, align 8, !tbaa !217
  store i32 0, ptr %i.bui, align 4, !tbaa !240
  store i32 0, ptr %i.buh, align 8, !tbaa !218
  br label %_ZN4llvm15SmallVectorImplINS_12AddressRangeEEaSEOS2_.exit625

bb.sk:                                            ; preds = %bb.sh
  %i.buk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 80 ; 4 uses
  %i.bul = load i32, ptr %i.buk, align 8, !tbaa !218 ; 6 uses
  %i.bum = zext i32 %i.bul to i64                 ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 80 ; 4 uses
  %i.buo = load i32, ptr %i.bun, align 8, !tbaa !218 ; 4 uses
  %i.bup = zext i32 %i.buo to i64                 ; 2 uses
  %.not.i613 = icmp ult i32 %i.buo, %i.bul
  br i1 %.not.i613, label %bb.so, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.buq = load ptr, ptr %i.btw, align 8, !tbaa !217 ; 2 uses
  switch i32 %i.bul, label %bb.sm [
    i32 0, label %_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit.i614
    i32 1, label %bb.sn
  ], !prof !259

bb.sm:                                            ; preds = %bb.sl
  %.idx.i615 = shl nuw nsw i64 %i.bum, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.buq, ptr align 8 %i.btz, i64 %.idx.i615, i1 false)
  br label %_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit.i614

bb.sn:                                            ; preds = %bb.sl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.buq, ptr noundef nonnull align 8 dereferenceable(16) %i.btz, i64 16, i1 false), !tbaa.struct !108
  br label %_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit.i614

_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit.i614: ; preds = %bb.sn, %bb.sm, %bb.sl
  store i32 %i.bul, ptr %i.bun, align 8, !tbaa !218
  store i32 0, ptr %i.buk, align 8, !tbaa !218
  br label %_ZN4llvm15SmallVectorImplINS_12AddressRangeEEaSEOS2_.exit625

bb.so:                                            ; preds = %bb.sk
  %i.bur = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 84
  %i.bus = load i32, ptr %i.bur, align 4, !tbaa !240
  %i.but = icmp ult i32 %i.bus, %i.bul
  br i1 %i.but, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  store i32 0, ptr %i.bun, align 8, !tbaa !218
  %i.buu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 88
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.btw, ptr noundef nonnull %i.buu, i64 noundef %i.bum, i64 noundef 16) #26
  br label %_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit34.i619

bb.sq:                                            ; preds = %bb.so
  %.not32.i616 = icmp eq i32 %i.buo, 0
  br i1 %.not32.i616, label %_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit34.i619, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.buv = load ptr, ptr %i.btw, align 8, !tbaa !217 ; 2 uses
  %.not37.i617 = icmp eq i32 %i.buo, 1
  br i1 %.not37.i617, label %bb.st, label %bb.ss, !prof !236

bb.ss:                                            ; preds = %bb.sr
  %.idx36.i618 = shl nuw nsw i64 %i.bup, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.buv, ptr align 8 %i.btz, i64 %.idx36.i618, i1 false)
  br label %_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit34.i619

bb.st:                                            ; preds = %bb.sr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.buv, ptr noundef nonnull align 8 dereferenceable(16) %i.btz, i64 16, i1 false), !tbaa.struct !108
  br label %_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit34.i619

_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit34.i619: ; preds = %bb.st, %bb.ss, %bb.sq, %bb.sp
  %.026.i620 = phi i64 [ 0, %bb.sp ], [ 0, %bb.sq ], [ %i.bup, %bb.ss ], [ 1, %bb.st ] ; 4 uses
  %i.buw = load i32, ptr %i.buk, align 8, !tbaa !218
  %i.bux = zext i32 %i.buw to i64                 ; 2 uses
  %.not.i.i.i621 = icmp samesign eq i64 %.026.i620, %i.bux
  br i1 %.not.i.i.i621, label %_ZN4llvm23SmallVectorTemplateBaseINS_12AddressRangeELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i624, label %bb.su

bb.su:                                            ; preds = %_ZSt4moveIPN4llvm12AddressRangeES2_ET0_T_S4_S3_.exit34.i619
  %i.buy = load ptr, ptr %i.btx, align 8, !tbaa !217
  %.idx39.i622 = shl nuw nsw i64 %.026.i620, 4
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 %.idx39.i622
  %i.bva = load ptr, ptr %i.btw, align 8, !tbaa !217
end_hunk_0
begin_hunk_1_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_:bb.a

bb.tq:                                            ; preds = %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i.i294
  %i.bzj = ptrtoint ptr %i.byx to i64
  %i.bzk = ptrtoint ptr %i.byt to i64
  %i.bzl = sub i64 %i.bzj, %i.bzk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.byt, i64 noundef %i.bzl) #29
  br label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit296

bb.tr:                                            ; preds = %_ZNSt22_Optional_payload_baseIN4llvm4gsym19MergedFunctionsInfoEE14_M_move_assignEOS3_.exit312
  br i1 %i.bys, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  %i.bzm = load <2 x ptr>, ptr %i.bym, align 8, !tbaa !258
  store <2 x ptr> %i.bzm, ptr %i.byl, align 8, !tbaa !258
  %i.bzn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 216
  %i.bzo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 216
  %i.bzp = load ptr, ptr %i.bzo, align 8, !tbaa !242
  store ptr %i.bzp, ptr %i.bzn, align 8, !tbaa !242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bym, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.byn, align 8, !tbaa !196
  br label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit296

bb.tt:                                            ; preds = %bb.tr
  store i8 0, ptr %i.byn, align 8, !tbaa !196
  br i1 %i.byp, label %bb.tu, label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit296

bb.tu:                                            ; preds = %bb.tt
  %i.bzq = load ptr, ptr %i.byl, align 8, !tbaa !200 ; 3 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 208
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !199 ; 2 uses
  %.not4.i.i.i.i.i.i7.i278 = icmp eq ptr %i.bzq, %i.bzs
  br i1 %.not4.i.i.i.i.i.i7.i278, label %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i286, label %.lr.ph.i.i.i.i.i.i8.i279

.lr.ph.i.i.i.i.i.i8.i279:                         ; preds = %bb.tu, %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i282
  %.05.i.i.i.i.i.i9.i280 = phi ptr [ %i.caa, %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i282 ], [ %i.bzq, %bb.tu ] ; 3 uses
  %i.bzt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i9.i280, i64 8
  %i.bzu = load ptr, ptr %i.bzt, align 8, !tbaa !209 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i10.i281 = icmp eq ptr %i.bzu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i10.i281, label %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i282, label %bb.tv

bb.tv:                                            ; preds = %.lr.ph.i.i.i.i.i.i8.i279
  %i.bzv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i9.i280, i64 24
  %i.bzw = load ptr, ptr %i.bzv, align 8, !tbaa !241
  %i.bzx = ptrtoint ptr %i.bzw to i64
  %i.bzy = ptrtoint ptr %i.bzu to i64
  %i.bzz = sub i64 %i.bzx, %i.bzy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bzu, i64 noundef %i.bzz) #29
  br label %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i282

_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i282: ; preds = %bb.tv, %.lr.ph.i.i.i.i.i.i8.i279
  %i.caa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i9.i280, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i12.i283 = icmp eq ptr %i.caa, %i.bzs
  br i1 %.not.i.i.i.i.i.i12.i283, label %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exitthread-pre-split.i.i.i.i.i284, label %.lr.ph.i.i.i.i.i.i8.i279, !llvm.loop !7

_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exitthread-pre-split.i.i.i.i.i284: ; preds = %_ZSt8_DestroyIN4llvm4gsym12CallSiteInfoEEvPT_.exit.i.i.i.i.i.i11.i282
  %.pr.i.i.i.i.i285 = load ptr, ptr %i.byl, align 8, !tbaa !200
  br label %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i286

_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i286: ; preds = %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exitthread-pre-split.i.i.i.i.i284, %bb.tu
  %i.cab = phi ptr [ %.pr.i.i.i.i.i285, %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exitthread-pre-split.i.i.i.i.i284 ], [ %i.bzq, %bb.tu ] ; 3 uses
  %.not.i.i1.i.i.i.i14.i287 = icmp eq ptr %i.cab, null
  br i1 %.not.i.i1.i.i.i.i14.i287, label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit296, label %bb.tw

bb.tw:                                            ; preds = %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i286
  %i.cac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 216
  %i.cad = load ptr, ptr %i.cac, align 8, !tbaa !242
  %i.cae = ptrtoint ptr %i.cad to i64
  %i.caf = ptrtoint ptr %i.cab to i64
  %i.cag = sub i64 %i.cae, %i.caf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cab, i64 noundef %i.cag) #29
  br label %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit296

_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit296: ; preds = %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i.i294, %bb.tq, %bb.ts, %bb.tt, %_ZSt8_DestroyIPN4llvm4gsym12CallSiteInfoEEvT_S4_.exit.i.i.i.i13.i286, %bb.tw
  %i.cah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 232 ; 6 uses
  %i.cai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 232 ; 4 uses
  %i.caj = icmp eq ptr %.0811.i.i.i.i.i22.i, %.0910.i.i.i.i.i23.i
  br i1 %i.caj, label %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276, label %bb.tx

bb.tx:                                            ; preds = %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit296
  %i.cak = load ptr, ptr %i.cai, align 8, !tbaa !211 ; 6 uses
  %i.cal = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 256 ; 2 uses
  %i.cam = icmp eq ptr %i.cak, %i.cal
  br i1 %i.cam, label %bb.ua, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.can = load ptr, ptr %i.cah, align 8, !tbaa !211 ; 2 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 256
  %i.cap = icmp eq ptr %i.can, %i.cao
  br i1 %i.cap, label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i266, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  tail call void @free(ptr noundef %i.can) #26
  %.pre.i265 = load ptr, ptr %i.cai, align 8, !tbaa !211
  br label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i266

_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i266: ; preds = %bb.tz, %bb.ty
  %i.caq = phi ptr [ %i.cak, %bb.ty ], [ %.pre.i265, %bb.tz ]
  %i.car = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 240
  store ptr %i.caq, ptr %i.cah, align 8, !tbaa !211
  %i.cas = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 240 ; 2 uses
  %i.cat = load <2 x i64>, ptr %i.cas, align 8, !tbaa !103
  store <2 x i64> %i.cat, ptr %i.car, align 8, !tbaa !103
  store ptr %i.cal, ptr %i.cai, align 8, !tbaa !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cas, i8 0, i64 16, i1 false)
  br label %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276

bb.ua:                                            ; preds = %bb.tx
  %i.cau = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 240 ; 4 uses
  %i.cav = load i64, ptr %i.cau, align 8, !tbaa !212 ; 9 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 240 ; 4 uses
  %i.cax = load i64, ptr %i.caw, align 8, !tbaa !212 ; 7 uses
  %.not.i267 = icmp ult i64 %i.cax, %i.cav
  br i1 %.not.i267, label %bb.ug, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.cay = load ptr, ptr %i.cah, align 8, !tbaa !211 ; 2 uses
  %.not33.i268 = icmp eq i64 %i.cav, 0
  br i1 %.not33.i268, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i269, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.caz = icmp sgt i64 %i.cav, 1
  br i1 %i.caz, label %bb.ud, label %bb.ue, !prof !94

bb.ud:                                            ; preds = %bb.uc
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cay, ptr align 1 %i.cak, i64 %i.cav, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i269

bb.ue:                                            ; preds = %bb.uc
  %i.cba = icmp eq i64 %i.cav, 1
  br i1 %i.cba, label %bb.uf, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i269

bb.uf:                                            ; preds = %bb.ue
  %i.cbb = load i8, ptr %i.cak, align 1, !tbaa !98
  store i8 %i.cbb, ptr %i.cay, align 1, !tbaa !98
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i269

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i269:            ; preds = %bb.uf, %bb.ue, %bb.ud, %bb.ub
  store i64 %i.cav, ptr %i.caw, align 8, !tbaa !212
  store i64 0, ptr %i.cau, align 8, !tbaa !212
  br label %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276

bb.ug:                                            ; preds = %bb.ua
  %i.cbc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 248
  %i.cbd = load i64, ptr %i.cbc, align 8, !tbaa !213
  %i.cbe = icmp ult i64 %i.cbd, %i.cav
  br i1 %i.cbe, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %bb.ug
  store i64 0, ptr %i.caw, align 8, !tbaa !212
  %i.cbf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 256
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %i.cah, ptr noundef nonnull %i.cbf, i64 noundef %i.cav, i64 noundef 1) #26
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i271

bb.ui:                                            ; preds = %bb.ug
  %.not32.i270 = icmp eq i64 %i.cax, 0
  br i1 %.not32.i270, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i271, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.cbg = load ptr, ptr %i.cah, align 8, !tbaa !211 ; 2 uses
  %i.cbh = icmp sgt i64 %i.cax, 1
  br i1 %i.cbh, label %bb.uk, label %bb.ul, !prof !94

bb.uk:                                            ; preds = %bb.uj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cbg, ptr align 1 %i.cak, i64 %i.cax, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i271

bb.ul:                                            ; preds = %bb.uj
  %i.cbi = icmp eq i64 %i.cax, 1
  br i1 %i.cbi, label %bb.um, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i271

bb.um:                                            ; preds = %bb.ul
  %i.cbj = load i8, ptr %i.cak, align 1, !tbaa !98
  store i8 %i.cbj, ptr %i.cbg, align 1, !tbaa !98
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i271

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i271:          ; preds = %bb.um, %bb.ul, %bb.uk, %bb.ui, %bb.uh
  %.026.i272 = phi i64 [ 0, %bb.uh ], [ 0, %bb.ui ], [ %i.cax, %bb.uk ], [ %i.cax, %bb.ul ], [ 1, %bb.um ] ; 4 uses
  %i.cbk = load i64, ptr %i.cau, align 8, !tbaa !212 ; 2 uses
  %.not.i.i.i273 = icmp samesign eq i64 %.026.i272, %i.cbk
  br i1 %.not.i.i.i273, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit.i275, label %bb.un

bb.un:                                            ; preds = %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i271
  %i.cbl = load ptr, ptr %i.cai, align 8, !tbaa !211
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbl, i64 %.026.i272
  %i.cbn = load ptr, ptr %i.cah, align 8, !tbaa !211
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbn, i64 %.026.i272
  %gepdiff.i274 = sub nsw i64 %i.cbk, %.026.i272
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cbo, ptr align 1 %i.cbm, i64 %gepdiff.i274, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit.i275

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit.i275: ; preds = %bb.un, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34.i271
  store i64 %i.cav, ptr %i.caw, align 8, !tbaa !212
  store i64 0, ptr %i.cau, align 8, !tbaa !212
  br label %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276

_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276:      ; preds = %_ZNSt22_Optional_payload_baseIN4llvm4gsym22CallSiteInfoCollectionEE14_M_move_assignEOS3_.exit296, %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i266, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit.i269, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit.i275
  %i.cbp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 288
  %i.cbq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 288 ; 2 uses
  %i.cbr = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.cbs = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.cbs, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i, !llvm.loop !12

_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i: ; preds = %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit276
  %3 = ptrtoint ptr %i.cbq to i64
  br label %_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit

_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit: ; preds = %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.bse, %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i ], [ %3, %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i ]
  %i.cbt = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.bse
  %i.cbu = getelementptr inbounds i8, ptr %i.bsh, i64 %i.cbt ; 2 uses
  %i.cbv = sub i64 %i.i, %i.bsi
  %i.cbw = sdiv exact i64 %i.cbv, 288             ; 2 uses
  %.not.i18 = icmp slt i64 %i.cbw, %i.ano
  br i1 %.not.i18, label %_ZSt17__merge_sort_loopIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_.exit, label %.lr.ph.i17, !llvm.loop !518

_ZSt17__merge_sort_loopIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_.exit
  %.0.lcssa.i19 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_.exit ], [ %i.anq, %_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ] ; 2 uses
  %.sroa.018.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_.exit ], [ %i.cbu, %_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ]
  %.lcssa.i20 = phi i64 [ %i.j, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_.exit ], [ %i.cbw, %_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ]
  %.sroa.speculated.i21 = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.lcssa.i20)
  %i.cbx = getelementptr inbounds [288 x i8], ptr %.0.lcssa.i19, i64 %.sroa.speculated.i21 ; 2 uses
  %i.cby = tail call ptr @_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_(ptr noundef %.0.lcssa.i19, ptr noundef %i.cbx, ptr noundef %i.cbx, ptr noundef nonnull %i.e, ptr %.sroa.018.0.lcssa.i) ; 0 uses
  %i.cbz = icmp slt i64 %i.ano, %i.d
  br i1 %i.cbz, label %bb.b, label %._crit_edge, !llvm.loop !519

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.std::tuple.178", align 8    ; 9 uses
  %3 = alloca %"class.std::tuple.178", align 8    ; 8 uses
  %4 = alloca %"struct.llvm::gsym::FunctionInfo", align 8 ; 5 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.029 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.not30 = icmp eq ptr %.sroa.0.029, %1
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = ptrtoint ptr %0 to i64
  %i.n = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.o = insertelement <2 x ptr> %i.n, ptr %i.h, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bp
  %.sroa.0.032 = phi ptr [ %.sroa.0.029, %.lr.ph ], [ %.sroa.0.0, %bb.bp ] ; 8 uses
  %.pn31 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.032, %bb.bp ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.p = getelementptr inbounds nuw i8, ptr %.pn31, i64 512
  %i.q = load i8, ptr %i.p, align 8, !tbaa !196, !range !113, !noundef !114
  store i8 %i.q, ptr %i.a, align 1, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.r = load i8, ptr %i.d, align 8, !tbaa !196, !range !113, !noundef !114
  store i8 %i.r, ptr %i.b, align 1, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.s = getelementptr inbounds nuw i8, ptr %.pn31, i64 344
  %i.t = getelementptr inbounds nuw i8, ptr %.pn31, i64 312
  store ptr %i.a, ptr %2, align 8, !tbaa !262, !alias.scope !525
  store ptr %i.t, ptr %i.e, align 8, !tbaa !264, !alias.scope !525
  store ptr %i.s, ptr %i.f, align 8, !tbaa !266, !alias.scope !525
  store ptr %.sroa.0.032, ptr %i.g, align 8, !tbaa !268, !alias.scope !525
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.b, ptr %3, align 8, !tbaa !262, !alias.scope !526
  store <2 x ptr> %i.o, ptr %i.j, align 8, !tbaa !122, !alias.scope !526
  store ptr %0, ptr %i.k, align 8, !tbaa !268, !alias.scope !526
  %i.u = getelementptr inbounds nuw i8, ptr %.pn31, i64 296
  %i.v = load i64, ptr %.sroa.0.032, align 8, !tbaa !103 ; 3 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !103  ; 2 uses
  %i.x = load i64, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.y = load i64, ptr %i.l, align 8, !tbaa !103  ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.x
  %i.aa = icmp uge i64 %i.x, %i.v
  %i.ab = icmp ult i64 %i.w, %i.y
  %spec.select.i.i.i.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  %i.ac = select i1 %i.z, i1 true, i1 %spec.select.i.i.i.i.i
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread, label %bb.c

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.x, %i.v
  %i.ae = icmp ult i64 %i.y, %i.w
  %i.af = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread28, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread28: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bo

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %bb.c
  %i.ag = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKN4llvm12AddressRangeERKSt8optionalINS1_4gsym10InlineInfoEERKS5_INS6_9LineTableEERKbEESH_Lm1ELm4EE6__lessERKSH_SK_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.ag, label %bb.d, label %bb.bo

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm4gsym12FunctionInfoC2EOS1_(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.0.032)
  %i.ah = ptrtoint ptr %.sroa.0.032 to i64
  %i.ai = sub i64 %i.ah, %i.m                     ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn31, i64 576
  %i.al = udiv exact i64 %i.ai, 288
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.jd, %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.an, %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ] ; 48 uses
  %.078.i.i.i.i.i = phi ptr [ %i.am, %_ZN4llvm15SmallVectorImplIcEaSEOS1_.exit ], [ %.sroa.0.032, %.lr.ph.preheader.i.i.i.i.i ] ; 30 uses
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -288 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -288 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.an, ptr noundef nonnull align 8 dereferenceable(288) %i.am, i64 24, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -264 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -264 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -240 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !187, !range !113, !noundef !114
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -240
  %i.au = load i8, ptr %i.at, align 8, !range !113
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  %or.cond.i.i.i.i.i.i = select i1 %i.as, i1 %i.av, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !191 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -248 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !239
  %i.az = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !237
  store <2 x ptr> %i.az, ptr %i.ao, align 8, !tbaa !237
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -248
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !239
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !239
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.be) #29
  br label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !237
  store <2 x ptr> %i.bf, ptr %i.ao, align 8, !tbaa !237
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -248
  %i.bh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -248
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !239
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.aq, align 8, !tbaa !187
  br label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.aq, align 8, !tbaa !187
  br i1 %i.as, label %bb.j, label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.ao, align 8, !tbaa !191 ; 3 uses
  %.not.i.i.i.i.i.i7.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i7.i.i.i.i.i.i, label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -248
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !239
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #29
  br label %_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit

_ZN4llvm4gsym12FunctionInfoaSEOS1_.exit:          ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -232 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -232 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -128 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !195, !range !113, !noundef !114
end_hunk_1
begin_hunk_2_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_:bb.a
  %i.ai = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.028, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.020.027) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 288
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1 = phi ptr [ %i.ah, %bb.d ], [ %.sroa.016.026, %bb.e ] ; 3 uses
  %.sroa.020.1 = phi ptr [ %.sroa.020.027, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.028, i64 288 ; 2 uses
  %i.al = icmp ne ptr %.sroa.020.1, %1
  %i.am = icmp ne ptr %.sroa.016.1, %3
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %bb.f, %bb.a
  %.sroa.016.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.016.1, %bb.f ] ; 2 uses
  %.sroa.020.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.020.1, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ak, %bb.f ] ; 2 uses
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = ptrtoint ptr %.sroa.020.0.lcssa to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.ar = udiv exact i64 %i.ap, 288
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.sroa.020.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.as = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.0910.i.i.i.i.i) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 288
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 288 ; 2 uses
  %i.av = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aw = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit, !llvm.loop !12

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.au, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = ptrtoint ptr %.sroa.016.0.lcssa to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i.i.i10, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit15

.lr.ph.preheader.i.i.i.i.i10:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %i.bb = udiv exact i64 %i.az, 288
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.lr.ph.i.i.i.i.i11, %.lr.ph.preheader.i.i.i.i.i10
  %.012.i.i.i.i.i12 = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i11 ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i10 ] ; 2 uses
  %.0811.i.i.i.i.i13 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i11 ], [ %.08.lcssa.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10 ] ; 2 uses
  %.0910.i.i.i.i.i14 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i11 ], [ %.sroa.016.0.lcssa, %.lr.ph.preheader.i.i.i.i.i10 ] ; 2 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.0811.i.i.i.i.i13, ptr noundef nonnull align 8 dereferenceable(288) %.0910.i.i.i.i.i14) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14, i64 288
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13, i64 288 ; 2 uses
  %i.bf = add nsw i64 %.012.i.i.i.i.i12, -1
  %i.bg = icmp samesign ugt i64 %.012.i.i.i.i.i12, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i11, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit15, !llvm.loop !12

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit15: ; preds = %.lr.ph.i.i.i.i.i11, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %.08.lcssa.i.i.i.i.i9 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ], [ %i.be, %.lr.ph.i.i.i.i.i11 ]
  ret ptr %.08.lcssa.i.i.i.i.i9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt12__move_mergeIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.std::tuple.178", align 8    ; 9 uses
  %6 = alloca %"class.std::tuple.178", align 8    ; 9 uses
  %i.c = icmp ne ptr %0, %1
  %i.d = icmp ne ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.032 = phi ptr [ %0, %.lr.ph ], [ %.1, %bb.f ] ; 9 uses
  %.01631 = phi ptr [ %2, %.lr.ph ], [ %.117, %bb.f ] ; 9 uses
  %.sroa.0.029 = phi ptr [ %4, %.lr.ph ], [ %i.al, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.l = getelementptr inbounds nuw i8, ptr %.01631, i64 224
  %i.m = load i8, ptr %i.l, align 8, !tbaa !196, !range !113, !noundef !114
  store i8 %i.m, ptr %i.a, align 1, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.n = getelementptr inbounds nuw i8, ptr %.032, i64 224
  %i.o = load i8, ptr %i.n, align 8, !tbaa !196, !range !113, !noundef !114
  store i8 %i.o, ptr %i.b, align 1, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.p = getelementptr inbounds nuw i8, ptr %.01631, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %.01631, i64 24
  store ptr %i.a, ptr %5, align 8, !tbaa !262, !alias.scope !550
  store ptr %i.q, ptr %i.f, align 8, !tbaa !264, !alias.scope !550
  store ptr %i.p, ptr %i.g, align 8, !tbaa !266, !alias.scope !550
  store ptr %.01631, ptr %i.h, align 8, !tbaa !268, !alias.scope !550
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.r = getelementptr inbounds nuw i8, ptr %.032, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %.032, i64 24
  store ptr %i.b, ptr %6, align 8, !tbaa !262, !alias.scope !551
  store ptr %i.s, ptr %i.i, align 8, !tbaa !264, !alias.scope !551
  store ptr %i.r, ptr %i.j, align 8, !tbaa !266, !alias.scope !551
  store ptr %.032, ptr %i.k, align 8, !tbaa !268, !alias.scope !551
  %i.t = getelementptr inbounds nuw i8, ptr %.01631, i64 8
  %i.u = load i64, ptr %.01631, align 8, !tbaa !103 ; 3 uses
  %i.v = load i64, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.x = load i64, ptr %.032, align 8, !tbaa !103 ; 3 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !103  ; 2 uses
  %i.z = icmp ult i64 %i.u, %i.x
  %i.aa = icmp uge i64 %i.x, %i.u
  %i.ab = icmp ult i64 %i.v, %i.y
  %spec.select.i.i.i.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  %i.ac = select i1 %i.z, i1 true, i1 %spec.select.i.i.i.i.i
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit.thread, label %bb.c

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.x, %i.u
  %i.ae = icmp ult i64 %i.y, %i.v
  %i.af = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit.thread27, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit.thread27: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.e

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit: ; preds = %bb.c
  %i.ag = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKN4llvm12AddressRangeERKSt8optionalINS1_4gsym10InlineInfoEERKS5_INS6_9LineTableEERKbEESH_Lm1ELm4EE6__lessERKSH_SK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.0.029, ptr noundef nonnull align 8 dereferenceable(288) %.01631) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01631, i64 288
  br label %bb.f

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit.thread27, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN4llvm4gsym12FunctionInfoES6_EEbT_T0_.exit
  %i.aj = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.0.029, ptr noundef nonnull align 8 dereferenceable(288) %.032) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.032, i64 288
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.117 = phi ptr [ %i.ai, %bb.d ], [ %.01631, %bb.e ] ; 3 uses
  %.1 = phi ptr [ %.032, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 288 ; 2 uses
  %i.am = icmp ne ptr %.1, %1
  %i.an = icmp ne ptr %.117, %3
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.al, %bb.f ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.f ] ; 2 uses
  %i.ap = ptrtoint ptr %1 to i64
  %i.aq = ptrtoint ptr %.0.lcssa to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.at = udiv exact i64 %i.ar, 288
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.au = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.0910.i.i.i.i.i) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 288 ; 2 uses
  %i.ax = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ay = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, !llvm.loop !12

_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.aw, %.lr.ph.i.i.i.i.i ]
  %i.az = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.ba = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.bb ; 2 uses
  %i.bd = ptrtoint ptr %3 to i64
  %i.be = ptrtoint ptr %.016.lcssa to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.preheader.i.i.i.i.i19, label %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24

.lr.ph.preheader.i.i.i.i.i19:                     ; preds = %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %i.bh = udiv exact i64 %i.bf, 288
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20, %.lr.ph.preheader.i.i.i.i.i19
  %.012.i.i.i.i.i21 = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i20 ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i20 ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i20 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.0811.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(288) %.0910.i.i.i.i.i23) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 288
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 288 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.bm = icmp samesign ugt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit, !llvm.loop !12

_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit: ; preds = %.lr.ph.i.i.i.i.i20
  %7 = ptrtoint ptr %i.bk to i64
  br label %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24

_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24: ; preds = %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit, %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.08.lcssa.i.i.i.i.i18 = phi i64 [ %i.az, %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %7, %_ZSt4moveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit ]
  %i.bn = sub i64 %.08.lcssa.i.i.i.i.i18, %i.az
  %i.bo = getelementptr inbounds i8, ptr %i.bc, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt21__move_merge_adaptiveIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_less_iterEEvT_SC_T0_SD_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.std::tuple.178", align 8    ; 9 uses
  %6 = alloca %"class.std::tuple.178", align 8    ; 9 uses
  %.not24 = icmp eq ptr %0, %1
  br i1 %.not24, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.028 = phi ptr [ %0, %.lr.ph ], [ %.1, %bb.g ] ; 11 uses
  %.sroa.0.026 = phi ptr [ %4, %.lr.ph ], [ %i.ai, %bb.g ] ; 4 uses
  %.sroa.016.025 = phi ptr [ %2, %.lr.ph ], [ %.sroa.016.1, %bb.g ] ; 10 uses
  %.not20 = icmp eq ptr %.sroa.016.025, %3
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 224
  %i.j = load i8, ptr %i.i, align 8, !tbaa !196, !range !113, !noundef !114
  store i8 %i.j, ptr %i.a, align 1, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.k = getelementptr inbounds nuw i8, ptr %.028, i64 224
  %i.l = load i8, ptr %i.k, align 8, !tbaa !196, !range !113, !noundef !114
  store i8 %i.l, ptr %i.b, align 1, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 24
  store ptr %i.a, ptr %5, align 8, !tbaa !262, !alias.scope !557
  store ptr %i.n, ptr %i.c, align 8, !tbaa !264, !alias.scope !557
  store ptr %i.m, ptr %i.d, align 8, !tbaa !266, !alias.scope !557
  store ptr %.sroa.016.025, ptr %i.e, align 8, !tbaa !268, !alias.scope !557
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.o = getelementptr inbounds nuw i8, ptr %.028, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %.028, i64 24
  store ptr %i.b, ptr %6, align 8, !tbaa !262, !alias.scope !558
  store ptr %i.p, ptr %i.f, align 8, !tbaa !264, !alias.scope !558
  store ptr %i.o, ptr %i.g, align 8, !tbaa !266, !alias.scope !558
  store ptr %.028, ptr %i.h, align 8, !tbaa !268, !alias.scope !558
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 8
  %i.r = load i64, ptr %.sroa.016.025, align 8, !tbaa !103 ; 3 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !103  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.u = load i64, ptr %.028, align 8, !tbaa !103 ; 3 uses
  %i.v = load i64, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %i.w = icmp ult i64 %i.r, %i.u
  %i.x = icmp uge i64 %i.u, %i.r
  %i.y = icmp ult i64 %i.s, %i.v
  %spec.select.i.i.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  %i.z = select i1 %i.w, i1 true, i1 %spec.select.i.i.i.i.i
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit.thread, label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp ult i64 %i.u, %i.r
  %i.ab = icmp ult i64 %i.v, %i.s
  %i.ac = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %i.ac, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit.thread19, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit.thread19: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit: ; preds = %bb.d
  %i.ad = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKN4llvm12AddressRangeERKSt8optionalINS1_4gsym10InlineInfoEERKS5_INS6_9LineTableEERKbEESH_Lm1ELm4EE6__lessERKSH_SK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.0.026, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.016.025) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.016.025, i64 288
  br label %bb.g

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit.thread19, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS6_SaIS6_EEEES7_EEbT_T0_.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.0.026, ptr noundef nonnull align 8 dereferenceable(288) %.028) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.028, i64 288
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.016.1 = phi ptr [ %i.af, %bb.e ], [ %.sroa.016.025, %bb.f ]
  %.1 = phi ptr [ %.028, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.026, i64 288
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %.critedge12, label %bb.b, !llvm.loop !556

.critedge:                                        ; preds = %bb.b
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = ptrtoint ptr %.028 to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i, label %.critedge12

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.an = udiv exact i64 %i.al, 288
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.026, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.028, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.0910.i.i.i.i.i) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 288
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 288
  %i.ar = add nsw i64 %.012.i.i.i.i.i, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %.critedge12, !llvm.loop !12

.critedge12:                                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %bb.a, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm4gsym12FunctionInfoESt6vectorIS4_SaIS4_EEEES5_S9_NS0_5__ops15_Iter_less_iterEEvT_SC_T0_SD_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.std::tuple.178", align 8    ; 9 uses
  %6 = alloca %"class.std::tuple.178", align 8    ; 9 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.h = udiv exact i64 %i.f, 288
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %4, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %3, %.lr.ph.preheader.i.i.i.i.i ]
  %i.i = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -288 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -288 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN4llvm4gsym12FunctionInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(288) %i.j, ptr noundef nonnull align 8 dereferenceable(288) %i.i) ; 0 uses
  %i.l = add nsw i64 %.010.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, !llvm.loop !19

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %2, %3
  br i1 %i.n, label %_ZSt13move_backwardIPN4llvm4gsym12FunctionInfoEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %3, i64 -288
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.outer

.outer:                                           ; preds = %.loopexit, %bb.d
  %.sroa.028.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.028.0.ph, %.loopexit ] ; 5 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.d ], [ %i.ar, %.loopexit ]
  %.0.ph = phi ptr [ %i.o, %bb.d ], [ %.0, %.loopexit ]
  %.sroa.028.0.ph = getelementptr inbounds i8, ptr %.sroa.028.0.ph.pn, i64 -288 ; 5 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.028.0.ph.pn, i64 -64
  %i.w = getelementptr inbounds i8, ptr %.sroa.028.0.ph.pn, i64 -232
  %i.x = getelementptr inbounds i8, ptr %.sroa.028.0.ph.pn, i64 -264
  %i.y = getelementptr inbounds i8, ptr %.sroa.028.0.ph.pn, i64 -280
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.0.0 = phi ptr [ %i.bf, %bb.i ], [ %.sroa.0.0.ph, %.outer ] ; 2 uses
  %.0 = phi ptr [ %i.bi, %bb.i ], [ %.0.ph, %.outer ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 224
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !196, !range !113, !noundef !114
end_hunk_2
