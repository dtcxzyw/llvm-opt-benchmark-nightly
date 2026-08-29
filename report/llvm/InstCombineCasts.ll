Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineCasts?download=true
inline.NumInlined: 6421
inline.NumDeleted: 2885
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm15SmallVectorImplIiE6insertEPimi:bb.a
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.ca, 28
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i36.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit
  %n.vec68 = and i64 %i.cc, 9223372036854775800   ; 3 uses
  %i.cd = shl i64 %n.vec68, 2
  %i.ce = getelementptr i8, ptr %i.ai, i64 %i.cd
  %broadcast.splatinsert69 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat70 = shufflevector <4 x i32> %broadcast.splatinsert69, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph67
  %index72 = phi i64 [ 0, %vector.ph67 ], [ %index.next74, %vector.body71 ] ; 2 uses
  %i.cf = shl i64 %index72, 2
  %next.gep73 = getelementptr i8, ptr %i.ai, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep73, i64 16
  store <4 x i32> %broadcast.splat70, ptr %next.gep73, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat70, ptr %i.cg, align 4, !tbaa !17
  %index.next74 = add nuw i64 %index72, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next74, %n.vec68
  br i1 %i.ch, label %middle.block75, label %vector.body71, !llvm.loop !723

middle.block75:                                   ; preds = %vector.body71
  %cmp.n76 = icmp eq i64 %i.cc, %n.vec68
  br i1 %cmp.n76, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit40, label %.lr.ph.i.i.i.i36.preheader

.lr.ph.i.i.i.i36.preheader:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit, %middle.block75
  %.06.i.i.i.i37.ph = phi ptr [ %i.ai, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit ], [ %i.ce, %middle.block75 ]
  br label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %.lr.ph.i.i.i.i36.preheader, %.lr.ph.i.i.i.i36
  %.06.i.i.i.i37 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i36 ], [ %.06.i.i.i.i37.ph, %.lr.ph.i.i.i.i36.preheader ] ; 2 uses
  store i32 %3, ptr %.06.i.i.i.i37, align 4, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i37, i64 4 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.ci, %i.aj
  br i1 %.not.i.i.i.i38, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit40, label %.lr.ph.i.i.i.i36, !llvm.loop !724

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit40:            ; preds = %.lr.ph.i.i.i.i36, %middle.block75, %bb.p
  %i.cj = sub nuw i64 %2, %i.ak
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cj, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i
  %i.cl = shl i64 %2, 2
  %i.cm = add i64 %i.cl, -4
  %i.cn = sub i64 %i.cm, %gepdiff                 ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.cn, 28
  br i1 %min.iters.check79, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit40
  %n.vec81 = and i64 %i.cp, 9223372036854775800   ; 3 uses
  %i.cq = shl i64 %n.vec81, 2
  %i.cr = getelementptr i8, ptr %i.aj, i64 %i.cq
  %broadcast.splatinsert82 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat83 = shufflevector <4 x i32> %broadcast.splatinsert82, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph80
  %index85 = phi i64 [ 0, %vector.ph80 ], [ %index.next87, %vector.body84 ] ; 2 uses
  %i.cs = shl i64 %index85, 2
  %next.gep86 = getelementptr i8, ptr %i.aj, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep86, i64 16
  store <4 x i32> %broadcast.splat83, ptr %next.gep86, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat83, ptr %i.ct, align 4, !tbaa !17
  %index.next87 = add nuw i64 %index85, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next87, %n.vec81
  br i1 %i.cu, label %middle.block88, label %vector.body84, !llvm.loop !725

middle.block88:                                   ; preds = %vector.body84
  %cmp.n89 = icmp eq i64 %i.cp, %n.vec81
  br i1 %cmp.n89, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit40, %middle.block88
  %.06.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit40 ], [ %i.cr, %middle.block88 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %3, ptr %.06.i.i.i.i.i.i, align 4, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.ck
  br i1 %.not.i.i.i.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !726

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %middle.block, %middle.block88, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit
  %.1 = phi ptr [ %i.ae, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit ], [ %i.ai, %middle.block88 ], [ %i.ai, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit ], [ %i.ai, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL24collectInsertionElementsPN4llvm5ValueEjRNS_15SmallVectorImplIS1_EEPNS_4TypeEb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !21      ; 2 uses
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNK4llvm4User10getOperandEj.exit152
  %i.c = phi i8 [ %i.fl, %_ZNK4llvm4User10getOperandEj.exit152 ], [ %i.a, %bb.a ]
  %.tr172.ph221 = phi i32 [ %i.ez, %_ZNK4llvm4User10getOperandEj.exit152 ], [ %1, %bb.a ] ; 4 uses
  %.tr.ph220 = phi ptr [ %i.fk, %_ZNK4llvm4User10getOperandEj.exit152 ], [ %0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.d = phi i8 [ %i.c, %.lr.ph ], [ %i.ah, %tailrecurse.backedge ] ; 4 uses
  %.tr209 = phi ptr [ %.tr.ph220, %.lr.ph ], [ %.tr.be, %tailrecurse.backedge ] ; 25 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr209, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 4 uses
  %i.g = icmp eq ptr %i.f, %3
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i8 %i.d, 22
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.tr209, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.l, 1
  %i.m = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.m, label %bb.f, label %_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit:         ; preds = %bb.e
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.l, 0
  %i.n = zext i32 %.tr172.ph221 to i64
  %i.o = udiv i64 %i.n, %.fca.0.extract.i         ; 2 uses
  br i1 %4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !126
  %i.r = trunc nuw i64 %i.o to i32
  %i.s = xor i32 %i.r, -1
  %i.t = add i32 %i.q, %i.s
  %i.u = zext i32 %i.t to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit
  %.0113 = phi i64 [ %i.u, %bb.g ], [ %i.o, %_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !124
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0113 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9
  %.not127 = icmp eq ptr %i.x, null
  br i1 %.not127, label %bb.i, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.i:                                             ; preds = %bb.h
  store ptr %.tr209, ptr %i.w, align 8, !tbaa !9
  br label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.y = icmp ult i8 %i.d, 23
  br i1 %i.y, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %bb.j
  %i.z = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #18 ; 2 uses
  %.fca.1.extract32 = extractvalue { i64, i8 } %i.z, 1
  %i.aa = trunc nuw i8 %.fca.1.extract32 to i1
  br i1 %i.aa, label %bb.l, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.k
  %i.ab = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18 ; 2 uses
  %.fca.1.extract.i130 = extractvalue { i64, i8 } %i.ab, 1
  %i.ac = trunc nuw i8 %.fca.1.extract.i130 to i1
  br i1 %i.ac, label %bb.m, label %_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit132

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit132:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.fca.0.extract31 = extractvalue { i64, i8 } %i.z, 0 ; 2 uses
  %.fca.0.extract.i131 = extractvalue { i64, i8 } %i.ab, 0 ; 2 uses
  %i.ad = and i64 %.fca.0.extract31, 4294967295   ; 2 uses
  %i.ae = udiv i64 %i.ad, %.fca.0.extract.i131    ; 2 uses
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %.critedge.thread165, label %bb.n

.critedge.thread165:                              ; preds = %_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit132
  %i.ag = tail call noundef ptr @_ZN4llvm12ConstantExpr10getBitCastEPNS_8ConstantEPNS_4TypeEb(ptr noundef nonnull %.tr209, ptr noundef nonnull %3, i1 noundef zeroext false) #17
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread, %_ZNK4llvm4User10getOperandEj.exit, %.critedge.thread165, %_ZNK4llvm4User10getOperandEj.exit142, %_ZNK4llvm4User10getOperandEj.exit146
  %.tr.be = phi ptr [ %i.ef, %_ZNK4llvm4User10getOperandEj.exit146 ], [ %i.ag, %.critedge.thread165 ], [ %i.di, %_ZNK4llvm4User10getOperandEj.exit142 ], [ %i.cc, %_ZNK4llvm4User10getOperandEj.exit.thread ], [ %i.bu, %_ZNK4llvm4User10getOperandEj.exit ] ; 2 uses
  %i.ah = load i8, ptr %.tr.be, align 8, !tbaa !21 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.b

bb.n:                                             ; preds = %_ZL16getTypeSizeIndexjPN4llvm4TypeE.exit132
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = and i32 %i.ak, 255
  %i.am = icmp eq i32 %i.al, 12
  br i1 %i.am, label %bb.o, label %_ZNK4llvm8TypeSizecvmEv.exit133

_ZNK4llvm8TypeSizecvmEv.exit133:                  ; preds = %bb.n
  %i.an = trunc i64 %.fca.0.extract31 to i32
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !117, !nonnull !80, !align !81
  %i.ap = tail call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i32 noundef %i.an) #17
  %i.aq = tail call noundef ptr @_ZN4llvm12ConstantExpr10getBitCastEPNS_8ConstantEPNS_4TypeEb(ptr noundef nonnull %.tr209, ptr noundef %i.ap, i1 noundef zeroext false) #17
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit133, %bb.n
  %.0114 = phi ptr [ %i.aq, %_ZNK4llvm8TypeSizecvmEv.exit133 ], [ %.tr209, %bb.n ] ; 2 uses
  %i.ar = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18 ; 2 uses
  %.fca.1.extract22 = extractvalue { i64, i8 } %i.ar, 1
  %i.as = trunc nuw i8 %.fca.1.extract22 to i1
  br i1 %i.as, label %bb.p, label %_ZNK4llvm8TypeSizecvmEv.exit134

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit134:                  ; preds = %bb.o
  %.fca.0.extract21 = extractvalue { i64, i8 } %i.ar, 0
  %i.at = trunc i64 %.fca.0.extract21 to i32      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0114, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !92
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !117, !nonnull !80, !align !81
  %i.ax = tail call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.at) #17
  %.not122223 = icmp ugt i64 %.fca.0.extract.i131, %i.ad
  br i1 %.not122223, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %.lr.ph225

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not122 = icmp eq i64 %indvars.iv.next, %i.ae
  br i1 %.not122, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %.lr.ph225, !llvm.loop !727

.lr.ph225:                                        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit134, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit134 ] ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv to i32
  %i.az = mul i32 %i.ay, %i.at                    ; 2 uses
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !92
  %i.bb = zext i32 %i.az to i64
  %i.bc = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ba, i64 noundef %i.bb, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %i.bd = tail call noundef ptr @_ZN4llvm29ConstantFoldBinaryInstructionEjPNS_8ConstantES1_(i32 noundef 27, ptr noundef nonnull %.0114, ptr noundef %i.bc) #17 ; 2 uses
  %.not123 = icmp eq ptr %i.bd, null
  br i1 %.not123, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph225
  %i.be = tail call noundef ptr @_ZN4llvm12ConstantExpr8getTruncEPNS_8ConstantEPNS_4TypeEb(ptr noundef nonnull %i.bd, ptr noundef %i.ax, i1 noundef zeroext false) #17
  %i.bf = add i32 %i.az, %.tr172.ph221
  %i.bg = tail call fastcc noundef zeroext i1 @_ZL24collectInsertionElementsPN4llvm5ValueEjRNS_15SmallVectorImplIS1_EEPNS_4TypeEb(ptr noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3, i1 noundef zeroext %4)
  br i1 %i.bg, label %bb.q, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

.critedge.thread:                                 ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr209, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !130 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit

_ZNK4llvm5Value9hasOneUseEv.exit:                 ; preds = %.critedge.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !108
  %i.bl = icmp ne ptr %i.bk, null
  %i.bm = icmp ult i8 %i.d, 30
  %or.cond = or i1 %i.bl, %i.bm
  br i1 %or.cond, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit
  switch i8 %i.d, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread [
    i8 81, label %bb.t
    i8 70, label %bb.u
    i8 60, label %bb.ab
    i8 56, label %bb.ah
  ]

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr209, i64 4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = and i32 %i.bo, 1073741824
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %_ZNK4llvm4User10getOperandEj.exit, label %_ZNK4llvm4User10getOperandEj.exit.thread

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.t
  %i.bq = and i32 %i.bo, 268435455
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds [32 x i8], ptr %.tr209, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = and i32 %i.by, 254
  %spec.select.i = icmp eq i32 %i.bz, 18
  br i1 %spec.select.i, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %tailrecurse.backedge

_ZNK4llvm4User10getOperandEj.exit.thread:         ; preds = %bb.t
  %i.ca = getelementptr inbounds i8, ptr %.tr209, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !82
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !83 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !92
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = and i32 %i.cg, 254
  %spec.select.i167 = icmp eq i32 %i.ch, 18
  br i1 %spec.select.i167, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %tailrecurse.backedge

bb.u:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr209, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = and i32 %i.cj, 1073741824
  %.not.i.i138 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i138, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds i8, ptr %.tr209, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !82
  br label %_ZNK4llvm4User10getOperandEj.exit139

bb.w:                                             ; preds = %bb.u
  %i.cn = and i32 %i.cj, 268435455
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = sub nsw i64 0, %i.co
  %i.cq = getelementptr inbounds [32 x i8], ptr %.tr209, i64 %i.cp
  br label %_ZNK4llvm4User10getOperandEj.exit139

_ZNK4llvm4User10getOperandEj.exit139:             ; preds = %bb.v, %bb.w
  %i.cr = phi ptr [ %i.cm, %bb.v ], [ %i.cq, %bb.w ]
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !83
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !92
  %i.cv = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu) #18 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.cv, 1
  %i.cw = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.cw, label %bb.x, label %_ZNK4llvm8TypeSizecvmEv.exit140

bb.x:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit139
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit140:                  ; preds = %_ZNK4llvm4User10getOperandEj.exit139
  %.fca.0.extract = extractvalue { i64, i8 } %i.cv, 0
  %i.cx = trunc i64 %.fca.0.extract to i32
  %i.cy = tail call fastcc noundef zeroext i1 @_ZL20isMultipleOfTypeSizejPN4llvm4TypeE(i32 noundef %i.cx, ptr noundef %3)
  br i1 %i.cy, label %bb.y, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.y:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit140
  %i.cz = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.da = and i32 %i.cz, 1073741824
  %.not.i.i141 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i141, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds i8, ptr %.tr209, i64 -8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !82
  br label %_ZNK4llvm4User10getOperandEj.exit142

bb.aa:                                            ; preds = %bb.y
  %i.dd = and i32 %i.cz, 268435455
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds [32 x i8], ptr %.tr209, i64 %i.df
  br label %_ZNK4llvm4User10getOperandEj.exit142

_ZNK4llvm4User10getOperandEj.exit142:             ; preds = %bb.z, %bb.aa
  %i.dh = phi ptr [ %i.dc, %bb.z ], [ %i.dg, %bb.aa ]
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !83
  br label %tailrecurse.backedge

bb.ab:                                            ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr209, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4            ; 2 uses
  %i.dl = and i32 %i.dk, 1073741824
  %.not.i.i143 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i143, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds i8, ptr %.tr209, i64 -8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !82
  br label %_ZNK4llvm4User10getOperandEj.exit144

bb.ad:                                            ; preds = %bb.ab
  %i.do = and i32 %i.dk, 268435455
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds [32 x i8], ptr %.tr209, i64 %i.dq
  br label %_ZNK4llvm4User10getOperandEj.exit144

_ZNK4llvm4User10getOperandEj.exit144:             ; preds = %bb.ac, %bb.ad
  %i.ds = phi ptr [ %i.dn, %bb.ac ], [ %i.dr, %bb.ad ]
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !83
  %i.du = tail call fastcc noundef zeroext i1 @_ZL24collectInsertionElementsPN4llvm5ValueEjRNS_15SmallVectorImplIS1_EEPNS_4TypeEb(ptr noundef %i.dt, i32 noundef %.tr172.ph221, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %4)
  br i1 %i.du, label %bb.ae, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.ae:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit144
  %i.dv = load i32, ptr %i.dj, align 4            ; 2 uses
  %i.dw = and i32 %i.dv, 1073741824
  %.not.i.i145 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i145, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds i8, ptr %.tr209, i64 -8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !82
  br label %_ZNK4llvm4User10getOperandEj.exit146

bb.ag:                                            ; preds = %bb.ae
  %i.dz = and i32 %i.dv, 268435455
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds [32 x i8], ptr %.tr209, i64 %i.eb
  br label %_ZNK4llvm4User10getOperandEj.exit146

_ZNK4llvm4User10getOperandEj.exit146:             ; preds = %bb.af, %bb.ag
  %i.ed = phi ptr [ %i.dy, %bb.af ], [ %i.ec, %bb.ag ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !83
  br label %tailrecurse.backedge

bb.ah:                                            ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr209, i64 4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.ei = and i32 %i.eh, 1073741824
  %.not.i.i147 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i147, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = getelementptr inbounds i8, ptr %.tr209, i64 -8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !82
  br label %_ZNK4llvm4User10getOperandEj.exit148

bb.aj:                                            ; preds = %bb.ah
  %i.el = and i32 %i.eh, 268435455
  %i.em = zext nneg i32 %i.el to i64
end_hunk_0
