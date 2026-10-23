Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizerHelper?download=true
inline.NumInlined: 11701
inline.NumDeleted: 2046
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvm15LegalizerHelper32fewerElementsVectorSeqReductionsERNS_12MachineInstrEjNS_3LLTE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !210
  %i.l = icmp eq i32 %i.k, 312
  %i.m = select i1 %i.l, i32 193, i32 195
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !228
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.o, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 12, ptr %i.p, align 4, !tbaa !239
  %i.q = load i64, ptr %5, align 8                ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %bb.d
  %i.s = trunc i64 %i.q to i32
  %i.t = lshr i32 %i.s, 4
  %i.u = and i32 %i.t, 65535                      ; 3 uses
  %.sroa.017.0.copyload = load i32, ptr %i.d, align 8, !tbaa !238
  %.sroa.016.0.copyload = load i64, ptr %4, align 8, !tbaa !226
  %i.v = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !212, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %.sroa.017.0.copyload, i64 %.sroa.016.0.copyload, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(520) %i.x) #19
  %.sroa.014.0.copyload = load i32, ptr %i.c, align 8, !tbaa !238 ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 40
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %_ZNK4llvm3LLT14getNumElementsEv.exit
  %.sroa.014.0.lcssa = phi i32 [ %.sroa.014.0.copyload, %_ZNK4llvm3LLT14getNumElementsEv.exit ], [ %i.au, %bb.g ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %.sroa.04.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  store i32 %.sroa.04.0.copyload, ptr %9, align 8, !tbaa !238
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 1, ptr %i.ad, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i32 %.sroa.014.0.lcssa, ptr %10, align 8, !tbaa !238
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !246
  %i.af = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(20) %10) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ag = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !228   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ah) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.sroa.014.040 = phi i32 [ %.sroa.014.0.copyload, %.lr.ph ], [ %i.au, %bb.g ]
  %i.aj = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.sroa.08.0.copyload = load i64, ptr %4, align 8, !tbaa !226
  store i64 %.sroa.08.0.copyload, ptr %7, align 8, !tbaa !226
  store i32 0, ptr %i.y, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 %.sroa.014.040, ptr %8, align 8, !tbaa !238
  store i32 0, ptr %i.z, align 8, !tbaa !246
  %i.ak = load ptr, ptr %6, align 8, !tbaa !228
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %.sroa.05.0.copyload = load i32, ptr %i.al, align 4, !tbaa !238
  store i32 %.sroa.05.0.copyload, ptr %i.aa, align 8, !tbaa !238
  store i32 0, ptr %i.ab, align 8, !tbaa !246
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !182
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call { ptr, ptr } %i.ao(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i32 noundef %i.m, ptr nonnull %7, i64 1, ptr nonnull %8, i64 2, i64 0) #19
  %i.aq = extractvalue { ptr, ptr } %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !225
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !226 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1062

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit
  %.0 = phi i32 [ 1, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit ], [ 2, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper26fewerElementsVectorShuffleERNS_12MachineInstrEjNS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::tuple.332", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.172", align 8 ; 9 uses
  %6 = alloca %"class.llvm::SmallVector.172", align 8 ; 9 uses
  %7 = alloca [4 x %"class.llvm::Register"], align 16 ; 7 uses
  %8 = alloca %"class.llvm::SmallVector.537", align 8 ; 12 uses
  %.sroa.0 = alloca i32, align 4                  ; 6 uses
  %.sroa.6 = alloca i32, align 4                  ; 6 uses
  %9 = alloca %"class.llvm::SmallVector.428", align 8 ; 12 uses
  %10 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %11 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %14 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %15 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %16 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %17 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %20 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %21 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %22 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %23 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %24 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 7 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNK4llvm12MachineInstr16getFirst3RegLLTsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.332") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !452 ; 2 uses
  %i.i = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br i1 %i.i, label %bb.c, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.j, label %bb.d, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8              ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.e, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %bb.d
  %i.m = trunc i64 %i.k to i32
  %i.n = lshr i32 %i.m, 4
  %i.o = and i32 %i.n, 65535
  %i.p = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.o)
  %or.cond = icmp eq i32 %i.p, 1
  br i1 %or.cond, label %bb.f, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  %.sroa.0152.0.extract.trunc = lshr i64 %i.k, 5
  %.sroa.0.0.insert.ext.i.i116 = and i64 %.sroa.0152.0.extract.trunc, 32767
  %i.q = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %.sroa.0.0.insert.ext.i.i116) ; 17 uses
  %i.r = lshr i64 %i.q, 60
  %i.s = add nsw i64 %i.r, -5
  %switch.selectcmp.i = icmp ult i64 %i.s, 4
  br i1 %switch.selectcmp.i, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = trunc i64 %i.q to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = trunc i64 %i.q to i1
  br i1 %i.t, label %bb.h, label %_ZNK4llvm3LLT14getNumElementsEv.exit118

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit118:          ; preds = %bb.g
  %i.u = trunc i64 %i.q to i32                    ; 2 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = and i32 %i.v, 65535
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZNK4llvm3LLT14getNumElementsEv.exit118
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.u, %_ZNK4llvm3LLT14getNumElementsEv.exit118 ]
  %i.x = phi i32 [ 1, %._crit_edge ], [ %i.w, %_ZNK4llvm3LLT14getNumElementsEv.exit118 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !228
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !227
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 12, ptr %i.aa, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !228
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !227
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 12, ptr %i.ad, align 4, !tbaa !239
  %.sroa.066.0.copyload = load i32, ptr %i.c, align 8, !tbaa !238
  %i.ae = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !212, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %.sroa.066.0.copyload, i64 %i.q, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef nonnull align 8 dereferenceable(520) %i.ag) #19
  %.sroa.064.0.copyload = load i32, ptr %i.e, align 8, !tbaa !238
  %i.ah = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !212, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %.sroa.064.0.copyload, i64 %i.q, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(520) %i.ai) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aj = load ptr, ptr %5, align 8, !tbaa !228
  %i.ak = load ptr, ptr %6, align 8, !tbaa !228
  %i.al = load <2 x i32>, ptr %i.aj, align 4, !tbaa !238
  %i.am = load <2 x i32>, ptr %i.ak, align 4, !tbaa !238
  %i.an = shufflevector <2 x i32> %i.al, <2 x i32> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.an, ptr %7, align 16, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ao, ptr %8, align 8, !tbaa !228
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 9 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !227
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.aq, align 4, !tbaa !239
  %.not189 = icmp eq i32 %i.x, 0
  %i.ar = icmp slt i64 %i.q, -8070450532247928832
  %.mask.i.i = and i64 %i.q, -1152921504606846976 ; 2 uses
  %i.as = and i64 %i.q, 1152921504338411520
  %i.at = lshr i32 %.pre-phi, 20
  %i.au = and i32 %i.at, 255                      ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 20
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.ay = lshr i64 %i.q, 44
  %i.az = and i64 %i.ay, 65535
  %i.ba = lshr i64 %i.q, 28
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = select i1 %i.ax, i64 %i.az, i64 %i.bb
  %i.bd = shl nuw nsw i64 %i.bc, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.bd, 1152921504606846976
  %i.be = and i64 %i.q, 1152921504605798400
  %i.bf = or disjoint i64 %i.be, 4611686018427387904
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bp = icmp eq i32 %i.x, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %umax = call i32 @llvm.umax.i32(i32 %i.x, i32 1)
  %i.bx = zext nneg i32 %i.x to i64               ; 2 uses
  %invariant.op = or disjoint i64 %i.aw, 3458764513820540928
  %wide.trip.count200 = zext nneg i32 %umax to i64
  br label %bb.n

bb.j:                                             ; preds = %bb.ar
  %i.by = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %.sroa.05.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  store i32 %.sroa.05.0.copyload, ptr %23, align 8, !tbaa !238
  %i.bz = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 1, ptr %i.bz, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store i32 %.sroa.0141.1, ptr %24, align 8, !tbaa !238
  %i.ca = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !246
  %i.cb = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 %.sroa.0151.1, ptr %i.cb, align 8, !tbaa !238
  %i.cc = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i32 0, ptr %i.cc, align 8, !tbaa !246
  %i.cd = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpESt16initializer_listINS_5SrcOpEE(ptr noundef nonnull align 8 dereferenceable(96) %i.by, ptr noundef nonnull align 8 dereferenceable(20) %23, ptr nonnull %24, i64 2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.ce = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.cf = load ptr, ptr %8, align 8, !tbaa !228   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ao
  br i1 %i.cg, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.cf) #19
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ch = load ptr, ptr %6, align 8, !tbaa !228   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ab
  br i1 %i.ci, label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit
  call void @free(ptr noundef %i.ch) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cj = load ptr, ptr %5, align 8, !tbaa !228   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.y
  br i1 %i.ck, label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit119, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit
  call void @free(ptr noundef %i.cj) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit119

_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit119: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.n:                                             ; preds = %bb.i, %bb.ar
  %.not111 = phi i1 [ true, %bb.i ], [ false, %bb.ar ] ; 9 uses
  %indvars.iv202 = phi i64 [ 0, %bb.i ], [ %i.bx, %bb.ar ] ; 2 uses
  %.sroa.0151.0187 = phi i32 [ 0, %bb.i ], [ %.sroa.0151.1, %bb.ar ] ; 4 uses
  %.sroa.0141.0186 = phi i32 [ 0, %bb.i ], [ %.sroa.0141.1, %bb.ar ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i32 -1, ptr %.sroa.0, align 4
  store i32 -1, ptr %.sroa.6, align 4
  br i1 %.not189, label %.cont145, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv202
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cl = load i32, ptr %gep, align 4, !tbaa !238 ; 2 uses
  %i.cm = udiv i32 %i.cl, %i.x                    ; 5 uses
  %.recomposed = urem i32 %i.cl, %i.x
  %.not112 = icmp ult i32 %i.cm, 4
  br i1 %.not112, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.cn = load i32, ptr %i.ap, align 8, !tbaa !227 ; 2 uses
  %i.co = load i32, ptr %i.aq, align 4, !tbaa !239
  %.not.i = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i, label %bb.q, label %bb.p, !prof !247

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef -1)
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %8, align 8, !tbaa !228
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  store i32 -1, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.ap, align 8, !tbaa !227
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.ap, align 8, !tbaa !227
  br label %bb.y

bb.r:                                             ; preds = %.lr.ph
  %i.cu = mul nuw nsw i32 %i.cm, %i.x             ; 0 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.206 = load i32, ptr %.sroa.0, align 4, !tbaa !238 ; 2 uses
  %i.cv = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0.206, %i.cm
  br i1 %i.cv, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0.206, -1
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.v, %bb.s
  %.0102183.lcssa192.wide = phi i32 [ 0, %bb.s ], [ %i.x, %bb.v ]
  %.lcssa190.sroa.phi = phi ptr [ %.sroa.0, %bb.s ], [ %.sroa.6, %bb.v ]
  store i32 %i.cm, ptr %.lcssa190.sroa.phi, align 4, !tbaa !238
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.6.0..sroa.6.0..sroa.6.4.207 = load i32, ptr %.sroa.6, align 4, !tbaa !238 ; 2 uses
  %i.cx = icmp eq i32 %.sroa.6.0..sroa.6.0..sroa.6.4.207, %i.cm
  br i1 %i.cx, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = icmp eq i32 %.sroa.6.0..sroa.6.0..sroa.6.4.207, -1
  br i1 %i.cy, label %bb.t, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169: ; preds = %bb.v
  br i1 %i.ar, label %_ZNK4llvm3LLT14getElementTypeEv.exit, label %bb.z

.loopexit:                                        ; preds = %bb.r, %bb.u, %bb.t
  %.0102183194 = phi i32 [ %.0102183.lcssa192.wide, %bb.t ], [ 0, %bb.r ], [ %i.x, %bb.u ]
  %i.cz = add i32 %.0102183194, %.recomposed      ; 2 uses
  %i.da = load i32, ptr %i.ap, align 8, !tbaa !227 ; 2 uses
  %i.db = load i32, ptr %i.aq, align 4, !tbaa !239
  %.not.i120 = icmp ult i32 %i.da, %i.db
  br i1 %.not.i120, label %bb.x, label %bb.w, !prof !247

bb.w:                                             ; preds = %.loopexit
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %i.cz)
  br label %bb.y

bb.x:                                             ; preds = %.loopexit
  %i.dc = zext i32 %i.da to i64
  %i.dd = load ptr, ptr %8, align 8, !tbaa !228
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dc
  store i32 %i.cz, ptr %i.de, align 1
  %i.df = load i32, ptr %i.ap, align 8, !tbaa !227
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.ap, align 8, !tbaa !227
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.p, %bb.w, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bx
  br i1 %exitcond.not, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, label %.lr.ph, !llvm.loop !1063

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169
  switch i64 %.mask.i.i, label %_ZNK4llvm3LLT14getElementTypeEv.exit [
    i64 8070450532247928832, label %bb.aa
    i64 6917529027641081856, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.au) #19
  %i.dk = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.dj) #19
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 28               ; 2 uses
  br i1 %i.di, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %storemerge.i.i.i.i.i = or disjoint i64 %i.dm, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.ac:                                            ; preds = %bb.aa
  %.reass = or disjoint i64 %i.dm, %invariant.op
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.ad:                                            ; preds = %bb.z
  %i.dn = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.do = trunc nuw i8 %i.dn to i1
  %.sroa.0.0.v.i.i = select i1 %i.do, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.as
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.z, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169, %bb.ab, %bb.ac, %bb.ad
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i.i.i, %bb.ab ], [ %i.bf, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169 ], [ %.sroa.0.0.i6.i, %bb.ad ], [ %.reass, %bb.ac ], [ %storemerge.i.i.i.i, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.bg, ptr %9, align 8, !tbaa !228
  store i32 0, ptr %i.bh, align 8, !tbaa !227
  store i32 16, ptr %i.bi, align 4, !tbaa !239
  %invariant.gep221 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv202
  br label %bb.af

.cont148:                                         ; preds = %bb.am
  %i.dp = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store i64 %i.q, ptr %15, align 8, !tbaa !226
  store i32 0, ptr %i.bo, align 8, !tbaa !243
  %i.dq = load ptr, ptr %9, align 8, !tbaa !228
  %i.dr = load i32, ptr %i.bh, align 8, !tbaa !227
  %i.ds = zext i32 %i.dr to i64
  %i.dt = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildBuildVectorERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, ptr noundef nonnull align 8 dereferenceable(20) %15, ptr %i.dq, i64 %i.ds) #19
  %i.du = extractvalue { ptr, ptr } %i.dt, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !225
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !226 ; 2 uses
  %spec.select = select i1 %.not111, i32 %i.dy, i32 %.sroa.0141.0186
  %spec.select172 = select i1 %.not111, i32 %.sroa.0151.0187, i32 %i.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.dz = load ptr, ptr %9, align 8, !tbaa !228   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bg
  br i1 %i.ea, label %_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.cont148
  call void @free(ptr noundef %i.dz) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit: ; preds = %.cont148, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ar

bb.af:                                            ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit, %bb.am
  %indvars.iv197 = phi i64 [ 0, %_ZNK4llvm3LLT14getElementTypeEv.exit ], [ %indvars.iv.next198, %bb.am ] ; 2 uses
  %gep222 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep221, i64 %indvars.iv197
  %i.eb = load i32, ptr %gep222, align 4, !tbaa !238 ; 2 uses
  %i.ec = udiv i32 %i.eb, %i.x                    ; 3 uses
  %.recomposed223 = urem i32 %i.eb, %i.x
  %.not114 = icmp ult i32 %i.ec, 4
  br i1 %.not114, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i64 %.sroa.0.0.i, ptr %10, align 8, !tbaa !226
  store i32 0, ptr %i.bj, align 8, !tbaa !243
  %i.ee = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ed, ptr noundef nonnull align 8 dereferenceable(20) %10) #19
  %i.ef = extractvalue { ptr, ptr } %i.ee, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !225
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !226 ; 2 uses
  %i.ek = load i32, ptr %i.bh, align 8, !tbaa !227 ; 2 uses
  %i.el = load i32, ptr %i.bi, align 4, !tbaa !239
  %.not.i122 = icmp ult i32 %i.ek, %i.el
  br i1 %.not.i122, label %bb.ai, label %bb.ah, !prof !247

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 %i.ej)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %9, align 8, !tbaa !228
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em
  store i32 %i.ej, ptr %i.eo, align 1
  %i.ep = load i32, ptr %i.bh, align 8, !tbaa !227
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.bh, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  %i.er = zext nneg i32 %i.ec to i64
  %i.es = mul nuw nsw i32 %i.ec, %i.x             ; 0 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i64 %.sroa.0.0.i, ptr %11, align 8, !tbaa !226
  store i32 0, ptr %i.bk, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.er
  %.sroa.021.0.copyload = load i32, ptr %i.eu, align 4, !tbaa !238
  store i32 %.sroa.021.0.copyload, ptr %12, align 8, !tbaa !238
  store i32 0, ptr %i.bl, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store i64 1152921513196781568, ptr %14, align 8, !tbaa !226
  store i32 0, ptr %i.bm, align 8, !tbaa !243
  %i.ev = sext i32 %.recomposed223 to i64
  %i.ew = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.et, ptr noundef nonnull align 8 dereferenceable(20) %14, i64 noundef %i.ev) #19 ; 2 uses
  %i.ex = extractvalue { ptr, ptr } %i.ew, 0
  %i.ey = extractvalue { ptr, ptr } %i.ew, 1
  store ptr %i.ex, ptr %13, align 8, !tbaa !262
  store ptr %i.ey, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !264
  store i32 1, ptr %i.bn, align 8, !tbaa !246
  %i.ez = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder25buildExtractVectorElementERKNS_5DstOpERKNS_5SrcOpES6_(ptr noundef nonnull align 8 dereferenceable(96) %i.et, ptr noundef nonnull align 8 dereferenceable(20) %11, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %13) #19
  %i.fa = extractvalue { ptr, ptr } %i.ez, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !225
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !226 ; 2 uses
  %i.ff = load i32, ptr %i.bh, align 8, !tbaa !227 ; 2 uses
  %i.fg = load i32, ptr %i.bi, align 4, !tbaa !239
  %.not.i123 = icmp ult i32 %i.ff, %i.fg
  br i1 %.not.i123, label %bb.al, label %bb.ak, !prof !247

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 %i.fe)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit124

bb.al:                                            ; preds = %bb.aj
  %i.fh = zext i32 %i.ff to i64
  %i.fi = load ptr, ptr %9, align 8, !tbaa !228
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fh
  store i32 %i.fe, ptr %i.fj, align 1
  %i.fk = load i32, ptr %i.bh, align 8, !tbaa !227
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.bh, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit124

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit124: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit124, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %.cont148, label %bb.af, !llvm.loop !1064

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.y
  %.sroa.0.0..sroa.0.0..sroa.0.0..pre = load i32, ptr %.sroa.0, align 4, !tbaa !238 ; 3 uses
  %i.fm = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0..pre, -1
  br i1 %i.fm, label %.cont145, label %bb.an

.cont145:                                         ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.fn = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store i64 %i.q, ptr %16, align 8, !tbaa !226
  store i32 0, ptr %i.bw, align 8, !tbaa !243
  %i.fo = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.fn, ptr noundef nonnull align 8 dereferenceable(20) %16) #19
  %i.fp = extractvalue { ptr, ptr } %i.fo, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !225
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !226 ; 2 uses
  %spec.select173 = select i1 %.not111, i32 %i.ft, i32 %.sroa.0141.0186
  %spec.select174 = select i1 %.not111, i32 %.sroa.0151.0187, i32 %i.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.ar

bb.an:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  br i1 %i.bp, label %.cont142, label %bb.ao

.cont142:                                         ; preds = %bb.an
  %i.fu = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store i64 %i.q, ptr %17, align 8, !tbaa !226
  store i32 0, ptr %i.bu, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.fv = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..pre to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.fv
  %.sroa.013.0.copyload = load i32, ptr %i.fw, align 4, !tbaa !238
  store i32 %.sroa.013.0.copyload, ptr %18, align 8, !tbaa !238
  store i32 0, ptr %i.bv, align 8, !tbaa !246
  %i.fx = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.fu, ptr noundef nonnull align 8 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(20) %18) #19
  %i.fy = extractvalue { ptr, ptr } %i.fx, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !225
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !226 ; 2 uses
  %spec.select175 = select i1 %.not111, i32 %i.gc, i32 %.sroa.0141.0186
  %spec.select176 = select i1 %.not111, i32 %.sroa.0151.0187, i32 %i.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.gd = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..pre to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.gd
  %.sroa.012.0.copyload = load i32, ptr %i.ge, align 4, !tbaa !238
  %.sroa.6.0..sroa.6.0..sroa.6.4. = load i32, ptr %.sroa.6, align 4, !tbaa !238 ; 2 uses
  %i.gf = icmp eq i32 %.sroa.6.0..sroa.6.0..sroa.6.4., -1
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  br i1 %i.gf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gg = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  store i64 %i.q, ptr %19, align 8, !tbaa !226
  store i32 0, ptr %i.bq, align 8, !tbaa !243
  %i.gh = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.gg, ptr noundef nonnull align 8 dereferenceable(20) %19) #19
  %i.gi = extractvalue { ptr, ptr } %i.gh, 1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !225
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  br label %.cont

bb.aq:                                            ; preds = %bb.ao
  %i.gm = zext i32 %.sroa.6.0..sroa.6.0..sroa.6.4. to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.gm
  br label %.cont

.cont:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.011.0.in = phi ptr [ %i.gl, %bb.ap ], [ %i.gn, %bb.aq ]
  %.sroa.011.0 = load i32, ptr %.sroa.011.0.in, align 4, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.go = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store i64 %i.q, ptr %20, align 8, !tbaa !226
  store i32 0, ptr %i.br, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store i32 %.sroa.012.0.copyload, ptr %21, align 8, !tbaa !238
  store i32 0, ptr %i.bs, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store i32 %.sroa.011.0, ptr %22, align 8, !tbaa !238
  store i32 0, ptr %i.bt, align 8, !tbaa !246
  %i.gp = load ptr, ptr %8, align 8, !tbaa !228
  %i.gq = load i32, ptr %i.ap, align 8, !tbaa !227
  %i.gr = zext i32 %i.gq to i64
  %i.gs = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildShuffleVectorERKNS_5DstOpERKNS_5SrcOpES6_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(96) %i.go, ptr noundef nonnull align 8 dereferenceable(20) %20, ptr noundef nonnull align 8 dereferenceable(20) %21, ptr noundef nonnull align 8 dereferenceable(20) %22, ptr %i.gp, i64 %i.gr) #19
  %i.gt = extractvalue { ptr, ptr } %i.gs, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !225
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !226 ; 2 uses
  %spec.select177 = select i1 %.not111, i32 %i.gx, i32 %.sroa.0141.0186
  %spec.select178 = select i1 %.not111, i32 %.sroa.0151.0187, i32 %i.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.ar

bb.ar:                                            ; preds = %.cont145, %.cont, %.cont142, %_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit
  %.sroa.0141.1 = phi i32 [ %spec.select, %_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit ], [ %spec.select173, %.cont145 ], [ %spec.select175, %.cont142 ], [ %spec.select177, %.cont ] ; 2 uses
  %.sroa.0151.1 = phi i32 [ %spec.select172, %_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit ], [ %spec.select174, %.cont145 ], [ %spec.select176, %.cont142 ], [ %spec.select178, %.cont ] ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !227
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br i1 %.not111, label %bb.n, label %bb.j, !llvm.loop !1065

_ZN4llvm13isPowerOf2_32Ej.exit.thread:            ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit, %bb.c, %bb.b, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit119
  %.0 = phi i32 [ 2, %bb.c ], [ 2, %bb.b ], [ 1, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit119 ], [ 2, %_ZNK4llvm3LLT14getNumElementsEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %_ZN4llvm13isPowerOf2_32Ej.exit.thread
  %.1 = phi i32 [ %.0, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ], [ 2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper20fewerElementsBitcastERNS_12MachineInstrEjNS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %5 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %6 = alloca %"class.std::tuple.420", align 8    ; 7 uses
  %7 = alloca %"class.llvm::SmallVector.172", align 8 ; 12 uses
  %8 = alloca %"class.llvm::SmallVector.172", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %10 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %11 = alloca %"class.llvm::LLT", align 8        ; 4 uses
  %12 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNK4llvm12MachineInstr16getFirst2RegLLTsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.420") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.mask.i.i = and i64 %3, -1152921504606846976
  %i.d = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.d, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %3, 60
  %.off.i.i = add nsw i64 %i.e, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %bb.b, %bb.c
  %i.f = icmp slt i64 %3, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.f, %i.d
  %i.g = lshr i64 %3, 44
  %i.h = and i64 %i.g, 65535
  %i.i = lshr i64 %3, 28
  %i.j = select i1 %spec.select.i.i.i, i64 %i.h, i64 %i.i
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.c
  %i.k = lshr i64 %3, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.k, 65535
  %i.l = icmp slt i64 %3, -8070450532247928832
  %i.m = lshr i64 %3, 44
  %i.n = and i64 %i.m, 65535
  %i.o = lshr i64 %3, 28
  %.0.in.i3.i = select i1 %i.l, i64 %i.n, i64 %i.o
  %i.p = mul nuw nsw i64 %.0.in.i3.i, %.sroa.0.0.insert.ext.i.i.i
  %i.q = trunc i64 %3 to i1
  br i1 %i.q, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i59 = phi i64 [ %i.j, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.p, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ]
  %i.r = load i64, ptr %6, align 8                ; 10 uses
  %.mask.i.i.i = and i64 %i.r, -1152921504606846976 ; 3 uses
  %i.s = icmp eq i64 %.mask.i.i.i, 4611686018427387904 ; 3 uses
  %i.t = icmp slt i64 %i.r, -8070450532247928832  ; 3 uses
  %spec.select.i.i = or i1 %i.t, %i.s
  %i.u = lshr i64 %i.r, 44
  %i.v = and i64 %i.u, 65535                      ; 3 uses
  %i.w = lshr i64 %i.r, 28                        ; 3 uses
  %.0.in.i = select i1 %spec.select.i.i, i64 %i.v, i64 %i.w
  %.0.i = trunc i64 %.0.in.i to i32
  %.lhs.trunc = trunc i64 %.sroa.05.0.i59 to i32
  %i.x = udiv i32 %.lhs.trunc, %.0.i              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !228
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.z, align 8, !tbaa !227
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 12, ptr %i.aa, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
end_hunk_0
