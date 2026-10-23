Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stitching_detailed?download=true
inline.NumInlined: 4764
inline.NumDeleted: 1884
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #32
  store i32 0, ptr %i.bht, align 8, !tbaa !79
  store i32 0, ptr %i.bhu, align 4, !tbaa !80
  store i32 16842752, ptr %147, align 8, !tbaa !82
  store ptr %137, ptr %i.bhv, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #32
  %i.bqz = load ptr, ptr %53, align 8, !tbaa !103
  %i.bra = getelementptr inbounds nuw [448 x i8], ptr %i.bqz, i64 %indvars.iv1731
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 32
  store i32 0, ptr %i.bhw, align 8, !tbaa !79
  store i32 0, ptr %i.bhx, align 4, !tbaa !80
  store i32 16842752, ptr %148, align 8, !tbaa !82
  store ptr %i.brb, ptr %i.bhy, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #32
  store i64 0, ptr %i.bia, align 8
  store i32 33619968, ptr %149, align 8, !tbaa !82
  store ptr %124, ptr %i.bhz, align 8, !tbaa !83
  %i.brc = load ptr, ptr %i.bqy, align 8, !tbaa !37
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 40
  %i.bre = load ptr, ptr %i.brd, align 8
  %i.brf = invoke i64 %i.bre(ptr noundef nonnull align 8 dereferenceable(8) %i.bqy, ptr noundef nonnull align 8 dereferenceable(24) %146, ptr noundef nonnull align 8 dereferenceable(24) %147, ptr noundef nonnull align 8 dereferenceable(24) %148, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %149)
          to label %bb.vn unwind label %bb.xd     ; 0 uses

bb.vn:                                            ; preds = %bb.vm
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #32
  %i.brg = load ptr, ptr %111, align 8, !tbaa !487 ; 2 uses
  %i.brh = load ptr, ptr %67, align 8, !tbaa !168
  %i.bri = getelementptr inbounds nuw [8 x i8], ptr %i.brh, i64 %indvars.iv1731
  %.sroa.015.0.copyload = load i64, ptr %i.bri, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #32
  store i64 0, ptr %i.bic, align 8
  store i32 50397184, ptr %150, align 8, !tbaa !82
  store ptr %119, ptr %i.bib, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #32
  store i32 0, ptr %i.bid, align 8, !tbaa !79
  store i32 0, ptr %i.bie, align 4, !tbaa !80
  store i32 16842752, ptr %151, align 8, !tbaa !82
  store ptr %124, ptr %i.bif, align 8, !tbaa !83
  %i.brj = load ptr, ptr %i.brg, align 8, !tbaa !37
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 24
  %i.brl = load ptr, ptr %i.brk, align 8
  %i.brm = trunc nuw nsw i64 %indvars.iv1731 to i32
  invoke void %i.brl(ptr noundef nonnull align 8 dereferenceable(9) %i.brg, i32 noundef %i.brm, i64 %.sroa.015.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %150, ptr noundef nonnull align 8 dereferenceable(24) %151)
          to label %bb.vo unwind label %bb.xe

bb.vo:                                            ; preds = %bb.vn
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #32
  store i64 0, ptr %i.bih, align 8
  store i32 33619968, ptr %152, align 8, !tbaa !82
  store ptr %120, ptr %i.big, align 8, !tbaa !83
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %119, ptr noundef nonnull align 8 dereferenceable(24) %152, i32 noundef 3, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.vp unwind label %bb.xf

bb.vp:                                            ; preds = %bb.vo
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #32
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %119)
          to label %bb.vq unwind label %bb.xp

bb.vq:                                            ; preds = %bb.vp
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.vr unwind label %bb.xp

bb.vr:                                            ; preds = %bb.vq
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %123)
          to label %bb.vs unwind label %bb.xp

bb.vs:                                            ; preds = %bb.vr
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #32
  %i.brn = load ptr, ptr %69, align 8, !tbaa !122
  %i.bro = getelementptr inbounds nuw [184 x i8], ptr %i.brn, i64 %indvars.iv1731
  store i32 0, ptr %i.bii, align 8, !tbaa !79
  store i32 0, ptr %i.bij, align 4, !tbaa !80
  store i32 17432576, ptr %153, align 8, !tbaa !82
  store ptr %i.bro, ptr %i.bik, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #32
  store i64 0, ptr %i.bim, align 8
  store i32 33619968, ptr %154, align 8, !tbaa !82
  store ptr %121, ptr %i.bil, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #32
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %156) #32
  store i32 0, ptr %i.bin, align 8, !tbaa !79
  store i32 0, ptr %i.bio, align 4, !tbaa !80
  store i32 16842752, ptr %155, align 8, !tbaa !82
  store ptr %156, ptr %i.bip, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #32
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %157, align 16, !tbaa !77, !alias.scope !514
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.biq, align 16, !tbaa !77, !alias.scope !514
  invoke void @_ZN2cv6dilateERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_6Point_IiEEiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %153, ptr noundef nonnull align 8 dereferenceable(24) %154, ptr noundef nonnull align 8 dereferenceable(24) %155, i64 -1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %157)
          to label %bb.vt unwind label %bb.xg

bb.vt:                                            ; preds = %bb.vs
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %156) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #32
  store i32 0, ptr %i.bir, align 8, !tbaa !79
  store i32 0, ptr %i.bis, align 4, !tbaa !80
  store i32 16842752, ptr %158, align 8, !tbaa !82
  store ptr %121, ptr %i.bit, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #32
  store i64 0, ptr %i.biv, align 8
  store i32 33619968, ptr %159, align 8, !tbaa !82
  store ptr %122, ptr %i.biu, align 8, !tbaa !83
  %i.brp = load i32, ptr %i.biw, align 8, !tbaa !75 ; 6 uses
  %i.brq = icmp slt i32 %i.brp, 3
  br i1 %i.brq, label %bb.vx, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.137, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc963 unwind label %.loopexit.split-lp1348.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc963:                                        ; preds = %bb.vu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.138, i32 noundef 109) #31
          to label %bb.vv unwind label %bb.vw

bb.vv:                                            ; preds = %.noexc963
  unreachable

bb.vw:                                            ; preds = %.noexc963
  %i.brr = landingpad { ptr, i32 }
          cleanup
  %i.brs = load ptr, ptr %4, align 8, !tbaa !29   ; 2 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bru = icmp eq ptr %i.brs, %i.brt
  br i1 %i.bru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i957, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i956

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i956: ; preds = %bb.vw
  %i.brv = load i64, ptr %i.brt, align 8, !tbaa !30
  %i.brw = add i64 %i.brv, 1
  call void @_ZdlPvm(ptr noundef %i.brs, i64 noundef %i.brw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i957

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i957: ; preds = %bb.vw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i956
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.body964

bb.vx:                                            ; preds = %bb.vt
  %i.brx = icmp sgt i32 %i.brp, 0
  br i1 %i.brx, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  %i.bry = icmp eq i32 %i.brp, 2
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val1962 = load i32, ptr %i.bix, align 4
  %i.brz = select i1 %i.bry, i32 %.sroa.gep.val, i32 %.val1962
  br label %bb.wa

bb.vz:                                            ; preds = %bb.vx
  %i.bsa = icmp eq i32 %i.brp, 0
  %i.bsb = zext i1 %i.bsa to i32
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %bb.vy
  %i.bsc = phi i32 [ %i.brz, %bb.vy ], [ %i.bsb, %bb.vz ]
  %i.bsd = icmp eq i32 %i.brp, 2
  %i.bse = load i32, ptr %i.bix, align 4
  %i.bsf = icmp sgt i32 %i.brp, -1
  %i.bsg = zext i1 %i.bsf to i32
  %i.bsh = select i1 %i.bsd, i32 %i.bse, i32 %i.bsg
  %.sroa.2.0.insert.ext.i959 = zext i32 %i.bsh to i64
  %.sroa.2.0.insert.shift.i960 = shl nuw i64 %.sroa.2.0.insert.ext.i959, 32
  %.sroa.0.0.insert.ext.i961 = zext i32 %i.bsc to i64
  %.sroa.0.0.insert.insert.i962 = or disjoint i64 %.sroa.2.0.insert.shift.i960, %.sroa.0.0.insert.ext.i961
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %158, ptr noundef nonnull align 8 dereferenceable(24) %159, i64 %.sroa.0.0.insert.insert.i962, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 5)
          to label %bb.wb unwind label %.loopexit.split-lp1348.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wb:                                            ; preds = %bb.wa
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #32
  invoke void @_ZN2cvanERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %160, ptr noundef nonnull align 8 dereferenceable(208) %122, ptr noundef nonnull align 8 dereferenceable(208) %124)
          to label %bb.wc unwind label %bb.xh

bb.wc:                                            ; preds = %bb.wb
  %i.bsi = load ptr, ptr %160, align 8, !tbaa !184 ; 2 uses
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !37
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 24
  %i.bsl = load ptr, ptr %i.bsk, align 8
  invoke void %i.bsl(ptr noundef nonnull align 8 dereferenceable(8) %i.bsi, ptr noundef nonnull align 8 dereferenceable(688) %160, ptr noundef nonnull align 8 dereferenceable(208) %124, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.xi, !inline_history !389

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.wc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.biy) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.biz) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bja) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #32
  %i.bsm = load ptr, ptr %125, align 8, !tbaa !187
  %i.bsn = icmp ne ptr %i.bsm, null
  %i.bso = load i8, ptr @timelapse, align 1, !range !97
  %i.bsp = trunc nuw i8 %i.bso to i1              ; 2 uses
  %or.cond = select i1 %i.bsn, i1 true, i1 %i.bsp
  br i1 %or.cond, label %bb.xq, label %bb.wd

bb.wd:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #32
  %i.bsq = load i32, ptr @blend_type, align 4, !tbaa !53
  %i.bsr = load i8, ptr @try_cuda, align 1, !tbaa !96, !range !97, !noundef !98
  %i.bss = trunc nuw i8 %i.bsr to i1
  invoke void @_ZN2cv6detail7Blender13createDefaultEib(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.218") align 8 %161, i32 noundef %i.bsq, i1 noundef zeroext %i.bss)
          to label %bb.we unwind label %bb.xk

bb.we:                                            ; preds = %bb.wd
  %i.bst = load ptr, ptr %161, align 8, !tbaa !187
  store ptr %i.bst, ptr %125, align 8, !tbaa !187
  %i.bsu = load ptr, ptr %i.bjc, align 8, !tbaa !52 ; 5 uses
  %i.bsv = load ptr, ptr %i.bjb, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i968 = icmp eq ptr %i.bsu, %i.bsv
  br i1 %.not.i.i.i.i968, label %_ZN2cv3PtrINS_6detail7BlenderEEaSERKS3_.exit, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %.not7.i.i.i.i969 = icmp eq ptr %i.bsu, null
  br i1 %.not7.i.i.i.i969, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i971, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsu, i64 8 ; 3 uses
  %i.bsx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i970 = icmp eq i8 %i.bsx, 0
  br i1 %.not.i.i.i.i.i970, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %i.bsy = load i32, ptr %i.bsw, align 4, !tbaa !53
  %i.bsz = add nsw i32 %i.bsy, 1
  store i32 %i.bsz, ptr %i.bsw, align 4, !tbaa !53
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i971

bb.wi:                                            ; preds = %bb.wg
  %i.bta = atomicrmw volatile add ptr %i.bsw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i977 = load ptr, ptr %i.bjb, align 8, !tbaa !52
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i971

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i971: ; preds = %bb.wi, %bb.wh, %bb.wf
  %i.btb = phi ptr [ %i.bsv, %bb.wf ], [ %i.bsv, %bb.wh ], [ %.pr.pre.i.i.i.i977, %bb.wi ] ; 8 uses
  %.not8.i.i.i.i972 = icmp eq ptr %i.btb, null
  br i1 %.not8.i.i.i.i972, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i976, label %bb.wj

bb.wj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i971
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 8 ; 4 uses
  %i.btd = load atomic i64, ptr %i.btc acquire, align 8 ; 2 uses
  %i.bte = icmp eq i64 %i.btd, 4294967297
  %i.btf = trunc i64 %i.btd to i32                ; 2 uses
  br i1 %i.bte, label %bb.wk, label %bb.wl

bb.wk:                                            ; preds = %bb.wj
  store i32 0, ptr %i.btc, align 8, !tbaa !55
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btb, i64 12
  store i32 0, ptr %i.btg, align 4, !tbaa !56
  %i.bth = load ptr, ptr %i.btb, align 8, !tbaa !37
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 16
  %i.btj = load ptr, ptr %i.bti, align 8
  call void %i.btj(ptr noundef nonnull align 8 dereferenceable(16) %i.btb) #32, !inline_history !390
  %i.btk = load ptr, ptr %i.btb, align 8, !tbaa !37
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btk, i64 24
  %i.btm = load ptr, ptr %i.btl, align 8
  call void %i.btm(ptr noundef nonnull align 8 dereferenceable(16) %i.btb) #32, !inline_history !390
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i976

bb.wl:                                            ; preds = %bb.wj
  %i.btn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i973 = icmp eq i8 %i.btn, 0
  br i1 %.not.i9.i.i.i.i973, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.bto = add nsw i32 %i.btf, -1
  store i32 %i.bto, ptr %i.btc, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i974

bb.wn:                                            ; preds = %bb.wl
  %i.btp = atomicrmw volatile add ptr %i.btc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i974

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i974: ; preds = %bb.wn, %bb.wm
  %.0.i.i.i.i.i.i975 = phi i32 [ %i.btf, %bb.wm ], [ %i.btp, %bb.wn ]
  %i.btq = icmp eq i32 %.0.i.i.i.i.i.i975, 1
  br i1 %i.btq, label %bb.wo, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i976, !prof !57

bb.wo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i974
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.btb) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i976

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i976: ; preds = %bb.wo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i974, %bb.wk, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i971
  store ptr %i.bsu, ptr %i.bjb, align 8, !tbaa !52
  %.pr1340 = load ptr, ptr %i.bjc, align 8, !tbaa !52
  br label %_ZN2cv3PtrINS_6detail7BlenderEEaSERKS3_.exit

_ZN2cv3PtrINS_6detail7BlenderEEaSERKS3_.exit:     ; preds = %bb.we, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i976
  %i.btr = phi ptr [ %i.bsu, %bb.we ], [ %.pr1340, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i976 ] ; 8 uses
  %.not.i.i978 = icmp eq ptr %i.btr, null
  br i1 %.not.i.i978, label %_ZNSt12__shared_ptrIN2cv6detail7BlenderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.wp

bb.wp:                                            ; preds = %_ZN2cv3PtrINS_6detail7BlenderEEaSERKS3_.exit
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btr, i64 8 ; 4 uses
  %i.btt = load atomic i64, ptr %i.bts acquire, align 8 ; 2 uses
  %i.btu = icmp eq i64 %i.btt, 4294967297
  %i.btv = trunc i64 %i.btt to i32                ; 2 uses
  br i1 %i.btu, label %bb.wq, label %bb.wr

bb.wq:                                            ; preds = %bb.wp
  store i32 0, ptr %i.bts, align 8, !tbaa !55
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btr, i64 12
  store i32 0, ptr %i.btw, align 4, !tbaa !56
  %i.btx = load ptr, ptr %i.btr, align 8, !tbaa !37
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btx, i64 16
  %i.btz = load ptr, ptr %i.bty, align 8
  call void %i.btz(ptr noundef nonnull align 8 dereferenceable(16) %i.btr) #32, !inline_history !391
  %i.bua = load ptr, ptr %i.btr, align 8, !tbaa !37
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bua, i64 24
  %i.buc = load ptr, ptr %i.bub, align 8
  call void %i.buc(ptr noundef nonnull align 8 dereferenceable(16) %i.btr) #32, !inline_history !391
  br label %_ZNSt12__shared_ptrIN2cv6detail7BlenderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.wr:                                            ; preds = %bb.wp
  %i.bud = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i979 = icmp eq i8 %i.bud, 0
  br i1 %.not.i.i.i979, label %bb.wt, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bue = add nsw i32 %i.btv, -1
  store i32 %i.bue, ptr %i.bts, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i980

bb.wt:                                            ; preds = %bb.wr
  %i.buf = atomicrmw volatile add ptr %i.bts, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i980

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i980: ; preds = %bb.wt, %bb.ws
  %.0.i.i.i.i981 = phi i32 [ %i.btv, %bb.ws ], [ %i.buf, %bb.wt ]
  %i.bug = icmp eq i32 %.0.i.i.i.i981, 1
  br i1 %i.bug, label %bb.wu, label %_ZNSt12__shared_ptrIN2cv6detail7BlenderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.wu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i980
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.btr) #32
  br label %_ZNSt12__shared_ptrIN2cv6detail7BlenderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6detail7BlenderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cv3PtrINS_6detail7BlenderEEaSERKS3_.exit, %bb.wq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i980, %bb.wu
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #32
  %i.buh = invoke { i64, i64 } @_ZN2cv6detail9resultRoiERKSt6vectorINS_6Point_IiEESaIS3_EERKS1_INS_5Size_IiEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %bb.wv unwind label %bb.xp

bb.wv:                                            ; preds = %_ZNSt12__shared_ptrIN2cv6detail7BlenderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bui = extractvalue { i64, i64 } %i.buh, 1    ; 2 uses
  %.sroa.01251.0.extract.trunc = trunc i64 %i.bui to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.bui, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.buj = mul nsw i32 %.sroa.5.0.extract.trunc, %.sroa.01251.0.extract.trunc
  %i.buk = sitofp i32 %i.buj to float
  %i.bul = call noundef float @sqrtf(float noundef %i.buk) #32
  %i.bum = load float, ptr @blend_strength, align 4, !tbaa !92
  %i.bun = fmul float %i.bul, %i.bum
  %i.buo = fdiv float %i.bun, 1.000000e+02        ; 3 uses
  %i.bup = fcmp olt float %i.buo, 1.000000e+00
  br i1 %i.bup, label %bb.ww, label %bb.xm

bb.ww:                                            ; preds = %bb.wv
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #32
  %i.buq = load i8, ptr @try_cuda, align 1, !tbaa !96, !range !97, !noundef !98
  %i.bur = trunc nuw i8 %i.buq to i1
  invoke void @_ZN2cv6detail7Blender13createDefaultEib(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.218") align 8 %162, i32 noundef 0, i1 noundef zeroext %i.bur)
          to label %bb.wx unwind label %bb.xl

bb.wx:                                            ; preds = %bb.ww
  %i.bus = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3PtrINS_6detail7BlenderEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %125, ptr noundef nonnull align 8 dereferenceable(16) %162) ; 0 uses
  call void @_ZNSt12__shared_ptrIN2cv6detail7BlenderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %162) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #32
  br label %.invoke2023

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.tk, %.noexc1248, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1243, %.noexc1246, %bb.tf, %bb.tb, %bb.uy, %bb.ux, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit921, %bb.td, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1071, %_ZNSolsEd.exit1069, %bb.aal, %bb.aaj, %bb.va, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1067, %bb.aak
  %lpad.loopexit.split-lp2103 = landingpad { ptr, i32 }
          cleanup
  br label %.body953

bb.wy:                                            ; preds = %bb.vg
  %i.but = landingpad { ptr, i32 }
          cleanup
  br label %bb.xa

bb.wz:                                            ; preds = %bb.vh
  %i.buu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %138) #32
  br label %bb.xa

bb.xa:                                            ; preds = %bb.wz, %bb.wy
  %.pn416.pn = phi { ptr, i32 } [ %i.buu, %bb.wz ], [ %i.but, %bb.wy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #32
  br label %bb.zw

bb.xb:                                            ; preds = %bb.vi
  %i.buv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #32
  br label %bb.zw

bb.xc:                                            ; preds = %bb.vl, %bb.vk
  %i.buw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #32
  br label %bb.zw

bb.xd:                                            ; preds = %bb.vm
  %i.bux = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #32
  br label %bb.zw

bb.xe:                                            ; preds = %bb.vn
  %i.buy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #32
  br label %bb.zw

bb.xf:                                            ; preds = %bb.vo
  %i.buz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #32
  br label %bb.zw

bb.xg:                                            ; preds = %bb.vs
  %i.bva = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %156) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #32
  br label %bb.zw

.loopexit.split-lp1348.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.wa, %bb.vu
  %lpad.loopexit.split-lp2105 = landingpad { ptr, i32 }
          cleanup
  br label %.body964

.body964:                                         ; preds = %.loopexit.split-lp1348.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i957
  %.pn440 = phi { ptr, i32 } [ %i.brr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i957 ], [ %lpad.loopexit.split-lp2105, %.loopexit.split-lp1348.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #32
  br label %bb.zw

bb.xh:                                            ; preds = %bb.wb
  %i.bvb = landingpad { ptr, i32 }
          cleanup
  br label %bb.xj

bb.xi:                                            ; preds = %bb.wc
  %i.bvc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %160) #32
  br label %bb.xj

bb.xj:                                            ; preds = %bb.xi, %bb.xh
  %.pn443 = phi { ptr, i32 } [ %i.bvc, %bb.xi ], [ %i.bvb, %bb.xh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #32
  br label %bb.zw

bb.xk:                                            ; preds = %bb.wd
  %i.bvd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #32
  br label %bb.zw

bb.xl:                                            ; preds = %bb.ww
  %i.bve = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #32
  br label %bb.zw

bb.xm:                                            ; preds = %bb.wv
  %i.bvf = load i32, ptr @blend_type, align 4, !tbaa !53
  switch i32 %i.bvf, label %.invoke2023 [
    i32 2, label %bb.xn
    i32 1, label %bb.xo
  ]

bb.xn:                                            ; preds = %bb.xm
  %i.bvg = load ptr, ptr %125, align 8, !tbaa !187, !nonnull !98, !noundef !98
  %i.bvh = call ptr @__dynamic_cast(ptr nonnull %i.bvg, ptr nonnull @_ZTIN2cv6detail7BlenderE, ptr nonnull @_ZTIN2cv6detail16MultiBandBlenderE, i64 0) #32
  %i.bvi = call float @llvm.log.f32(float %i.buo)
  %i.bvj = fpext float %i.bvi to double
  %i.bvk = fdiv double %i.bvj, f0x3FE62E42FEFA39EF
  %i.bvl = call double @llvm.ceil.f64(double %i.bvk)
  %i.bvm = fadd double %i.bvl, -1.000000e+00
  %i.bvn = fptosi double %i.bvm to i32
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvh, i64 392 ; 2 uses
  store i32 %i.bvn, ptr %i.bvo, align 8, !tbaa !518
  %i.bvp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.75, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit983 unwind label %bb.xp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit983: ; preds = %bb.xn
  %i.bvq = load i32, ptr %i.bvo, align 8, !tbaa !518
  %i.bvr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.bvq)
          to label %_ZNSolsEf.exit.invoke unwind label %bb.xp

bb.xo:                                            ; preds = %bb.xm
  %i.bvs = load ptr, ptr %125, align 8, !tbaa !187, !nonnull !98, !noundef !98
  %i.bvt = call ptr @__dynamic_cast(ptr nonnull %i.bvs, ptr nonnull @_ZTIN2cv6detail7BlenderE, ptr nonnull @_ZTIN2cv6detail14FeatherBlenderE, i64 0) #32
  %i.bvu = fdiv float 1.000000e+00, %i.buo
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvt, i64 392 ; 2 uses
  store float %i.bvu, ptr %i.bvv, align 8, !tbaa !520
  %i.bvw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.76, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit987 unwind label %bb.xp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit987: ; preds = %bb.xo
  %i.bvx = load float, ptr %i.bvv, align 8, !tbaa !520
  %i.bvy = fpext float %i.bvx to double
  %i.bvz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.bvy)
          to label %_ZNSolsEf.exit.invoke unwind label %bb.xp

_ZNSolsEf.exit.invoke:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit987, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit983
  %i.bwa = phi ptr [ %i.bvr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit983 ], [ %i.bvz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit987 ]
  %i.bwb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bwa)
          to label %.invoke2023 unwind label %bb.xp, !inline_history !260 ; 0 uses

bb.xp:                                            ; preds = %_ZNSolsEf.exit.invoke, %.invoke2023, %_ZNSt12__shared_ptrIN2cv6detail7BlenderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.vr, %bb.vq, %bb.vp, %bb.vj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit987, %bb.xo, %bb.xn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit983
  %i.bwc = landingpad { ptr, i32 }
          cleanup
  br label %bb.zw

bb.xq:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.bwd = load ptr, ptr %126, align 8, !tbaa !190
  %.not1343.a = icmp eq ptr %i.bwd, null
  %or.cond3 = select i1 %.not1343.a, i1 %i.bsp, i1 false
  br i1 %or.cond3, label %bb.xr, label %bb.xu

bb.xr:                                            ; preds = %bb.xq
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #32
  %i.bwe = load i32, ptr @timelapse_type, align 4, !tbaa !53
  invoke void @_ZN2cv6detail10Timelapser13createDefaultEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.222") align 8 %163, i32 noundef %i.bwe)
          to label %bb.xs unwind label %bb.xt

bb.xs:                                            ; preds = %bb.xr
  %i.bwf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3PtrINS_6detail10TimelapserEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %126, ptr noundef nonnull align 8 dereferenceable(16) %163) ; 0 uses
  call void @_ZNSt12__shared_ptrIN2cv6detail10TimelapserELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %163) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #32
  br label %.invoke2023

.invoke2023:                                      ; preds = %bb.wx, %bb.xm, %_ZNSolsEf.exit.invoke, %bb.xs
  %.sink2025 = phi ptr [ %126, %bb.xs ], [ %125, %_ZNSolsEf.exit.invoke ], [ %125, %bb.xm ], [ %125, %bb.wx ]
  %i.bwg = load ptr, ptr %.sink2025, align 8, !tbaa !84 ; 2 uses
  %i.bwh = load ptr, ptr %i.bwg, align 8, !tbaa !37
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwh, i64 16
  %i.bwj = load ptr, ptr %i.bwi, align 8
  invoke void %i.bwj(ptr noundef nonnull align 8 dereferenceable(208) %i.bwg, ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %bb.xu unwind label %bb.xp

bb.xt:                                            ; preds = %bb.xr
  %i.bwk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #32
  br label %bb.zw

bb.xu:                                            ; preds = %.invoke2023, %bb.xq
  %i.bwl = load i8, ptr @timelapse, align 1, !tbaa !96, !range !97, !noundef !98
  %i.bwm = trunc nuw i8 %i.bwl to i1
  br i1 %i.bwm, label %bb.xv, label %bb.zs

bb.xv:                                            ; preds = %bb.xu
  %i.bwn = load ptr, ptr %126, align 8, !tbaa !190 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #32
  store i32 0, ptr %i.bjj, align 8, !tbaa !79
  store i32 0, ptr %i.bjk, align 4, !tbaa !80
  store i32 16842752, ptr %164, align 8, !tbaa !82
  store ptr %120, ptr %i.bjl, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #32
  %i.bwo = load i32, ptr %i.bjm, align 8, !tbaa !75 ; 6 uses
  %i.bwp = icmp slt i32 %i.bwo, 3
  br i1 %i.bwp, label %bb.xz, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.137, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc998 unwind label %.loopexit.split-lp1353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc998:                                        ; preds = %bb.xw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.138, i32 noundef 109) #31
          to label %bb.xx unwind label %bb.xy

bb.xx:                                            ; preds = %.noexc998
  unreachable

bb.xy:                                            ; preds = %.noexc998
  %i.bwq = landingpad { ptr, i32 }
          cleanup
  %i.bwr = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bwt = icmp eq ptr %i.bwr, %i.bws
  br i1 %i.bwt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i992, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i991

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i991: ; preds = %bb.xy
  %i.bwu = load i64, ptr %i.bws, align 8, !tbaa !30
  %i.bwv = add i64 %i.bwu, 1
  call void @_ZdlPvm(ptr noundef %i.bwr, i64 noundef %i.bwv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i992

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i992: ; preds = %bb.xy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i991
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.body999

bb.xz:                                            ; preds = %bb.xv
  %i.bww = icmp sgt i32 %i.bwo, 0
  br i1 %i.bww, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %bb.xz
  %i.bwx = icmp eq i32 %i.bwo, 2
  %.sroa.gep1737.val = load i32, ptr %.sroa.gep1737, align 8
  %.val1963 = load i32, ptr %i.bjn, align 4
  %i.bwy = select i1 %i.bwx, i32 %.sroa.gep1737.val, i32 %.val1963
  br label %bb.yc

bb.yb:                                            ; preds = %bb.xz
  %i.bwz = icmp eq i32 %i.bwo, 0
  %i.bxa = zext i1 %i.bwz to i32
  br label %bb.yc

bb.yc:                                            ; preds = %bb.yb, %bb.ya
  %i.bxb = phi i32 [ %i.bwy, %bb.ya ], [ %i.bxa, %bb.yb ]
  %i.bxc = icmp eq i32 %i.bwo, 2
  %i.bxd = load i32, ptr %i.bjn, align 4
  %i.bxe = icmp sgt i32 %i.bwo, -1
  %i.bxf = zext i1 %i.bxe to i32
  %i.bxg = select i1 %i.bxc, i32 %i.bxd, i32 %i.bxf
  %.sroa.2.0.insert.ext.i994 = zext i32 %i.bxg to i64
  %.sroa.2.0.insert.shift.i995 = shl nuw i64 %.sroa.2.0.insert.ext.i994, 32
  %.sroa.0.0.insert.ext.i996 = zext i32 %i.bxb to i64
  %.sroa.0.0.insert.insert.i997 = or disjoint i64 %.sroa.2.0.insert.shift.i995, %.sroa.0.0.insert.ext.i996
  invoke void @_ZN2cv3Mat4onesENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %166, i64 %.sroa.0.0.insert.insert.i997, i32 noundef 0)
          to label %bb.yd unwind label %.loopexit.split-lp1353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yd:                                            ; preds = %bb.yc
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %165, ptr noundef nonnull align 8 dereferenceable(688) %166)
          to label %bb.ye unwind label %bb.yl

bb.ye:                                            ; preds = %bb.yd
  %i.bxh = load ptr, ptr %67, align 8, !tbaa !168
  %i.bxi = getelementptr inbounds nuw [8 x i8], ptr %i.bxh, i64 %indvars.iv1731
  %.sroa.06.0.copyload = load i64, ptr %i.bxi, align 4, !tbaa !53
  %i.bxj = load ptr, ptr %i.bwn, align 8, !tbaa !37
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxj, i64 24
  %i.bxl = load ptr, ptr %i.bxk, align 8
  invoke void %i.bxl(ptr noundef nonnull align 8 dereferenceable(208) %i.bwn, ptr noundef nonnull align 8 dereferenceable(24) %164, ptr noundef nonnull align 8 dereferenceable(24) %165, i64 %.sroa.06.0.copyload)
          to label %bb.yf unwind label %bb.yl

bb.yf:                                            ; preds = %bb.ye
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bjo) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bjp) #32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bjq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #32
  store ptr %i.bjr, ptr %167, align 8, !tbaa !33
  store i64 0, ptr %i.bjs, align 8, !tbaa !35
  store i8 0, ptr %i.bjr, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #32
  %i.bxm = load ptr, ptr @_Z9img_namesB5cxx11, align 8, !tbaa !23
  %i.bxn = getelementptr inbounds nuw [32 x i8], ptr %i.bxm, i64 %indvars.iv1731 ; 2 uses
  store ptr %i.bjt, ptr %168, align 8, !tbaa !33
  %i.bxo = load ptr, ptr %i.bxn, align 8, !tbaa !29 ; 2 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxn, i64 8
  %i.bxq = load i64, ptr %i.bxp, align 8, !tbaa !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i64 %i.bxq, ptr %i.d, align 8, !tbaa !34
  %i.bxr = icmp ugt i64 %i.bxq, 15
  br i1 %i.bxr, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.yf
  %i.bxs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %168, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc1002 unwind label %bb.ym ; 2 uses

.noexc1002:                                       ; preds = %.noexc.i
  store ptr %i.bxs, ptr %168, align 8, !tbaa !29
  %i.bxt = load i64, ptr %i.d, align 8, !tbaa !34
  store i64 %i.bxt, ptr %i.bjt, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc1002, %bb.yf
  %i.bxu = phi ptr [ %i.bxs, %.noexc1002 ], [ %i.bjt, %bb.yf ] ; 2 uses
  switch i64 %i.bxq, label %bb.yh [
    i64 1, label %bb.yg
    i64 0, label %bb.yi
  ]

bb.yg:                                            ; preds = %._crit_edge.i.i
  %i.bxv = load i8, ptr %i.bxo, align 1, !tbaa !30
  store i8 %i.bxv, ptr %i.bxu, align 1, !tbaa !30
  br label %bb.yi

bb.yh:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bxu, ptr align 1 %i.bxo, i64 %i.bxq, i1 false)
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yg, %._crit_edge.i.i
  %i.bxw = load i64, ptr %i.d, align 8, !tbaa !34 ; 2 uses
  store i64 %i.bxw, ptr %i.bju, align 8, !tbaa !35
  %i.bxx = load ptr, ptr %168, align 8, !tbaa !29
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 %i.bxw
  store i8 0, ptr %i.bxy, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.bxz = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %168, ptr noundef nonnull @.str.77, i64 noundef -1, i64 noundef 2) #32 ; 4 uses
  %i.bya = load ptr, ptr %168, align 8, !tbaa !29 ; 2 uses
  %i.byb = icmp eq ptr %i.bya, %i.bjt
  br i1 %i.byb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003: ; preds = %bb.yi
  %i.byc = load i64, ptr %i.bjt, align 8, !tbaa !30
  %i.byd = add i64 %i.byc, 1
  call void @_ZdlPvm(ptr noundef %i.bya, i64 noundef %i.byd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005: ; preds = %bb.yi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #32
  %i.bye = icmp eq i64 %i.bxz, -1
  br i1 %i.bye, label %bb.yj, label %bb.yo

bb.yj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #32
  %i.byf = load ptr, ptr @_Z9img_namesB5cxx11, align 8, !tbaa !23
  %i.byg = getelementptr inbounds nuw [32 x i8], ptr %i.byf, i64 %indvars.iv1731
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %169, ptr noundef nonnull @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %i.byg)
          to label %bb.yk unwind label %bb.yn
end_hunk_0
