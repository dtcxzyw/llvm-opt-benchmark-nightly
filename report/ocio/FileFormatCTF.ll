Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatCTF?download=true
inline.NumInlined: 2801
inline.NumDeleted: 1168
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
          to label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 unwind label %bb.bo

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144: ; preds = %bb.bl
  %i.fl = load ptr, ptr %15, align 8, !tbaa !274  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !78 ; 2 uses
  store ptr %i.fl, ptr %14, align 8, !tbaa !278
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

bb.bm:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.bn:                                            ; preds = %bb.bj
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bo:                                            ; preds = %bb.bl
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.cf

bb.bp:                                            ; preds = %bb.bk
  %i.fs = load ptr, ptr %8, align 8, !tbaa !274   ; 2 uses
  store ptr %i.fs, ptr %14, align 8, !tbaa !274
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !78 ; 4 uses
  %.not.i.i.i145 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i145, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i146 = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i146, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.bq
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !82
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !82
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.bq
  %i.ga = atomicrmw volatile add ptr %i.fw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ft, align 8, !tbaa !78 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 4294967297
  %i.ge = trunc i64 %i.gc to i32                  ; 2 uses
  br i1 %i.gd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.gb, align 8, !tbaa !80
  %i.gf = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !81
  %i.gg = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !261
  %i.gj = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !261
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i9.i.i.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i9.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gn = add nsw i32 %i.ge, -1
  store i32 %i.gn, ptr %i.gb, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.go = atomicrmw volatile add ptr %i.gb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i = phi i32 [ %i.ge, %bb.bu ], [ %i.go, %bb.bv ]
  %i.gp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.gp, label %bb.bw, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !83

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bs, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !78
  %.pre = load ptr, ptr %14, align 8, !tbaa !274
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.bp, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144
  %i.gq = phi ptr [ %i.fv, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ null, %bb.bp ], [ %i.fn, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 ] ; 8 uses
  %i.gr = phi ptr [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %i.fs, %bb.bp ], [ %i.fl, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144 ]
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bx unwind label %bb.ce

bb.bx:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %.not.i.i147 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.gs, align 8, !tbaa !80
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !81
  %i.gx = load ptr, ptr %i.gq, align 8, !tbaa !22
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #26, !inline_history !260
  %i.ha = load ptr, ptr %i.gq, align 8, !tbaa !22
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #26, !inline_history !260
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

bb.ca:                                            ; preds = %bb.by
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i148 = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i148, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

bb.cc:                                            ; preds = %bb.ca
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i150 = phi i32 [ %i.gv, %bb.cb ], [ %i.hf, %bb.cc ]
  %i.hg = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.hg, label %bb.cd, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, !prof !83

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151: ; preds = %bb.bx, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br label %bb.cu

bb.ce:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bo
  %.pn82 = phi { ptr, i32 } [ %i.hh, %bb.ce ], [ %i.fr, %bb.bo ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bn
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.cf ], [ %i.fq, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.gm

bb.ch:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.not265 = icmp eq i32 %spec.store.select, 0
  br i1 %.not265, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit155, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hj = mul nsw i32 %spec.store.select, 3
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.hm = icmp slt i32 %spec.store.select, 0
  br i1 %i.hm, label %bb.cj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i222

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #29
          to label %.noexc230 unwind label %bb.cm

.noexc230:                                        ; preds = %bb.cj
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i222: ; preds = %bb.ci
  %i.hn = shl nuw nsw i64 %i.hk, 2                ; 2 uses
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #27
          to label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i229 unwind label %bb.cm ; 5 uses

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i229: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i222
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !96
  %24 = getelementptr i8, ptr %i.ho, i64 4
  %.idx.i.i.i.i.i31.i225 = add nsw i64 %i.hn, -4
  call void @llvm.memset.p0.i64(ptr align 4 %24, i8 0, i64 %.idx.i.i.i.i.i31.i225, i1 false), !tbaa !96
  store ptr %i.ho, ptr %16, align 8, !tbaa !102
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hk ; 2 uses
  store ptr %i.hp, ptr %i.hi, align 8, !tbaa !103
  store ptr %i.hp, ptr %i.hl, align 8, !tbaa !104
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit155

_ZNSt6vectorIfSaIfEE6resizeEm.exit155:            ; preds = %bb.ch, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i229
  %i.hq = phi ptr [ null, %bb.ch ], [ %i.ho, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i229 ]
  %i.hr = load i64, ptr %i.bd, align 8, !tbaa !28
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit155
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ht = load ptr, ptr %16, align 8, !tbaa !102
  %i.hu = load float, ptr %i.b, align 4, !tbaa !96
  %i.hv = load float, ptr %i.c, align 4, !tbaa !96
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %i.ht, i32 noundef %spec.store.select, i32 noundef 3, float noundef %i.hu, float noundef %i.hv)
          to label %bb.co unwind label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i222, %bb.cj, %bb.cn, %bb.cl, %bb.ck
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit155
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %i.hq, i32 noundef %spec.store.select, i32 noundef 3)
          to label %bb.co unwind label %bb.cm

bb.co:                                            ; preds = %bb.cn, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.hx = load ptr, ptr %16, align 8, !tbaa !102
  %i.hy = zext nneg i32 %spec.store.select to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull %i.hx, i64 noundef %i.hy, i64 noundef 1, i64 noundef 3)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.hz = load ptr, ptr %8, align 8, !tbaa !274
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.cu

bb.cr:                                            ; preds = %bb.co
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn85 = phi { ptr, i32 } [ %i.ib, %bb.cs ], [ %i.ia, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.gk

bb.cu:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, %bb.cq
  %i.ic = phi i1 [ false, %bb.cq ], [ %i.bn, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %18)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  br i1 %i.bh, label %bb.dm, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.id = load float, ptr %i.b, align 4, !tbaa !96 ; 2 uses
  %i.ie = fcmp une float %i.id, 0.000000e+00
  %i.if = load float, ptr %i.c, align 4           ; 2 uses
  %i.ig = fcmp une float %i.if, 1.000000e+00
  %or.cond6 = select i1 %i.ie, i1 true, i1 %i.ig
  br i1 %or.cond6, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.ih = fpext float %i.id to double
  %i.ii = fpext float %i.if to double
  invoke void @_ZN16OpenColorIO_v2_513CreateRangeOpERNS_10OpRcPtrVecEddddNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %18, double noundef %i.ih, double noundef %i.ii, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 0)
          to label %bb.da unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cu
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.cz:                                            ; preds = %bb.dp, %bb.do, %bb.cx
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.da:                                            ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.il = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #27
          to label %.noexc157 unwind label %bb.dk ; 7 uses

.noexc157:                                        ; preds = %bb.da
  %i.im = sext i32 %spec.store.select to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i32 1, ptr %i.in, align 8, !tbaa !80, !noalias !279
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  store i32 1, ptr %i.io, align 4, !tbaa !81, !noalias !279
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.il, align 8, !tbaa !22, !noalias !279
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.ip, i64 noundef %i.im)
          to label %bb.db unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i156, !noalias !279

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i156: ; preds = %.noexc157
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef 384) #28, !noalias !279
  br label %.body158

bb.db:                                            ; preds = %.noexc157
  %i.ir = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr %i.il, ptr %i.ir, align 8, !tbaa !78, !alias.scope !279
  store ptr %i.ip, ptr %19, align 8, !tbaa !276, !alias.scope !279
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 216
  %i.it = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.dc unwind label %bb.dl     ; 0 uses

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN16OpenColorIO_v2_513CreateLut1DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut1DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0)
          to label %bb.dd unwind label %bb.dl

bb.dd:                                            ; preds = %bb.dc
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !78 ; 8 uses
  %.not.i.i160 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i160, label %bb.dq, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 4 uses
  %i.iw = load atomic i64, ptr %i.iv acquire, align 8 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 4294967297
  %i.iy = trunc i64 %i.iw to i32                  ; 2 uses
  br i1 %i.ix, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.iv, align 8, !tbaa !80
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  store i32 0, ptr %i.iz, align 4, !tbaa !81
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !22
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #26, !inline_history !264
  %i.jd = load ptr, ptr %i.iu, align 8, !tbaa !22
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #26, !inline_history !264
  br label %bb.dq

bb.dg:                                            ; preds = %bb.de
  %i.jg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i161 = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i.i161, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jh = add nsw i32 %i.iy, -1
  store i32 %i.jh, ptr %i.iv, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i162

bb.di:                                            ; preds = %bb.dg
  %i.ji = atomicrmw volatile add ptr %i.iv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i162

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i162: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i163 = phi i32 [ %i.iy, %bb.dh ], [ %i.ji, %bb.di ]
  %i.jj = icmp eq i32 %.0.i.i.i.i163, 1
  br i1 %i.jj, label %bb.dj, label %bb.dq, !prof !83

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i162
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #26
  br label %bb.dq

bb.dk:                                            ; preds = %bb.da
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.dl:                                            ; preds = %bb.dc, %bb.db
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  br label %.body158

.body158:                                         ; preds = %bb.dk, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i156, %bb.dl
  %.pn87 = phi { ptr, i32 } [ %i.jl, %bb.dl ], [ %i.jk, %bb.dk ], [ %i.iq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.gi

bb.dm:                                            ; preds = %bb.cv
  br i1 %i.ic, label %bb.dn, label %bb.dr
end_hunk_0
