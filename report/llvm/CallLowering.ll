Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CallLowering?download=true
inline.NumInlined: 2502
inline.NumDeleted: 930
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm12CallLowering9lowerCallERNS_16MachineIRBuilderERKNS_8CallBaseENS_8ArrayRefINS_8RegisterEEENS6_IS8_EES7_St8optionalINS0_11PtrAuthInfoEES7_St8functionIFS7_vEE:bb.a
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %i.gj, ptr %.sroa.4167.0..sroa_idx, align 4, !tbaa !252
  store ptr null, ptr %i.e, align 8, !tbaa !270
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  store i32 10, ptr %i.a, align 8, !tbaa !252
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 0, ptr %.sroa.5161.0..sroa_idx, align 4, !tbaa !252
  store ptr null, ptr %i.e, align 8, !tbaa !270
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %.0, ptr %.sroa.7163.0..sroa_idx, align 8
  %.sroa.8164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i32 0, ptr %.sroa.8164.0..sroa_idx, align 8
  br label %bb.ab

bb.x:                                             ; preds = %_ZNK4llvm8CallBase25countOperandBundlesOfTypeEj.exit.thread
  %.off = add i8 %i.fy, -15
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 10, ptr %i.a, align 8, !tbaa !252
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 0, ptr %.sroa.5157.0..sroa_idx, align 4, !tbaa !252
  store ptr null, ptr %i.e, align 8, !tbaa !270
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i32 0, ptr %.sroa.8159.0..sroa_idx, align 8
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !271
  %.not.i.i95 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i95, label %bb.aa, label %_ZNKSt8functionIFN4llvm8RegisterEvEEclEv.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFN4llvm8RegisterEvEEclEv.exit:    ; preds = %bb.z
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !273
  %i.go = call i32 %i.gn(ptr noundef nonnull align 8 dereferenceable(32) %9) #17, !inline_history !275
  %.sroa.6155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6155.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !252
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %i.go, ptr %.sroa.4153.0..sroa_idx, align 4, !tbaa !252
  store ptr null, ptr %i.e, align 8, !tbaa !270
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %_ZNKSt8functionIFN4llvm8RegisterEvEEclEv.exit, %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %.sroa.0.0.copyload.i.i96 = load ptr, ptr %i.bq, align 8, !tbaa !8
  store ptr %.sroa.0.0.copyload.i.i96, ptr %13, align 8
  %i.gp = call ptr @_ZNK4llvm13AttributeList11getRetAttrsEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  call fastcc void @_ZL19addFlagsFromAttrSetRN4llvm3ISD10ArgFlagsTyENS_12AttributeSetE(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr %i.gp)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.gq = load ptr, ptr %i.cv, align 8, !tbaa !11 ; 4 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i97, label %_ZNK4llvm12CallLowering22getAttributesForReturnERKNS_8CallBaseE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !18
  %i.gs = icmp eq i8 %i.gr, 14
  br i1 %i.gs, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i102, label %_ZNK4llvm12CallLowering22getAttributesForReturnERKNS_8CallBaseE.exit

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i102: ; preds = %bb.ac
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !22
  %i.gv = load ptr, ptr %i.bh, align 8, !tbaa !27
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i103, label %_ZNK4llvm12CallLowering22getAttributesForReturnERKNS_8CallBaseE.exit

_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i103: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i102
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 128
  %.sroa.0.0.copyload.i5.i = load ptr, ptr %i.gx, align 8, !tbaa !8
  store ptr %.sroa.0.0.copyload.i5.i, ptr %14, align 8
  %i.gy = call ptr @_ZNK4llvm13AttributeList11getRetAttrsEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #17
  call fastcc void @_ZL19addFlagsFromAttrSetRN4llvm3ISD10ArgFlagsTyENS_12AttributeSetE(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr %i.gy)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %_ZNK4llvm12CallLowering22getAttributesForReturnERKNS_8CallBaseE.exit

_ZNK4llvm12CallLowering22getAttributesForReturnERKNS_8CallBaseE.exit: ; preds = %bb.ab, %bb.ac, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i102, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i103
  %i.gz = load <2 x i64>, ptr %12, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store <2 x i64> %i.gz, ptr %27, align 16
  store ptr %27, ptr %26, align 8, !tbaa !276
  %i.ha = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 1, ptr %i.ha, align 8, !tbaa !279
  call void @_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(156) %25, ptr %3, i64 %4, ptr noundef %i.bg, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.264") align 8 %26, ptr noundef null)
  %i.hb = load ptr, ptr %25, align 8, !tbaa !80
  store ptr %i.hb, ptr %i.f, align 8, !tbaa !80
  %i.hc = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.hd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_3ISD10ArgFlagsTyEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.hc) ; 0 uses
  %i.he = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 2 uses
  %i.hf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_8RegisterEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.he) ; 0 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %25, i64 120 ; 2 uses
  %i.hh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_8RegisterEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.hg) ; 0 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %25, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.hi, i64 12, i1 false)
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !81 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %25, i64 136
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i104, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4llvm12CallLowering22getAttributesForReturnERKNS_8CallBaseE.exit
  call void @free(ptr noundef %i.hj) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i104

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i104: ; preds = %bb.ad, %_ZNK4llvm12CallLowering22getAttributesForReturnERKNS_8CallBaseE.exit
  %i.hm = load ptr, ptr %i.he, align 8, !tbaa !81 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %25, i64 104
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i105, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i104
  call void @free(ptr noundef %i.hm) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i105

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i105: ; preds = %bb.ae, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i104
  %i.hp = load ptr, ptr %i.hc, align 8, !tbaa !81 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit106, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i105
  call void @free(ptr noundef %i.hp) #17
  br label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit106

_ZN4llvm12CallLowering7ArgInfoD2Ev.exit106:       ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i105, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  %i.hs = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load i32, ptr %i.ht, align 8
  %i.hv = and i32 %i.hu, 255
  %i.hw = icmp eq i32 %i.hv, 7
  br i1 %i.hw, label %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit106
  call void @_ZNK4llvm12CallLowering11setArgFlagsINS_8CallBaseEEEvRNS0_7ArgInfoEjRKNS_10DataLayoutERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %i.f, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(912) %i.ai, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.hx = call i16 @_ZNK4llvm13AttributeList15getRetAlignmentEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #17 ; 2 uses
  %i.hy = and i16 %i.hx, 256
  %.not.i107 = icmp eq i16 %i.hy, 0
  br i1 %.not.i107, label %bb.ah, label %_ZNK4llvm8CallBase11getRetAlignEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hz = load ptr, ptr %i.cv, align 8, !tbaa !11 ; 4 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i108, label %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !18
  %i.ib = icmp eq i8 %i.ia, 14
  br i1 %i.ib, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i109, label %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i109: ; preds = %bb.ai
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !22
  %i.ie = load ptr, ptr %i.bh, align 8, !tbaa !27
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %bb.aj, label %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread

bb.aj:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i109
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  %.sroa.0.0.copyload.i.i110 = load ptr, ptr %i.ig, align 8, !tbaa !8
  store ptr %.sroa.0.0.copyload.i.i110, ptr %11, align 8
  %i.ih = call i16 @_ZNK4llvm13AttributeList15getRetAlignmentEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.ii = and i16 %i.ih, 256
  %i.ij = icmp ne i16 %i.ii, 0
  br label %_ZNK4llvm8CallBase11getRetAlignEv.exit

_ZNK4llvm8CallBase11getRetAlignEv.exit:           ; preds = %bb.ag, %bb.aj
  %.sroa.3.1.i = phi i1 [ true, %bb.ag ], [ %i.ij, %bb.aj ]
  %.sroa.0.1.in.i = phi i16 [ %i.hx, %bb.ag ], [ %i.ih, %bb.aj ]
  %i.ik = and i16 %.sroa.0.1.in.i, 255            ; 2 uses
  %i.il = icmp ne i16 %i.ik, 0
  %or.cond192 = and i1 %.sroa.3.1.i, %i.il
  br i1 %or.cond192, label %bb.ak, label %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread

bb.ak:                                            ; preds = %_ZNK4llvm8CallBase11getRetAlignEv.exit
  %.sroa.06.0.copyload = load i32, ptr %3, align 4, !tbaa !249
  %i.im = call i32 @_ZN4llvm19MachineRegisterInfo20cloneVirtualRegisterENS_8RegisterENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.al, i32 %.sroa.06.0.copyload, ptr nonnull @.str.2, i64 0) #17 ; 2 uses
  %i.in = load ptr, ptr %i.k, align 8, !tbaa !81
  store i32 %i.im, ptr %i.in, align 4, !tbaa !249
  %i.io = zext nneg i16 %i.ik to i64
  br label %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread

_ZNK4llvm8CallBase11getRetAlignEv.exit.thread:    ; preds = %bb.ai, %bb.ah, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i109, %_ZNK4llvm8CallBase11getRetAlignEv.exit, %bb.ak, %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit106
  %.sroa.0149.1 = phi i32 [ 0, %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit106 ], [ %i.im, %bb.ak ], [ 0, %_ZNK4llvm8CallBase11getRetAlignEv.exit ], [ 0, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i109 ], [ 0, %bb.ah ], [ 0, %bb.ai ] ; 2 uses
  %.sroa.0148.1 = phi i64 [ 0, %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit106 ], [ %i.io, %bb.ak ], [ 0, %_ZNK4llvm8CallBase11getRetAlignEv.exit ], [ 0, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i109 ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  %i.ip = load i32, ptr %i.cf, align 4, !noalias !280
  %i.iq = icmp slt i32 %i.ip, 0
  br i1 %i.iq, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i117, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i111

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i117: ; preds = %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread
  %i.ir = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17, !noalias !280
  %i.is = extractvalue { ptr, i64 } %i.ir, 0      ; 2 uses
  %.pr.i.i118 = load i32, ptr %i.cf, align 4, !noalias !280
  %i.it = icmp slt i32 %.pr.i.i118, 0
  br i1 %i.it, label %bb.al, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i111

bb.al:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i117
  %i.iu = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17, !noalias !280 ; 2 uses
  %i.iv = extractvalue { ptr, i64 } %i.iu, 0
  %i.iw = extractvalue { ptr, i64 } %i.iu, 1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = ptrtoint ptr %i.ix to i64
  br label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i111

_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i111: ; preds = %bb.al, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i117, %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread
  %.0.i.i3.i.i112 = phi ptr [ %i.is, %bb.al ], [ %i.is, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i117 ], [ null, %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread ]
  %.0.i.i1.i.i113 = phi i64 [ %i.iy, %bb.al ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i117 ], [ 0, %_ZNK4llvm8CallBase11getRetAlignEv.exit.thread ]
  %i.iz = ptrtoint ptr %.0.i.i3.i.i112 to i64
  %i.ja = sub i64 %.0.i.i1.i.i113, %i.iz          ; 2 uses
  %i.jb = and i64 %i.ja, 68719476720
  %.not12.i = icmp eq i64 %i.jb, 0
  br i1 %.not12.i, label %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i111
  %i.jc = lshr exact i64 %i.ja, 4
  %i.jd = and i64 %i.jc, 4294967295
  br label %.critedge.i

bb.am:                                            ; preds = %.critedge.i
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %.not.i116 = icmp eq i64 %indvars.iv.next.i115, %i.jd
  br i1 %.not.i116, label %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread, label %.critedge.i, !llvm.loop !283

.critedge.i:                                      ; preds = %bb.am, %.critedge.preheader.i
  %indvars.iv.i114 = phi i64 [ 0, %.critedge.preheader.i ], [ %indvars.iv.next.i115, %bb.am ] ; 2 uses
  %i.je = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17, !noalias !284
  %i.jf = extractvalue { ptr, i64 } %i.je, 0
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %indvars.iv.i114 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !243, !noalias !287
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !249, !noalias !280
  %.not8.i = icmp eq i32 %i.jj, 16
  br i1 %.not8.i, label %bb.an, label %bb.am

bb.an:                                            ; preds = %.critedge.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !290, !noalias !287
  %i.jm = load i32, ptr %i.cf, align 4, !noalias !287
  %i.jn = call noundef zeroext i1 @_ZNK4llvm8CallBase14isIndirectCallEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17
  br i1 %i.jn, label %bb.ao, label %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.jo = and i32 %i.jm, 268435455
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = sub nsw i64 0, %i.jp
  %i.jr = getelementptr inbounds [32 x i8], ptr %2, i64 %i.jq
  %i.js = zext i32 %i.jl to i64
  %.idx6.i.i.i = shl nuw nsw i64 %i.js, 5
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.idx6.i.i.i
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !11
  store ptr %i.ju, ptr %i.ac, align 8, !tbaa !88
  br label %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread

_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread: ; preds = %bb.am, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i111, %bb.ao, %bb.an
  %i.jv = load i32, ptr %i.cf, align 4, !noalias !291
  %i.jw = icmp slt i32 %i.jv, 0
  br i1 %i.jw, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i133, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i119

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i133: ; preds = %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread
  %i.jx = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17, !noalias !291
  %i.jy = extractvalue { ptr, i64 } %i.jx, 0      ; 2 uses
  %.pr.i.i134 = load i32, ptr %i.cf, align 4, !noalias !291
  %i.jz = icmp slt i32 %.pr.i.i134, 0
  br i1 %i.jz, label %bb.ap, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i119

bb.ap:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i133
  %i.ka = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17, !noalias !291 ; 2 uses
  %i.kb = extractvalue { ptr, i64 } %i.ka, 0
  %i.kc = extractvalue { ptr, i64 } %i.ka, 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kc
  %i.ke = ptrtoint ptr %i.kd to i64
  br label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i119

_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i119: ; preds = %bb.ap, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i133, %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread
  %.0.i.i3.i.i120 = phi ptr [ %i.jy, %bb.ap ], [ %i.jy, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i133 ], [ null, %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread ]
  %.0.i.i1.i.i121 = phi i64 [ %i.ke, %bb.ap ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i133 ], [ 0, %_ZNK4llvm8CallBase16getOperandBundleEj.exit.thread ]
  %i.kf = ptrtoint ptr %.0.i.i3.i.i120 to i64
  %i.kg = sub i64 %.0.i.i1.i.i121, %i.kf          ; 2 uses
  %i.kh = and i64 %i.kg, 68719476720
  %.not12.i122 = icmp eq i64 %i.kh, 0
  br i1 %.not12.i122, label %_ZNK4llvm8CallBase16getOperandBundleEj.exit135.thread, label %.critedge.preheader.i123

.critedge.preheader.i123:                         ; preds = %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i119
  %i.ki = lshr exact i64 %i.kg, 4
  %i.kj = and i64 %i.ki, 4294967295
  br label %.critedge.i124

bb.aq:                                            ; preds = %.critedge.i124
  %indvars.iv.next.i127 = add nuw nsw i64 %indvars.iv.i125, 1 ; 2 uses
  %.not.i128 = icmp eq i64 %indvars.iv.next.i127, %i.kj
  br i1 %.not.i128, label %_ZNK4llvm8CallBase16getOperandBundleEj.exit135.thread, label %.critedge.i124, !llvm.loop !283

.critedge.i124:                                   ; preds = %bb.aq, %.critedge.preheader.i123
  %indvars.iv.i125 = phi i64 [ 0, %.critedge.preheader.i123 ], [ %indvars.iv.next.i127, %bb.aq ] ; 2 uses
  %i.kk = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17, !noalias !294
  %i.kl = extractvalue { ptr, i64 } %i.kk, 0
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %indvars.iv.i125 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !243, !noalias !297
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !249, !noalias !291
  %.not8.i126 = icmp eq i32 %i.kp, 18
  br i1 %.not8.i126, label %bb.ar, label %bb.aq

bb.ar:                                            ; preds = %.critedge.i124
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !290, !noalias !297
  %i.ks = zext i32 %i.kr to i64
  %i.kt = load i32, ptr %i.cf, align 4, !noalias !297
  %i.ku = and i32 %i.kt, 268435455
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = sub nsw i64 0, %i.kv
  %i.kx = getelementptr inbounds [32 x i8], ptr %2, i64 %i.kw
  %.idx6.i.i.i130 = shl nuw nsw i64 %i.ks, 5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.idx6.i.i.i130
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !11
  store ptr %i.kz, ptr %i.ae, align 8, !tbaa !90
  br label %_ZNK4llvm8CallBase16getOperandBundleEj.exit135.thread

_ZNK4llvm8CallBase16getOperandBundleEj.exit135.thread: ; preds = %bb.aq, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i119, %bb.ar
  %i.la = getelementptr inbounds nuw i8, ptr %19, i64 5344
  store ptr %2, ptr %i.la, align 8, !tbaa !300
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !301
  %.not.i136 = icmp eq i32 %i.lc, 0
  br i1 %.not.i136, label %_ZNK4llvm11Instruction11getMetadataEj.exit, label %bb.as

bb.as:                                            ; preds = %_ZNK4llvm8CallBase16getOperandBundleEj.exit135.thread
  %i.ld = call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 23) #19
  br label %_ZNK4llvm11Instruction11getMetadataEj.exit

_ZNK4llvm11Instruction11getMetadataEj.exit:       ; preds = %_ZNK4llvm8CallBase16getOperandBundleEj.exit135.thread, %bb.as
  %.0.i = phi ptr [ null, %_ZNK4llvm8CallBase16getOperandBundleEj.exit135.thread ], [ %i.ld, %bb.as ]
  %i.le = getelementptr inbounds nuw i8, ptr %19, i64 5352
  store ptr %.0.i, ptr %i.le, align 8, !tbaa !302
  store i32 %i.be, ptr %19, align 8, !tbaa !43
  store i32 %6, ptr %i.x, align 8, !tbaa !249
  %i.lf = getelementptr inbounds nuw i8, ptr %19, i64 5360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %19, i64 5340
  store i32 %8, ptr %i.lg, align 4, !tbaa !249
  %i.lh = call noundef zeroext i1 @_ZNK4llvm8CallBase14isMustTailCallEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #17
  %i.li = zext i1 %i.lh to i8
  store i8 %i.li, ptr %i.z, align 8, !tbaa !303
  %i.lj = getelementptr inbounds nuw i8, ptr %19, i64 5385
  store i8 %.1.lcssa, ptr %i.lj, align 1, !tbaa !304
  %i.lk = getelementptr inbounds nuw i8, ptr %19, i64 5387
  store i8 %i.bm, ptr %i.lk, align 1, !tbaa !305
  %i.ll = load ptr, ptr %0, align 8, !tbaa !224
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 72
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = call noundef zeroext i1 %i.ln(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(5424) %19) #17 ; 2 uses
  br i1 %i.lo, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZNK4llvm11Instruction11getMetadataEj.exit
  %i.lp = icmp eq i32 %.sroa.0149.1, 0
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 5386
  %i.lr = load i8, ptr %i.lq, align 2, !range !226
  %i.ls = trunc nuw i8 %i.lr to i1
  %or.cond = select i1 %i.lp, i1 true, i1 %i.ls
  br i1 %or.cond, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  %.sroa.05.0.copyload = load i32, ptr %3, align 4, !tbaa !249
  store i32 %.sroa.05.0.copyload, ptr %28, align 8, !tbaa !249
  %i.lt = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 1, ptr %i.lt, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  store i32 %.sroa.0149.1, ptr %29, align 8, !tbaa !249
  %i.lu = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 0, ptr %i.lu, align 8, !tbaa !306
  %i.lv = shl nuw i64 1, %.sroa.0148.1
  %i.lw = load ptr, ptr %1, align 8, !tbaa !224
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = call { ptr, ptr } %i.ly(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef 54, ptr nonnull align 8 dereferenceable(20) %28, i64 1, ptr nonnull align 8 dereferenceable(20) %29, i64 1, i64 0) #17, !inline_history !309 ; 2 uses
  %i.ma = extractvalue { ptr, ptr } %i.lz, 0
  %i.mb = extractvalue { ptr, ptr } %i.lz, 1
  %i.mc = and i64 %i.lv, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store i32 1, ptr %10, align 8, !alias.scope !310
  %i.md = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.md, align 8, !tbaa !313, !alias.scope !310
  %i.me = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.mc, ptr %i.me, align 8, !tbaa !252, !alias.scope !310
end_hunk_0
begin_hunk_1_@_ZNK4llvm12CallLowering9lowerCallERNS_16MachineIRBuilderERKNS_8CallBaseENS_8ArrayRefINS_8RegisterEEENS6_IS8_EES7_St8optionalINS0_11PtrAuthInfoEES7_St8functionIFS7_vEE:bb.a
  br i1 %i.my, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.mw) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i.i
  %i.mz = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -72
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !81 ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -56
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.na) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i.i: ; preds = %bb.az, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i.i
  %i.nd = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -152
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !81 ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.ne) #17
  br label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i.i

_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i.i:    ; preds = %bb.ba, %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.mq, %i.mu
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !315

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i: ; preds = %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !81
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorINS_12CallLowering11BaseArgInfoELj4EED2Ev.exit
  %i.nh = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i ], [ %i.mq, %_ZN4llvm11SmallVectorINS_12CallLowering11BaseArgInfoELj4EED2Ev.exit ] ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.u
  br i1 %i.ni, label %_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj32EED2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  call void @free(ptr noundef %i.nh) #17
  br label %_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj32EED2Ev.exit.i: ; preds = %bb.bb, %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  %i.nj = load ptr, ptr %i.o, align 8, !tbaa !81  ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.p
  br i1 %i.nk, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.nj) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i: ; preds = %bb.bc, %_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj32EED2Ev.exit.i
  %i.nl = load ptr, ptr %i.k, align 8, !tbaa !81  ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.l
  br i1 %i.nm, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i
  call void @free(ptr noundef %i.nl) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i: ; preds = %bb.bd, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i
  %i.nn = load ptr, ptr %i.g, align 8, !tbaa !81  ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.h
  br i1 %i.no, label %_ZN4llvm12CallLowering16CallLoweringInfoD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i
  call void @free(ptr noundef %i.nn) #17
  br label %_ZN4llvm12CallLowering16CallLoweringInfoD2Ev.exit

_ZN4llvm12CallLowering16CallLoweringInfoD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  ret i1 %i.lo
}

declare noundef zeroext i1 @_ZNK4llvm8CallBase10isTailCallEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm20isInTailCallPositionERKNS_8CallBaseERKNS_13TargetMachineEb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(1728), i1 noundef zeroext) local_unnamed_addr #3

declare ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12CallLowering13getReturnInfoEjPNS_4TypeENS_13AttributeListERNS_15SmallVectorImplINS0_11BaseArgInfoEEERKNS_10DataLayoutE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(912) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.llvm::AttributeList", align 8 ; 2 uses
  %7 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 4 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.351", align 8 ; 9 uses
  %9 = alloca %"class.llvm::TypeSize", align 8    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  store ptr %3, ptr %6, align 8
  %i.b = load ptr, ptr %2, align 8, !tbaa !316, !nonnull !218, !align !219 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.e, align 4, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !317
  store i64 0, ptr %9, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %.sroa.216.0..sroa_idx, align 8
  call void @_ZN4llvm15ComputeValueVTsERKNS_14TargetLoweringERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplINS_3EVTEEEPSA_PNS8_INS_8TypeSizeEEESD_(ptr noundef nonnull align 8 dereferenceable(518435) %i.g, ptr noundef nonnull align 8 dereferenceable(912) %5, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::TypeSize") align 8 %9) #17
  %i.h = call ptr @_ZNK4llvm13AttributeList13getAttributesEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #17
  call fastcc void @_ZL19addFlagsFromAttrSetRN4llvm3ISD10ArgFlagsTyENS_12AttributeSetE(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr %i.h)
  %i.i = load ptr, ptr %8, align 8, !tbaa !81     ; 3 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not29 = icmp eq i32 %i.j, 0
  br i1 %.not29, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.c

._crit_edge33.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %8, align 8, !tbaa !81
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %bb.a
  %i.p = phi ptr [ %.pre, %._crit_edge33.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge33
  call void @free(ptr noundef %i.p) #17
  br label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit:     ; preds = %._crit_edge33, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void

bb.c:                                             ; preds = %.lr.ph32, %._crit_edge
  %.02730 = phi ptr [ %i.i, %.lr.ph32 ], [ %i.ac, %._crit_edge ] ; 3 uses
  %.sroa.09.0.copyload = load i16, ptr %.02730, align 8, !tbaa !320 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.02730, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !322 ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !317  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !224
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 744
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(518435) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1, i16 %.sroa.09.0.copyload, ptr %.sroa.7.0.copyload) #17 ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !317  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !224
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 736
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i16 %i.z(ptr noundef nonnull align 8 dereferenceable(518435) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1, i16 %.sroa.09.0.copyload, ptr %.sroa.7.0.copyload) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store i16 %i.aa, ptr %10, align 8, !tbaa !320
  store ptr null, ptr %i.m, align 8, !tbaa !323
  %i.ab = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !322
  %.not34 = icmp eq i32 %i.v, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplINS_12CallLowering11BaseArgInfoEE12emplace_backIJRPNS_4TypeERNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %.02730, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.l
  br i1 %.not, label %._crit_edge33.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN4llvm15SmallVectorImplINS_12CallLowering11BaseArgInfoEE12emplace_backIJRPNS_4TypeERNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit
  %.028 = phi i32 [ %i.aq, %_ZN4llvm15SmallVectorImplINS_12CallLowering11BaseArgInfoEE12emplace_backIJRPNS_4TypeERNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit ], [ 0, %bb.c ]
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !82  ; 2 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !83
  %.not.i = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !238

bb.d:                                             ; preds = %.lr.ph
  %i.af = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE18growAndEmplaceBackIJRPNS_4TypeERNS_3ISD10ArgFlagsTyEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering11BaseArgInfoEE12emplace_backIJRPNS_4TypeERNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %4, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.ah, i64 %i.ag ; 5 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !322
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i32 0, ptr %i.am, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 4, ptr %i.an, align 4, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false)
  store i32 1, ptr %i.am, align 8, !tbaa !82
  %i.ao = load i32, ptr %i.n, align 8, !tbaa !82
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.n, align 8, !tbaa !82
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering11BaseArgInfoEE12emplace_backIJRPNS_4TypeERNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_12CallLowering11BaseArgInfoEE12emplace_backIJRPNS_4TypeERNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit: ; preds = %bb.d, %bb.e
  %i.aq = add nuw i32 %.028, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !326
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12CallLowering26insertSRetOutgoingArgumentERNS_16MachineIRBuilderERKNS_8CallBaseERNS0_16CallLoweringInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(5424) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Register", align 4    ; 5 uses
  %5 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %6 = alloca %"struct.llvm::CallLowering::ArgInfo", align 8 ; 11 uses
  %7 = alloca %"class.llvm::ArrayRef.264", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103, !nonnull !218, !align !219
  %i.d = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %i.c) #17 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !327  ; 3 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.d, i32 noundef %i.h) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !358
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !361
  %i.o = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef %i.f) #17 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.o, 1
  %i.p = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.p, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %.fca.0.extract = extractvalue { i64, i8 } %i.o, 0
  %i.q = zext i32 %i.k to i64
  %i.r = shl i64 %i.q, 44
  %i.s = and i64 %i.r, 1152903912420802560
  %i.t = and i32 %i.h, 16777215
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 20
  %i.w = or disjoint i64 %i.s, %i.v
  %i.x = or disjoint i64 %i.w, 4611686018427387904
  %i.y = tail call i8 @_ZNK4llvm10DataLayout16getPrefTypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef %i.f) #17
  %i.z = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.n, i64 noundef %.fca.0.extract, i8 %i.y, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %i.x, ptr %5, align 8, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !253
  %i.ab = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder15buildFrameIndexERKNS_5DstOpEi(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(20) %5, i32 noundef %i.z) #17
  %i.ac = extractvalue { ptr, ptr } %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !256
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !252
  store i32 %i.ag, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !316, !nonnull !218, !align !219
  %i.ai = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.h) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(156) %6, ptr nonnull %4, i64 1, ptr noundef %i.ai, i32 noundef -1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.264") align 8 %7, ptr noundef null)
  call void @_ZNK4llvm12CallLowering11setArgFlagsINS_8CallBaseEEEvRNS0_7ArgInfoEjRKNS_10DataLayoutERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 4
  %i.am = or i64 %i.al, 16
  store i64 %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81
  %i.ap = call noundef ptr @_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE15insert_one_implIRKS2_EEPS2_S7_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(156) %6) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 5396
  store i32 %i.z, ptr %i.aq, align 4, !tbaa !362
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 5392
  %i.as = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !249
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @free(ptr noundef %i.au) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i: ; preds = %bb.c, %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !81 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i
  call void @free(ptr noundef %i.ay) #17
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.bb) #17
  br label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit

_ZN4llvm12CallLowering7ArgInfoD2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK4llvm12CallLowering11setArgFlagsINS_8CallBaseEEEvRNS0_7ArgInfoEjRKNS_10DataLayoutERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(912) %3, ptr noundef nonnull align 8 dereferenceable(88) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %6 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %7 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %8 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %9 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 8 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !8
  store ptr %.sroa.0.0.copyload.i, ptr %9, align 8
  %i.d = call ptr @_ZNK4llvm13AttributeList13getAttributesEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %2) #17
  call fastcc void @_ZL19addFlagsFromAttrSetRN4llvm3ISD10ArgFlagsTyENS_12AttributeSetE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !80     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = and i32 %i.g, 254
  %spec.select.i.i = icmp eq i32 %i.h, 18
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !363
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.g, %bb.a ]
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = and i32 %i.l, 255
  %.not = icmp eq i32 %i.m, 15
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.o = load i64, ptr %i.b, align 4
  %i.p = or i64 %i.o, 17179869184
  store i64 %i.p, ptr %i.b, align 4
  %i.q = load i32, ptr %i.n, align 8              ; 2 uses
  %i.r = and i32 %i.q, 254
  %spec.select.i.i.i = icmp eq i32 %i.r, 18
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !363
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !322
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.c, %bb.d
  %i.v = phi i32 [ %.pre.i, %bb.d ], [ %i.q, %bb.c ]
  %i.w = lshr i32 %i.v, 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !364
  %.pre119 = load ptr, ptr %1, align 8, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit, %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.y = phi ptr [ %.pre119, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ], [ %i.e, %_ZNK4llvm4Type13getScalarTypeEv.exit ]
  %i.z = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %3, ptr noundef %i.y) #17 ; 2 uses
  %i.aa = load i64, ptr %i.b, align 4
  %i.ab = and i64 %i.aa, 3168
  %or.cond111.not = icmp eq i64 %i.ab, 0
  br i1 %or.cond111.not, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add i32 %2, -1                          ; 10 uses
end_hunk_1
begin_hunk_2_@_ZNK4llvm12CallLowering11setArgFlagsINS_8FunctionEEEvRNS0_7ArgInfoEjRKNS_10DataLayoutERKT_:bb.a
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.g, %bb.a ]
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = and i32 %i.l, 255
  %.not = icmp eq i32 %i.m, 15
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.o = load i64, ptr %i.b, align 4
  %i.p = or i64 %i.o, 17179869184
  store i64 %i.p, ptr %i.b, align 4
  %i.q = load i32, ptr %i.n, align 8              ; 2 uses
  %i.r = and i32 %i.q, 254
  %spec.select.i.i.i = icmp eq i32 %i.r, 18
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !363
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !322
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.c, %bb.d
  %i.v = phi i32 [ %.pre.i, %bb.d ], [ %i.q, %bb.c ]
  %i.w = lshr i32 %i.v, 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !364
  %.pre92 = load ptr, ptr %1, align 8, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit, %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.y = phi ptr [ %.pre92, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ], [ %i.e, %_ZNK4llvm4Type13getScalarTypeEv.exit ]
  %i.z = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %3, ptr noundef %i.y) #17 ; 2 uses
  %i.aa = load i64, ptr %i.b, align 4
  %i.ab = and i64 %i.aa, 3168
  %or.cond84.not = icmp eq i64 %i.ab, 0
  br i1 %or.cond84.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add i32 %2, -1                          ; 6 uses
  %i.ad = call noundef ptr @_ZNK4llvm13AttributeList17getParamByValTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.ac) #17 ; 2 uses
  %.not61 = icmp eq ptr %i.ad, null
  br i1 %.not61, label %bb.g, label %.thread77

bb.g:                                             ; preds = %bb.f
  %i.ae = call noundef ptr @_ZNK4llvm13AttributeList17getParamByRefTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.ac) #17 ; 2 uses
  %.not62 = icmp eq ptr %i.ae, null
  br i1 %.not62, label %bb.h, label %.thread77

bb.h:                                             ; preds = %bb.g
  %i.af = call noundef ptr @_ZNK4llvm13AttributeList20getParamInAllocaTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.ac) #17 ; 2 uses
  %.not63 = icmp eq ptr %i.af, null
  br i1 %.not63, label %bb.i, label %.thread77

bb.i:                                             ; preds = %bb.h
  %i.ag = call noundef ptr @_ZNK4llvm13AttributeList24getParamPreallocatedTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.ac) #17
  br label %.thread77

.thread77:                                        ; preds = %bb.f, %bb.g, %bb.i, %bb.h
  %.2 = phi ptr [ %i.af, %bb.h ], [ %i.ag, %bb.i ], [ %i.ae, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ah = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %3, ptr noundef %.2) #17 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ah, 1
  %i.ai = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ai, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.j:                                             ; preds = %.thread77
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %.thread77
  %.fca.0.extract = extractvalue { i64, i8 } %i.ah, 0
  %.sink = trunc i64 %.fca.0.extract to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.aj, align 4, !tbaa !366
  %i.ak = call i16 @_ZNK4llvm13AttributeList22getParamStackAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.ac) #17 ; 2 uses
  %.sroa.067.0.extract.trunc68 = trunc i16 %i.ak to i8
  %i.al = and i16 %i.ak, 256
  %.not88 = icmp eq i16 %i.al, 0
  br i1 %.not88, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.am = call i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.ac) #17 ; 2 uses
  %.sroa.067.0.extract.trunc = trunc i16 %i.am to i8
  %i.an = and i16 %i.am, 256
  %.not89 = icmp eq i16 %i.an, 0
  br i1 %.not89, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !317 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 720
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i8 %i.as(ptr noundef nonnull align 8 dereferenceable(518435) %i.ap, ptr noundef %.2, ptr noundef nonnull align 8 dereferenceable(912) %3) #17
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  %.not60 = icmp eq i32 %2, 0
  br i1 %.not60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add i32 %2, -1
  %i.av = call i16 @_ZNK4llvm13AttributeList22getParamStackAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.au) #17 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.av to i8
  %i.aw = and i16 %i.av, 256
  %.not86 = icmp eq i16 %i.aw, 0
  %spec.select = select i1 %.not86, i8 %i.z, i8 %.sroa.0.0.extract.trunc
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.k, %bb.m
  %.sroa.016.2 = phi i8 [ %i.z, %bb.m ], [ %.sroa.067.0.extract.trunc, %bb.k ], [ %i.at, %bb.l ], [ %.sroa.067.0.extract.trunc68, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %spec.select, %bb.n ]
  %.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.016.2 to i64
  %i.ax = load i64, ptr %i.b, align 4
  %narrow.i.i.i = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 20
  %i.ay = add nuw nsw i64 %narrow.i.i.i, 1048576
  %i.az = and i64 %i.ay, 66060288
  %i.ba = and i64 %i.ax, -66060289
  %i.bb = or disjoint i64 %i.az, %i.ba
  store i64 %i.bb, ptr %i.b, align 4
  %i.bc = load ptr, ptr %1, align 8, !tbaa !80
  %i.bd = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %3, ptr noundef %i.bc) #17
  %.sroa.0.0.insert.ext.i.i65 = zext i8 %i.bd to i64
  %i.be = load i64, ptr %i.b, align 4             ; 2 uses
  %narrow.i.i.i66 = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i65, 26
  %i.bf = add nuw nsw i64 %narrow.i.i.i66, 67108864
  %i.bg = and i64 %i.bf, 2080374784
  %i.bh = and i64 %i.be, -2080374785
  %i.bi = or disjoint i64 %i.bg, %i.bh            ; 2 uses
  %i.bj = and i64 %i.be, 8192
  %.not90 = icmp eq i64 %i.bj, 0
  %i.bk = and i64 %i.bi, -257
  %spec.select91 = select i1 %.not90, i64 %i.bi, i64 %i.bk
  store i64 %spec.select91, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

declare i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #3

declare { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12CallLowering17splitToValueTypesERKNS0_7ArgInfoERNS_15SmallVectorImplIS1_EERKNS_10DataLayoutEjPNS4_INS_8TypeSizeEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(912) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.283", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !83
  %i.d = load ptr, ptr %1, align 8, !tbaa !80
  call void @_ZN4llvm17ComputeValueTypesERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplIS4_EEPNS5_INS_8TypeSizeEEES8_(ptr noundef nonnull align 8 dereferenceable(912) %3, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %5, i64 0, i8 0) #17
  %i.e = load i32, ptr %i.b, align 8, !tbaa !82
  switch i32 %i.e, label %bb.d [
    i32 0, label %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyERKPKNS_5ValueEEEERS2_DpOT_.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.h = load ptr, ptr %6, align 8, !tbaa !81     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !83
  %.not.i = icmp ult i32 %i.n, %i.p
  br i1 %.not.i, label %_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit, label %bb.c, !prof !238

bb.c:                                             ; preds = %bb.b
  %i.q = call noundef nonnull align 8 dereferenceable(156) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE18growAndEmplaceBackIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyERKPKNS_5ValueEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyERKPKNS_5ValueEEEERS2_DpOT_.exit

_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit: ; preds = %bb.b
  %i.r = zext i32 %i.n to i64
  %i.s = load ptr, ptr %2, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw [160 x i8], ptr %i.s, i64 %i.r ; 15 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !322
  %i.v = load i32, ptr %i.i, align 8, !tbaa !249
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !369
  store ptr %i.u, ptr %i.t, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 4, ptr %i.aa, align 4, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  store i32 1, ptr %i.z, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 100
  store i32 4, ptr %i.ae, align 4, !tbaa !83
  %i.af = load i32, ptr %i.g, align 4
  store i32 %i.af, ptr %i.ac, align 8
  store i32 1, ptr %i.ad, align 8, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  store i32 0, ptr %i.ai, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 132
  store i32 2, ptr %i.aj, align 4, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store ptr %i.w, ptr %i.ak, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  store i32 %i.v, ptr %i.al, align 8, !tbaa !368
  %i.am = load i32, ptr %i.m, align 8, !tbaa !82
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.m, align 8, !tbaa !82
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyERKPKNS_5ValueEEEERS2_DpOT_.exit

bb.d:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !317 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !80
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !224
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2408
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(518435) %i.ap, ptr noundef %i.aq, i32 noundef %4, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(912) %3) #17
  %i.av = load i32, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %wide.trip.count54 = zext i32 %i.av to i64      ; 2 uses
  br i1 %i.au, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !81
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv51 ; 2 uses
  %i.bd = load ptr, ptr %6, align 8, !tbaa !81
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv51 ; 2 uses
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.bg = load i32, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %i.bh = load i32, ptr %i.ba, align 4, !tbaa !83
  %.not.i25.us = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i25.us, label %_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit41.us, label %bb.e, !prof !238

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.bi = call noundef nonnull align 8 dereferenceable(156) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE18growAndEmplaceBackIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(16) %i.bf) ; 0 uses
  %.pre = load i32, ptr %i.az, align 8, !tbaa !82
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit.us

_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit41.us: ; preds = %.lr.ph.split.us
  %i.bj = zext i32 %i.bg to i64
  %i.bk = load ptr, ptr %2, align 8, !tbaa !81
  %i.bl = getelementptr inbounds nuw [160 x i8], ptr %i.bk, i64 %i.bj ; 15 uses
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !322
  %i.bn = load i32, ptr %i.ax, align 8, !tbaa !249
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i32 4, ptr %i.br, align 4, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 4 dereferenceable(16) %i.bf, i64 16, i1 false)
  store i32 1, ptr %i.bq, align 8, !tbaa !82
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 104 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !81
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 96 ; 2 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !82
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 100
  store i32 4, ptr %i.bv, align 4, !tbaa !83
  %i.bw = load i32, ptr %i.bc, align 4
  store i32 %i.bw, ptr %i.bt, align 8
  store i32 1, ptr %i.bu, align 8, !tbaa !82
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !81
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store i32 0, ptr %i.bz, align 8, !tbaa !82
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 132
  store i32 2, ptr %i.ca, align 4, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store ptr null, ptr %i.cb, align 8, !tbaa !84
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  store i32 %i.bn, ptr %i.cc, align 8, !tbaa !368
  %i.cd = load i32, ptr %i.az, align 8, !tbaa !82
  %i.ce = add i32 %i.cd, 1                        ; 2 uses
  store i32 %i.ce, ptr %i.az, align 8, !tbaa !82
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit.us

_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit.us: ; preds = %_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit41.us, %bb.e
  %i.cf = phi i32 [ %i.ce, %_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit41.us ], [ %.pre, %bb.e ]
  %i.cg = load ptr, ptr %2, align 8, !tbaa !81
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [160 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -152
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !81 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 4
  %i.cm = or i64 %i.cl, 4294967296
  store i64 %i.cm, ptr %i.ck, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !370

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit, %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit.us, %bb.d
  %i.cn = load ptr, ptr %2, align 8, !tbaa !81
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !82
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [160 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -152
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !81 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 4
  %i.cv = or i64 %i.cu, 2147483648
  store i64 %i.cv, ptr %i.ct, align 4
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyERKPKNS_5ValueEEEERS2_DpOT_.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.cw = load ptr, ptr %i.aw, align 8, !tbaa !81
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cy = load ptr, ptr %6, align 8, !tbaa !81
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv ; 2 uses
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.db = load i32, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %i.dc = load i32, ptr %i.ba, align 4, !tbaa !83
  %.not.i25 = icmp ult i32 %i.db, %i.dc
  br i1 %.not.i25, label %_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit41, label %bb.f, !prof !238

bb.f:                                             ; preds = %.lr.ph.split
  %i.dd = call noundef nonnull align 8 dereferenceable(156) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE18growAndEmplaceBackIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(16) %i.da) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit

_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit41: ; preds = %.lr.ph.split
  %i.de = zext i32 %i.db to i64
  %i.df = load ptr, ptr %2, align 8, !tbaa !81
  %i.dg = getelementptr inbounds nuw [160 x i8], ptr %i.df, i64 %i.de ; 15 uses
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !322
  %i.di = load i32, ptr %i.ax, align 8, !tbaa !249
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !80
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !81
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !82
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i32 4, ptr %i.dm, align 4, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false)
  store i32 1, ptr %i.dl, align 8, !tbaa !82
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 104 ; 2 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !81
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 96 ; 2 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !82
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 100
  store i32 4, ptr %i.dq, align 4, !tbaa !83
  %i.dr = load i32, ptr %i.cx, align 4
  store i32 %i.dr, ptr %i.do, align 8
  store i32 1, ptr %i.dp, align 8, !tbaa !82
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 136
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !81
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  store i32 0, ptr %i.du, align 8, !tbaa !82
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 132
  store i32 2, ptr %i.dv, align 4, !tbaa !83
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 144
  store ptr null, ptr %i.dw, align 8, !tbaa !84
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 152
  store i32 %i.di, ptr %i.dx, align 8, !tbaa !368
  %i.dy = load i32, ptr %i.az, align 8, !tbaa !82
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.az, align 8, !tbaa !82
  br label %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyEEEERS2_DpOT_.exit: ; preds = %bb.f, %_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count54
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !370

_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyERKPKNS_5ValueEEEERS2_DpOT_.exit: ; preds = %bb.a, %_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE.exit, %bb.c, %._crit_edge
  %i.ea = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.a
  br i1 %i.eb, label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyERKPKNS_5ValueEEEERS2_DpOT_.exit
  call void @free(ptr noundef %i.ea) #17
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit:   ; preds = %_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE12emplace_backIJRKNS_8RegisterERPNS_4TypeERKjRKNS_3ISD10ArgFlagsTyERKPKNS_5ValueEEEERS2_DpOT_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void
}

declare void @_ZN4llvm17ComputeValueTypesERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplIS4_EEPNS5_INS_8TypeSizeEEES8_(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64, i8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12CallLowering17buildCopyFromRegsERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEES5_NS_3LLTES6_NS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr %3, i64 %4, i64 %5, i64 %6, ptr nofree noundef readonly byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 captures(none) %7) local_unnamed_addr #1 align 2 {
bb.a:
  %8 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %9 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %10 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %11 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %12 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %13 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 6 uses
  %14 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %15 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %16 = alloca %"class.llvm::LLT", align 8        ; 8 uses
  %17 = alloca %"class.llvm::LLT", align 8        ; 10 uses
  %18 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %20 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %21 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %22 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %23 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %24 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %25 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %26 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %27 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %28 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %29 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %30 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %31 = alloca %"class.llvm::SmallVector.290", align 8 ; 13 uses
  %32 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %33 = alloca %"class.llvm::LLT", align 8        ; 5 uses
  %34 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %35 = alloca %"class.llvm::SmallVector.292", align 8 ; 10 uses
  %36 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %37 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %38 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %39 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %40 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %41 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %42 = alloca %"class.llvm::LLT", align 8        ; 6 uses
  %43 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %44 = alloca %"class.llvm::SmallVector.294", align 8 ; 11 uses
  %45 = alloca %"class.llvm::SrcOp", align 8      ; 9 uses
  %46 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %47 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %48 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %49 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %50 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  store i64 %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371  ; 14 uses
  %i.c = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
  br i1 %i.c, label %bb.da, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %17, align 8               ; 23 uses
  %.mask.i.i = and i64 %i.d, -1152921504606846976 ; 2 uses
  %i.e = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 5 uses
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.d, 60
  %.off.i.i = add nsw i64 %i.f, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp slt i64 %i.d, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.g, %i.e
  %i.h = lshr i64 %i.d, 44
  %i.i = and i64 %i.h, 65535
  %i.j = lshr i64 %i.d, 28
  %i.k = and i64 %i.j, 4294967295
  %i.l = select i1 %spec.select.i.i.i, i64 %i.i, i64 %i.k
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = lshr i64 %i.d, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.m, 65535
  %i.n = icmp slt i64 %i.d, -8070450532247928832
  %i.o = lshr i64 %i.d, 44
  %i.p = and i64 %i.o, 65535
  %i.q = lshr i64 %i.d, 28
  %.0.in.i3.i = select i1 %i.n, i64 %i.p, i64 %i.q
  %i.r = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.s = and i64 %i.r, 4294967295
  %i.t = trunc i64 %i.d to i8
  %.sroa.0.4.extract.trunc.i = and i8 %i.t, 1
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.d, %bb.e
  %.sroa.05.0.i = phi i64 [ %i.l, %bb.d ], [ %i.s, %bb.e ]
  %.sroa.3.0.i = phi i8 [ 0, %bb.d ], [ %.sroa.0.4.extract.trunc.i, %bb.e ]
  %i.u = load i64, ptr %16, align 8               ; 21 uses
  %.mask.i.i250 = and i64 %i.u, -1152921504606846976 ; 2 uses
  %i.v = icmp eq i64 %.mask.i.i250, 4611686018427387904 ; 4 uses
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %i.w = lshr i64 %i.u, 60
  %.off.i.i251 = add nsw i64 %i.w, -1
  %switch.i.i252 = icmp ult i64 %.off.i.i251, 3
  br i1 %switch.i.i252, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %i.x = icmp slt i64 %i.u, -8070450532247928832
  %spec.select.i.i.i260 = or i1 %i.x, %i.v
  %i.y = lshr i64 %i.u, 44
  %i.z = and i64 %i.y, 65535
  %i.aa = lshr i64 %i.u, 28
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = select i1 %spec.select.i.i.i260, i64 %i.z, i64 %i.ab
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit261

bb.h:                                             ; preds = %bb.f
  %i.ad = lshr i64 %i.u, 4
  %.sroa.0.0.insert.ext.i.i.i253 = and i64 %i.ad, 65535
  %i.ae = icmp slt i64 %i.u, -8070450532247928832
  %i.af = lshr i64 %i.u, 44
  %i.ag = and i64 %i.af, 65535
  %i.ah = lshr i64 %i.u, 28
  %.0.in.i3.i254 = select i1 %i.ae, i64 %i.ag, i64 %i.ah
  %i.ai = mul nuw nsw i64 %.0.in.i3.i254, %.sroa.0.0.insert.ext.i.i.i253
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = trunc i64 %i.u to i8
  %.sroa.0.4.extract.trunc.i255 = and i8 %i.ak, 1
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit261

_ZNK4llvm3LLT13getSizeInBitsEv.exit261:           ; preds = %bb.g, %bb.h
  %.sroa.05.0.i256 = phi i64 [ %i.ac, %bb.g ], [ %i.aj, %bb.h ]
  %.sroa.3.0.i257 = phi i8 [ 0, %bb.g ], [ %.sroa.0.4.extract.trunc.i255, %bb.h ]
  %i.al = icmp eq i64 %.sroa.05.0.i, %.sroa.05.0.i256
  %i.am = icmp eq i8 %.sroa.3.0.i, %.sroa.3.0.i257
  %i.an = and i1 %i.al, %i.am
  %i.ao = icmp eq i64 %2, 1                       ; 2 uses
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  %i.ap = icmp eq i64 %4, 1                       ; 3 uses
  %or.cond700 = select i1 %or.cond, i1 %i.ap, i1 false
  br i1 %or.cond700, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit261
  %.sroa.0201.0.copyload = load i32, ptr %1, align 4, !tbaa !249
  %.sroa.0200.0.copyload = load i32, ptr %3, align 4, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i32 %.sroa.0201.0.copyload, ptr %14, align 8
  %.sroa.4599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 1, ptr %.sroa.4599.0..sroa_idx, align 8, !tbaa !372
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i32 %.sroa.0200.0.copyload, ptr %15, align 8
  %.sroa.4595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %.sroa.4595.0..sroa_idx, align 8, !tbaa !373
  %i.aq = load ptr, ptr %0, align 8, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
end_hunk_2
begin_hunk_3_@_ZN4llvm12CallLowering7ArgInfoaSERKS1_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 4 %i.v, i64 %gepdiff.i.i.i, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZSt4copyIPKN4llvm3ISD10ArgFlagsTyEPS2_ET0_T_S7_S6_.exit30.i.i.i, %bb.f, %bb.e, %bb.c
  store i32 %i.f, ptr %i.h, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !82 ; 6 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !82 ; 4 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.af, %i.ac
  br i1 %.not.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not29.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not29.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 2 uses
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %.not31.i.i = icmp eq i32 %i.ac, 1
  br i1 %.not31.i.i, label %bb.r, label %bb.q, !prof !239

bb.q:                                             ; preds = %bb.p
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ah, i64 %.idx.i.i, i1 false)
  br label %bb.z

bb.r:                                             ; preds = %bb.p
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !249
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !249
  br label %bb.z

bb.s:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !83
  %i.am = icmp ult i32 %i.al, %i.ac
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ae, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull %i.an, i64 noundef %i.ad, i64 noundef 4) #17
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i

bb.u:                                             ; preds = %bb.s
  %.not28.i.i = icmp eq i32 %i.af, 0
  br i1 %.not28.i.i, label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 2 uses
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %.not33.i.i = icmp eq i32 %i.af, 1
  br i1 %.not33.i.i, label %bb.x, label %bb.w, !prof !239

bb.w:                                             ; preds = %bb.v
  %.idx32.i.i = shl nuw nsw i64 %i.ag, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ap, ptr align 4 %i.ao, i64 %.idx32.i.i, i1 false)
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i

bb.x:                                             ; preds = %bb.v
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !249
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !249
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i

_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i: ; preds = %bb.x, %bb.w, %bb.u, %bb.t
  %.022.i.i = phi i64 [ 0, %bb.t ], [ 0, %bb.u ], [ %i.ag, %bb.w ], [ 1, %bb.x ] ; 4 uses
  %i.ar = load i32, ptr %i.ab, align 8, !tbaa !82
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %.not.i.i.i5 = icmp samesign eq i64 %.022.i.i, %i.as
  br i1 %.not.i.i.i5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !81
  %.idx35.i.i = shl nuw nsw i64 %.022.i.i, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx35.i.i
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.022.i.i
  %i.ax = sub nsw i64 %i.as, %.022.i.i
  %gepdiff.i.i = shl nsw i64 %i.ax, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 4 %i.au, i64 %gepdiff.i.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i, %bb.r, %bb.q, %bb.o
  store i32 %i.ac, ptr %i.ae, align 8, !tbaa !82
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !82 ; 6 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !82 ; 4 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %.not.i.i6 = icmp ult i32 %i.be, %i.bb
  br i1 %.not.i.i6, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not29.i.i7 = icmp eq i32 %i.bb, 0
  br i1 %.not29.i.i7, label %.sink.split.i.i10, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !81 ; 2 uses
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %.not31.i.i8 = icmp eq i32 %i.bb, 1
  br i1 %.not31.i.i8, label %bb.ad, label %bb.ac, !prof !239

bb.ac:                                            ; preds = %bb.ab
  %.idx.i.i9 = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %i.bg, i64 %.idx.i.i9, i1 false)
  br label %.sink.split.i.i10

bb.ad:                                            ; preds = %bb.ab
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !249
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !249
  br label %.sink.split.i.i10

bb.ae:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !83
  %i.bl = icmp ult i32 %i.bk, %i.bb
  br i1 %i.bl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.bd, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull %i.bm, i64 noundef %i.bc, i64 noundef 4) #17
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i14

bb.ag:                                            ; preds = %bb.ae
  %.not28.i.i11 = icmp eq i32 %i.be, 0
  br i1 %.not28.i.i11, label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i14, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !81 ; 2 uses
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %.not33.i.i12 = icmp eq i32 %i.be, 1
  br i1 %.not33.i.i12, label %bb.aj, label %bb.ai, !prof !239

bb.ai:                                            ; preds = %bb.ah
  %.idx32.i.i13 = shl nuw nsw i64 %i.bf, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bo, ptr align 4 %i.bn, i64 %.idx32.i.i13, i1 false)
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i14

bb.aj:                                            ; preds = %bb.ah
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !249
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !249
  br label %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i14

_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i14: ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af
  %.022.i.i15 = phi i64 [ 0, %bb.af ], [ 0, %bb.ag ], [ %i.bf, %bb.ai ], [ 1, %bb.aj ] ; 4 uses
  %i.bq = load i32, ptr %i.ba, align 8, !tbaa !82
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %.not.i.i.i16 = icmp samesign eq i64 %.022.i.i15, %i.br
  br i1 %.not.i.i.i16, label %.sink.split.i.i10, label %bb.ak

bb.ak:                                            ; preds = %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i14
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !81
  %.idx35.i.i17 = shl nuw nsw i64 %.022.i.i15, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx35.i.i17
  %i.bu = load ptr, ptr %i.ay, align 8, !tbaa !81
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.022.i.i15
  %i.bw = sub nsw i64 %i.br, %.022.i.i15
  %gepdiff.i.i18 = shl nsw i64 %i.bw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 4 %i.bt, i64 %gepdiff.i.i18, i1 false)
  br label %.sink.split.i.i10

.sink.split.i.i10:                                ; preds = %bb.ak, %_ZSt4copyIPKN4llvm8RegisterEPS1_ET0_T_S6_S5_.exit30.i.i14, %bb.ad, %bb.ac, %bb.aa
  store i32 %i.bb, ptr %i.bd, align 8, !tbaa !82
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EEaSERKS2_.exit

_ZN4llvm11SmallVectorINS_8RegisterELj2EEaSERKS2_.exit: ; preds = %bb.a, %.sink.split.i.i10
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, ptr noundef nonnull align 8 dereferenceable(12) %i.by, i64 12, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE18growAndEmplaceBackIJRPNS_4TypeERNS_3ISD10ArgFlagsTyEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !82
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %i.f ; 5 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !322
  store ptr %i.h, ptr %i.g, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 4, ptr %i.l, align 4, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  store i32 1, ptr %i.k, align 8, !tbaa !82
  %i.m = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %i.n = load i32, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i = mul nuw nsw i64 %i.o, 88
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm12CallLowering11BaseArgInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN4llvm12CallLowering11BaseArgInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN4llvm12CallLowering11BaseArgInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.m, %bb.a ] ; 4 uses
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !80
  store ptr %i.q, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store ptr %i.s, ptr %i.r, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 20
  store i32 4, ptr %i.u, align 4, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm12CallLowering11BaseArgInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.y = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_3ISD10ArgFlagsTyEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.x) ; 0 uses
  br label %_ZSt10_ConstructIN4llvm12CallLowering11BaseArgInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm12CallLowering11BaseArgInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.p
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !495

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm12CallLowering11BaseArgInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !81  ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !82 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.ab = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.ab, 88
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ad, %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i ], [ %i.ac, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i, i64 -88 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i.i, i64 -80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i, i64 -64
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.af) #17
  br label %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i

_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.ad
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !314

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit.loopexit: ; preds = %_ZN4llvm12CallLowering11BaseArgInfoD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !81
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit.loopexit ], [ %i.m, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i ] ; 2 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !237
  %i.ak = icmp eq ptr %i.ai, %i.b
  br i1 %i.ak, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE21takeAllocationForGrowEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit
  call void @free(ptr noundef %i.ai) #17
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE21takeAllocationForGrowEPS2_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE21takeAllocationForGrowEPS2_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering11BaseArgInfoELb0EE19moveElementsForGrowEPS2_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !81
  %i.al = trunc i64 %i.aj to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !83
  %i.an = load i32, ptr %i.d, align 8, !tbaa !82
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.d, align 8, !tbaa !82
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.ar
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN4llvm17AttributeListImplE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN4llvm3UseE", !13, i64 0, !14, i64 8, !15, i64 16, !17, i64 24}
!13 = !{!"p1 _ZTSN4llvm5ValueE", !10, i64 0}
!14 = !{!"p1 _ZTSN4llvm3UseE", !10, i64 0}
!15 = !{!"p2 _ZTSN4llvm3UseE", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 _ZTSN4llvm4UserE", !10, i64 0}
!18 = !{!19, !6, i64 0}
!19 = !{!"_ZTSN4llvm5ValueE", !6, i64 0, !6, i64 1, !6, i64 1, !20, i64 2, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 7, !21, i64 8, !14, i64 16}
!20 = !{!"short", !6, i64 0}
!21 = !{!"p1 _ZTSN4llvm4TypeE", !10, i64 0}
!22 = !{!23, !21, i64 24}
!23 = !{!"_ZTSN4llvm11GlobalValueE", !24, i64 0, !21, i64 24, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 33, !5, i64 33, !5, i64 33, !5, i64 33, !5, i64 33, !5, i64 34, !5, i64 34, !5, i64 36, !26, i64 40}
!24 = !{!"_ZTSN4llvm8ConstantE", !25, i64 0}
!25 = !{!"_ZTSN4llvm4UserE", !19, i64 0}
!26 = !{!"p1 _ZTSN4llvm6ModuleE", !10, i64 0}
!27 = !{!28, !42, i64 80}
!28 = !{!"_ZTSN4llvm8CallBaseE", !29, i64 0, !41, i64 72, !42, i64 80}
!29 = !{!"_ZTSN4llvm11InstructionE", !25, i64 0, !30, i64 24, !38, i64 48, !5, i64 56, !5, i64 60, !40, i64 64}
!30 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_11InstructionENS_10BasicBlockEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentIS2_EEEEE", !31, i64 0}
!31 = !{!"_ZTSN4llvm10ilist_nodeINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !32, i64 0}
!32 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !33, i64 0}
!33 = !{!"_ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !34, i64 0, !36, i64 16}
!34 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0ENS_10BasicBlockEEELb0EEE", !35, i64 0, !35, i64 8}
!35 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !10, i64 0}
!36 = !{!"_ZTSN4llvm12ilist_detail16node_base_parentINS_10BasicBlockEEE", !37, i64 0}
!37 = !{!"p1 _ZTSN4llvm10BasicBlockE", !10, i64 0}
!38 = !{!"_ZTSN4llvm8DebugLocE", !39, i64 0}
!39 = !{!"p1 _ZTSN4llvm10DILocationE", !10, i64 0}
!40 = !{!"p1 _ZTSN4llvm9DbgMarkerE", !10, i64 0}
!41 = !{!"_ZTSN4llvm13AttributeListE", !9, i64 0}
!42 = !{!"p1 _ZTSN4llvm12FunctionTypeE", !10, i64 0}
!43 = !{!44, !5, i64 0}
!44 = !{!"_ZTSN4llvm12CallLowering16CallLoweringInfoE", !5, i64 0, !45, i64 8, !47, i64 40, !62, i64 200, !67, i64 5336, !67, i64 5340, !68, i64 5344, !69, i64 5352, !70, i64 5360, !74, i64 5384, !74, i64 5385, !74, i64 5386, !74, i64 5387, !74, i64 5388, !67, i64 5392, !5, i64 5396, !75, i64 5400, !74, i64 5408, !76, i64 5416}
!45 = !{!"_ZTSN4llvm14MachineOperandE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !6, i64 4, !46, i64 8, !6, i64 16}
!46 = !{!"p1 _ZTSN4llvm12MachineInstrE", !10, i64 0}
!47 = !{!"_ZTSN4llvm12CallLowering7ArgInfoE", !48, i64 0, !55, i64 88, !60, i64 120, !13, i64 144, !5, i64 152}
!48 = !{!"_ZTSN4llvm12CallLowering11BaseArgInfoE", !21, i64 0, !49, i64 8}
!49 = !{!"_ZTSN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EEE", !50, i64 0, !54, i64 16}
!50 = !{!"_ZTSN4llvm15SmallVectorImplINS_3ISD10ArgFlagsTyEEE", !51, i64 0}
!51 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EEE", !52, i64 0}
!52 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_3ISD10ArgFlagsTyEvEE", !53, i64 0}
!53 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !5, i64 8, !5, i64 12}
!54 = !{!"_ZTSN4llvm18SmallVectorStorageINS_3ISD10ArgFlagsTyELj4EEE", !6, i64 0}
!55 = !{!"_ZTSN4llvm11SmallVectorINS_8RegisterELj4EEE", !56, i64 0, !59, i64 16}
!56 = !{!"_ZTSN4llvm15SmallVectorImplINS_8RegisterEEE", !57, i64 0}
!57 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EEE", !58, i64 0}
!58 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_8RegisterEvEE", !53, i64 0}
!59 = !{!"_ZTSN4llvm18SmallVectorStorageINS_8RegisterELj4EEE", !6, i64 0}
!60 = !{!"_ZTSN4llvm11SmallVectorINS_8RegisterELj2EEE", !56, i64 0, !61, i64 16}
!61 = !{!"_ZTSN4llvm18SmallVectorStorageINS_8RegisterELj2EEE", !6, i64 0}
!62 = !{!"_ZTSN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj32EEE", !63, i64 0, !66, i64 16}
!63 = !{!"_ZTSN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEEE", !64, i64 0}
!64 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EEE", !65, i64 0}
!65 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_12CallLowering7ArgInfoEvEE", !53, i64 0}
!66 = !{!"_ZTSN4llvm18SmallVectorStorageINS_12CallLowering7ArgInfoELj32EEE", !6, i64 0}
!67 = !{!"_ZTSN4llvm8RegisterE", !5, i64 0}
!68 = !{!"p1 _ZTSN4llvm8CallBaseE", !10, i64 0}
!69 = !{!"p1 _ZTSN4llvm6MDNodeE", !10, i64 0}
!70 = !{!"_ZTSSt8optionalIN4llvm12CallLowering11PtrAuthInfoEE", !71, i64 0}
end_hunk_3
