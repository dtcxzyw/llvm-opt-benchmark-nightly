Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/raw-machine-assembler?download=true
inline.NumInlined: 912
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler19RawMachineAssembler5CallNEPNS1_14CallDescriptorEiPKPNS1_4NodeE:bb.a
  %i.e = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph16NewNodeUncheckedEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef %i.b, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #18 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef %i.i, ptr noundef %i.e) #18
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler7AddNodeEPKNS1_8OperatorEiPKPNS1_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph16NewNodeUncheckedEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef %i.g, ptr noundef %i.c) #18
  ret ptr %i.c
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler19CallNWithFrameStateEPNS1_14CallDescriptorEiPKPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph16NewNodeUncheckedEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef %i.b, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #18 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef %i.i, ptr noundef %i.e) #18
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19RawMachineAssembler9TailCallNEPNS1_14CallDescriptorEiPKPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8TailCallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph16NewNodeUncheckedEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef %i.b, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @_ZN2v88internal8compiler8Schedule11AddTailCallEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef %i.i, ptr noundef %i.e) #18
  store ptr null, ptr %i.h, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8TailCallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler8Schedule11AddTailCallEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler13CallCFunctionEPNS1_4NodeESt8optionalINS0_11MachineTypeEESt16initializer_listISt4pairIS6_S4_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i24 %2, ptr nofree readonly captures(address) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN2v88internal8compiler12_GLOBAL__N_117CallCFunctionImplEPNS1_19RawMachineAssemblerEPNS1_4NodeESt8optionalINS0_11MachineTypeEESt16initializer_listISt4pairIS8_S6_EEbNS0_14SaveFPRegsModeENS2_22FunctionDescriptorModeE(ptr noundef %0, ptr noundef %1, i24 %2, ptr %3, i64 %4, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal8compiler12_GLOBAL__N_117CallCFunctionImplEPNS1_19RawMachineAssemblerEPNS1_4NodeESt8optionalINS0_11MachineTypeEESt16initializer_listISt4pairIS8_S6_EEbNS0_14SaveFPRegsModeENS2_22FunctionDescriptorModeE(ptr noundef nonnull %0, ptr noundef %1, i24 %2, ptr nofree readonly captures(address) %3, i64 %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.v8::base::SmallVector.507", align 8 ; 12 uses
  %.sroa.036.0.extract.trunc = trunc i24 %2 to i16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = and i24 %2, 65536                        ; 2 uses
  %.not41 = icmp eq i24 %i.d, 0
  %.lobit = lshr exact i24 %i.d, 16
  %i.e = zext nneg i24 %.lobit to i64             ; 4 uses
  %i.f = add i64 %4, %i.e
  %i.g = shl i64 %i.f, 1
  %i.h = add i64 %i.g, 30
  %i.i = and i64 %i.h, -8                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.b, label %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.i) #18
  %.pre.i.i = load i64, ptr %i.l, align 8
  br label %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit

_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit: ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %.pre.i.i, %bb.b ], [ %i.m, %bb.a ] ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = add i64 %i.p, %i.i
  store i64 %i.r, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store i64 %i.e, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %4, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.u, align 8
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit
  store i16 %.sroa.036.0.extract.trunc, ptr %i.s, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal16SignatureBuilderINS0_9SignatureINS0_11MachineTypeEEES3_EC2EPNS0_4ZoneEmm.exit
  %.idx = shl i64 %4, 4                           ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  %.not42 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not42, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr [2 x i8], ptr %i.s, i64 %i.e ; 3 uses
  %i.x = add i64 %.idx, -16                       ; 2 uses
  %i.y = lshr exact i64 %i.x, 4
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 384
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.044.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph ], [ %i.ak, %vector.body ]
  %.sroa.8.043.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aa = add i64 %.idx, -16
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = shl nuw nsw i64 %i.e, 1
  %i.ad = getelementptr i8, ptr %i.q, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ae, i64 26
  %i.af = getelementptr i8, ptr %3, i64 %.idx
  %scevgep46 = getelementptr i8, ptr %i.af, i64 -14
  %bound0 = icmp ult ptr %i.w, %scevgep46
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ag = and i64 %i.z, 7                         ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i64 8, i64 %i.ag
  %n.vec = sub nsw i64 %i.z, %i.ai                ; 3 uses
  %i.aj = shl i64 %n.vec, 4
  %i.ak = getelementptr i8, ptr %3, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = shl i64 %index, 4                       ; 8 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.al
  %i.am = getelementptr i8, ptr %3, i64 %i.al
  %next.gep47 = getelementptr i8, ptr %i.am, i64 16
  %i.an = getelementptr i8, ptr %3, i64 %i.al
  %next.gep48 = getelementptr i8, ptr %i.an, i64 32
  %i.ao = getelementptr i8, ptr %3, i64 %i.al
  %next.gep49 = getelementptr i8, ptr %i.ao, i64 48
  %i.ap = getelementptr i8, ptr %3, i64 %i.al
  %next.gep50 = getelementptr i8, ptr %i.ap, i64 64
  %i.aq = getelementptr i8, ptr %3, i64 %i.al
  %next.gep51 = getelementptr i8, ptr %i.aq, i64 80
  %i.ar = getelementptr i8, ptr %3, i64 %i.al
  %next.gep52 = getelementptr i8, ptr %i.ar, i64 96
  %i.as = getelementptr i8, ptr %3, i64 %i.al
  %next.gep53 = getelementptr i8, ptr %i.as, i64 112
  %i.at = load i16, ptr %next.gep, align 8, !alias.scope !32
  %i.au = load i16, ptr %next.gep47, align 8, !alias.scope !32
  %i.av = load i16, ptr %next.gep48, align 8, !alias.scope !32
  %i.aw = load i16, ptr %next.gep49, align 8, !alias.scope !32
  %i.ax = load i16, ptr %next.gep50, align 8, !alias.scope !32
  %i.ay = load i16, ptr %next.gep51, align 8, !alias.scope !32
  %i.az = load i16, ptr %next.gep52, align 8, !alias.scope !32
  %i.ba = load i16, ptr %next.gep53, align 8, !alias.scope !32
  %i.bb = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 1
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 2
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 3
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 4
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 5
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 6
  %i.bi = insertelement <8 x i16> %i.bh, i16 %i.ba, i64 7
  %i.bj = getelementptr [2 x i8], ptr %i.w, i64 %index
  store <8 x i16> %i.bi, ptr %i.bj, align 1, !alias.scope !33, !noalias !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %scalar.ph.preheader, label %vector.body, !llvm.loop !28

.thread:                                          ; preds = %scalar.ph, %bb.d
  %i.bl = icmp eq i32 %6, 1
  %spec.select = select i1 %i.bl, i32 192, i32 64
  %.sroa.022.1 = select i1 %5, i32 %spec.select, i32 0 ; 2 uses
  %.not20 = icmp eq i32 %7, 0
  %i.bm = or disjoint i32 %.sroa.022.1, 512
  %spec.select40 = select i1 %.not20, i32 %.sroa.022.1, i32 %i.bm
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr @_ZN2v88internal8compiler7Linkage24GetSimplifiedCDescriptorEPNS0_4ZoneEPKNS0_9SignatureINS0_11MachineTypeEEENS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENSB_INS1_8Operator8PropertyEhhEE(ptr noundef %i.bo, ptr noundef nonnull %i.q, i32 %spec.select40, i8 32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bq = add i64 %4, 1                           ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  store ptr %i.br, ptr %8, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %i.bu, ptr %i.bt, align 8
  %i.bv = icmp ugt i64 %i.bq, 10
  br i1 %i.bv, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE6resizeEm.exit.thread, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE6resizeEm.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.044 = phi ptr [ %i.by, %scalar.ph ], [ %.044.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.8.043 = phi i64 [ %i.bw, %scalar.ph ], [ %.sroa.8.043.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.copyload = load i16, ptr %.044, align 8
  %i.bw = add nuw nsw i64 %.sroa.8.043, 1
  %i.bx = getelementptr [2 x i8], ptr %i.w, i64 %.sroa.8.043
  store i16 %.sroa.02.0.copyload, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.044, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.by, %i.v
  br i1 %.not, label %.thread, label %scalar.ph, !llvm.loop !29

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE6resizeEm.exit.thread: ; preds = %.thread
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %i.bq)
  %.pre.i = load ptr, ptr %8, align 8             ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.bq
  store ptr %i.bz, ptr %i.bs, align 8
  store ptr %1, ptr %.pre.i, align 8
  br label %.lr.ph.i.preheader

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE6resizeEm.exit: ; preds = %.thread
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.ca, ptr %i.bs, align 8
  store ptr %1, ptr %i.br, align 8
  br i1 %.not42, label %"_ZSt9transformIPKSt4pairIN2v88internal11MachineTypeEPNS2_8compiler4NodeEEPS6_ZNS4_12_GLOBAL__N_117CallCFunctionImplEPNS4_19RawMachineAssemblerES6_St8optionalIS3_ESt16initializer_listIS7_EbNS2_14SaveFPRegsModeENSB_22FunctionDescriptorModeEE3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE6resizeEm.exit.thread, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE6resizeEm.exit
  %i.cb = load ptr, ptr %8, align 8               ; 2 uses
  %i.cc = add i64 %.idx, -16                      ; 2 uses
  %i.cd = lshr exact i64 %i.cc, 4
  %i.ce = add nuw nsw i64 %i.cd, 1
  %xtraiter = and i64 %i.ce, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.pn.prol = phi ptr [ %.010.i.prol, %.lr.ph.i.prol ], [ %i.cb, %.lr.ph.i.preheader ]
  %.079.i.prol = phi ptr [ %i.cg, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.010.i.prol = getelementptr inbounds nuw i8, ptr %.010.i.pn.prol, i64 8 ; 3 uses
  %i.cf = getelementptr i8, ptr %.079.i.prol, i64 8
  %.07.val.i.prol = load ptr, ptr %i.cf, align 8
  store ptr %.07.val.i.prol, ptr %.010.i.prol, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !30

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.pn.unr = phi ptr [ %i.cb, %.lr.ph.i.preheader ], [ %.010.i.prol, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.cg, %.lr.ph.i.prol ]
  %i.ch = icmp ult i64 %i.cc, 112
  br i1 %i.ch, label %"_ZSt9transformIPKSt4pairIN2v88internal11MachineTypeEPNS2_8compiler4NodeEEPS6_ZNS4_12_GLOBAL__N_117CallCFunctionImplEPNS4_19RawMachineAssemblerES6_St8optionalIS3_ESt16initializer_listIS7_EbNS2_14SaveFPRegsModeENSB_22FunctionDescriptorModeEE3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i.pn = phi ptr [ %.010.i.7, %.lr.ph.i ], [ %.010.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.079.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.010.i = getelementptr inbounds nuw i8, ptr %.010.i.pn, i64 8
  %i.ci = getelementptr i8, ptr %.079.i, i64 8
  %.07.val.i = load ptr, ptr %i.ci, align 8
  store ptr %.07.val.i, ptr %.010.i, align 8
  %.010.i.1 = getelementptr inbounds nuw i8, ptr %.010.i.pn, i64 16
  %i.cj = getelementptr i8, ptr %.079.i, i64 24
  %.07.val.i.1 = load ptr, ptr %i.cj, align 8
  store ptr %.07.val.i.1, ptr %.010.i.1, align 8
  %.010.i.2 = getelementptr inbounds nuw i8, ptr %.010.i.pn, i64 24
  %i.ck = getelementptr i8, ptr %.079.i, i64 40
  %.07.val.i.2 = load ptr, ptr %i.ck, align 8
  store ptr %.07.val.i.2, ptr %.010.i.2, align 8
  %.010.i.3 = getelementptr inbounds nuw i8, ptr %.010.i.pn, i64 32
  %i.cl = getelementptr i8, ptr %.079.i, i64 56
  %.07.val.i.3 = load ptr, ptr %i.cl, align 8
  store ptr %.07.val.i.3, ptr %.010.i.3, align 8
  %.010.i.4 = getelementptr inbounds nuw i8, ptr %.010.i.pn, i64 40
  %i.cm = getelementptr i8, ptr %.079.i, i64 72
  %.07.val.i.4 = load ptr, ptr %i.cm, align 8
  store ptr %.07.val.i.4, ptr %.010.i.4, align 8
  %.010.i.5 = getelementptr inbounds nuw i8, ptr %.010.i.pn, i64 48
  %i.cn = getelementptr i8, ptr %.079.i, i64 88
  %.07.val.i.5 = load ptr, ptr %i.cn, align 8
  store ptr %.07.val.i.5, ptr %.010.i.5, align 8
  %.010.i.6 = getelementptr inbounds nuw i8, ptr %.010.i.pn, i64 56
  %i.co = getelementptr i8, ptr %.079.i, i64 104
  %.07.val.i.6 = load ptr, ptr %i.co, align 8
  store ptr %.07.val.i.6, ptr %.010.i.6, align 8
  %.010.i.7 = getelementptr inbounds nuw i8, ptr %.010.i.pn, i64 64 ; 2 uses
  %i.cp = getelementptr i8, ptr %.079.i, i64 120
  %.07.val.i.7 = load ptr, ptr %i.cp, align 8
  store ptr %.07.val.i.7, ptr %.010.i.7, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.079.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.cq, %i.v
  br i1 %.not.i.7, label %"_ZSt9transformIPKSt4pairIN2v88internal11MachineTypeEPNS2_8compiler4NodeEEPS6_ZNS4_12_GLOBAL__N_117CallCFunctionImplEPNS4_19RawMachineAssemblerES6_St8optionalIS3_ESt16initializer_listIS7_EbNS2_14SaveFPRegsModeENSB_22FunctionDescriptorModeEE3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i, !llvm.loop !31

"_ZSt9transformIPKSt4pairIN2v88internal11MachineTypeEPNS2_8compiler4NodeEEPS6_ZNS4_12_GLOBAL__N_117CallCFunctionImplEPNS4_19RawMachineAssemblerES6_St8optionalIS3_ESt16initializer_listIS7_EbNS2_14SaveFPRegsModeENSB_22FunctionDescriptorModeEE3$_0ET0_T_SM_SL_T1_.exit": ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE6resizeEm.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cs = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4CallEPKNS1_14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef %i.bp) #18
  %i.ct = load ptr, ptr %i.bs, align 8
  %i.cu = load ptr, ptr %8, align 8               ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = lshr exact i64 %i.cx, 3
  %i.cz = trunc i64 %i.cy to i32
  %i.da = load ptr, ptr %i.a, align 8
  %i.db = call noundef ptr @_ZN2v88internal8compiler7TFGraph16NewNodeUncheckedEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.da, ptr noundef %i.cs, i32 noundef %i.cz, ptr noundef %i.cu, i1 noundef zeroext false) #18 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.df = load ptr, ptr %i.de, align 8
  call void @_ZN2v88internal8compiler8Schedule7AddNodeEPNS1_10BasicBlockEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(120) %i.dd, ptr noundef %i.df, ptr noundef %i.db) #18
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm10ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(104) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret ptr %i.db
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler38CallCFunctionWithoutFunctionDescriptorEPNS1_4NodeENS0_11MachineTypeESt16initializer_listISt4pairIS5_S4_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i16 %2, ptr nofree readonly captures(address) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.insert.ext = zext i16 %2 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.0.0.insert.ext, 65536
  %i.a = tail call fastcc noundef ptr @_ZN2v88internal8compiler12_GLOBAL__N_117CallCFunctionImplEPNS1_19RawMachineAssemblerEPNS1_4NodeESt8optionalINS0_11MachineTypeEESt16initializer_listISt4pairIS8_S6_EEbNS0_14SaveFPRegsModeENS2_22FunctionDescriptorModeE(ptr noundef %0, ptr noundef %1, i24 %.sroa.0.0.insert.insert, ptr %3, i64 %4, i1 noundef zeroext false, i32 noundef 0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler37CallCFunctionWithCallerSavedRegistersEPNS1_4NodeENS0_11MachineTypeENS0_14SaveFPRegsModeESt16initializer_listISt4pairIS5_S4_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i16 %2, i32 noundef %3, ptr nofree readonly captures(address) %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.insert.ext = zext i16 %2 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.0.0.insert.ext, 65536
  %i.a = tail call fastcc noundef ptr @_ZN2v88internal8compiler12_GLOBAL__N_117CallCFunctionImplEPNS1_19RawMachineAssemblerEPNS1_4NodeESt8optionalINS0_11MachineTypeEESt16initializer_listISt4pairIS8_S6_EEbNS0_14SaveFPRegsModeENS2_22FunctionDescriptorModeE(ptr noundef %0, ptr noundef %1, i24 %.sroa.0.0.insert.insert, ptr %4, i64 %5, i1 noundef zeroext true, i32 noundef %3, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler19RawMachineAssembler11EnsureBlockEPNS1_15RawMachineLabelE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr @_ZN2v88internal8compiler8Schedule13NewBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(120) %i.d) #18 ; 2 uses
  store ptr %i.e, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19RawMachineAssembler4BindEPNS1_15RawMachineLabelE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) initializes((160, 168)) %0, ptr nofree noundef captures(none) initializes((9, 10)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 1, ptr %i.a, align 1
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN2v88internal8compiler19RawMachineAssembler11EnsureBlockEPNS1_15RawMachineLabelE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr @_ZN2v88internal8compiler8Schedule13NewBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(120) %i.e) #18 ; 2 uses
  store ptr %i.f, ptr %1, align 8
  br label %_ZN2v88internal8compiler19RawMachineAssembler11EnsureBlockEPNS1_15RawMachineLabelE.exit

_ZN2v88internal8compiler19RawMachineAssembler11EnsureBlockEPNS1_15RawMachineLabelE.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = load i8, ptr %i.i, align 2, !range !8, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler19RawMachineAssembler11InsideBlockEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
