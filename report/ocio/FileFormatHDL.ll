Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatHDL?download=true
inline.NumInlined: 1728
inline.NumDeleted: 605
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %7, align 8, !tbaa !184
  %i.bj = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.n unwind label %bb.q       ; 4 uses

bb.n:                                             ; preds = %bb.m
  br i1 %i.bj, label %bb.r, label %bb.bj

bb.o:                                             ; preds = %.noexc.i, %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

bb.p:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.q:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit329

bb.r:                                             ; preds = %bb.n
  %i.bn = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.bo = icmp ne i64 %i.bn, 0                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !42
  br i1 %i.bo, label %bb.s, label %.thread517

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.bp = mul nsw i32 %spec.store.select5, 3
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %.not466 = icmp eq i32 %spec.store.select5, 0
  br i1 %.not466, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = icmp slt i32 %spec.store.select5, 0
  br i1 %i.br, label %bb.v, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc334 unwind label %bb.ag

.noexc334:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.u
  %i.bs = shl nuw nsw i64 %i.bq, 2
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #27
          to label %.noexc335 unwind label %bb.ag ; 4 uses

.noexc335:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !42
  %i.bu = add nsw i64 %i.bq, -1                   ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.noexc162, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc335
  %i.bw = getelementptr i8, ptr %i.bt, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bw, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !42
  br label %.noexc162

.noexc162:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc335
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bq
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %.noexc162, %bb.t
  %.sroa.0396.3 = phi ptr [ %i.bt, %.noexc162 ], [ null, %bb.t ] ; 5 uses
  %.sroa.17.3 = phi ptr [ %i.bx, %.noexc162 ], [ null, %bb.t ] ; 3 uses
  %i.by = load float, ptr %i.b, align 4, !tbaa !42
  %i.bz = load float, ptr %i.c, align 4, !tbaa !42
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %.sroa.0396.3, i32 noundef %spec.store.select5, i32 noundef 3, float noundef %i.by, float noundef %i.bz)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ca = zext nneg i32 %spec.store.select5 to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.sroa.0396.3, i64 noundef %i.ca, i64 noundef 1, i64 noundef 3)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN16OpenColorIO_v2_525GetInputToShaperProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.87") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.cb = load ptr, ptr %9, align 8, !tbaa !184
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !79 ; 8 uses
  %.not.i.i163 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i163, label %.thread414, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ce, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !45
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !172
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26, !inline_history !172
  br label %.thread414

bb.ac:                                            ; preds = %bb.aa
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.ad ], [ %i.cr, %bb.ae ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.af, label %.thread414, !prof !80

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #26
  br label %.thread414

.thread414:                                       ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.thread517

bb.ag:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.v, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.s
  %.sroa.0396.0 = phi ptr [ %.sroa.0396.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ null, %bb.v ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ null, %bb.s ]
  %.sroa.17.0 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ null, %bb.v ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ null, %bb.s ]
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327

bb.ah:                                            ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread

bb.ai:                                            ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.aj ], [ %i.cv, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread

_ZNSt6vectorIfSaIfEED2Ev.exit327.thread:          ; preds = %bb.ah, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.cu, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.da

.thread517:                                       ; preds = %bb.r, %.thread414
  %.sroa.17.1429 = phi ptr [ %.sroa.17.3, %.thread414 ], [ null, %bb.r ] ; 3 uses
  %.sroa.0396.1422 = phi ptr [ %.sroa.0396.3, %.thread414 ], [ null, %bb.r ] ; 3 uses
  %.0121413420 = phi i32 [ 3, %.thread414 ], [ 2, %bb.r ]
  %i.cx = xor i1 %i.bo, true
  %i.cy = mul nsw i32 %spec.store.select, %spec.store.select
  %i.cz = mul nsw i32 %i.cy, %spec.store.select   ; 4 uses
  %i.da = mul nsw i32 %i.cz, 3
  %i.db = sext i32 %i.da to i64                   ; 3 uses
  %i.dc = icmp ne i32 %i.cz, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp slt i32 %i.cz, 0
  br i1 %i.dd, label %bb.al, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342

bb.al:                                            ; preds = %.thread517
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc350 unwind label %bb.ap

.noexc350:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342: ; preds = %.thread517
  %i.de = shl nuw nsw i64 %i.db, 2
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #27
          to label %.noexc351 unwind label %bb.ap ; 8 uses

.noexc351:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342
  store float 0.000000e+00, ptr %i.df, align 4, !tbaa !42
  %14 = add nsw i64 %i.db, -1                     ; 2 uses
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.noexc166, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i344

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i344: ; preds = %.noexc351
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.idx.i.i.i.i.i31.i345 = shl nuw nsw i64 %14, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dg, i8 0, i64 %.idx.i.i.i.i.i31.i345, i1 false), !tbaa !42
  br label %.noexc166

.noexc166:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i344, %.noexc351
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.db ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.df, i32 noundef %spec.store.select, i32 noundef 3, i32 noundef 0)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %.noexc166
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.dh = zext nneg i32 %i.cz to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.df, i64 noundef %i.dh, i64 noundef 1, i64 noundef 3)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br i1 %i.bo, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN16OpenColorIO_v2_526GetShaperToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.87") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172 unwind label %bb.ar

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172: ; preds = %bb.ao
  %i.di = load ptr, ptr %12, align 8, !tbaa !184  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !79 ; 2 uses
  store ptr %i.di, ptr %11, align 8, !tbaa !185
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

bb.ap:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342, %bb.al, %.noexc166
  %.sroa.0383.0 = phi ptr [ %i.df, %.noexc166 ], [ null, %bb.al ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342 ]
  %.sroa.19.0 = phi ptr [ %16, %.noexc166 ], [ null, %bb.al ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i342 ]
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

bb.aq:                                            ; preds = %bb.am
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread

bb.ar:                                            ; preds = %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bi

bb.as:                                            ; preds = %bb.an
  %i.dp = load ptr, ptr %7, align 8, !tbaa !184   ; 2 uses
  store ptr %i.dp, ptr %11, align 8, !tbaa !184
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i173 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i173, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i174 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i174, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.at
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !78
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.at
  %i.dx = atomicrmw volatile add ptr %i.dt, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !79 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dy, align 8, !tbaa !44
  %i.ec = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.ec, align 4, !tbaa !45
  %i.ed = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !19
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !173
  %i.eg = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !19
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26, !inline_history !173
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i9.i.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i9.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ek = add nsw i32 %i.eb, -1
  store i32 %i.ek, ptr %i.dy, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.el = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i = phi i32 [ %i.eb, %bb.ax ], [ %i.el, %bb.ay ]
  %i.em = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.em, label %bb.az, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !80

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.av, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !79
  %.pre = load ptr, ptr %11, align 8, !tbaa !184
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.as, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172
  %i.en = phi ptr [ %i.ds, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ null, %bb.as ], [ %i.dk, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172 ] ; 8 uses
  %i.eo = phi ptr [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %i.dp, %bb.as ], [ %i.di, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit172 ]
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %.not.i.i175 = icmp eq ptr %i.en, null
  br i1 %.not.i.i175, label %.thread520, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 4294967297
  %i.es = trunc i64 %i.eq to i32                  ; 2 uses
  br i1 %i.er, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.ep, align 8, !tbaa !44
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.et, align 4, !tbaa !45
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #26, !inline_history !172
  %i.ex = load ptr, ptr %i.en, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #26, !inline_history !172
  br label %.thread520

bb.bd:                                            ; preds = %bb.bb
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i176 = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i176, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = add nsw i32 %i.es, -1
  store i32 %i.fb, ptr %i.ep, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177

bb.bf:                                            ; preds = %bb.bd
  %i.fc = atomicrmw volatile add ptr %i.ep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i178 = phi i32 [ %i.es, %bb.be ], [ %i.fc, %bb.bf ]
  %i.fd = icmp eq i32 %.0.i.i.i.i178, 1
  br i1 %i.fd, label %bb.bg, label %.thread520, !prof !80

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #26
  br label %.thread520

.thread520:                                       ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i177, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bv

bb.bh:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512CPUProcessorEEaSERKS3_.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ar
  %.pn141 = phi { ptr, i32 } [ %i.fe, %bb.bh ], [ %i.do, %bb.ar ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread

_ZNSt6vectorIfSaIfEED2Ev.exit325.thread:          ; preds = %bb.aq, %bb.bi
  %.pn141.pn = phi { ptr, i32 } [ %.pn141, %bb.bi ], [ %i.dn, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cz

bb.bj:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !42
  %i.ff = mul nsw i32 %spec.store.select1, 3
  %i.fg = sext i32 %i.ff to i64                   ; 3 uses
  %.not467 = icmp eq i32 %spec.store.select1, 0
  br i1 %.not467, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit183, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fh = icmp slt i32 %spec.store.select1, 0
  br i1 %i.fh, label %bb.bl, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.94) #29
          to label %.noexc367 unwind label %bb.bo

.noexc367:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359: ; preds = %bb.bk
  %i.fi = shl nuw nsw i64 %i.fg, 2
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #27
          to label %.noexc368 unwind label %bb.bo ; 4 uses

.noexc368:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !42
  %i.fk = add nsw i64 %i.fg, -1                   ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.noexc182, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i361

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i361: ; preds = %.noexc368
  %i.fm = getelementptr i8, ptr %i.fj, i64 4
  %.idx.i.i.i.i.i31.i362 = shl nuw nsw i64 %i.fk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fm, i8 0, i64 %.idx.i.i.i.i.i31.i362, i1 false), !tbaa !42
  br label %.noexc182

.noexc182:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i361, %.noexc368
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fg
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit183

_ZNSt6vectorIfSaIfEE6resizeEm.exit183:            ; preds = %.noexc182, %bb.bj
  %.sroa.0.3 = phi ptr [ %i.fj, %.noexc182 ], [ null, %bb.bj ] ; 8 uses
  %.sroa.20.3 = phi ptr [ %i.fn, %.noexc182 ], [ null, %bb.bj ] ; 5 uses
  %i.fo = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit183
  invoke void @_ZN16OpenColorIO_v2_514GetShaperRangeERKNS_5BakerERfS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fq = load float, ptr %i.b, align 4, !tbaa !42
  %i.fr = load float, ptr %i.c, align 4, !tbaa !42
  invoke void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef %.sroa.0.3, i32 noundef %spec.store.select1, i32 noundef 3, float noundef %i.fq, float noundef %i.fr)
          to label %bb.bq unwind label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359, %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge, %.critedge545, %._crit_edge, %bb.cj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge, %bb.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %_ZNSolsEf.exit232, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228, %_ZNSolsEf.exit226, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222, %_ZNSolsEf.exit220, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218, %_ZNSolsEf.exit216, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %_ZNSolsEf.exit210, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201, %bb.bz, %bb.by, %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %bb.bw, %bb.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185, %bb.bp, %bb.bn, %bb.bm
  %.sroa.19.1543.a = phi ptr [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.19.1541.a, %.critedge545 ], [ %.sroa.19.1541.a, %._crit_edge ], [ %.sroa.19.1541.a, %bb.cj ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.19.1541.a, %bb.ch ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.19.1541.a, %bb.cg ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.19.1541.a, %bb.cf ], [ %.sroa.19.1541.a, %bb.ce ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.19.1541.a, %bb.cd ], [ %.sroa.19.1541.a, %bb.cc ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.19.1541.a, %bb.cb ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.19.1541.a, %bb.ca ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit232 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit226 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit220 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit216 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit210 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.19.1541.a, %_ZNSolsEf.exit ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.19.1541.a, %bb.bz ], [ %.sroa.19.1541.a, %bb.by ], [ %.sroa.19.1541.a, %bb.bx ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.19.1541.a, %bb.bw ], [ %.sroa.19.1541.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.19.1541.a, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0383.1539.a = phi ptr [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0383.1537.a, %.critedge545 ], [ %.sroa.0383.1537.a, %._crit_edge ], [ %.sroa.0383.1537.a, %bb.cj ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0383.1537.a, %bb.ch ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0383.1537.a, %bb.cg ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0383.1537.a, %bb.cf ], [ %.sroa.0383.1537.a, %bb.ce ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0383.1537.a, %bb.cd ], [ %.sroa.0383.1537.a, %bb.cc ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0383.1537.a, %bb.cb ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0383.1537.a, %bb.ca ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit232 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit226 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit220 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit216 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit210 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0383.1537.a, %_ZNSolsEf.exit ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0383.1537.a, %bb.bz ], [ %.sroa.0383.1537.a, %bb.by ], [ %.sroa.0383.1537.a, %bb.bx ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0383.1537.a, %bb.bw ], [ %.sroa.0383.1537.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0383.1537.a, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0396.1421534.a = phi ptr [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0396.1421532.a, %.critedge545 ], [ %.sroa.0396.1421532.a, %._crit_edge ], [ %.sroa.0396.1421532.a, %bb.cj ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0396.1421532.a, %bb.ch ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0396.1421532.a, %bb.cg ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0396.1421532.a, %bb.cf ], [ %.sroa.0396.1421532.a, %bb.ce ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0396.1421532.a, %bb.cd ], [ %.sroa.0396.1421532.a, %bb.cc ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0396.1421532.a, %bb.cb ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0396.1421532.a, %bb.ca ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit232 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit226 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit220 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit216 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit210 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0396.1421532.a, %_ZNSolsEf.exit ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0396.1421532.a, %bb.bz ], [ %.sroa.0396.1421532.a, %bb.by ], [ %.sroa.0396.1421532.a, %bb.bx ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0396.1421532.a, %bb.bw ], [ %.sroa.0396.1421532.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0396.1421532.a, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.17.1428530.a = phi ptr [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.17.1428528.a, %.critedge545 ], [ %.sroa.17.1428528.a, %._crit_edge ], [ %.sroa.17.1428528.a, %bb.cj ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.17.1428528.a, %bb.ch ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.17.1428528.a, %bb.cg ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.17.1428528.a, %bb.cf ], [ %.sroa.17.1428528.a, %bb.ce ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.17.1428528.a, %bb.cd ], [ %.sroa.17.1428528.a, %bb.cc ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.17.1428528.a, %bb.cb ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.17.1428528.a, %bb.ca ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit232 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit226 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit220 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit216 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit210 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.17.1428528.a, %_ZNSolsEf.exit ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.17.1428528.a, %bb.bz ], [ %.sroa.17.1428528.a, %bb.by ], [ %.sroa.17.1428528.a, %bb.bx ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.17.1428528.a, %bb.bw ], [ %.sroa.17.1428528.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.17.1428528.a, %bb.bv ], [ null, %bb.bp ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.0.1, %.critedge545 ], [ %.sroa.0.1, %._crit_edge ], [ %.sroa.0.1, %bb.cj ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.0.1, %bb.ch ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.0.1, %bb.cg ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.0.1, %bb.cf ], [ %.sroa.0.1, %bb.ce ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.0.1, %bb.cd ], [ %.sroa.0.1, %bb.cc ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.0.1, %bb.cb ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.0.1, %bb.ca ], [ %.sroa.0.1, %_ZNSolsEf.exit232 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.0.1, %_ZNSolsEf.exit226 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.0.1, %_ZNSolsEf.exit220 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.0.1, %_ZNSolsEf.exit216 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.0.1, %_ZNSolsEf.exit210 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.0.1, %_ZNSolsEf.exit ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.0.1, %bb.bz ], [ %.sroa.0.1, %bb.by ], [ %.sroa.0.1, %bb.bx ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.0.1, %bb.bw ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.0.1, %bb.bv ], [ %.sroa.0.3, %bb.bp ], [ %.sroa.0.3, %bb.bn ], [ %.sroa.0.3, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %.sroa.20.0 = phi ptr [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282._crit_edge ], [ %.sroa.20.1, %.critedge545 ], [ %.sroa.20.1, %._crit_edge ], [ %.sroa.20.1, %bb.cj ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge ], [ %.sroa.20.1, %bb.ch ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 ], [ %.sroa.20.1, %bb.cg ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 ], [ %.sroa.20.1, %bb.cf ], [ %.sroa.20.1, %bb.ce ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ %.sroa.20.1, %bb.cd ], [ %.sroa.20.1, %bb.cc ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 ], [ %.sroa.20.1, %bb.cb ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 ], [ %.sroa.20.1, %bb.ca ], [ %.sroa.20.1, %_ZNSolsEf.exit232 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 ], [ %.sroa.20.1, %_ZNSolsEf.exit226 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 ], [ %.sroa.20.1, %_ZNSolsEf.exit220 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ %.sroa.20.1, %_ZNSolsEf.exit216 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ %.sroa.20.1, %_ZNSolsEf.exit210 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 ], [ %.sroa.20.1, %_ZNSolsEf.exit ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 ], [ %.sroa.20.1, %bb.bz ], [ %.sroa.20.1, %bb.by ], [ %.sroa.20.1, %bb.bx ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %.sroa.20.1, %bb.bw ], [ %.sroa.20.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %.sroa.20.1, %bb.bv ], [ %.sroa.20.3, %bb.bp ], [ %.sroa.20.3, %bb.bn ], [ %.sroa.20.3, %bb.bm ], [ null, %bb.bl ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i359 ]
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bp:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit183
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii(ptr noundef nonnull %.sroa.0.3, i32 noundef %spec.store.select1, i32 noundef 3)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ft = zext nneg i32 %spec.store.select1 to i64
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %.sroa.0.3, i64 noundef %i.ft, i64 noundef 1, i64 noundef 3)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.fu = load ptr, ptr %7, align 8, !tbaa !184
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.thread432

bb.bu:                                            ; preds = %bb.br
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %.thread432

.thread432:                                       ; preds = %bb.bt, %bb.bu
  %.pn144 = phi { ptr, i32 } [ %i.fw, %bb.bu ], [ %i.fv, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.cy

bb.bv:                                            ; preds = %.thread520, %bb.bs
  %.sroa.19.1541.a = phi ptr [ %16, %.thread520 ], [ null, %bb.bs ] ; 56 uses
  %.sroa.0383.1537.a = phi ptr [ %i.df, %.thread520 ], [ null, %bb.bs ] ; 59 uses
  %.0121413419536 = phi i32 [ %.0121413420, %.thread520 ], [ 1, %bb.bs ]
  %i.fx = phi i1 [ %i.cx, %.thread520 ], [ false, %bb.bs ] ; 3 uses
  %i.fy = phi i1 [ %i.bo, %.thread520 ], [ false, %bb.bs ] ; 3 uses
  %.sroa.0396.1421532.a = phi ptr [ %.sroa.0396.1422, %.thread520 ], [ null, %bb.bs ] ; 59 uses
  %.sroa.17.1428528.a = phi ptr [ %.sroa.17.1429, %.thread520 ], [ null, %bb.bs ] ; 56 uses
  %.sroa.0.1 = phi ptr [ null, %.thread520 ], [ %.sroa.0.3, %bb.bs ] ; 61 uses
  %.sroa.20.1 = phi ptr [ null, %.thread520 ], [ %.sroa.20.3, %bb.bs ] ; 56 uses
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.70, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185: ; preds = %bb.bv
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0121413419536)
          to label %bb.bw unwind label %bb.bo

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187: ; preds = %bb.bw
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.72, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.73, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.74, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
  br i1 %i.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, label %bb.bx

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.75, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  br i1 %i.fx, label %bb.by, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.76, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %bb.by, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  br i1 %i.fy, label %bb.bz, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.77, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201: ; preds = %bb.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.78, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.gl = load float, ptr %i.b, align 4, !tbaa !42
  %i.gm = fpext float %i.gl to double
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.gm)
          to label %_ZNSolsEf.exit unwind label %bb.bo ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.79, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208: ; preds = %_ZNSolsEf.exit
  %i.gp = load float, ptr %i.c, align 4, !tbaa !42
  %i.gq = fpext float %i.gp to double
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, double noundef %i.gq)
          to label %_ZNSolsEf.exit210 unwind label %bb.bo

_ZNSolsEf.exit210:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212: ; preds = %_ZNSolsEf.exit210
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.80, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %_ZNSolsEf.exit216 unwind label %bb.bo ; 2 uses

_ZNSolsEf.exit216:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull @.str.79, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218: ; preds = %_ZNSolsEf.exit216
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, double noundef 1.000000e+00)
          to label %_ZNSolsEf.exit220 unwind label %bb.bo

_ZNSolsEf.exit220:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222: ; preds = %_ZNSolsEf.exit220
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.81, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %_ZNSolsEf.exit226 unwind label %bb.bo

_ZNSolsEf.exit226:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228: ; preds = %_ZNSolsEf.exit226
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.82, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 1.000000e+00)
          to label %_ZNSolsEf.exit232 unwind label %bb.bo

_ZNSolsEf.exit232:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234: ; preds = %_ZNSolsEf.exit232
  br i1 %i.fy, label %bb.ca, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.83, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236: ; preds = %bb.ca
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select)
          to label %bb.cb unwind label %bb.bo     ; 2 uses

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, ptr noundef nonnull @.str.79, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %bb.cb
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, i32 noundef %spec.store.select5)
          to label %bb.cc unwind label %bb.bo

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240: ; preds = %bb.cc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  br i1 %i.fx, label %bb.cd, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.83, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242: ; preds = %bb.cd
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select)
          to label %bb.ce unwind label %bb.bo

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244: ; preds = %bb.ce, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240
  br i1 %i.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248, label %bb.cf

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.83, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246: ; preds = %bb.cf
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %spec.store.select1)
          to label %bb.cg unwind label %bb.bo

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248: ; preds = %bb.cg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.84, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248
  br i1 %i.fy, label %bb.ch, label %.critedge

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.85, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252.preheader unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252.preheader: ; preds = %bb.ch
  %i.hr = icmp sgt i32 %spec.store.select5, 0
  br i1 %i.hr, label %.lr.ph.preheader, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252.preheader
  %wide.trip.count = zext nneg i32 %spec.store.select5 to i64
  br label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo:bb.a
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !42
  %i.jo = fpext float %i.jn to double
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.jo)
          to label %_ZNSolsEf.exit298 unwind label %bb.cm

_ZNSolsEf.exit298:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300 unwind label %bb.cm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300: ; preds = %_ZNSolsEf.exit298
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge, label %.lr.ph474, !llvm.loop !177

bb.cm:                                            ; preds = %_ZNSolsEf.exit298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296, %.lr.ph474
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.93, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.preheader unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294
  br i1 %i.iz, label %.lr.ph476.preheader, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge

.lr.ph476.preheader:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.preheader
  %wide.trip.count496 = zext nneg i32 %spec.store.select1 to i64
  br label %.lr.ph476

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302.preheader
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.87, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304 unwind label %bb.bo ; 0 uses

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310
  %indvars.iv493 = phi i64 [ 0, %.lr.ph476.preheader ], [ %indvars.iv.next494, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310 ] ; 2 uses
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.86, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %bb.cn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %.lr.ph476
  %.idx516 = mul nuw nsw i64 %indvars.iv493, 12
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.idx516
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !42
  %i.jy = fpext float %i.jx to double
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.jy)
          to label %_ZNSolsEf.exit308 unwind label %bb.cn

_ZNSolsEf.exit308:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310 unwind label %bb.cn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310: ; preds = %_ZNSolsEf.exit308
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %exitcond497.not = icmp eq i64 %indvars.iv.next494, %wide.trip.count496
  br i1 %exitcond497.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge, label %.lr.ph476, !llvm.loop !178

bb.cn:                                            ; preds = %_ZNSolsEf.exit308, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306, %.lr.ph476
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304: ; preds = %._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302._crit_edge
  %.not.i.i.i311 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i311, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %i.kc = ptrtoint ptr %.sroa.20.1 to i64
  %i.kd = ptrtoint ptr %.sroa.0.1 to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ke) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304, %bb.co
  %.not.i.i.i312 = icmp eq ptr %.sroa.0383.1537.a, null
  br i1 %.not.i.i.i312, label %_ZNSt6vectorIfSaIfEED2Ev.exit313, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.kf = ptrtoint ptr %.sroa.19.1541.a to i64
  %i.kg = ptrtoint ptr %.sroa.0383.1537.a to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.1537.a, i64 noundef %i.kh) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit313

_ZNSt6vectorIfSaIfEED2Ev.exit313:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i.i314 = icmp eq ptr %.sroa.0396.1421532.a, null
  br i1 %.not.i.i.i314, label %_ZNSt6vectorIfSaIfEED2Ev.exit315, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313
  %i.ki = ptrtoint ptr %.sroa.17.1428528.a to i64
  %i.kj = ptrtoint ptr %.sroa.0396.1421532.a to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0396.1421532.a, i64 noundef %i.kk) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit315

_ZNSt6vectorIfSaIfEED2Ev.exit315:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313, %bb.cq
  %i.kl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !79 ; 8 uses
  %.not.i.i316 = icmp eq ptr %i.km, null
  br i1 %.not.i.i316, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit315
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 4 uses
  %i.ko = load atomic i64, ptr %i.kn acquire, align 8 ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 4294967297
  %i.kq = trunc i64 %i.ko to i32                  ; 2 uses
  br i1 %i.kp, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.kn, align 8, !tbaa !44
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  store i32 0, ptr %i.kr, align 4, !tbaa !45
  %i.ks = load ptr, ptr %i.km, align 8, !tbaa !19
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.km) #26, !inline_history !172
  %i.kv = load ptr, ptr %i.km, align 8, !tbaa !19
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %i.km) #26, !inline_history !172
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320

bb.ct:                                            ; preds = %bb.cr
  %i.ky = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i317 = icmp eq i8 %i.ky, 0
  br i1 %.not.i.i.i317, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kz = add nsw i32 %i.kq, -1
  store i32 %i.kz, ptr %i.kn, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318

bb.cv:                                            ; preds = %bb.ct
  %i.la = atomicrmw volatile add ptr %i.kn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i319 = phi i32 [ %i.kq, %bb.cu ], [ %i.la, %bb.cv ]
  %i.lb = icmp eq i32 %.0.i.i.i.i319, 1
  br i1 %i.lb, label %bb.cw, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, !prof !80

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.km) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit315, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.lc = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.aw
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320
  %i.le = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.cx:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ci, %bb.bo
  %.sroa.19.1542 = phi ptr [ %.sroa.19.1541.a, %bb.ci ], [ %.sroa.19.1541.a, %bb.ck ], [ %.sroa.19.1541.a, %bb.cl ], [ %.sroa.19.1541.a, %bb.cm ], [ %.sroa.19.1541.a, %bb.cn ], [ %.sroa.19.1543.a, %bb.bo ] ; 2 uses
  %.sroa.0383.1538 = phi ptr [ %.sroa.0383.1537.a, %bb.ci ], [ %.sroa.0383.1537.a, %bb.ck ], [ %.sroa.0383.1537.a, %bb.cl ], [ %.sroa.0383.1537.a, %bb.cm ], [ %.sroa.0383.1537.a, %bb.cn ], [ %.sroa.0383.1539.a, %bb.bo ] ; 2 uses
  %.sroa.0396.1421533 = phi ptr [ %.sroa.0396.1421532.a, %bb.ci ], [ %.sroa.0396.1421532.a, %bb.ck ], [ %.sroa.0396.1421532.a, %bb.cl ], [ %.sroa.0396.1421532.a, %bb.cm ], [ %.sroa.0396.1421532.a, %bb.cn ], [ %.sroa.0396.1421534.a, %bb.bo ] ; 2 uses
  %.sroa.17.1428529 = phi ptr [ %.sroa.17.1428528.a, %bb.ci ], [ %.sroa.17.1428528.a, %bb.ck ], [ %.sroa.17.1428528.a, %bb.cl ], [ %.sroa.17.1428528.a, %bb.cm ], [ %.sroa.17.1428528.a, %bb.cn ], [ %.sroa.17.1428530.a, %bb.bo ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.ci ], [ %.sroa.0.1, %bb.ck ], [ %.sroa.0.1, %bb.cl ], [ %.sroa.0.1, %bb.cm ], [ %.sroa.0.1, %bb.cn ], [ %.sroa.0.0, %bb.bo ] ; 2 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %bb.ci ], [ %.sroa.20.1, %bb.ck ], [ %.sroa.20.1, %bb.cl ], [ %.sroa.20.1, %bb.cm ], [ %.sroa.20.1, %bb.cn ], [ %.sroa.20.0, %bb.bo ]
  %.pn146 = phi { ptr, i32 } [ %i.ia, %bb.ci ], [ %i.ix, %bb.ck ], [ %i.jh, %bb.cl ], [ %i.jr, %bb.cm ], [ %i.kb, %bb.cn ], [ %i.fs, %bb.bo ] ; 2 uses
  %.not.i.i.i324 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i324, label %_ZNSt6vectorIfSaIfEED2Ev.exit325, label %bb.cy

bb.cy:                                            ; preds = %.thread432, %bb.cx
  %.sroa.19.1544 = phi ptr [ null, %.thread432 ], [ %.sroa.19.1542, %bb.cx ]
  %.sroa.0383.1540 = phi ptr [ null, %.thread432 ], [ %.sroa.0383.1538, %bb.cx ]
  %.sroa.0396.1421535 = phi ptr [ null, %.thread432 ], [ %.sroa.0396.1421533, %bb.cx ]
  %.sroa.17.1428531 = phi ptr [ null, %.thread432 ], [ %.sroa.17.1428529, %bb.cx ]
  %.pn146442 = phi { ptr, i32 } [ %.pn144, %.thread432 ], [ %.pn146, %bb.cx ]
  %.sroa.20.2441 = phi ptr [ %.sroa.20.3, %.thread432 ], [ %.sroa.20.2, %bb.cx ]
  %.sroa.0.2440 = phi ptr [ %.sroa.0.3, %.thread432 ], [ %.sroa.0.2, %bb.cx ] ; 2 uses
  %i.lg = ptrtoint ptr %.sroa.20.2441 to i64
  %i.lh = ptrtoint ptr %.sroa.0.2440 to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2440, i64 noundef %i.li) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

_ZNSt6vectorIfSaIfEED2Ev.exit325:                 ; preds = %bb.cy, %bb.cx, %bb.ap
  %.sroa.17.1427 = phi ptr [ %.sroa.17.1429, %bb.ap ], [ %.sroa.17.1428531, %bb.cy ], [ %.sroa.17.1428529, %bb.cx ] ; 2 uses
  %.sroa.0396.1423 = phi ptr [ %.sroa.0396.1422, %bb.ap ], [ %.sroa.0396.1421535, %bb.cy ], [ %.sroa.0396.1421533, %bb.cx ] ; 2 uses
  %.sroa.0383.2 = phi ptr [ %.sroa.0383.0, %bb.ap ], [ %.sroa.0383.1540, %bb.cy ], [ %.sroa.0383.1538, %bb.cx ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.0, %bb.ap ], [ %.sroa.19.1544, %bb.cy ], [ %.sroa.19.1542, %bb.cx ]
  %.pn146.pn = phi { ptr, i32 } [ %i.dm, %bb.ap ], [ %.pn146442, %bb.cy ], [ %.pn146, %bb.cx ] ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %.sroa.0383.2, null
  br i1 %.not.i.i.i326, label %_ZNSt6vectorIfSaIfEED2Ev.exit327, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit325
  %.pn146.pn456 = phi { ptr, i32 } [ %.pn141.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.pn146.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %.sroa.19.2455 = phi ptr [ %16, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.sroa.19.2, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %.sroa.0383.2454 = phi ptr [ %i.df, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.sroa.0383.2, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ] ; 2 uses
  %.sroa.0396.1423452 = phi ptr [ %.sroa.0396.1422, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.sroa.0396.1423, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %.sroa.17.1427450 = phi ptr [ %.sroa.17.1429, %_ZNSt6vectorIfSaIfEED2Ev.exit325.thread ], [ %.sroa.17.1427, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %i.lj = ptrtoint ptr %.sroa.19.2455 to i64
  %i.lk = ptrtoint ptr %.sroa.0383.2454 to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.2454, i64 noundef %i.ll) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327

_ZNSt6vectorIfSaIfEED2Ev.exit327:                 ; preds = %bb.cz, %_ZNSt6vectorIfSaIfEED2Ev.exit325, %bb.ag
  %.sroa.0396.2 = phi ptr [ %.sroa.0396.0, %bb.ag ], [ %.sroa.0396.1423452, %bb.cz ], [ %.sroa.0396.1423, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ] ; 2 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.0, %bb.ag ], [ %.sroa.17.1427450, %bb.cz ], [ %.sroa.17.1427, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ]
  %.pn146.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.ag ], [ %.pn146.pn456, %bb.cz ], [ %.pn146.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i.i328 = icmp eq ptr %.sroa.0396.2, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIfSaIfEED2Ev.exit329, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit327
  %.pn146.pn.pn464 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread ], [ %.pn146.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit327 ]
  %.sroa.17.2463 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread ], [ %.sroa.17.2, %_ZNSt6vectorIfSaIfEED2Ev.exit327 ]
  %.sroa.0396.2462 = phi ptr [ %.sroa.0396.3, %_ZNSt6vectorIfSaIfEED2Ev.exit327.thread ], [ %.sroa.0396.2, %_ZNSt6vectorIfSaIfEED2Ev.exit327 ] ; 2 uses
  %i.lm = ptrtoint ptr %.sroa.17.2463 to i64
  %i.ln = ptrtoint ptr %.sroa.0396.2462 to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0396.2462, i64 noundef %i.lo) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit329

_ZNSt6vectorIfSaIfEED2Ev.exit329:                 ; preds = %bb.da, %_ZNSt6vectorIfSaIfEED2Ev.exit327, %bb.q
  %.pn150 = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %.pn146.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit327 ], [ %.pn146.pn.pn464, %bb.da ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit329, %bb.p
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %_ZNSt6vectorIfSaIfEED2Ev.exit329 ], [ %i.bl, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.lp = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.aw
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %bb.db
  %i.lr = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330, %bb.o
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn150.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330 ], [ %.pn150.pn, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %bb.g
  %.pn154.pn.pn = phi { ptr, i32 } [ %.pn154.pn, %bb.g ], [ %.pn150.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ]
  resume { ptr, i32 } %.pn154.pn.pn

bb.dd:                                            ; preds = %bb.c
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 1 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %9 = alloca %"class.std::shared_ptr.7", align 8 ; 9 uses
  %10 = alloca %"class.std::shared_ptr.10", align 8 ; 8 uses
  %.val = load ptr, ptr %4, align 8, !tbaa !113   ; 2 uses
  %i.b = getelementptr i8, ptr %4, i64 8
  %.val57 = load ptr, ptr %i.b, align 8           ; 13 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_510CachedFileE, ptr nonnull @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_113CachedFileHDLE, i64 0) #26, !noalias !191 ; 14 uses
  %.not.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %.val57, null     ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val57, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !191
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.e, align 4, !tbaa !78, !noalias !191
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !78, !noalias !191
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !191 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %.not115 = icmp eq ptr %i.m, null
  br i1 %.not115, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.r

_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit: ; preds = %bb.b, %bb.a, %bb.h
  %.sroa.24.0105 = phi ptr [ %.val57, %bb.h ], [ null, %bb.a ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.95, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.o = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %8, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %i.p)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
          to label %bb.bg unwind label %bb.n

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_113CachedFileHDLENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !31     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.x = load i64, ptr %i.v, align 8, !tbaa !26
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.0, label %bb.o, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br i1 %.0, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn108 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn108, %bb.o ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %bb.m ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bf

bb.r:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %5, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.ad = invoke noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef %6, i32 noundef %i.ac)
          to label %bb.s unwind label %bb.x       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ae = invoke noundef i32 @_ZNK16OpenColorIO_v2_513FileTransform16getInterpolationEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.t unwind label %bb.y       ; 3 uses

end_hunk_1
