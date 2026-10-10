Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZNK4llvm17ARMTargetLowering9LowerCallERNS_14TargetLowering16CallLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEE:bb.a
  br i1 %i.qw, label %bb.cb, label %bb.cl

bb.cb:                                            ; preds = %.critedge18
  %i.qx = icmp ne i32 %.017821952, 0
  %i.qy = and i64 %.sroa.01659.0.copyload, 8448
  %i.qz = icmp ne i64 %i.qy, 256
  %or.cond1892 = select i1 %i.qx, i1 true, i1 %i.qz
  br i1 %or.cond1892, label %.critedge20, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ra = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !457
  %i.rd = icmp eq i16 %i.rc, 7
  %spec.select1185 = select i1 %i.rd, i1 true, i1 %.01958
  br label %.critedge20

.critedge20:                                      ; preds = %bb.cb, %bb.cc
  %.1 = phi i1 [ %spec.select1185, %bb.cc ], [ %.01958, %bb.cb ]
  %i.re = load ptr, ptr %i.h, align 8, !tbaa !699, !nonnull !51, !align !92
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1336
  %i.rg = load i16, ptr %i.rf, align 8
  %i.rh = and i16 %i.rg, 2
  %.not1184 = icmp eq i16 %i.rh, 0
  br i1 %.not1184, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %.critedge20
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #38
  %i.ri = load i8, ptr %i.qu, align 8, !tbaa !467
  %.not.i.i.i1256 = icmp eq i8 %i.ri, 0
  br i1 %.not.i.i.i1256, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @abort() #40
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit:          ; preds = %bb.cd
  %.sroa.0.0.copyload.i1257 = load i32, ptr %i.kp, align 8, !tbaa !324 ; 2 uses
  store i32 %.sroa.0.0.copyload.i1257, ptr %45, align 4
  %i.rj = load i32, ptr %i.ae, align 8, !tbaa !375 ; 2 uses
  %i.rk = load i32, ptr %i.af, align 4, !tbaa !376
  %.not.i1258 = icmp ult i32 %i.rj, %i.rk
  br i1 %.not.i1258, label %bb.cg, label %bb.cf, !prof !455

bb.cf:                                            ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  %i.rl = call noundef nonnull align 4 dereferenceable(6) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_15MachineFunction10ArgRegPairELb1EE18growAndEmplaceBackIJNS_8RegisterERjEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %45, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_15MachineFunction10ArgRegPairEE12emplace_backIJNS_8RegisterERjEEERS2_DpOT_.exit

bb.cg:                                            ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  %i.rm = zext i32 %i.rj to i64
  %i.rn = load ptr, ptr %13, align 8, !tbaa !54
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %i.rm ; 2 uses
  %i.rp = load i32, ptr %i.f, align 4, !tbaa !324
  store i32 %.sroa.0.0.copyload.i1257, ptr %i.ro, align 4, !tbaa !324
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rr = trunc i32 %i.rp to i16
  store i16 %i.rr, ptr %i.rq, align 4, !tbaa !1206
  %i.rs = load i32, ptr %i.ae, align 8, !tbaa !375
  %i.rt = add i32 %i.rs, 1
  store i32 %i.rt, ptr %i.ae, align 8, !tbaa !375
  br label %_ZN4llvm15SmallVectorImplINS_15MachineFunction10ArgRegPairEE12emplace_backIJNS_8RegisterERjEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_15MachineFunction10ArgRegPairEE12emplace_backIJNS_8RegisterERjEEERS2_DpOT_.exit: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_15MachineFunction10ArgRegPairEE12emplace_backIJNS_8RegisterERjEEERS2_DpOT_.exit, %.critedge20
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #38
  %i.ru = load i8, ptr %i.qu, align 8, !tbaa !467
  %.not.i.i.i1260 = icmp eq i8 %i.ru, 0
  br i1 %.not.i.i.i1260, label %_ZNK4llvm11CCValAssign9getLocRegEv.exit1262, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @abort() #40
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit1262:      ; preds = %bb.ch
  %.sroa.0.0.copyload.i1261 = load i32, ptr %i.kp, align 8, !tbaa !324
  store i32 %.sroa.0.0.copyload.i1261, ptr %46, align 8, !tbaa !601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false)
  %i.rv = load i32, ptr %i.fp, align 8, !tbaa !375 ; 2 uses
  %i.rw = load i32, ptr %i.fq, align 4, !tbaa !376
  %.not.i1263 = icmp ult i32 %i.rv, %i.rw
  br i1 %.not.i1263, label %bb.ck, label %bb.cj, !prof !455

bb.cj:                                            ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit1262
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(24) %46)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit

bb.ck:                                            ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit1262
  %i.rx = zext i32 %i.rv to i64
  %i.ry = load ptr, ptr %19, align 8, !tbaa !54
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %i.ry, i64 %i.rx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.rz, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false)
  %i.sa = load i32, ptr %i.fp, align 8, !tbaa !375
  %i.sb = add i32 %i.sa, 1
  store i32 %i.sb, ptr %i.fp, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285

bb.cl:                                            ; preds = %.critedge18
  br i1 %.not1897, label %bb.dc, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sc = load i32, ptr %i.jx, align 8, !tbaa !375
  %i.sd = load i32, ptr %i.jy, align 8, !tbaa !700 ; 2 uses
  %i.se = load ptr, ptr %21, align 8, !tbaa !703, !noalias !1207 ; 3 uses
  %i.sf = load ptr, ptr %i.jz, align 8, !tbaa !704, !noalias !1207 ; 2 uses
  %i.sg = load i32, ptr %i.ka, align 4, !tbaa !705, !noalias !1207 ; 4 uses
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %.loopexit.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.si = add i32 %i.sg, -1                       ; 2 uses
  %i.sj = mul i32 %.017821952, 37
  %.017.i.i.i.i = and i32 %i.si, %i.sj            ; 3 uses
  %i.sk = zext i32 %.017.i.i.i.i to i64           ; 2 uses
  %i.sl = lshr i64 %i.sk, 5
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !324, !noalias !1208
  %i.so = and i32 %.017.i.i.i.i, 31
  %i.sp = lshr i32 %i.sn, %i.so
  %i.sq = trunc i32 %i.sp to i1
  br i1 %i.sq, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !706

bb.co:                                            ; preds = %.lr.ph.i.i.i.i
  %i.sr = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i1264 = and i32 %i.sr, %i.si          ; 3 uses
  %i.ss = zext i32 %.0.i.i.i.i1264 to i64         ; 2 uses
  %i.st = lshr i64 %i.ss, 5
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.st
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !324, !noalias !1208
  %i.sw = and i32 %.0.i.i.i.i1264, 31
  %i.sx = lshr i32 %i.sv, %i.sw
  %i.sy = trunc i32 %i.sx to i1
  br i1 %i.sy, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !707

.lr.ph.i.i.i.i:                                   ; preds = %bb.cn, %bb.co
  %i.sz = phi i64 [ %i.ss, %bb.co ], [ %i.sk, %bb.cn ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i1264, %bb.co ], [ %.017.i.i.i.i, %bb.cn ]
  %i.ta = getelementptr inbounds nuw [24 x i8], ptr %i.se, i64 %i.sz ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !324, !noalias !1208
  %i.tc = icmp eq i32 %.017821952, %i.tb
  br i1 %i.tc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit.loopexit, label %bb.co, !prof !455

.loopexit.i.i:                                    ; preds = %bb.co, %bb.cn, %bb.cm
  %i.td = zext i32 %i.sg to i64                   ; 2 uses
  %i.te = getelementptr inbounds nuw [24 x i8], ptr %i.se, i64 %i.td
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre2021 = zext i32 %i.sg to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre2021, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit.loopexit ], [ %i.td, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.ta, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit.loopexit ], [ %i.te, %.loopexit.i.i ] ; 3 uses
  %i.tf = getelementptr inbounds nuw [24 x i8], ptr %i.se, i64 %.pre-phi
  %.not1901 = icmp eq ptr %.lcssa.sink.i.i, %i.tf
  br i1 %.not1901, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit
  %i.tg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %.sroa.71588.0..sroa_idx1591 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %.sroa.71588.0.copyload1592 = load i32, ptr %.sroa.71588.0..sroa_idx1591, align 8, !tbaa !324
  br label %bb.cr

bb.cq:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_7SDValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4findERKj.exit
  %.sroa.71588.0.copyload1594 = load i32, ptr %.sroa.4666.0..sroa_idx, align 8
  %i.th = load i8, ptr %i.n, align 2, !tbaa !213, !range !50, !noundef !51
  %i.ti = trunc nuw i8 %i.th to i1
  %i.tj = xor i1 %i.ti, true
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.sroa.01584.0.in = phi ptr [ %i.tg, %bb.cp ], [ %28, %bb.cq ]
  %.sroa.71588.0 = phi i32 [ %.sroa.71588.0.copyload1592, %bb.cp ], [ %.sroa.71588.0.copyload1594, %bb.cq ] ; 2 uses
  %.01139 = phi i1 [ true, %bb.cp ], [ %i.tj, %bb.cq ]
  %.sroa.01584.0 = load ptr, ptr %.sroa.01584.0.in, align 8 ; 2 uses
  %i.tk = icmp ult i32 %i.sd, %i.sc
  br i1 %i.tk, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.tl = zext i32 %i.sd to i64
  %i.tm = load ptr, ptr %i.kb, align 8, !tbaa !54
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.tl ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !709 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !710 ; 2 uses
  %i.tr = load ptr, ptr %i.x, align 8, !tbaa !453
  %i.ts = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.tr) #38
  %i.tt = load ptr, ptr %0, align 8, !tbaa !42
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = call i16 %i.tv(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.ts, i32 noundef 0) #38 ; 2 uses
  %i.tx = icmp ult i32 %i.to, %i.tq
  %i.ty = sub i32 %i.tq, %i.to                    ; 2 uses
  br i1 %i.tx, label %.lr.ph1949.preheader, label %._crit_edge1950

.lr.ph1949.preheader:                             ; preds = %bb.cs
  %wide.trip.count = zext i32 %i.ty to i64
  br label %.lr.ph1949

.lr.ph1949:                                       ; preds = %.lr.ph1949.preheader, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit1271
  %indvars.iv2005 = phi i64 [ 0, %.lr.ph1949.preheader ], [ %indvars.iv.next2006, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit1271 ] ; 2 uses
  %storemerge1946 = phi i32 [ %i.to, %.lr.ph1949.preheader ], [ %i.ut, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit1271 ] ; 2 uses
  %i.tz = shl i64 %indvars.iv2005, 2
  %i.ua = and i64 %i.tz, 4294967292
  %i.ub = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i64 noundef %i.ua, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract508 = extractvalue { ptr, i32 } %i.ub, 0
  %.fca.1.extract509 = extractvalue { ptr, i32 } %i.ub, 1
  store ptr %.sroa.01584.0, ptr %47, align 8, !tbaa !374
  store i32 %.sroa.71588.0, ptr %.sroa.71588.0..sroa_idx, align 8, !tbaa !324
  store ptr %.fca.0.extract508, ptr %48, align 8, !tbaa !374
  store i32 %.fca.1.extract509, ptr %.sroa.4513.0..sroa_idx, align 8, !tbaa !324
  %i.uc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 %i.tw, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48) #38 ; 2 uses
  %.fca.0.extract499 = extractvalue { ptr, i32 } %i.uc, 0 ; 2 uses
  %.fca.1.extract500 = extractvalue { ptr, i32 } %i.uc, 1 ; 2 uses
  store ptr %.fca.0.extract499, ptr %49, align 8, !tbaa !374
  store i32 %.fca.1.extract500, ptr %.sroa.5507.0..sroa_idx, align 8, !tbaa !324
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %50, i8 0, i64 21, i1 false)
  %i.ud = call i16 @_ZNK4llvm12SelectionDAG13InferPtrAlignENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr %.fca.0.extract499, i32 %.fca.1.extract500) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %51, i8 0, i64 40, i1 false)
  %i.ue = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i16 %i.tw, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr %.sroa.01737.3, i32 %.sroa.38.3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %49, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %50, i16 %i.ud, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %51, ptr noundef null) #38 ; 2 uses
  %.fca.0.extract485 = extractvalue { ptr, i32 } %i.ue, 0 ; 3 uses
  %.fca.1.extract486 = extractvalue { ptr, i32 } %i.ue, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #38
  %i.uf = load i32, ptr %i.fs, align 8, !tbaa !375 ; 2 uses
  %i.ug = load i32, ptr %i.ft, align 4, !tbaa !376
  %.not.i1267 = icmp ult i32 %i.uf, %i.ug
  br i1 %.not.i1267, label %bb.cu, label %bb.ct, !prof !455

bb.ct:                                            ; preds = %.lr.ph1949
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr %.fca.0.extract485, i32 1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1269

bb.cu:                                            ; preds = %.lr.ph1949
  %i.uh = zext i32 %i.uf to i64
  %i.ui = load ptr, ptr %20, align 8, !tbaa !54
  %i.uj = getelementptr inbounds nuw [16 x i8], ptr %i.ui, i64 %i.uh ; 2 uses
  store ptr %.fca.0.extract485, ptr %i.uj, align 1
  %.sroa.32.0..sroa_idx.i1268 = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  store i32 1, ptr %.sroa.32.0..sroa_idx.i1268, align 1
  %i.uk = load i32, ptr %i.fs, align 8, !tbaa !375
  %i.ul = add i32 %i.uk, 1
  store i32 %i.ul, ptr %i.fs, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1269

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1269: ; preds = %bb.ct, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #38
  store i32 %storemerge1946, ptr %52, align 8, !tbaa !601, !alias.scope !1209
  store ptr %.fca.0.extract485, ptr %i.kc, align 8, !tbaa !374
  store i32 %.fca.1.extract486, ptr %.sroa.51564.0..sroa_idx, align 8, !tbaa !324
  %i.um = load i32, ptr %i.fp, align 8, !tbaa !375 ; 2 uses
  %i.un = load i32, ptr %i.fq, align 4, !tbaa !376
  %.not.i1270 = icmp ult i32 %i.um, %i.un
  br i1 %.not.i1270, label %bb.cw, label %bb.cv, !prof !455

bb.cv:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1269
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(24) %52)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit1271

bb.cw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1269
  %i.uo = zext i32 %i.um to i64
  %i.up = load ptr, ptr %19, align 8, !tbaa !54
  %i.uq = getelementptr inbounds nuw [24 x i8], ptr %i.up, i64 %i.uo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.uq, ptr noundef nonnull align 8 dereferenceable(24) %52, i64 24, i1 false)
  %i.ur = load i32, ptr %i.fp, align 8, !tbaa !375
  %i.us = add i32 %i.ur, 1
  store i32 %i.us, ptr %i.fp, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit1271

_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit1271: ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #38
  %indvars.iv.next2006 = add nuw nsw i64 %indvars.iv2005, 1 ; 2 uses
  %i.ut = add nuw i32 %storemerge1946, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next2006, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge1950, label %.lr.ph1949, !llvm.loop !1183

._crit_edge1950:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit1271, %bb.cs
  %i.uu = load i32, ptr %i.jx, align 8, !tbaa !375
  %i.uv = load i32, ptr %i.jy, align 8, !tbaa !700 ; 2 uses
  %i.uw = icmp ult i32 %i.uv, %i.uu
  br i1 %i.uw, label %bb.cx, label %_ZN4llvm7CCState15nextInRegsParamEv.exit

bb.cx:                                            ; preds = %._crit_edge1950
  %i.ux = add nuw i32 %i.uv, 1
  store i32 %i.ux, ptr %i.jy, align 8, !tbaa !700
  br label %_ZN4llvm7CCState15nextInRegsParamEv.exit

_ZN4llvm7CCState15nextInRegsParamEv.exit:         ; preds = %._crit_edge1950, %bb.cx
  %i.uy = shl i32 %i.ty, 2
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm7CCState15nextInRegsParamEv.exit, %bb.cr
  %.01138 = phi i32 [ %i.uy, %_ZN4llvm7CCState15nextInRegsParamEv.exit ], [ 0, %bb.cr ] ; 3 uses
  %i.uz = icmp ugt i32 %.sroa.71663.0.copyload, %.01138
  %or.cond1893 = select i1 %.01139, i1 %i.uz, i1 false
  br i1 %or.cond1893, label %bb.cz, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285

bb.cz:                                            ; preds = %bb.cy
  %i.va = load ptr, ptr %i.x, align 8, !tbaa !453
  %i.vb = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.va) #38
  %i.vc = load ptr, ptr %0, align 8, !tbaa !42
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8
  %i.vf = call i16 %i.ve(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.vb, i32 noundef 0) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #38
  %i.vg = load i8, ptr %i.n, align 2, !tbaa !213, !range !50, !noundef !51
  %i.vh = trunc nuw i8 %i.vg to i1
  call void @_ZNK4llvm17ARMTargetLowering21computeAddrForCallArgERKNS_5SDLocERNS_12SelectionDAGERKNS_11CCValAssignENS_7SDValueEbi(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.347") align 8 %53, ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr noundef nonnull align 8 dereferenceable(26) %i.kp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, i1 noundef zeroext %i.vh, i32 noundef %.011282101)
  %.sroa.01812.0.copyload1813 = load ptr, ptr %53, align 8, !tbaa !374
  %.sroa.51814.0.copyload1816 = load i32, ptr %.sroa.51814.0..sroa_idx1815, align 8, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #38
  %i.vi = zext i32 %.01138 to i64
  %i.vj = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i64 noundef %i.vi, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract471 = extractvalue { ptr, i32 } %i.vj, 0
  %.fca.1.extract472 = extractvalue { ptr, i32 } %i.vj, 1
  store ptr %.sroa.01584.0, ptr %54, align 8, !tbaa !374
  store i32 %.sroa.71588.0, ptr %.sroa.71588.0..sroa_idx1589, align 8, !tbaa !324
  store ptr %.fca.0.extract471, ptr %55, align 8, !tbaa !374
  store i32 %.fca.1.extract472, ptr %.sroa.4476.0..sroa_idx, align 8, !tbaa !324
  %i.vk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 %i.vf, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %54, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55) #38 ; 2 uses
  %.fca.0.extract463 = extractvalue { ptr, i32 } %i.vk, 0
  %.fca.1.extract464 = extractvalue { ptr, i32 } %i.vk, 1
  %i.vl = sub nuw i32 %.sroa.71663.0.copyload, %.01138
  %i.vm = zext i32 %i.vl to i64
  %i.vn = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i64 noundef %i.vm, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract456 = extractvalue { ptr, i32 } %i.vn, 0
  %.fca.1.extract457 = extractvalue { ptr, i32 } %i.vn, 1
  %i.vo = trunc i64 %.sroa.01659.0.copyload to i32
  %i.vp = lshr i32 %i.vo, 20
  %i.vq = and i32 %i.vp, 63                       ; 2 uses
  %.not.i.i1272 = icmp eq i32 %i.vq, 0
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = add nsw i64 %i.vr, -1
  %i.vt = shl nuw nsw i64 1, %i.vs
  %i.vu = select i1 %.not.i.i1272, i64 1, i64 %i.vt
  %i.vv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i64 noundef %i.vu, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract449 = extractvalue { ptr, i32 } %i.vv, 0
  %.fca.1.extract450 = extractvalue { ptr, i32 } %i.vv, 1
  %i.vw = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i16 1, ptr null, i16 249, ptr null) #38 ; 2 uses
  %i.vx = extractvalue { ptr, i32 } %i.vw, 0
  %i.vy = extractvalue { ptr, i32 } %i.vw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #38
  store ptr %.sroa.01737.3, ptr %56, align 16, !tbaa !374
  store i32 %.sroa.38.3, ptr %.sroa.38.0..sroa_idx1756, align 8, !tbaa !324
  store ptr %.sroa.01812.0.copyload1813, ptr %i.kd, align 16, !tbaa !374
  store i32 %.sroa.51814.0.copyload1816, ptr %.sroa.51814.0..sroa_idx, align 8, !tbaa !324
  store ptr %.fca.0.extract463, ptr %i.ke, align 16, !tbaa !374
  store i32 %.fca.1.extract464, ptr %.sroa.4469.0..sroa_idx, align 8, !tbaa !324
  store ptr %.fca.0.extract456, ptr %i.kf, align 16, !tbaa !374
  store i32 %.fca.1.extract457, ptr %.sroa.4461.0..sroa_idx, align 8, !tbaa !324
  store ptr %.fca.0.extract449, ptr %i.kg, align 16, !tbaa !374
  store i32 %.fca.1.extract450, ptr %.sroa.4454.0..sroa_idx, align 8, !tbaa !324
  store ptr %56, ptr %57, align 8, !tbaa !462
  store i64 5, ptr %i.kh, align 8, !tbaa !463
  %i.vz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 557, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr %i.vx, i32 %i.vy, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %57) #38 ; 2 uses
  %.fca.0.extract437 = extractvalue { ptr, i32 } %i.vz, 0 ; 2 uses
  %.fca.1.extract438 = extractvalue { ptr, i32 } %i.vz, 1 ; 2 uses
  %i.wa = load i32, ptr %i.fs, align 8, !tbaa !375 ; 2 uses
  %i.wb = load i32, ptr %i.ft, align 4, !tbaa !376
  %.not.i1274 = icmp ult i32 %i.wa, %i.wb
  br i1 %.not.i1274, label %bb.db, label %bb.da, !prof !455

bb.da:                                            ; preds = %bb.cz
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr %.fca.0.extract437, i32 %.fca.1.extract438)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1276

bb.db:                                            ; preds = %bb.cz
  %i.wc = zext i32 %i.wa to i64
  %i.wd = load ptr, ptr %20, align 8, !tbaa !54
  %i.we = getelementptr inbounds nuw [16 x i8], ptr %i.wd, i64 %i.wc ; 2 uses
  store ptr %.fca.0.extract437, ptr %i.we, align 1
  %.sroa.32.0..sroa_idx.i1275 = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store i32 %.fca.1.extract438, ptr %.sroa.32.0..sroa_idx.i1275, align 1
  %i.wf = load i32, ptr %i.fs, align 8, !tbaa !375
  %i.wg = add i32 %i.wf, 1
  store i32 %i.wg, ptr %i.fs, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1276

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1276: ; preds = %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285

bb.dc:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #38
  %i.wh = load i8, ptr %i.n, align 2, !tbaa !213, !range !50, !noundef !51
  %i.wi = trunc nuw i8 %i.wh to i1
  call void @_ZNK4llvm17ARMTargetLowering21computeAddrForCallArgERKNS_5SDLocERNS_12SelectionDAGERKNS_11CCValAssignENS_7SDValueEbi(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.347") align 8 %58, ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr noundef nonnull align 8 dereferenceable(26) %i.kp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, i1 noundef zeroext %i.wi, i32 noundef %.011282101)
  %.sroa.01823.0.copyload1824 = load ptr, ptr %58, align 8, !tbaa !374
  %.sroa.51825.0.copyload1827 = load i32, ptr %.sroa.51825.0..sroa_idx1826, align 8, !tbaa !324
  %.sroa.61837.0.copyload1839 = load i32, ptr %.sroa.61837.0..sroa_idx1838, align 8
  %.sroa.71840.0.copyload1842 = load i8, ptr %.sroa.71840.0..sroa_idx1841, align 4
  %i.wj = load <2 x i64>, ptr %i.ki, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #38
  %.sroa.0428.0.copyload = load ptr, ptr %28, align 8 ; 2 uses
  %.sroa.2429.0.copyload = load i32, ptr %.sroa.4666.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %59, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x i64> %i.wj, ptr %5, align 16
  store i32 %.sroa.61837.0.copyload1839, ptr %.sroa.31846.0..sroa_idx, align 16
  store i8 %.sroa.71840.0.copyload1842, ptr %.sroa.41847.0..sroa_idx, align 4
  store ptr %.sroa.01823.0.copyload1824, ptr %6, align 8
  store i32 %.sroa.51825.0.copyload1827, ptr %.sroa.21830.0..sroa_idx, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.0428.0.copyload, i64 48
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !352
  %i.wm = zext i32 %.sroa.2429.0.copyload to i64
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.wl, i64 %i.wm ; 2 uses
  %.sroa.0.0.copyload.i.i.i1278 = load i16, ptr %i.wn, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i.i.i1279 = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %.sroa.21.0.copyload.i.i.i1280 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i1279, align 8, !tbaa !353
  %i.wo = call i8 @_ZNK4llvm12SelectionDAG11getEVTAlignENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i16 %.sroa.0.0.copyload.i.i.i1278, ptr %.sroa.21.0.copyload.i.i.i1280) #38
  %i.wp = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr %.sroa.01737.3, i32 %.sroa.38.3, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr %.sroa.0428.0.copyload, i32 %.sroa.2429.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %5, i8 %i.wo, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %59) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract424 = extractvalue { ptr, i32 } %i.wp, 0 ; 2 uses
  %.fca.1.extract425 = extractvalue { ptr, i32 } %i.wp, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #38
  %i.wq = load i32, ptr %i.fs, align 8, !tbaa !375 ; 2 uses
  %i.wr = load i32, ptr %i.ft, align 4, !tbaa !376
  %.not.i1283 = icmp ult i32 %i.wq, %i.wr
  br i1 %.not.i1283, label %bb.de, label %bb.dd, !prof !455

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr %.fca.0.extract424, i32 %.fca.1.extract425)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285

bb.de:                                            ; preds = %bb.dc
  %i.ws = zext i32 %i.wq to i64
  %i.wt = load ptr, ptr %20, align 8, !tbaa !54
  %i.wu = getelementptr inbounds nuw [16 x i8], ptr %i.wt, i64 %i.ws ; 2 uses
  store ptr %.fca.0.extract424, ptr %i.wu, align 1
  %.sroa.32.0..sroa_idx.i1284 = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  store i32 %.fca.1.extract425, ptr %.sroa.32.0..sroa_idx.i1284, align 1
  %i.wv = load i32, ptr %i.fs, align 8, !tbaa !375
  %i.ww = add i32 %i.wv, 1
  store i32 %i.ww, ptr %i.fs, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285: ; preds = %bb.de, %bb.dd, %bb.cy, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1276, %bb.ca, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit, %bb.bz
  %.2 = phi i1 [ %.01958, %bb.bz ], [ %.01958, %bb.ca ], [ %.1, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_7SDValueEELb1EE9push_backERKS3_.exit ], [ %.01958, %bb.cy ], [ %.01958, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1276 ], [ %.01958, %bb.dd ], [ %.01958, %bb.de ] ; 2 uses
  %i.wx = load i32, ptr %i.f, align 4, !tbaa !324
  %i.wy = add i32 %i.wx, 1                        ; 3 uses
  store i32 %i.wy, ptr %i.f, align 4, !tbaa !324
  %i.wz = add i32 %.017821952, 1
  %.not1168 = icmp eq i32 %i.wy, %i.jp
  br i1 %.not1168, label %._crit_edge1961, label %bb.ar, !llvm.loop !1184

bb.df:                                            ; preds = %._crit_edge1961
  %i.xa = load ptr, ptr %20, align 8, !tbaa !54
  store ptr %i.xa, ptr %60, align 8, !tbaa !462
  %i.xb = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.xc = zext i32 %i.kl to i64
  store i64 %i.xc, ptr %i.xb, align 8, !tbaa !463
  %i.xd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %60) #38 ; 2 uses
  %.fca.0.extract414 = extractvalue { ptr, i32 } %i.xd, 0
  %.fca.1.extract415 = extractvalue { ptr, i32 } %i.xd, 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge1961
  %.sroa.01737.4 = phi ptr [ %.sroa.01737.1.lcssa, %._crit_edge1961 ], [ %.fca.0.extract414, %bb.df ] ; 2 uses
  %.sroa.38.4 = phi i32 [ %.sroa.38.1.lcssa, %._crit_edge1961 ], [ %.fca.1.extract415, %bb.df ] ; 2 uses
  %i.xe = load ptr, ptr %19, align 8, !tbaa !54   ; 5 uses
  %i.xf = load i32, ptr %i.fp, align 8, !tbaa !375 ; 3 uses
  %i.xg = zext i32 %i.xf to i64
  %.idx1989 = mul nuw nsw i64 %i.xg, 24
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 %.idx1989
  %.not11691964 = icmp eq i32 %i.xf, 0
  br i1 %.not11691964, label %._crit_edge1972, label %.lr.ph1971

.lr.ph1971:                                       ; preds = %bb.dg
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.26.0..sroa_idx.i1291 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm17ARMTargetLowering20GetF64FormalArgumentERNS_11CCValAssignES2_RNS_7SDValueERNS_12SelectionDAGERKNS_5SDLocE:bb.a
  %i.aa = load i64, ptr %2, align 8, !tbaa !468
  %i.ab = call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateFixedObjectEmlbb(ptr noundef nonnull align 8 dereferenceable(728) %i.z, i64 noundef 4, i64 noundef %i.aa, i1 noundef zeroext true, i1 noundef zeroext false) #38 ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !453
  %i.ad = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ac) #38
  %i.ae = load ptr, ptr %0, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i16 %i.ag(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.ad, i32 noundef 0) #38
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef %i.ab, i16 %i.ah, ptr null, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.ai, 1
  %.sroa.015.0.copyload = load ptr, ptr %3, align 8, !tbaa !374
  %.sroa.216.0.copyload = load i32, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !324
  store ptr %.fca.0.extract21, ptr %10, align 8, !tbaa !374
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !324
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !453
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1065) %i.aj, i32 noundef %i.ab, i64 noundef 0) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 7, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.sroa.015.0.copyload, i32 %.sroa.216.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %11, i16 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef null) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.d

bb.c:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  call void @abort() #40
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit73:        ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit
  %.sroa.0.0.copyload.i72 = load i32, ptr %2, align 8, !tbaa !324
  %i.al = call i32 @_ZN4llvm15MachineFunction9addLiveInENS_10MCRegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, i32 %.sroa.0.0.copyload.i72, ptr noundef nonnull %.) #38
  %.sroa.06.0.copyload = load ptr, ptr %3, align 8, !tbaa !374
  %.sroa.27.0.copyload = load i32, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 7, ptr null, i16 1, ptr null) #38 ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store ptr %.sroa.06.0.copyload, ptr %6, align 16, !tbaa !374
  %.sroa.218.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.27.0.copyload, ptr %.sroa.218.0..sroa_idx.i77, align 8, !tbaa !324
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 %i.al, i16 7, ptr null) #38 ; 2 uses
  %.fca.0.extract3.i78 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract4.i79 = extractvalue { ptr, i32 } %i.aq, 1
  store ptr %.fca.0.extract3.i78, ptr %i.ap, align 16
  %.sroa.26.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract4.i79, ptr %.sroa.26.0..sroa_idx.i80, align 8
  store ptr %6, ptr %7, align 8, !tbaa !462
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.ar, align 8, !tbaa !463
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %i.an, i32 %i.ao, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm11CCValAssign9getLocRegEv.exit73, %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit
  %.pn = phi { ptr, i32 } [ %i.ak, %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit ], [ %i.as, %_ZNK4llvm11CCValAssign9getLocRegEv.exit73 ] ; 2 uses
  %.sroa.8.0 = extractvalue { ptr, i32 } %.pn, 1  ; 2 uses
  %.sroa.091.0 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 553
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !464, !range !50, !noundef !51
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.091.1 = phi ptr [ %.sroa.091.0, %bb.d ], [ %.fca.0.extract30, %bb.e ]
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.d ], [ %.fca.1.extract31, %bb.e ]
  %.sroa.0101.0 = phi ptr [ %.fca.0.extract30, %bb.d ], [ %.sroa.091.0, %bb.e ]
  %.sroa.6.0 = phi i32 [ %.fca.1.extract31, %bb.d ], [ %.sroa.8.0, %bb.e ]
  store ptr %.sroa.0101.0, ptr %13, align 8, !tbaa !374
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !324
  store ptr %.sroa.091.1, ptr %14, align 8, !tbaa !374
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !324
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 654, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 15, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #38
  ret { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm17ARMTargetLowering14StoreByValRegsERNS_7CCStateERNS_12SelectionDAGERKNS_5SDLocERNS_7SDValueEPKNS_5ValueEjij(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 7 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %12 = alloca %"class.llvm::ArrayRef.429", align 8 ; 5 uses
  %13 = alloca %"class.llvm::SmallVector.399", align 8 ; 10 uses
  %14 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::ArrayRef.429", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !453  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !565
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !566  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.h = load i32, ptr %i.g, align 8, !tbaa !375
  %i.i = icmp ult i32 %6, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.k = zext i32 %6 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !709
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !710
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !324  ; 4 uses
  %i.u = and i32 %i.t, 1024
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = and i32 %i.t, 2048
  %.not.i.1 = icmp eq i32 %i.v, 0
  br i1 %.not.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.t, 4096
  %.not.i.2 = icmp eq i32 %i.w, 0
  br i1 %.not.i.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = and i32 %i.t, 8192
  %.not.i.3 = icmp eq i32 %i.x, 0
  br i1 %.not.i.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0613.i.lcssa.wide = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZL10GPRArgRegs, i64 %.0613.i.lcssa.wide
  %i.z = load i16, ptr %i.y, align 2, !tbaa !62
  %i.aa = zext i16 %i.z to i32
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread: ; preds = %bb.f, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, %bb.b
  %.0129 = phi i32 [ %i.p, %bb.b ], [ 78, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit ], [ 78, %bb.f ] ; 3 uses
  %.0128 = phi i32 [ %i.n, %bb.b ], [ %i.aa, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit ], [ 78, %bb.f ] ; 5 uses
  %.not = icmp eq i32 %.0129, %.0128
  %.neg = shl i32 %.0128, 2
  %i.ab = add i32 %.neg, -312
  %.0 = select i1 %.not, i32 %7, i32 %i.ab
  %i.ac = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.b) #38
  %i.ad = load ptr, ptr %0, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i16 %i.af(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.ac, i32 noundef 0) #38 ; 3 uses
  %i.ah = zext i32 %8 to i64
  %i.ai = sext i32 %.0 to i64
  %i.aj = tail call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateFixedObjectEmlbb(ptr noundef nonnull align 8 dereferenceable(728) %i.d, i64 noundef %i.ah, i64 noundef %i.ai, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %i.ak = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef %i.aj, i16 %i.ag, ptr null, i1 noundef zeroext false) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.al, ptr %13, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i32 0, ptr %i.am, align 8, !tbaa !375
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  store i32 4, ptr %i.an, align 4, !tbaa !376
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !804, !range !50, !noundef !51
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !range !50
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = xor i1 %i.at, true
  %i.av = select i1 %i.aq, i1 %i.au, i1 false
  %i.aw = select i1 %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 1344), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 256)
  %i.ax = icmp ult i32 %.0128, %.0129
  br i1 %i.ax, label %.lr.ph, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ba = ptrtoint ptr %5 to i64
  %.not.i100 = icmp eq ptr %5, null
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.652.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bc = sub nuw i32 %.0129, %.0128
  %wide.trip.count = zext i32 %i.bc to i64
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.pre = load i32, ptr %i.am, align 8, !tbaa !375 ; 2 uses
  %.pre139.pre = load ptr, ptr %13, align 8, !tbaa !54 ; 2 uses
  %.not.i99 = icmp eq i32 %.pre, 0
  br i1 %.not.i99, label %bb.m, label %bb.l

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %.pn134 = phi { ptr, i32 } [ %i.ak, %.lr.ph ], [ %i.cj, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %.093133 = phi i32 [ %.0128, %.lr.ph ], [ %i.ck, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %.sroa.652.0 = extractvalue { ptr, i32 } %.pn134, 1 ; 2 uses
  %.sroa.050.0 = extractvalue { ptr, i32 } %.pn134, 0 ; 2 uses
  %i.bd = call i32 @_ZN4llvm15MachineFunction9addLiveInENS_10MCRegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, i32 %.093133, ptr noundef nonnull %i.aw) #38
  %.sroa.037.0.copyload = load ptr, ptr %4, align 8, !tbaa !374
  %.sroa.238.0.copyload = load i32, ptr %.sroa.238.0..sroa_idx, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null) #38 ; 2 uses
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = extractvalue { ptr, i32 } %i.be, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  store ptr %.sroa.037.0.copyload, ptr %11, align 16, !tbaa !374
  store i32 %.sroa.238.0.copyload, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !324
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 %i.bd, i16 7, ptr null) #38 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.bh, 1
  store ptr %.fca.0.extract3.i, ptr %i.ay, align 16
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %11, ptr %12, align 8, !tbaa !462
  store i64 2, ptr %i.az, align 8, !tbaa !463
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.bf, i32 %i.bg, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %12) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.fca.0.extract32 = extractvalue { ptr, i32 } %i.bi, 0 ; 3 uses
  %.fca.1.extract33 = extractvalue { ptr, i32 } %i.bi, 1 ; 2 uses
  %i.bj = shl i64 %indvars.iv, 2
  %i.bk = and i64 %i.bj, 4294967292
  br i1 %.not.i100, label %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !788 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.bo = and i32 %i.bn, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.bo, 18
  br i1 %spec.select.i.i.i.i, label %bb.i, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !808
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !353
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i:  ; preds = %bb.i, %bb.h
  %i.bs = phi i32 [ %.pre.i.i, %bb.i ], [ %i.bn, %bb.h ]
  %i.bt = lshr i32 %i.bs, 8
  br label %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit

_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit: ; preds = %bb.g, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i
  %i.bu = phi i32 [ %i.bt, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %i.ba, ptr %9, align 8
  store i64 %i.bk, ptr %.sroa.2110.0..sroa_idx, align 8
  store i32 %i.bu, ptr %.sroa.3.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 4
  store ptr %.sroa.050.0, ptr %10, align 8
  store i32 %.sroa.652.0, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.fca.0.extract32, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !352
  %i.bx = zext i32 %.fca.1.extract33 to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.by, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !353
  %i.bz = call i8 @_ZNK4llvm12SelectionDAG11getEVTAlignENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i) #38
  %i.ca = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr %.fca.0.extract32, i32 1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.fca.0.extract32, i32 %.fca.1.extract33, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %9, i8 %i.bz, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %14) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.ca, 0 ; 2 uses
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.ca, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %i.cb = load i32, ptr %i.am, align 8, !tbaa !375 ; 2 uses
  %i.cc = load i32, ptr %i.an, align 4, !tbaa !376
  %.not.i102 = icmp ult i32 %i.cb, %i.cc
  br i1 %.not.i102, label %bb.k, label %bb.j, !prof !455

bb.j:                                             ; preds = %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %.fca.0.extract17, i32 %.fca.1.extract18)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.k:                                             ; preds = %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit
  %i.cd = zext i32 %i.cb to i64
  %i.ce = load ptr, ptr %13, align 8, !tbaa !54
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  store ptr %.fca.0.extract17, ptr %i.cf, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %.fca.1.extract18, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.cg = load i32, ptr %i.am, align 8, !tbaa !375
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.am, align 8, !tbaa !375
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.j, %bb.k
  store ptr %.sroa.050.0, ptr %15, align 8, !tbaa !374
  store i32 %.sroa.652.0, ptr %.sroa.652.0..sroa_idx53, align 8, !tbaa !324
  %i.ci = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.ag, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.ci, 1
  store ptr %.fca.0.extract6, ptr %16, align 8
  store i32 %.fca.1.extract7, ptr %.sroa.29.0..sroa_idx, align 8
  %i.cj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.ag, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #38
  %i.ck = add nuw i32 %.093133, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1293

bb.l:                                             ; preds = %._crit_edge
  store ptr %.pre139.pre, ptr %17, align 8, !tbaa !462
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cm = zext i32 %.pre to i64
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !463
  %i.cn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %17) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cn, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cn, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !374
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !324
  %.pre138 = load ptr, ptr %13, align 8, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.co = phi ptr [ %.pre138, %bb.l ], [ %.pre139.pre, %._crit_edge ] ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.al
  br i1 %i.cp, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.co) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  ret i32 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17ARMTargetLowering20VarArgStyleRegistersERNS_7CCStateERNS_12SelectionDAGERKNS_5SDLocERNS_7SDValueEjjb(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !453
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !566
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.f = load i32, ptr %i.e, align 8, !tbaa !375
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !685
  %i.i = trunc i64 %i.h to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %6, i32 4)
  %i.j = tail call noundef i32 @_ZNK4llvm17ARMTargetLowering14StoreByValRegsERNS_7CCStateERNS_12SelectionDAGERKNS_5SDLocERNS_7SDValueEPKNS_5ValueEjij(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(420) %1, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef null, i32 noundef %i.f, i32 noundef %i.i, i32 noundef %.sroa.speculated)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.j, ptr %i.k, align 8, !tbaa !809
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering27splitValueIntoRegisterPartsERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueEPS6_jNS_3MVTESt8optionalIjE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %3, i32 %4, ptr nofree noundef writeonly captures(none) %5, i32 %6, i16 %7, i64 %8) unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352
  %i.c = zext i32 %4 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !58 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !353
  %i.e = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %i.f = and i16 %.sroa.0.0.copyload.i.i, -2
  %i.g = icmp eq i16 %i.f, 12
  %or.cond = select i1 %i.g, i1 %i.e, i1 false
  %i.h = icmp eq i16 %7, 14
  %or.cond77 = select i1 %or.cond, i1 %i.h, i1 false ; 2 uses
  br i1 %or.cond77, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit, label %.critedge

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.a
  %i.i = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.j = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.k, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit41

bb.b:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.69) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit41:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.l = getelementptr i8, ptr %i.j, i64 -16
  %.sroa.0.0.copyload.i.i38 = load i64, ptr %i.l, align 16
  %i.m = trunc i64 %.sroa.0.0.copyload.i.i38 to i32 ; 2 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.m)
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit47

.split.i:                                         ; preds = %_ZNK4llvm8TypeSizecvmEv.exit41
  %i.p = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.m, i1 true) ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 10
  br i1 %i.q, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit47

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.p to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit47

_ZN4llvm3MVT12getIntegerVTEj.exit47:              ; preds = %switch.lookup.i, %.split.i, %_ZNK4llvm8TypeSizecvmEv.exit41
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit41 ]
  store ptr %3, ptr %9, align 8, !tbaa !374
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %4, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !324
  %i.r = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #38 ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.r, 1
  store ptr %.fca.0.extract11, ptr %10, align 8, !tbaa !374
  %.sroa.9.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.9.0..sroa_idx67, align 8, !tbaa !324
  %i.s = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #38 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.s, 1
  store ptr %.fca.0.extract3, ptr %11, align 8, !tbaa !374
  %.sroa.9.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract4, ptr %.sroa.9.0..sroa_idx69, align 8, !tbaa !324
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.t, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !374
  %.sroa.9.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.9.0..sroa_idx71, align 8, !tbaa !324
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4llvm3MVT12getIntegerVTEj.exit47
  ret i1 %or.cond77
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering26joinRegisterPartsIntoValueERNS_12SelectionDAGERKNS_5SDLocEPKNS_7SDValueEjNS_3MVTENS_3EVTESt8optionalIjE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nofree noundef readonly captures(none) %3, i32 %4, i16 %5, ptr nofree noundef readonly byval(%"struct.llvm::EVT") align 8 captures(none) %6, i64 %7) unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %i.a = load i16, ptr %6, align 8, !tbaa !465    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = and i16 %i.a, -2
  %i.f = icmp eq i16 %i.e, 12
  %or.cond = select i1 %i.f, i1 %i.d, i1 false
  %i.g = icmp eq i16 %5, 14
  %or.cond77 = select i1 %or.cond, i1 %i.g, i1 false
  br i1 %or.cond77, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit, label %.critedge

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.a
  %i.h = zext nneg i16 %i.a to i64
  %i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.h ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.i, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.j = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.j, label %bb.b, label %_ZN4llvm3MVT12getIntegerVTEj.exit

bb.b:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.69) #40
  unreachable

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.k = getelementptr i8, ptr %i.i, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 16
  %i.l = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %.sroa.058.0.copyload = load ptr, ptr %3, align 8, !tbaa !374
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %.sroa.058.0.copyload, ptr %8, align 8, !tbaa !374
  %.sroa.10.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4 ; 2 uses
  %i.m = load <2 x i32>, ptr %.sroa.10.0..sroa_idx, align 8
  store <2 x i32> %i.m, ptr %.sroa.10.0..sroa_idx62, align 8
  %i.n = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #38 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.n, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.n, 1
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.split.i41, label %_ZN4llvm3MVT12getIntegerVTEj.exit45

.split.i41:                                       ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.l, i1 true) ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 10
  br i1 %i.r, label %switch.lookup.i42, label %_ZN4llvm3MVT12getIntegerVTEj.exit45

switch.lookup.i42:                                ; preds = %.split.i41
  %switch.idx.cast.i43 = trunc nuw nsw i32 %i.q to i16
  %switch.offset.i44 = add nuw nsw i16 %switch.idx.cast.i43, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit45

_ZN4llvm3MVT12getIntegerVTEj.exit45:              ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %.split.i41, %switch.lookup.i42
  %.sroa.0.0.i40 = phi i16 [ %switch.offset.i44, %switch.lookup.i42 ], [ 0, %.split.i41 ], [ 0, %_ZN4llvm3MVT12getIntegerVTEj.exit ]
  store ptr %.fca.0.extract13, ptr %9, align 8, !tbaa !374
  %.sroa.10.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract14, ptr %.sroa.10.0..sroa_idx64, align 8, !tbaa !324
  %.sroa.15.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx70, align 4
  %i.s = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.i40, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #38 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.s, 1
  store ptr %.fca.0.extract5, ptr %10, align 8, !tbaa !374
  %.sroa.10.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.10.0..sroa_idx66, align 8, !tbaa !324
end_hunk_1
begin_hunk_2_@_ZNK4llvm17ARMTargetLowering20insertCopiesSplitCSREPNS_17MachineBasicBlockERKNS_15SmallVectorImplIS2_EE:bb.a
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(1065) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.df = getelementptr inbounds nuw i8, ptr %.060, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.df, %i.cj
  br i1 %.not41, label %._crit_edge, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17ARMTargetLowering16finalizeLoweringERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !565
  tail call void @_ZN4llvm16MachineFrameInfo23computeMaxCallFrameSizeERNS_15MachineFunctionEPSt6vectorINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef null) #38
  tail call void @_ZNK4llvm18TargetLoweringBase16finalizeLoweringERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #38
  ret void
}

declare void @_ZN4llvm16MachineFrameInfo23computeMaxCallFrameSizeERNS_15MachineFunctionEPSt6vectorINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #8

declare void @_ZNK4llvm18TargetLoweringBase16finalizeLoweringERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering32isComplexDeinterleavingSupportedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 395
  %i.d = load i8, ptr %i.c, align 1, !tbaa !202, !range !50, !noundef !51
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering41isComplexDeinterleavingOperationSupportedENS_30ComplexDeinterleavingOperationEPNS_4TypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp ne i32 %i.c, 18
  %.not22 = icmp eq ptr %2, null
  %.not = or i1 %.not22, %i.d
  br i1 %.not, label %bb.h, label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !986
  %i.g = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #39
  %i.h = mul i32 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ugt i32 %i.h, 127
  %i.j = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.h)
  %i.k = icmp samesign ult i32 %i.j, 2
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !808
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !353
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8              ; 3 uses
  %i.q = and i32 %i.p, 255
  %trunc = trunc i32 %i.p to i8
  switch i8 %trunc, label %bb.d [
    i8 0, label %bb.c
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 394
  %i.u = load i8, ptr %i.t, align 2, !tbaa !203, !range !50, !noundef !51
  %i.v = trunc nuw i8 %i.u to i1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.not17 = icmp eq i32 %1, 0
  br i1 %.not17, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 395
  %i.z = load i8, ptr %i.y, align 1, !tbaa !202, !range !50, !noundef !51
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp eq i32 %i.q, 12                    ; 2 uses
  %i.ac = lshr i32 %i.p, 8                        ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 8
  %i.ae = icmp eq i32 %i.ac, 16
  %i.af = or i1 %i.ad, %i.ae
  %or.cond21 = and i1 %i.ab, %i.af
  br i1 %or.cond21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp eq i32 %i.ac, 32
  %i.ah = and i1 %i.ab, %i.ag
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZNK4llvm4Type13getScalarTypeEv.exit, %bb.d, %bb.f, %bb.g, %bb.e, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ %i.v, %bb.c ], [ false, %_ZNK4llvm4Type13getScalarTypeEv.exit ], [ %i.ah, %bb.g ], [ false, %bb.e ], [ true, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { ptr, i64 } @_ZNK4llvm17ARMTargetLowering27getRoundingControlRegistersEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @_ZZNK4llvm17ARMTargetLowering27getRoundingControlRegistersEvE6RCRegs, i64 1 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm17ARMTargetLowering29createComplexDeinterleavingIRERNS_13IRBuilderBaseENS_30ComplexDeinterleavingOperationENS_29ComplexDeinterleavingRotationEPNS_5ValueES6_S6_(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %9 = alloca %"class.llvm::SmallVector.840", align 8 ; 10 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [4 x ptr], align 8                ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::ArrayRef.804", align 8 ; 2 uses
  %19 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %20 = alloca %class.anon.842, align 1           ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [3 x ptr], align 8                ; 6 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %22 = alloca %"class.llvm::ArrayRef.804", align 8 ; 2 uses
  %23 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %24 = alloca %class.anon.842, align 1           ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca [4 x ptr], align 8                ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %26 = alloca %"class.llvm::ArrayRef.804", align 8 ; 2 uses
  %27 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %28 = alloca %class.anon.842, align 1           ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !788  ; 5 uses
  %i.i = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #39
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !986  ; 7 uses
  %i.l = mul i32 %i.k, %i.i
  %i.m = icmp ugt i32 %i.l, 128
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i32 %i.k, 1
  %i.o = sext i32 %i.k to i64                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.p, ptr %9, align 8, !tbaa !54, !alias.scope !3040
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !375, !alias.scope !3040
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 12, ptr %i.r, align 4, !tbaa !376, !alias.scope !3040
  %i.s = icmp ugt i32 %i.k, 12
  br i1 %i.s, label %bb.c, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 4) #38
  %.pre.i.i.i = load i32, ptr %i.q, align 8, !tbaa !375, !alias.scope !3040 ; 2 uses
  %.pre16.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre133.pre = load ptr, ptr %9, align 8, !tbaa !54
  br label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre = phi ptr [ %i.p, %bb.b ], [ %.pre133.pre, %bb.c ] ; 5 uses
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.b ], [ %.pre16.i.i.i, %bb.c ]
  %i.t = phi i32 [ 0, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.u = icmp sgt i32 %i.k, 0
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, label %_ZN4llvm9to_vectorIRNS_10iota_rangeIiEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISD_EE5valueEEEOS7_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i:           ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.pre-phi.i.i.i ; 3 uses
  %min.iters.check = icmp ult i32 %i.k, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i
  %n.vec = and i64 %i.o, 2147483640               ; 4 uses
  %i.w = and i64 %i.o, 7
  %i.x = shl nuw nsw i64 %n.vec, 2
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x
  %i.z = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.aa = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !324
  store <4 x i32> %step.add, ptr %i.ab, align 4, !tbaa !324
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !3038

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyINS_6detail15SafeIntIteratorIiLb0EEEPiEEvT_S7_T0_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, %middle.block
  %.010.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.w, %middle.block ]
  %.049.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.y, %middle.block ]
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.049.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i, ptr %.049.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !324
  %i.ad = add nuw nsw i32 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.af = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ag = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyINS_6detail15SafeIntIteratorIiLb0EEEPiEEvT_S7_T0_.exit.loopexit.i.i.i, !llvm.loop !3039

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyINS_6detail15SafeIntIteratorIiLb0EEEPiEEvT_S7_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.pre15.i.i.i = load i32, ptr %i.q, align 8, !tbaa !375, !alias.scope !3040
  br label %_ZN4llvm9to_vectorIRNS_10iota_rangeIiEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISD_EE5valueEEEOS7_.exit

_ZN4llvm9to_vectorIRNS_10iota_rangeIiEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISD_EE5valueEEEOS7_.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyINS_6detail15SafeIntIteratorIiLb0EEEPiEEvT_S7_T0_.exit.loopexit.i.i.i
  %i.ah = phi i32 [ %.pre15.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_copyINS_6detail15SafeIntIteratorIiLb0EEEPiEEvT_S7_T0_.exit.loopexit.i.i.i ], [ %i.t, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.ai = add i32 %i.ah, %i.k
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !375, !alias.scope !3040
  %i.aj = zext nneg i32 %i.n to i64               ; 7 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i16 257, ptr %i.al, align 8
  %i.am = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %4, ptr %.pre, i64 %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i16 257, ptr %i.an, align 8
  %i.ao = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %5, ptr %.pre, i64 %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.ap, align 8
  %i.aq = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %4, ptr %i.ak, i64 %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 257, ptr %i.ar, align 8
  %i.as = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %5, ptr %i.ak, i64 %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %.not94 = icmp eq ptr %6, null
  br i1 %.not94, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9to_vectorIRNS_10iota_rangeIiEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISD_EE5valueEEEOS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i16 257, ptr %i.at, align 8
  %i.au = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %6, ptr %.pre, i64 %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i16 257, ptr %i.av, align 8
  %i.aw = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %6, ptr %i.ak, i64 %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm9to_vectorIRNS_10iota_rangeIiEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISD_EE5valueEEEOS7_.exit
  %.088 = phi ptr [ %i.aw, %bb.d ], [ null, %_ZN4llvm9to_vectorIRNS_10iota_rangeIiEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISD_EE5valueEEEOS7_.exit ]
  %.087 = phi ptr [ %i.au, %bb.d ], [ null, %_ZN4llvm9to_vectorIRNS_10iota_rangeIiEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISD_EE5valueEEEOS7_.exit ]
  %i.ax = load ptr, ptr %0, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1808
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef %.087) #38 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1808
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %.088) #38 ; 2 uses
  %i.bf = load ptr, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.bg = load i32, ptr %i.j, align 8, !tbaa !986
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i16 257, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1081, !nonnull !51, !align !92 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.ba, ptr noundef %i.be, ptr %i.bf, i64 %i.bh) #38, !inline_history !17 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.not.i, label %bb.f, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.f:                                             ; preds = %bb.e
  %i.bp = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.bq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.bp, ptr noundef %i.ba, ptr noundef %i.be, ptr %i.bf, i64 %i.bh, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %8) #38
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1082, !nonnull !51, !align !92 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bt, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #38, !inline_history !18
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.bp) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %bb.e, %bb.f
  %.1.i = phi ptr [ %i.bp, %bb.f ], [ %i.bo, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  %i.bx = load ptr, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.p
  br i1 %i.by, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  call void @free(ptr noundef %i.bx) #38
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %.thread

bb.h:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1014, !nonnull !51, !align !92
  %i.cb = tail call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #38 ; 3 uses
  switch i32 %2, label %.thread [
    i32 1, label %bb.i
    i32 0, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.cc = sext i32 %3 to i64
  %i.cd = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cb, i64 noundef %i.cc, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.not93 = icmp eq ptr %6, null
  br i1 %.not93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store ptr %i.h, ptr %i.a, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store ptr %i.cd, ptr %i.b, align 8, !tbaa !1015
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %6, ptr %i.ce, align 8, !tbaa !1015
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %5, ptr %i.cf, align 8, !tbaa !1015
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %4, ptr %i.cg, align 8, !tbaa !1015
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i16 257, ptr %i.ch, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %19, align 8, !tbaa !1094
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cj = ptrtoint ptr %20 to i64
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !1095
  %i.ck = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 3885, ptr nonnull %i.a, i64 1, ptr nonnull %i.b, i64 4, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr noundef nonnull byval(%"class.llvm::ArrayRef.804") align 8 %18, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %.thread

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  store ptr %i.h, ptr %i.c, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  store ptr %i.cd, ptr %i.d, align 8, !tbaa !1015
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %5, ptr %i.cl, align 8, !tbaa !1015
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %4, ptr %i.cm, align 8, !tbaa !1015
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i16 257, ptr %i.cn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %23, align 8, !tbaa !1094
  %i.co = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.cp = ptrtoint ptr %24 to i64
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !1095
  %i.cq = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 3887, ptr nonnull %i.c, i64 1, ptr nonnull %i.d, i64 3, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %21, ptr noundef nonnull byval(%"class.llvm::ArrayRef.804") align 8 %22, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  br label %.thread

bb.l:                                             ; preds = %bb.h
  %i.cr = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cb, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #38
  switch i32 %3, label %.thread [
    i32 1, label %bb.n
    i32 3, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sink = phi i64 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.cs = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cb, i64 noundef %.sink, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.not = icmp eq ptr %i.cs, null
  br i1 %.not, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
end_hunk_2
