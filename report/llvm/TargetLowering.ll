Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLowering?download=true
inline.NumInlined: 10476
inline.NumDeleted: 2372
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEjb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %215) #28
  %i.cjp = getelementptr inbounds nuw i8, ptr %.sroa.01161.0.copyload, i64 72
  %i.cjq = load i64, ptr %i.cjp, align 8, !tbaa !352
  store i64 %i.cjq, ptr %215, align 8, !tbaa !352
  %i.cjr = getelementptr inbounds nuw i8, ptr %215, i64 8
  %i.cjs = getelementptr inbounds nuw i8, ptr %.sroa.01161.0.copyload, i64 68
  %i.cjt = load i32, ptr %i.cjs, align 4, !tbaa !382
  store i32 %i.cjt, ptr %i.cjr, align 8, !tbaa !342
  %.sroa.01153.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.21155.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !348
  store ptr %.sroa.01238.0.copyload, ptr %216, align 8, !tbaa !258
  %.sroa.141240.0..sroa_idx1241 = getelementptr inbounds nuw i8, ptr %216, i64 8
  store <2 x i32> %i.civ, ptr %.sroa.141240.0..sroa_idx1241, align 8
  store ptr %.sroa.01212.0.copyload, ptr %217, align 8, !tbaa !258
  %.sroa.14.0..sroa_idx1214 = getelementptr inbounds nuw i8, ptr %217, i64 8
  store <2 x i32> %i.cix, ptr %.sroa.14.0..sroa_idx1214, align 8
  %i.cju = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.cjo, i32 noundef %i.cjn, ptr noundef nonnull align 8 dereferenceable(12) %215, i16 %.sroa.01153.0.copyload, ptr %.sroa.21155.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %216, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %217) #28 ; 2 uses
  %.fca.0.extract1149 = extractvalue { ptr, i32 } %i.cju, 0
  %.fca.1.extract1150 = extractvalue { ptr, i32 } %i.cju, 1
  %i.cjv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.01161.0.copyload, ptr %i.cjv, align 8, !tbaa !258
  %.sroa.22.0..sroa_idx.i4628 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.21162.0.copyload, ptr %.sroa.22.0..sroa_idx.i4628, align 8, !tbaa !257
  %i.cjw = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract1149, ptr %i.cjw, align 8, !tbaa !258
  %.sroa.2.0..sroa_idx.i4629 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract1150, ptr %.sroa.2.0..sroa_idx.i4629, align 8, !tbaa !257
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #28
  br label %.critedge3992

bb.xk:                                            ; preds = %_ZNK4llvm5APInt11countr_zeroEv.exit4627
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #28
  %i.cjx = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %218, ptr noundef nonnull align 8 dereferenceable(920) %i.cjx, ptr %.sroa.01238.0.copyload, i32 %.sroa.141240.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef %i.ciz) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #28
  %i.cjy = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %219, ptr noundef nonnull align 8 dereferenceable(920) %i.cjy, ptr %.sroa.01212.0.copyload, i32 %.sroa.14.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef %i.ciz) #28
  switch i32 %i.fd, label %default.unreachable [
    i32 187, label %bb.xl
    i32 188, label %bb.xo
    i32 189, label %bb.xr
    i32 190, label %bb.xu
  ]

bb.xl:                                            ; preds = %bb.xk
  %i.cjz = call i16 @_ZN4llvm9KnownBits3sleERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28 ; 2 uses
  %i.cka = and i16 %i.cjz, 256
  %.not5869 = icmp eq i16 %i.cka, 0
  br i1 %.not5869, label %bb.xm, label %.critedge3992.critedge

bb.xm:                                            ; preds = %bb.xl
  %i.ckb = call i16 @_ZN4llvm9KnownBits3sltERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28 ; 2 uses
  %i.ckc = and i16 %i.ckb, 256
  %.not5870 = icmp eq i16 %i.ckc, 0
  br i1 %.not5870, label %bb.xn, label %.critedge3992.critedge

bb.xn:                                            ; preds = %bb.xm
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #28
  call void @_ZN4llvm9KnownBits4sminERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %220, ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28
  %i.ckd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %220) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %220) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #28
  br label %bb.xx

bb.xo:                                            ; preds = %bb.xk
  %i.cke = call i16 @_ZN4llvm9KnownBits3sgeERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28 ; 2 uses
  %i.ckf = and i16 %i.cke, 256
  %.not5867 = icmp eq i16 %i.ckf, 0
  br i1 %.not5867, label %bb.xp, label %.critedge3992.critedge

bb.xp:                                            ; preds = %bb.xo
  %i.ckg = call i16 @_ZN4llvm9KnownBits3sgtERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28 ; 2 uses
  %i.ckh = and i16 %i.ckg, 256
  %.not5868 = icmp eq i16 %i.ckh, 0
  br i1 %.not5868, label %bb.xq, label %.critedge3992.critedge

bb.xq:                                            ; preds = %bb.xp
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #28
  call void @_ZN4llvm9KnownBits4smaxERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %221, ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28
  %i.cki = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %221) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %221) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #28
  br label %bb.xx

bb.xr:                                            ; preds = %bb.xk
  %i.ckj = call i16 @_ZN4llvm9KnownBits3uleERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28 ; 2 uses
  %i.ckk = and i16 %i.ckj, 256
  %.not5865 = icmp eq i16 %i.ckk, 0
  br i1 %.not5865, label %bb.xs, label %.critedge3992.critedge

bb.xs:                                            ; preds = %bb.xr
  %i.ckl = call i16 @_ZN4llvm9KnownBits3ultERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28 ; 2 uses
  %i.ckm = and i16 %i.ckl, 256
  %.not5866 = icmp eq i16 %i.ckm, 0
  br i1 %.not5866, label %bb.xt, label %.critedge3992.critedge

bb.xt:                                            ; preds = %bb.xs
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #28
  call void @_ZN4llvm9KnownBits4uminERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %222, ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28
  %i.ckn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %222) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %222) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #28
  br label %bb.xx

bb.xu:                                            ; preds = %bb.xk
  %i.cko = call i16 @_ZN4llvm9KnownBits3ugeERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28 ; 2 uses
  %i.ckp = and i16 %i.cko, 256
  %.not5863 = icmp eq i16 %i.ckp, 0
  br i1 %.not5863, label %bb.xv, label %.critedge3992.critedge

bb.xv:                                            ; preds = %bb.xu
  %i.ckq = call i16 @_ZN4llvm9KnownBits3ugtERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28 ; 2 uses
  %i.ckr = and i16 %i.ckq, 256
  %.not5864 = icmp eq i16 %i.ckr, 0
  br i1 %.not5864, label %bb.xw, label %.critedge3992.critedge

bb.xw:                                            ; preds = %bb.xv
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #28
  call void @_ZN4llvm9KnownBits4umaxERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %223, ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %219) #28
  %i.cks = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %223) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %223) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #28
  br label %bb.xx

default.unreachable:                              ; preds = %bb.xk
  unreachable

bb.xx:                                            ; preds = %bb.xw, %bb.xt, %bb.xq, %bb.xn
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %219) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #28
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %218) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #28
  br label %_ZN4llvm3ISD10isZEXTLoadEPKNS_6SDNodeE.exit.thread

bb.xy:                                            ; preds = %bb.al
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.cku = load ptr, ptr %i.ckt, align 8, !tbaa !260 ; 2 uses
  %.sroa.01092.0.copyload = load ptr, ptr %i.cku, align 8, !tbaa !258
  %.sroa.41093.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cku, i64 8
  %.sroa.41093.0.copyload = load i32, ptr %.sroa.41093.0..sroa_idx, align 8, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #28
  call void @_ZNK4llvm5APInt11reverseBitsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %224, ptr noundef nonnull align 8 dereferenceable(12) %15) #28
  %i.ckv = add nuw nsw i32 %7, 1
  %i.ckw = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01092.0.copyload, i32 %.sroa.41093.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %224, ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.ckv, i1 noundef zeroext false)
  br i1 %i.ckw, label %.critedge4014, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #28
  call void @_ZNK4llvm9KnownBits11reverseBitsEv(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %225, ptr noundef nonnull align 8 dereferenceable(32) %23)
  %i.ckx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %225) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %225) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #28
  %i.cky = getelementptr inbounds nuw i8, ptr %224, i64 8
  %i.ckz = load i32, ptr %i.cky, align 8, !tbaa !384
  %i.cla = icmp ugt i32 %i.ckz, 64
  br i1 %i.cla, label %bb.ya, label %_ZN4llvm5APIntD2Ev.exit4646

bb.ya:                                            ; preds = %bb.xz
  %i.clb = load ptr, ptr %224, align 8, !tbaa !361 ; 2 uses
  %i.clc = icmp eq ptr %i.clb, null
  br i1 %i.clc, label %_ZN4llvm5APIntD2Ev.exit4646, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  call void @_ZdaPv(ptr noundef nonnull %i.clb) #29
  br label %_ZN4llvm5APIntD2Ev.exit4646

_ZN4llvm5APIntD2Ev.exit4646:                      ; preds = %bb.xz, %bb.ya, %bb.yb
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #28
  br label %_ZN4llvm3ISD10isZEXTLoadEPKNS_6SDNodeE.exit.thread

bb.yc:                                            ; preds = %bb.al
  %i.cld = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.cle = load ptr, ptr %i.cld, align 8, !tbaa !260 ; 2 uses
  %.sroa.01081.0.copyload = load ptr, ptr %i.cle, align 8, !tbaa !258 ; 2 uses
  %.sroa.51083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cle, i64 8 ; 2 uses
  %i.clf = load <2 x i32>, ptr %.sroa.51083.0..sroa_idx, align 8
  %.sroa.51083.0.copyload = load i32, ptr %.sroa.51083.0..sroa_idx, align 8, !tbaa !257
  %i.clg = load i32, ptr %i.as, align 8, !tbaa !384 ; 3 uses
  %i.clh = icmp ult i32 %i.clg, 65
  br i1 %i.clh, label %bb.yd, label %bb.ye

bb.yd:                                            ; preds = %bb.yc
  %.neg.i4648 = add nsw i32 %i.clg, -64
  %i.cli = load i64, ptr %15, align 8, !tbaa !361 ; 2 uses
  %i.clj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cli, i1 false)
  %i.clk = trunc nuw nsw i64 %i.clj to i32
  %i.cll = add nsw i32 %.neg.i4648, %i.clk
  %i.clm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cli, i1 false)
  %i.cln = trunc nuw nsw i64 %i.clm to i32
  %..i4651 = call i32 @llvm.umin.i32(i32 %i.clg, i32 %i.cln)
  br label %_ZNK4llvm5APInt11countr_zeroEv.exit4652

bb.ye:                                            ; preds = %bb.yc
  %i.clo = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %15) #32
  %i.clp = call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %15) #32
  br label %_ZNK4llvm5APInt11countr_zeroEv.exit4652

_ZNK4llvm5APInt11countr_zeroEv.exit4652:          ; preds = %bb.yd, %bb.ye
  %.0.i46475713 = phi i32 [ %i.cll, %bb.yd ], [ %i.clo, %bb.ye ]
  %.0.i4650 = phi i32 [ %..i4651, %bb.yd ], [ %i.clp, %bb.ye ]
  %i.clq = and i32 %.0.i46475713, -8              ; 4 uses
  %i.clr = and i32 %.0.i4650, -8                  ; 4 uses
  %i.cls = add i32 %i.clq, %i.clr
  %i.clt = sub i32 %i.c, %i.cls
  %i.clu = icmp eq i32 %i.clt, 8
  br i1 %i.clu, label %bb.yf, label %.thread5716

bb.yf:                                            ; preds = %_ZNK4llvm5APInt11countr_zeroEv.exit4652
  %i.clv = icmp ugt i32 %i.clq, %i.clr            ; 2 uses
  %i.clw = select i1 %i.clv, i32 200, i32 198     ; 2 uses
  %i.clx = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.cly = load i8, ptr %i.clx, align 1, !tbaa !400, !range !297, !noundef !55
  %i.clz = trunc nuw i8 %i.cly to i1
  %.sroa.01057.0.copyload.pre = load i16, ptr %14, align 8, !tbaa !351 ; 4 uses
  %.sroa.21059.0.copyload.pre = load ptr, ptr %i.aj, align 8, !tbaa !348 ; 2 uses
  br i1 %i.clz, label %bb.yg, label %.thread5718

bb.yg:                                            ; preds = %bb.yf
  %.not.i.i.i4653 = icmp eq i16 %.sroa.01057.0.copyload.pre, 1
  %i.cma = icmp eq ptr %.sroa.21059.0.copyload.pre, null
  %.not4.i.i4654 = select i1 %.not.i.i.i4653, i1 %i.cma, i1 false
  br i1 %.not4.i.i4654, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit4660, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  %.not.i.i4655 = icmp eq i16 %.sroa.01057.0.copyload.pre, 0
  br i1 %.not.i.i4655, label %.thread5716, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4656

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4656: ; preds = %bb.yh
  %i.cmb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cmc = zext i16 %.sroa.01057.0.copyload.pre to i64 ; 2 uses
  %i.cmd = getelementptr inbounds nuw [8 x i8], ptr %i.cmb, i64 %i.cmc
  %i.cme = load ptr, ptr %i.cmd, align 8, !tbaa !363
  %.not.i4657.not = icmp eq ptr %i.cme, null
  br i1 %.not.i4657.not, label %.thread5716, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit4660

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit4660: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4656, %bb.yg
  %.pre-phi.i4659 = phi i64 [ %i.cmc, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4656 ], [ 1, %bb.yg ]
  %i.cmf = getelementptr inbounds nuw i8, ptr %0, i64 6184
  %i.cmg = zext nneg i32 %i.clw to i64
  %i.cmh = getelementptr inbounds nuw [537 x i8], ptr %i.cmf, i64 %.pre-phi.i4659
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmh, i64 %i.cmg
  %i.cmj = load i8, ptr %i.cmi, align 1, !tbaa !369
  %i.cmk = icmp eq i8 %i.cmj, 0
  br i1 %i.cmk, label %.thread5718, label %.thread5716

.thread5718:                                      ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit4660, %bb.yf
  %i.cml = sub nuw i32 %i.clq, %i.clr
  %355 = sub nuw i32 %i.clr, %i.clq
  %356 = select i1 %i.clv, i32 %i.cml, i32 %355
  %i.cmm = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %i.cmn = zext i32 %356 to i64
  %i.cmo = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %i.cmm, i64 noundef %i.cmn, i16 %.sroa.01057.0.copyload.pre, ptr %.sroa.21059.0.copyload.pre, ptr noundef nonnull align 8 dereferenceable(12) %17) #28 ; 2 uses
  %.fca.0.extract1053 = extractvalue { ptr, i32 } %i.cmo, 0
  %.fca.1.extract1054 = extractvalue { ptr, i32 } %i.cmo, 1
  %i.cmp = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %.sroa.01047.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.21049.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !348
  store ptr %.sroa.01081.0.copyload, ptr %226, align 8, !tbaa !258
  %.sroa.51083.0..sroa_idx1084 = getelementptr inbounds nuw i8, ptr %226, i64 8
  store <2 x i32> %i.clf, ptr %.sroa.51083.0..sroa_idx1084, align 8
  store ptr %.fca.0.extract1053, ptr %227, align 8, !tbaa !258
  %.sroa.41061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %227, i64 8
  store i32 %.fca.1.extract1054, ptr %.sroa.41061.0..sroa_idx, align 8, !tbaa !257
  %i.cmq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.cmp, i32 noundef %i.clw, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 %.sroa.01047.0.copyload, ptr %.sroa.21049.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %226, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %227) #28 ; 2 uses
  %.fca.0.extract1043 = extractvalue { ptr, i32 } %i.cmq, 0
  %.fca.1.extract1044 = extractvalue { ptr, i32 } %i.cmq, 1
  %.sroa.01040.0.copyload = load ptr, ptr %12, align 8, !tbaa !258
  %.sroa.21041.0.copyload = load i32, ptr %i.a, align 8, !tbaa !257
  %i.cmr = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.01040.0.copyload, ptr %i.cmr, align 8, !tbaa !258
  %.sroa.22.0..sroa_idx.i4661 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.21041.0.copyload, ptr %.sroa.22.0..sroa_idx.i4661, align 8, !tbaa !257
  %i.cms = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract1043, ptr %i.cms, align 8, !tbaa !258
  %.sroa.2.0..sroa_idx.i4662 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract1044, ptr %.sroa.2.0..sroa_idx.i4662, align 8, !tbaa !257
  br label %.critedge3992

.thread5716:                                      ; preds = %bb.yh, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4656, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit4660, %_ZNK4llvm5APInt11countr_zeroEv.exit4652
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #28
  call void @_ZNK4llvm5APInt8byteSwapEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %228, ptr noundef nonnull align 8 dereferenceable(12) %15) #28
  %i.cmt = add nuw nsw i32 %7, 1
  %i.cmu = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01081.0.copyload, i32 %.sroa.51083.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %228, ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.cmt, i1 noundef zeroext false) ; 2 uses
  br i1 %i.cmu, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %.thread5716
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #28
  call void @_ZNK4llvm9KnownBits8byteSwapEv(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %229, ptr noundef nonnull align 8 dereferenceable(32) %23)
  %i.cmv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %229) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %229) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #28
  br label %bb.yj

bb.yj:                                            ; preds = %.thread5716, %bb.yi
  %i.cmw = getelementptr inbounds nuw i8, ptr %228, i64 8
  %i.cmx = load i32, ptr %i.cmw, align 8, !tbaa !384
  %i.cmy = icmp ugt i32 %i.cmx, 64
  br i1 %i.cmy, label %bb.yk, label %bb.ym

bb.yk:                                            ; preds = %bb.yj
  %i.cmz = load ptr, ptr %228, align 8, !tbaa !361 ; 2 uses
  %i.cna = icmp eq ptr %i.cmz, null
  br i1 %i.cna, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  call void @_ZdaPv(ptr noundef nonnull %i.cmz) #29
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %bb.yk, %bb.yj
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #28
  br i1 %i.cmu, label %.critedge3992, label %_ZN4llvm3ISD10isZEXTLoadEPKNS_6SDNodeE.exit.thread

bb.yn:                                            ; preds = %bb.al
  %i.cnb = load i32, ptr %i.as, align 8, !tbaa !384 ; 2 uses
  %i.cnc = icmp ult i32 %i.cnb, 65
  br i1 %i.cnc, label %.split5720, label %_ZNK4llvm5APInt5isOneEv.exit4665

.split5720:                                       ; preds = %bb.yn
  %i.cnd = load i64, ptr %15, align 8, !tbaa !361
  %i.cne = icmp eq i64 %i.cnd, 1
  br i1 %i.cne, label %bb.yo, label %bb.yr

_ZNK4llvm5APInt5isOneEv.exit4665:                 ; preds = %bb.yn
  %i.cnf = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %15) #32
  %i.cng = add i32 %i.cnb, -1
  %i.cnh = icmp eq i32 %i.cnf, %i.cng
  br i1 %i.cnh, label %bb.yo, label %bb.yr

bb.yo:                                            ; preds = %.split5720, %_ZNK4llvm5APInt5isOneEv.exit4665
  %i.cni = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.cnj = load i8, ptr %i.cni, align 1, !tbaa !400, !range !297, !noundef !55
  %i.cnk = trunc nuw i8 %i.cnj to i1
  br i1 %i.cnk, label %bb.yr, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.cnl = load i16, ptr %14, align 8, !tbaa !366 ; 3 uses
  %.not.i4666 = icmp eq i16 %i.cnl, 0
  br i1 %.not.i4666, label %_ZNK4llvm3EVT8isVectorEv.exit4668, label %.split5721

.split5721:                                       ; preds = %bb.yp
  %i.cnm = add i16 %i.cnl, -19
  %spec.select.i.i4667 = icmp ult i16 %i.cnm, 197
  br i1 %spec.select.i.i4667, label %bb.yr, label %bb.yq

_ZNK4llvm3EVT8isVectorEv.exit4668:                ; preds = %bb.yp
  %i.cnn = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #32
  br i1 %i.cnn, label %bb.yr, label %bb.yq

bb.yq:                                            ; preds = %.split5721, %_ZNK4llvm3EVT8isVectorEv.exit4668
  %.sroa.21032.0.copyload = load i32, ptr %i.a, align 8, !tbaa !257
  %i.cno = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %.sroa.21028.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !348
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.cnq = load ptr, ptr %i.cnp, align 8, !tbaa !260
  %i.cnr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.cno, i32 noundef 215, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 %i.cnl, ptr %.sroa.21028.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cnq) #28 ; 2 uses
  %.fca.0.extract1022 = extractvalue { ptr, i32 } %i.cnr, 0
  %.fca.1.extract1023 = extractvalue { ptr, i32 } %i.cnr, 1
  %i.cns = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ey, ptr %i.cns, align 8, !tbaa !258
  %.sroa.22.0..sroa_idx.i4669 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.21032.0.copyload, ptr %.sroa.22.0..sroa_idx.i4669, align 8, !tbaa !257
  %i.cnt = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract1022, ptr %i.cnt, align 8, !tbaa !258
  %.sroa.2.0..sroa_idx.i4670 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract1023, ptr %.sroa.2.0..sroa_idx.i4670, align 8, !tbaa !257
  br label %.critedge3992

bb.yr:                                            ; preds = %.split5721, %.split5720, %_ZNK4llvm3EVT8isVectorEv.exit4668, %bb.yo, %_ZNK4llvm5APInt5isOneEv.exit4665
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #28
  %i.cnu = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %.sroa.21020.0.copyload = load i32, ptr %i.a, align 8, !tbaa !257
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %230, ptr noundef nonnull align 8 dereferenceable(920) %i.cnu, ptr nonnull %i.ey, i32 %.sroa.21020.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef %7) #28
  %i.cnv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %230) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %230) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #28
  br label %_ZN4llvm3ISD10isZEXTLoadEPKNS_6SDNodeE.exit.thread

bb.ys:                                            ; preds = %bb.al
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.cnx = load ptr, ptr %i.cnw, align 8, !tbaa !260 ; 4 uses
  %.sroa.01016.0.copyload = load ptr, ptr %i.cnx, align 8, !tbaa !258
  %.sroa.41017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cnx, i64 8
  %.sroa.41017.0.copyload = load i32, ptr %.sroa.41017.0..sroa_idx, align 8, !tbaa !257
  %i.cny = getelementptr inbounds nuw i8, ptr %i.cnx, i64 40
  %.sroa.01013.0.copyload = load ptr, ptr %i.cny, align 8, !tbaa !258
  %.sroa.41014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cnx, i64 48
  %.sroa.41014.0.copyload = load i32, ptr %.sroa.41014.0..sroa_idx, align 8, !tbaa !257
  %i.cnz = load i32, ptr %i.as, align 8, !tbaa !384 ; 2 uses
  %i.coa = icmp ult i32 %i.cnz, 65
  br i1 %i.coa, label %bb.yt, label %bb.yu

bb.yt:                                            ; preds = %bb.ys
  %.neg.i4672 = add nsw i32 %i.cnz, -64
  %i.cob = load i64, ptr %15, align 8, !tbaa !361
  %i.coc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cob, i1 false)
  %i.cod = trunc nuw nsw i64 %i.coc to i32
  %i.coe = add nsw i32 %.neg.i4672, %i.cod
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit4673

bb.yu:                                            ; preds = %bb.ys
  %i.cof = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %15) #32
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit4673

_ZNK4llvm5APInt11countl_zeroEv.exit4673:          ; preds = %bb.yt, %bb.yu
  %.0.i4671 = phi i32 [ %i.coe, %bb.yt ], [ %i.cof, %bb.yu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #28
  %i.cog = sub i32 %i.c, %.0.i4671
  call void @_ZN4llvm5APInt13getLowBitsSetEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %231, i32 noundef %i.c, i32 noundef %i.cog)
  %i.coh = add nuw nsw i32 %7, 1                  ; 2 uses
  %i.coi = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01013.0.copyload, i32 %.sroa.41014.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %231, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.coh, i1 noundef zeroext false)
  br i1 %i.coi, label %.critedge4016, label %bb.yv

bb.yv:                                            ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit4673
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #28
  %i.coj = getelementptr inbounds nuw i8, ptr %232, i64 8 ; 2 uses
  store i32 1, ptr %i.coj, align 8, !tbaa !384
  store i64 0, ptr %232, align 8, !tbaa !361
  %i.cok = getelementptr inbounds nuw i8, ptr %232, i64 16
  %i.col = getelementptr inbounds nuw i8, ptr %232, i64 24
  store i32 1, ptr %i.col, align 8, !tbaa !384
  store i64 0, ptr %i.cok, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #28
  %i.com = getelementptr inbounds nuw i8, ptr %235, i64 8 ; 2 uses
  %i.con = load i32, ptr %i.h, align 8, !tbaa !384 ; 2 uses
  store i32 %i.con, ptr %i.com, align 8, !tbaa !384
  %i.coo = icmp ult i32 %i.con, 65
  br i1 %i.coo, label %bb.yw, label %bb.yx

bb.yw:                                            ; preds = %bb.yv
  %i.cop = load i64, ptr %5, align 8, !tbaa !361
  store i64 %i.cop, ptr %235, align 8, !tbaa !361
  br label %_ZN4llvm5APIntC2ERKS0_.exit4674

bb.yx:                                            ; preds = %bb.yv
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %235, ptr noundef nonnull align 8 dereferenceable(12) %5) #28
  br label %_ZN4llvm5APIntC2ERKS0_.exit4674

_ZN4llvm5APIntC2ERKS0_.exit4674:                  ; preds = %bb.yw, %bb.yx
  call void @_ZN4llvmcoENS_5APIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %234, ptr nofree noundef nonnull align 8 dereferenceable(16) %235)
  call void @_ZN4llvmanENS_5APIntERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %233, ptr nofree noundef nonnull align 8 dereferenceable(16) %234, ptr noundef nonnull align 8 dereferenceable(12) %231)
  %i.coq = getelementptr inbounds nuw i8, ptr %233, i64 8
  %i.cor = load i32, ptr %i.coq, align 8, !tbaa !384
  %i.cos = icmp ult i32 %i.cor, 65
  br i1 %i.cos, label %_ZNK4llvm5APInt8popcountEv.exit, label %bb.yy

_ZNK4llvm5APInt8popcountEv.exit:                  ; preds = %_ZN4llvm5APIntC2ERKS0_.exit4674
  %i.cot = load i64, ptr %233, align 8, !tbaa !361
  %i.cou = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cot)
  %i.cov = trunc nuw nsw i64 %i.cou to i32
  br label %_ZN4llvm5APIntD2Ev.exit4676

end_hunk_0
