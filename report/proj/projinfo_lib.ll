Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projinfo_lib?download=true
inline.NumInlined: 3852
inline.NumDeleted: 1140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL16outputOperationsRKSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_SE_SE_RKS_INS1_8metadata6ExtentEENS1_9operation26CoordinateOperationContext16SpatialCriterionEbNSL_24SourceTargetCRSExtentUseENSL_19GridAvailabilityUseENSL_18IntermediateCRSUseERKSt6vectorISt4pairISC_SC_ESaISS_EESE_bbbbdRKN12_GLOBAL__N_113OutputOptionsEbRNSX_8StreamerE:bb.a

_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241.thread: ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj11coordinates18CoordinateMetadataENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit231, %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241
  %i.il = phi ptr [ %i.ig, %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241 ], [ %i.hg, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj11coordinates18CoordinateMetadataENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit231 ] ; 2 uses
  %i.im = phi ptr [ %i.if, %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241 ], [ %i.hp, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj11coordinates18CoordinateMetadataENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit231 ] ; 2 uses
  %i.in = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj11coordinates18CoordinateMetadata15coordinateEpochEv(ptr noundef nonnull align 8 dereferenceable(40) %i.il) #33
  %i.io = load i8, ptr %i.in, align 8, !tbaa !768, !range !90, !noundef !91
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit257, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241.thread
  %i.iq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj11coordinates18CoordinateMetadata3crsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.il) #33 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !141
  store ptr %i.ir, ptr %37, align 8, !tbaa !141
  %i.is = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !98 ; 4 uses
  %i.iv = load ptr, ptr %i.is, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i242 = icmp eq ptr %i.iu, %i.iv
  br i1 %.not.i.i.i242, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit252, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not7.i.i.i243 = icmp eq ptr %i.iu, null
  br i1 %.not7.i.i.i243, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i245, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 3 uses
  %i.ix = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i244 = icmp eq i8 %i.ix, 0
  br i1 %.not.i.i.i.i244, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iy = load i32, ptr %i.iw, align 4, !tbaa !102
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.iw, align 4, !tbaa !102
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i245

bb.cg:                                            ; preds = %bb.ce
  %i.ja = atomicrmw volatile add ptr %i.iw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i251 = load ptr, ptr %i.is, align 8, !tbaa !98
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i245

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i245: ; preds = %bb.cg, %bb.cf, %bb.cd
  %i.jb = phi ptr [ %i.iv, %bb.cd ], [ %i.iv, %bb.cf ], [ %.pr.pre.i.i.i251, %bb.cg ] ; 8 uses
  %.not8.i.i.i246 = icmp eq ptr %i.jb, null
  br i1 %.not8.i.i.i246, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i250, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i245
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 4 uses
  %i.jd = load atomic i64, ptr %i.jc acquire, align 8 ; 2 uses
  %i.je = icmp eq i64 %i.jd, 4294967297
  %i.jf = trunc i64 %i.jd to i32                  ; 2 uses
  br i1 %i.je, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.jc, align 8, !tbaa !100
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  store i32 0, ptr %i.jg, align 4, !tbaa !101
  %i.jh = load ptr, ptr %i.jb, align 8, !tbaa !56
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(16) %i.jb) #31, !inline_history !734
  %i.jk = load ptr, ptr %i.jb, align 8, !tbaa !56
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.jb) #31, !inline_history !734
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i250

bb.cj:                                            ; preds = %bb.ch
  %i.jn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i9.i.i.i247 = icmp eq i8 %i.jn, 0
  br i1 %.not.i9.i.i.i247, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jo = add nsw i32 %i.jf, -1
  store i32 %i.jo, ptr %i.jc, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248

bb.cl:                                            ; preds = %bb.cj
  %i.jp = atomicrmw volatile add ptr %i.jc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i.i249 = phi i32 [ %i.jf, %bb.ck ], [ %i.jp, %bb.cl ]
  %i.jq = icmp eq i32 %.0.i.i.i.i.i249, 1
  br i1 %i.jq, label %bb.cm, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i250, !prof !103

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jb) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i250

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i250: ; preds = %bb.cm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248, %bb.ci, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i245
  store ptr %i.iu, ptr %i.is, align 8, !tbaa !98
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit252

_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit252: ; preds = %bb.cc, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i250
  store ptr null, ptr %38, align 8, !tbaa !758
  %i.jr = load ptr, ptr %i.im, align 8, !tbaa !98 ; 8 uses
  store ptr null, ptr %i.im, align 8, !tbaa !98
  %.not.i.i.i253 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i253, label %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit257, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit252
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.js, align 8, !tbaa !100
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !101
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !56
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #31, !inline_history !735
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !56
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #31, !inline_history !735
  br label %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit257

bb.cp:                                            ; preds = %bb.cn
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i254 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i254, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i255

bb.cr:                                            ; preds = %bb.cp
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i255

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i255: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i.i256 = phi i32 [ %i.jv, %bb.cq ], [ %i.kf, %bb.cr ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i256, 1
  br i1 %i.kg, label %bb.cs, label %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit257, !prof !103

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i255
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit257

_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit257: ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit224thread-pre-split.thread, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i255, %bb.co, %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_.exit252, %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit241.thread, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit224thread-pre-split
  %i.kh = load ptr, ptr %31, align 8, !tbaa !141  ; 7 uses
  %.not452 = icmp eq ptr %i.kh, null
  br i1 %.not452, label %thread-pre-split, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit257
  %i.ki = load ptr, ptr %37, align 8, !tbaa !141  ; 2 uses
  %.not453 = icmp eq ptr %i.ki, null
  br i1 %.not453, label %thread-pre-split, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kj = load ptr, ptr %0, align 8, !tbaa !106   ; 2 uses
  %.not454 = icmp eq ptr %i.kj, null
  %or.cond = or i1 %15, %.not454
  br i1 %or.cond, label %bb.dn, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kk = call fastcc noundef zeroext i1 @_ZL7is3DCRSRKSt10shared_ptrIN5osgeo4proj3crs3CRSEE(ptr nonnull %i.ki)
  br i1 %i.kk, label %bb.cw, label %bb.de

bb.cw:                                            ; preds = %bb.cv
  %i.kl = call fastcc noundef zeroext i1 @_ZL7is3DCRSRKSt10shared_ptrIN5osgeo4proj3crs3CRSEE(ptr nonnull %i.kh)
  br i1 %i.kl, label %bb.de, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.km = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.kh) #33 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !143
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !143
  %i.kq = icmp eq ptr %i.kn, %i.kp
  br i1 %i.kq, label %bb.de, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kr = load ptr, ptr %1, align 8, !tbaa !63
  %i.ks = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.kh) #33
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.ku = call noundef zeroext i1 @_ZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_(ptr noundef %i.kr, ptr noundef %i.kt) #31
  %.val153.pre = load ptr, ptr %31, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ku, label %bb.cz, label %bb.de

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  %i.kv = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  store ptr %i.kv, ptr %41, align 8, !tbaa !66
  %i.kw = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 0, ptr %i.kw, align 8, !tbaa !67
  store i8 0, ptr %i.kv, align 8, !tbaa !64
  invoke void @_ZNK5osgeo4proj3crs3CRS11promoteTo3DERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.108") align 8 %40, ptr noundef nonnull align 8 dereferenceable(64) %.val153.pre, ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.kx = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ky = load <2 x ptr>, ptr %40, align 16, !tbaa !95
  store ptr null, ptr %i.kx, align 8, !tbaa !98
  store <2 x ptr> %i.ky, ptr %39, align 16, !tbaa !95
  store ptr null, ptr %40, align 16, !tbaa !141
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #31
  %i.kz = load ptr, ptr %41, align 8, !tbaa !63   ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.kv
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %bb.da
  %i.lb = load i64, ptr %i.kv, align 8, !tbaa !64
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  %57 = load ptr, ptr %39, align 16, !tbaa !141
  %i.ld = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %57) #33 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !143
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !143
  %i.lh = icmp eq ptr %i.le, %i.lg
  br i1 %i.lh, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %i.li = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %39) #31 ; 0 uses
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cz
  %i.lj = landingpad { ptr, i32 }
          cleanup
  %i.lk = load ptr, ptr %41, align 8, !tbaa !63   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.kv
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.dc
  %i.lm = load i64, ptr %i.kv, align 8, !tbaa !64
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br label %bb.kc

bb.dd:                                            ; preds = %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br label %thread-pre-split

bb.de:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.val153 = phi ptr [ %.val153.pre, %bb.cy ], [ %i.kh, %bb.cx ], [ %i.kh, %bb.cw ], [ %i.kh, %bb.cv ]
  %i.lo = call fastcc noundef zeroext i1 @_ZL7is3DCRSRKSt10shared_ptrIN5osgeo4proj3crs3CRSEE(ptr %.val153)
  br i1 %i.lo, label %bb.df, label %thread-pre-split

bb.df:                                            ; preds = %bb.de
  %.val152 = load ptr, ptr %37, align 8, !tbaa !141 ; 3 uses
  %i.lp = call fastcc noundef zeroext i1 @_ZL7is3DCRSRKSt10shared_ptrIN5osgeo4proj3crs3CRSEE(ptr %.val152)
  br i1 %i.lp, label %thread-pre-split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %.val152) #33 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !143
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !143
  %i.lu = icmp eq ptr %i.lr, %i.lt
  br i1 %i.lu, label %thread-pre-split, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lv = load ptr, ptr %3, align 8, !tbaa !63
  %i.lw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %.val152) #33
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !63
  %i.ly = call noundef zeroext i1 @_ZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_(ptr noundef %i.lv, ptr noundef %i.lx) #31
  br i1 %i.ly, label %bb.di, label %thread-pre-split

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  %i.lz = load ptr, ptr %37, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  %i.ma = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 6 uses
  store ptr %i.ma, ptr %44, align 8, !tbaa !66
  %i.mb = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 0, ptr %i.mb, align 8, !tbaa !67
  store i8 0, ptr %i.ma, align 8, !tbaa !64
  invoke void @_ZNK5osgeo4proj3crs3CRS11promoteTo3DERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.108") align 8 %43, ptr noundef nonnull align 8 dereferenceable(64) %i.lz, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.mc = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.md = load <2 x ptr>, ptr %43, align 16, !tbaa !95
  store ptr null, ptr %i.mc, align 8, !tbaa !98
  store <2 x ptr> %i.md, ptr %42, align 16, !tbaa !95
  store ptr null, ptr %43, align 16, !tbaa !141
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %43) #31
  %i.me = load ptr, ptr %44, align 8, !tbaa !63   ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.ma
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.dj
  %i.mg = load i64, ptr %i.ma, align 8, !tbaa !64
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  %58 = load ptr, ptr %42, align 16, !tbaa !141
  %i.mi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %58) #33 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !143
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !143
  %i.mm = icmp eq ptr %i.mj, %i.ml
  br i1 %i.mm, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.mn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %42) #31 ; 0 uses
  br label %bb.dm

bb.dl:                                            ; preds = %bb.di
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = load ptr, ptr %44, align 8, !tbaa !63   ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.ma
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.dl
  %i.mr = load i64, ptr %i.ma, align 8, !tbaa !64
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.ms) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %bb.kc

bb.dm:                                            ; preds = %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj11coordinates18CoordinateMetadataELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit257, %bb.ct, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.dm, %bb.dd
  %.pr447 = load ptr, ptr %0, align 8, !tbaa !106
  br label %bb.dn

bb.dn:                                            ; preds = %thread-pre-split, %bb.cu
  %i.mt = phi ptr [ %.pr447, %thread-pre-split ], [ %i.kj, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %45, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  %.not = icmp eq ptr %i.mt, null
  br i1 %.not, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #31
  store ptr %i.mt, ptr %48, align 8, !tbaa !106
  %i.mu = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.mv = load ptr, ptr %i.b, align 8, !tbaa !98  ; 3 uses
  store ptr %i.mv, ptr %i.mu, align 8, !tbaa !98
  %.not.i.i.i.i270 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i270, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 3 uses
  %i.mx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i271 = icmp eq i8 %i.mx, 0
  br i1 %.not.i.i.i.i.i271, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.my = load i32, ptr %i.mw, align 4, !tbaa !102
  %i.mz = add nsw i32 %i.my, 1
  store i32 %i.mz, ptr %i.mw, align 4, !tbaa !102
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.dr:                                            ; preds = %bb.dp
  %i.na = atomicrmw volatile add ptr %i.mw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.do, %bb.dq, %bb.dr
  invoke void @_ZN5osgeo4proj2io16AuthorityFactory6createERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15DatabaseContextEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.23") align 8 %47, ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.critedge unwind label %bb.ej

bb.ds:                                            ; preds = %bb.dn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  br label %.critedge148

.critedge:                                        ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.nc = load <2 x ptr>, ptr %47, align 16, !tbaa !95
  store ptr null, ptr %i.nb, align 8, !tbaa !98
  store <2 x ptr> %i.nc, ptr %46, align 16, !tbaa !95
  store ptr null, ptr %47, align 16, !tbaa !121
  %i.nd = load ptr, ptr %i.mu, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i276 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i276, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %.critedge
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 4 uses
  %i.nf = load atomic i64, ptr %i.ne acquire, align 8 ; 2 uses
  %i.ng = icmp eq i64 %i.nf, 4294967297
  %i.nh = trunc i64 %i.nf to i32                  ; 2 uses
  br i1 %i.ng, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 0, ptr %i.ne, align 8, !tbaa !100
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 0, ptr %i.ni, align 4, !tbaa !101
  %i.nj = load ptr, ptr %i.nd, align 8, !tbaa !56
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #31, !inline_history !1
  %i.nm = load ptr, ptr %i.nd, align 8, !tbaa !56
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #31, !inline_history !1
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

bb.dv:                                            ; preds = %bb.dt
  %i.np = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i277 = icmp eq i8 %i.np, 0
  br i1 %.not.i.i.i.i277, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nq = add nsw i32 %i.nh, -1
  store i32 %i.nq, ptr %i.ne, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i278

bb.dx:                                            ; preds = %bb.dv
  %i.nr = atomicrmw volatile add ptr %i.ne, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i278

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i278: ; preds = %bb.dx, %bb.dw
  %.0.i.i.i.i.i279 = phi i32 [ %i.nh, %bb.dw ], [ %i.nr, %bb.dx ]
  %i.ns = icmp eq i32 %.0.i.i.i.i.i279, 1
  br i1 %i.ns, label %bb.dy, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, !prof !103

bb.dy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i278
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit: ; preds = %.critedge, %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i278, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %.critedge148

.critedge148:                                     ; preds = %bb.ds, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #31
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext6createERKSt10shared_ptrINS0_2io16AuthorityFactoryEERKS3_INS0_8metadata6ExtentEEd(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.368") align 8 %49, ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %5, double noundef 0.000000e+00)
          to label %bb.dz unwind label %bb.ek

bb.dz:                                            ; preds = %.critedge148
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #31
  store ptr %32, ptr %50, align 8, !tbaa !771
  %i.nt = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %38, ptr %i.nt, align 8, !tbaa !771
  %i.nu = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr %49, ptr %i.nu, align 8, !tbaa !772
  %i.nv = getelementptr inbounds nuw i8, ptr %50, i64 24
  store ptr %37, ptr %i.nv, align 8, !tbaa !773
  %i.nw = getelementptr inbounds nuw i8, ptr %50, i64 32
  store ptr %31, ptr %i.nw, align 8, !tbaa !773
  %i.nx = load ptr, ptr %49, align 8, !tbaa !775
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext19setSpatialCriterionENS2_16SpatialCriterionE(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i32 noundef %6)
          to label %bb.ea unwind label %bb.el

bb.ea:                                            ; preds = %bb.dz
  %i.ny = load ptr, ptr %49, align 8, !tbaa !775
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext30setSourceAndTargetCRSExtentUseENS2_24SourceTargetCRSExtentUseE(ptr noundef nonnull align 8 dereferenceable(16) %i.ny, i32 noundef %8)
          to label %bb.eb unwind label %bb.el

bb.eb:                                            ; preds = %bb.ea
  %i.nz = load ptr, ptr %49, align 8, !tbaa !775
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext22setGridAvailabilityUseENS2_19GridAvailabilityUseE(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i32 noundef %9)
          to label %bb.ec unwind label %bb.el

bb.ec:                                            ; preds = %bb.eb
  %i.oa = load ptr, ptr %49, align 8, !tbaa !775
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext26setAllowUseIntermediateCRSENS2_18IntermediateCRSUseE(ptr noundef nonnull align 8 dereferenceable(16) %i.oa, i32 noundef %10)
          to label %bb.ed unwind label %bb.el

bb.ed:                                            ; preds = %bb.ec
  %i.ob = load ptr, ptr %49, align 8, !tbaa !775
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext18setIntermediateCRSERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ESaISB_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.ob, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.ee unwind label %bb.el

bb.ee:                                            ; preds = %bb.ed
  %i.oc = load ptr, ptr %49, align 8, !tbaa !775
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext30setUsePROJAlternativeGridNamesEb(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, i1 noundef zeroext %13)
          to label %bb.ef unwind label %bb.el

bb.ef:                                            ; preds = %bb.ee
  %i.od = load ptr, ptr %49, align 8, !tbaa !775
  %i.oe = xor i1 %14, true
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext20setDiscardSupersededEb(ptr noundef nonnull align 8 dereferenceable(16) %i.od, i1 noundef zeroext %i.oe)
          to label %bb.eg unwind label %bb.el

bb.eg:                                            ; preds = %bb.ef
  %i.of = load ptr, ptr %49, align 8, !tbaa !775
  %i.og = getelementptr inbounds nuw i8, ptr %18, i64 13
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !74, !range !90, !noundef !91
  %i.oi = trunc nuw i8 %i.oh to i1
  invoke void @_ZN5osgeo4proj9operation26CoordinateOperationContext31setAllowBallparkTransformationsEb(ptr noundef nonnull align 8 dereferenceable(16) %i.of, i1 noundef zeroext %i.oi)
          to label %bb.eh unwind label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %i.oj = fcmp ult double %17, 0.000000e+00
end_hunk_0
