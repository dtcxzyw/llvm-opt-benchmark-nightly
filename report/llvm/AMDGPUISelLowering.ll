Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelLowering?download=true
inline.NumInlined: 5945
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN4llvm20AMDGPUTargetLowering19CCAssignFnForReturnEjb:bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering19addTokenForArgumentENS_7SDValueERNS_12SelectionDAGERNS_16MachineFrameInfoEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518448) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(728) %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit:
  %6 = alloca %"class.llvm::SmallVector.281", align 8 ; 11 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef.303", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 8, ptr %i.c, align 4, !tbaa !485
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !582
  %i.g = add i32 %i.f, %5
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !602
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !603  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !606
  %i.n = add nsw i64 %i.m, %i.k
  store ptr %1, ptr %i.a, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %2, ptr %.sroa.32.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8, !tbaa !484
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 344
  %.sroa.058.068 = load ptr, ptr %i.o, align 8, !tbaa !100 ; 2 uses
  %.not6669 = icmp eq ptr %.sroa.058.068, null
  br i1 %.not6669, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54
  %.pre = load ptr, ptr %6, align 8, !tbaa !21
  %.pre71 = load i32, ptr %i.b, align 8, !tbaa !484
  %i.p = zext i32 %.pre71 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %i.q = phi i64 [ %i.p, %._crit_edge.loopexit ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ]
  %i.r = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !201
  store i64 %i.t, ptr %7, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !202
  store i32 %i.w, ptr %i.u, align 8, !tbaa !203
  store ptr %i.r, ptr %8, align 8, !tbaa !607
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.q, ptr %i.x, align 8, !tbaa !610
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.z = load ptr, ptr %6, align 8, !tbaa !21     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.z) #25
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret { ptr, i32 } %i.y

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54
  %.sroa.058.070 = phi ptr [ %.sroa.058.0, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54 ], [ %.sroa.058.068, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.058.070, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !101 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !106
  %i.af = icmp ne i32 %i.ae, 316
  %.not67 = icmp eq ptr %i.ac, null
  %.not = or i1 %.not67, %i.af
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !106
  switch i32 %i.al, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54 [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.b, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.an = load i32, ptr %i.am, align 8, !tbaa !611 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !582
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = zext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !602
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !603 ; 4 uses
  %.not47 = icmp sgt i64 %i.au, %i.k
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !606
  %i.ax = add i64 %i.au, -1
  %i.ay = add i64 %i.ax, %i.aw
  %.not48 = icmp sgt i64 %i.k, %i.ay
  br i1 %.not48, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not49 = icmp sle i64 %i.k, %i.au
  %.not50.not = icmp slt i64 %i.au, %i.n
  %or.cond = select i1 %.not49, i1 %.not50.not, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.az = load i32, ptr %i.b, align 8, !tbaa !484 ; 2 uses
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !485
  %.not.i52 = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i52, label %bb.h, label %bb.g, !prof !486

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %i.ac, i32 1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54

bb.h:                                             ; preds = %bb.f
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %6, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bb ; 2 uses
  store ptr %i.ac, ptr %i.bd, align 1
  %.sroa.32.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 1, ptr %.sroa.32.0..sroa_idx.i53, align 1
  %i.be = load i32, ptr %i.b, align 8, !tbaa !484
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !484
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit54: ; preds = %bb.b, %bb.h, %bb.g, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.e, %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.058.070, i64 32
  %.sroa.058.0 = load ptr, ptr %i.bg, align 8, !tbaa !100 ; 2 uses
  %.not66 = icmp eq ptr %.sroa.058.0, null
  br i1 %.not66, label %._crit_edge.loopexit, label %.lr.ph
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::ArrayRef.303") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering18lowerUnhandledCallERNS_14TargetLowering16CallLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEENS_9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(4664) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %6 = alloca %"class.llvm::ArrayRef.303", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %8 = alloca %"class.llvm::DiagnosticInfoUnsupported", align 8 ; 9 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 9 uses
  %10 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.063.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !200 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !613, !nonnull !19, !align !231 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !534, !nonnull !19, !align !231
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.063.0.copyload, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !106
  switch i32 %i.h, label %_ZN4llvmplERKNS_5TwineES2_.exit [
    i32 44, label %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 19, label %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 14, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 39, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 15, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.063.0.copyload, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !644  ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #25
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.063.0.copyload, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !646
  %i.n = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #25 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.b
  %.sroa.6.0 = phi i64 [ 0, %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.p, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.k, %bb.b ], [ 9, %bb.a ]
  %.sroa.062.0 = phi ptr [ null, %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.o, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.j, %bb.b ], [ @.str.12, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %3, ptr %9, align 8, !alias.scope !648
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %4, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !26, !alias.scope !648
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.062.0, ptr %i.s, align 8, !alias.scope !648
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !26, !alias.scope !648
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.t, align 8, !tbaa !653, !alias.scope !648
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 5, ptr %i.u, align 1, !tbaa !656, !alias.scope !648
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.v) #25
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 25, ptr %i.w, align 8, !tbaa !657
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 0, ptr %i.x, align 4, !tbaa !660
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.f, ptr %i.y, align 8, !tbaa !661
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !662
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %8, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %9, ptr %i.aa, align 8, !tbaa !665
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(13) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !667, !range !18, !noundef !19
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2456
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2464
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !484 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.idx = shl nuw nsw i64 %i.ai, 6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %.not5869 = icmp eq i32 %i.ah, 0
  br i1 %.not5869, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.070 = phi ptr [ %i.af, %.lr.ph ], [ %i.av, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.070, i64 16
  %.sroa.015.0.copyload = load i16, ptr %i.am, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.015.0.copyload, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.an, 0 ; 2 uses
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.an, 1 ; 2 uses
  %i.ao = load i32, ptr %i.ak, align 8, !tbaa !484 ; 2 uses
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !485
  %.not.i60 = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i60, label %bb.f, label %bb.e, !prof !486

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract11, i32 %.fca.1.extract12)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = zext i32 %i.ao to i64
  %i.ar = load ptr, ptr %2, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  store ptr %.fca.0.extract11, ptr %i.as, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.at = load i32, ptr %i.ak, align 8, !tbaa !484
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.ak, align 8, !tbaa !484
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.e, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.070, i64 64 ; 2 uses
  %.not58 = icmp eq ptr %i.av, %i.aj
  br i1 %.not58, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %bb.c, %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !668, !nonnull !19, !align !231
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 960
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !669
  %i.ba = icmp eq i32 %i.az, 25
  %.sroa.053.0.copyload = load ptr, ptr %1, align 8, !tbaa !200 ; 2 uses
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.354.0.copyload = load i32, ptr %.sroa.354.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.bb = insertvalue { ptr, i32 } poison, ptr %.sroa.053.0.copyload, 0
  %i.bc = insertvalue { ptr, i32 } %i.bb, i32 %.sroa.354.0.copyload, 1
  br label %bb.i

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i16 1, ptr null, i16 249, ptr null) #25 ; 2 uses
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = extractvalue { ptr, i32 } %i.bd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %.sroa.053.0.copyload, ptr %5, align 16, !tbaa !200
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.354.0.copyload, ptr %.sroa.217.0..sroa_idx.i, align 8, !tbaa !81
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %i.v, i1 noundef zeroext true) #25 ; 2 uses
  %.fca.0.extract7.i = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract8.i = extractvalue { ptr, i32 } %i.bh, 1
  store ptr %.fca.0.extract7.i, ptr %i.bg, align 16
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract8.i, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %i.v, i1 noundef zeroext true) #25 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.bj, 1
  store ptr %.fca.0.extract3.i, ptr %i.bi, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %5, ptr %6, align 8, !tbaa !607
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.bk, align 8, !tbaa !610
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef 333, ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr %i.be, i32 %i.bf, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %6) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.bl, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueEmmS1_RKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr %.fca.0.extract3, i32 %.fca.1.extract4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull align 8 dereferenceable(12) %i.v)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.bc, %bb.g ], [ %i.bm, %bb.h ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #4

declare void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueEmmS1_RKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, i64 noundef %3, i64 noundef %4, ptr noundef byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.321", align 8 ; 14 uses
  %8 = alloca %"class.llvm::ArrayRef.303", align 8 ; 5 uses
  %i.a = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext true) #25 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.a, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.a, 1
  %i.b = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext true) #25 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.b, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.b, 1
  %.sroa.024.0.copyload = load ptr, ptr %5, align 8, !tbaa !200 ; 2 uses
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.225.0.copyload = load i32, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.c = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 1, ptr null, i16 249, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 4, ptr %i.f, align 4, !tbaa !485
  store ptr %1, ptr %i.d, align 8
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %2, ptr %.sroa.32.0..sroa_idx.i.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.fca.0.extract5, ptr %i.g, align 8
  %.sroa.32.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %.fca.1.extract6, ptr %.sroa.32.0..sroa_idx.i26.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.fca.0.extract1, ptr %i.h, align 8
  %.sroa.32.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 %.fca.1.extract2, ptr %.sroa.32.0..sroa_idx.i29.i, align 8
  store i32 3, ptr %i.e, align 8, !tbaa !484
  %.not.i = icmp eq ptr %.sroa.024.0.copyload, null
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %.sroa.024.0.copyload, ptr %i.i, align 8
  %.sroa.32.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %.sroa.225.0.copyload, ptr %.sroa.32.0..sroa_idx.i32.i, align 8
  store i32 4, ptr %i.e, align 8, !tbaa !484
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i: ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ 4, %bb.b ], [ 3, %bb.a ]
  %i.k = extractvalue { ptr, i32 } %i.c, 1
end_hunk_0
begin_hunk_1_@_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_

declare { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering25performAssertSZExtCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704, !nonnull !19, !align !231 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 3 uses
  %.sroa.038.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !200 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106
  %i.g = icmp eq i32 %i.f, 230
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.034.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !200 ; 3 uses
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load i64, ptr %.sroa.636.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.j, align 8, !tbaa !64 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !98 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !201
  store i64 %i.l, ptr %4, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !202
  store i32 %i.o, ptr %i.m, align 8, !tbaa !203
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107  ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !200 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.r = load <2 x i32>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85
  %i.u = zext i32 %.sroa.6.0.copyload to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.v, align 8, !tbaa !64 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98 ; 3 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.w, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i
  %i.x = icmp eq ptr %.sroa.21.0.copyload.i.i, %.sroa.21.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm3EVT6bitsGEES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i16 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.y, align 8
  %.not.i.i8.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i8.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.aa = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ab, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.aa, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ac = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i:          ; preds = %bb.e, %bb.d
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %.not.i5.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i5.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.ad = zext i16 %.sroa.0.0.copyload.i to i64
  %i.ae = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -16
  %.sroa.0.0.copyload.i.i6.i.i = load i64, ptr %i.af, align 16
  %.sroa.2.0..sroa_idx.i.i7.i.i = getelementptr i8, ptr %i.ae, i64 -8
  %.sroa.2.0.copyload.i.i8.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i.i, align 8
  %.fca.0.insert.i.i9.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i.i, 0
  %.fca.1.insert.i.i10.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i9.i.i, i8 %.sroa.2.0.copyload.i.i8.i.i, 1
  br label %_ZNK4llvm3EVT6bitsGEES0_.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.ag = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  br label %_ZNK4llvm3EVT6bitsGEES0_.exit

_ZNK4llvm3EVT6bitsGEES0_.exit:                    ; preds = %bb.f, %bb.g
  %.pn.i11.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i10.i.i, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %.fca.0.extract1.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 1
  %i.ah = trunc nuw i8 %.fca.1.extract2.i.i to i1
  %i.ai = trunc nuw i8 %.fca.1.extract.i.i to i1
  %i.aj = icmp uge i64 %.fca.0.extract1.i.i, %.fca.0.extract.i.i
  %.not7.i.i.i = xor i1 %i.ai, true
  %not.or.cond.i.i.i = select i1 %i.ah, i1 true, i1 %.not7.i.i.i
  %.0.i.i.i = select i1 %not.or.cond.i.i.i, i1 %i.aj, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.0.i.i.i, label %_ZNK4llvm3EVT6bitsGEES0_.exit.thread, label %.sink.split

_ZNK4llvm3EVT6bitsGEES0_.exit.thread:             ; preds = %bb.b, %_ZNK4llvm3EVT6bitsGEES0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !106
  store ptr %.sroa.0.0.copyload, ptr %6, align 8, !tbaa !200
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x i32> %i.r, ptr %.sroa.6.0..sroa_idx30, align 8
  store ptr %.sroa.034.0.copyload, ptr %7, align 8, !tbaa !200
  %.sroa.636.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.i, ptr %.sroa.636.0..sroa_idx37, align 8
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #25 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.am, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !85 ; 2 uses
  %.sroa.0.0.copyload.i24 = load i16, ptr %i.ao, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.21.0.copyload.i26 = load ptr, ptr %.sroa.21.0..sroa_idx.i25, align 8, !tbaa !98
  store ptr %.fca.0.extract3, ptr %8, align 8, !tbaa !200
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !81
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i24, ptr %.sroa.21.0.copyload.i26, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ap, 1
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK4llvm3EVT6bitsGEES0_.exit, %_ZNK4llvm3EVT6bitsGEES0_.exit.thread
  %.sroa.4.0.ph = phi i32 [ %.fca.1.extract, %_ZNK4llvm3EVT6bitsGEES0_.exit.thread ], [ 0, %_ZNK4llvm3EVT6bitsGEES0_.exit ]
  %.sroa.040.0.ph = phi ptr [ %.fca.0.extract, %_ZNK4llvm3EVT6bitsGEES0_.exit.thread ], [ null, %_ZNK4llvm3EVT6bitsGEES0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.sroa.4.0 = phi i32 [ 0, %bb.a ], [ %.sroa.4.0.ph, %.sink.split ]
  %.sroa.040.0 = phi ptr [ null, %bb.a ], [ %.sroa.040.0.ph, %.sink.split ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.040.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering30performIntrinsicWOChainCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !26
  %i.k = trunc i64 %.0.i.i.i.i to i32
  switch i32 %i.k, label %bb.k [
    i32 3374, label %bb.b
    i32 3375, label %bb.b
    i32 3376, label %bb.b
    i32 3377, label %bb.b
    i32 2498, label %bb.c
    i32 3462, label %bb.c
    i32 3458, label %bb.c
    i32 3464, label %bb.c
    i32 3463, label %bb.c
    i32 3649, label %bb.c
    i32 3399, label %bb.c
    i32 2499, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = tail call fastcc { ptr, i32 } @_ZL13simplifyMul24PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.l, 1
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.023.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !200 ; 2 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !106
  %i.p = add i32 %i.o, -53
  %spec.select.i.i = icmp ult i32 %i.p, 2         ; 2 uses
  %spec.select41 = select i1 %spec.select.i.i, ptr %.sroa.023.0.copyload, ptr null
  %3 = trunc i64 %.sroa.525.0.copyload to i32
  %4 = select i1 %spec.select.i.i, i32 %3, i32 0
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.021.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !200 ; 4 uses
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.522.0.copyload = load i32, ptr %.sroa.522.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !106  ; 2 uses
  %i.t = icmp eq i32 %i.s, 260
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !107  ; 2 uses
  %.sroa.0.0.copyload6.i = load ptr, ptr %i.v, align 8, !tbaa !200 ; 2 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !81
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload6.i, i64 24
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !106
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i32 [ %.pre.i, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.11.0.i = phi i32 [ %.sroa.11.0.copyload.i, %bb.e ], [ %.sroa.522.0.copyload, %bb.d ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload6.i, %bb.e ], [ %.sroa.021.0.copyload, %bb.d ] ; 2 uses
  %i.x = icmp eq i32 %i.w, 261
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107  ; 2 uses
  %.sroa.0.0.copyload7.i = load ptr, ptr %i.z, align 8, !tbaa !200 ; 2 uses
  %.sroa.11.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.11.0.copyload10.i = load i32, ptr %.sroa.11.0..sroa_idx9.i, align 8, !tbaa !81
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload7.i, i64 24
  %.pre14.i = load i32, ptr %.phi.trans.insert13.i, align 8, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi i32 [ %.pre14.i, %bb.g ], [ %i.w, %bb.f ]
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.copyload10.i, %bb.g ], [ %.sroa.11.0.i, %bb.f ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.copyload7.i, %bb.g ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 158
  br i1 %i.ab, label %bb.i, label %_ZL13peekFPSignOpsN4llvm7SDValueE.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 2 uses
  %.sroa.0.0.copyload8.i = load ptr, ptr %i.ad, align 8, !tbaa !200
  %.sroa.11.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.11.0.copyload12.i = load i32, ptr %.sroa.11.0..sroa_idx11.i, align 8, !tbaa !81
  br label %_ZL13peekFPSignOpsN4llvm7SDValueE.exit

_ZL13peekFPSignOpsN4llvm7SDValueE.exit:           ; preds = %bb.h, %bb.i
  %.sroa.11.2.i = phi i32 [ %.sroa.11.0.copyload12.i, %bb.i ], [ %.sroa.11.1.i, %bb.h ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.copyload8.i, %bb.i ], [ %.sroa.0.1.i, %bb.h ] ; 2 uses
  %i.ae = icmp eq ptr %.sroa.0.2.i, %.sroa.021.0.copyload
  %i.af = icmp eq i32 %.sroa.11.2.i, %.sroa.522.0.copyload
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZL13peekFPSignOpsN4llvm7SDValueE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !704, !nonnull !19, !align !231
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !81
  %i.aj = tail call noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_(ptr noundef nonnull align 8 dereferenceable(920) %i.ai, ptr noundef nonnull %1, ptr nonnull %i.c, i32 %.sroa.22.0.copyload, ptr %.sroa.0.2.i, i32 %.sroa.11.2.i) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.a, %bb.j, %_ZL13peekFPSignOpsN4llvm7SDValueE.exit, %bb.b
  %.sroa.10.2 = phi i32 [ 0, %_ZL13peekFPSignOpsN4llvm7SDValueE.exit ], [ %.fca.1.extract10, %bb.b ], [ %4, %bb.c ], [ 0, %bb.a ], [ 0, %bb.j ]
  %.sroa.027.2 = phi ptr [ null, %_ZL13peekFPSignOpsN4llvm7SDValueE.exit ], [ %.fca.0.extract9, %bb.b ], [ %spec.select41, %bb.c ], [ null, %bb.a ], [ %i.aj, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.027.2, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.10.2, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL13simplifyMul24PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 8 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 12 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704, !nonnull !19, !align !231 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !791  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.g = icmp eq i32 %i.f, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 5 uses
  br i1 %i.g, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !670
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !670
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !670
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !670
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %i.s = icmp ult i32 %i.r, 65
  %i.t = load ptr, ptr %i.p, align 8
  %spec.select.i.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.t
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !26
  %switch.tableidx = add i64 %.0.i.i.i.i, 4294963922
  %i.u = and i64 %switch.tableidx, 4294967295
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL13simplifyMul24PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE, i64 %i.u
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %switch.ext, %switch.lookup ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.v = load ptr, ptr %3, align 8, !tbaa !108    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !115  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ab, align 8, !tbaa !64 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !98
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.ac, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ae = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.af, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ae, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #26
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.d, %bb.e
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.fca.1.extract23 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.ah = trunc nuw i8 %.fca.1.extract23 to i1
  br i1 %i.ah, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract22 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.ai = trunc i64 %.fca.0.extract22 to i32      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !23, !alias.scope !792
  %i.ak = icmp ult i32 %i.ai, 65
  br i1 %i.ak, label %_ZN4llvm5APIntC2Ejmbb.exit.i.thread, label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef 0, i1 noundef zeroext false) #25
  %.pr = load i32, ptr %i.aj, align 8, !tbaa !23, !alias.scope !792
  %i.al = icmp ult i32 %.pr, 65
  br i1 %i.al, label %_ZN4llvm5APIntC2Ejmbb.exit.i._crit_edge, label %bb.g

_ZN4llvm5APIntC2Ejmbb.exit.i._crit_edge:          ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %.pre = load i64, ptr %5, align 8, !tbaa !26, !alias.scope !792
  %i.am = or i64 %.pre, 16777215
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i.thread

_ZN4llvm5APIntC2Ejmbb.exit.i.thread:              ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZN4llvm5APIntC2Ejmbb.exit.i._crit_edge
  %i.an = phi i64 [ %i.am, %_ZN4llvm5APIntC2Ejmbb.exit.i._crit_edge ], [ 16777215, %_ZNK4llvm8TypeSizecvmEv.exit ]
  store i64 %i.an, ptr %5, align 8, !tbaa !26, !alias.scope !792
  br label %_ZN4llvm5APInt13getLowBitsSetEjj.exit

bb.g:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.ao = load ptr, ptr %5, align 8, !tbaa !26, !alias.scope !792 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !508
  %i.aq = or i64 %i.ap, 16777215
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !508
  br label %_ZN4llvm5APInt13getLowBitsSetEjj.exit

_ZN4llvm5APInt13getLowBitsSetEjj.exit:            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.thread, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ar = call { ptr, i32 } @_ZNK4llvm14TargetLowering31SimplifyMultipleUseDemandedBitsENS_7SDValueERKNS_5APIntERNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %i.d, ptr nonnull %i.v, i32 %i.x, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 0) #25 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.ar, 0 ; 2 uses
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.ar, 1
  store ptr %.fca.0.extract15, ptr %6, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.218.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.sroa.012.0.copyload = load ptr, ptr %4, align 8, !tbaa !200 ; 2 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.213.0.copyload = load i32, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %i.as = call { ptr, i32 } @_ZNK4llvm14TargetLowering31SimplifyMultipleUseDemandedBitsENS_7SDValueERKNS_5APIntERNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %i.d, ptr %.sroa.012.0.copyload, i32 %.sroa.213.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 0) #25 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.as, 0 ; 3 uses
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract8, ptr %7, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.211.0..sroa_idx, align 8
  %i.at = icmp ne ptr %.fca.0.extract15, null     ; 2 uses
  %i.au = icmp ne ptr %.fca.0.extract8, null
  %or.cond = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm5APInt13getLowBitsSetEjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !201
  store i64 %i.aw, ptr %8, align 8, !tbaa !201
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !202
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !203
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !795
  %i.be = zext i16 %i.bd to i32
  %. = select i1 %i.at, ptr %6, ptr %3
  %.not = icmp eq ptr %.fca.0.extract8, null
  %i.bf = select i1 %.not, ptr %4, ptr %7
  %i.bg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %.1, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.bb, i32 %i.be, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %., ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bf) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bg, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.k

bb.i:                                             ; preds = %_ZN4llvm5APInt13getLowBitsSetEjj.exit
  %i.bh = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS0_15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %i.d, ptr nonnull %i.v, i32 %i.x, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  br i1 %i.bh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS0_15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %i.d, ptr %.sroa.012.0.copyload, i32 %.sroa.213.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  %spec.select = select i1 %i.bi, ptr %0, ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.652.0 = phi i32 [ %.fca.1.extract, %bb.h ], [ 0, %bb.j ], [ 0, %bb.i ]
  %.sroa.051.0 = phi ptr [ %.fca.0.extract, %bb.h ], [ %spec.select, %bb.j ], [ %0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bj = load i32, ptr %i.aj, align 8, !tbaa !23
  %i.bk = icmp ugt i32 %i.bj, 64
  br i1 %i.bk, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4llvm5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.051.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.652.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr, i32, ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering28splitBinaryBitConstantOpImplERNS_14TargetLowering15DAGCombinerInfoERKNS_5SDLocEjNS_7SDValueEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %3, ptr %4, i32 %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"class.llvm::ArrayRef.303", align 8 ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704, !nonnull !19, !align !231 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !796
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !201, !noalias !796
  store i64 %i.d, ptr %9, align 8, !tbaa !201, !noalias !796
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !202, !noalias !796
  store i32 %i.g, ptr %i.e, align 8, !tbaa !203, !noalias !796
  store ptr %4, ptr %10, align 8, !tbaa !200, !noalias !796
  %.sroa.335.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %5, ptr %.sroa.335.0..sroa_idx.i, align 8, !tbaa !81, !noalias !796
  %i.h = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 71, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #25, !noalias !796 ; 2 uses
  %.fca.0.extract17.i = extractvalue { ptr, i32 } %i.h, 0 ; 2 uses
  %.fca.1.extract18.i = extractvalue { ptr, i32 } %i.h, 1 ; 2 uses
  %i.i = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25, !noalias !796 ; 2 uses
  %.fca.0.extract10.i = extractvalue { ptr, i32 } %i.i, 0
  %.fca.1.extract11.i = extractvalue { ptr, i32 } %i.i, 1
  %i.j = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25, !noalias !796 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.j, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.j, 1
  store ptr %.fca.0.extract17.i, ptr %11, align 8, !tbaa !200, !noalias !796
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract18.i, ptr %.sroa.523.0..sroa_idx.i, align 8, !tbaa !81, !noalias !796
  store ptr %.fca.0.extract10.i, ptr %12, align 8, !tbaa !200, !noalias !796
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract11.i, ptr %.sroa.415.0..sroa_idx.i, align 8, !tbaa !81, !noalias !796
  %i.k = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #25, !noalias !796 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.k, 0 ; 2 uses
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.k, 1
  store ptr %.fca.0.extract17.i, ptr %13, align 8, !tbaa !200, !noalias !796
  %.sroa.523.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract18.i, ptr %.sroa.523.0..sroa_idx24.i, align 8, !tbaa !81, !noalias !796
  store ptr %.fca.0.extract5.i, ptr %14, align 8, !tbaa !200, !noalias !796
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract6.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !81, !noalias !796
  %i.l = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #25, !noalias !796 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.l, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.m = zext i32 %6 to i64
  %i.n = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.n, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.n, 1
  %i.o = zext i32 %7 to i64
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.p, 1
  store ptr %.fca.0.extract1.i, ptr %15, align 8, !tbaa !200
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !81
  store ptr %.fca.0.extract29, ptr %16, align 8, !tbaa !200
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract30, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !81
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #25 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.q, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.q, 1
  store ptr %.fca.0.extract.i, ptr %17, align 8, !tbaa !200
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract.i, ptr %.sroa.679.0..sroa_idx, align 8, !tbaa !81
  store ptr %.fca.0.extract22, ptr %18, align 8, !tbaa !200
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !81
  %i.r = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #25 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.r, 1
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.fca.0.extract1.i) #25
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.fca.0.extract.i) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store ptr %.fca.0.extract15, ptr %19, align 8, !tbaa !200
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %.fca.0.extract8, ptr %i.s, align 8, !tbaa !200
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 %.fca.1.extract9, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %19, ptr %8, align 8, !tbaa !671
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 2, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !508
  %i.t = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 71, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %8) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  store ptr %.fca.0.extract1, ptr %20, align 8, !tbaa !200
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !81
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #25
  ret { ptr, i32 } %i.u
}

declare void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering17performShlCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.303", align 8 ; 5 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %5 = alloca %"class.llvm::ArrayRef.303", align 8 ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 17 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 19 uses
  %8 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"struct.llvm::KnownBits", align 8 ; 13 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"struct.llvm::KnownBits", align 8 ; 7 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 11 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 15 uses
  %17 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SmallVector.281", align 8 ; 11 uses
  %25 = alloca %"class.llvm::SmallVector.435", align 8 ; 13 uses
  %26 = alloca %"struct.llvm::EVT", align 8       ; 2 uses
  %27 = alloca %"class.llvm::ArrayRef.303", align 8 ; 3 uses
  %28 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !64 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !98 ; 3 uses
  store i16 %.sroa.0.0.copyload.i, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 4 uses
  %.sroa.0336.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !200 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0328.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !200 ; 5 uses
  %.sroa.6330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.g = load <2 x i32>, ptr %.sroa.6330.0..sroa_idx, align 8
  %.sroa.6330.0.copyload = load i32, ptr %.sroa.6330.0..sroa_idx, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0328.0.copyload, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !201
  store i64 %i.k, ptr %7, align 8, !tbaa !201
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !202
  store i32 %i.n, ptr %i.l, align 8, !tbaa !203
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !704, !nonnull !19, !align !231 ; 19 uses
  switch i32 %i.i, label %.critedge216 [
    i32 37, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0328.0.copyload, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !109  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !23
  %i.v = icmp ult i32 %i.u, 65
  %i.w = load ptr, ptr %i.s, align 8
  %spec.select.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.w
  %.0.i.i.i219 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !26 ; 7 uses
  %i.x = trunc i64 %.0.i.i.i219 to i32            ; 3 uses
  %.not211 = icmp eq i32 %i.x, 0
  br i1 %.not211, label %bb.bd, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !106
  %.off = add i32 %i.z, -227
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.d, label %.critedge216

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %.sroa.0320.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !200 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ac = load <2 x i32>, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 7
  %i.ad = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.ad, i1 false
  %i.ae = icmp eq i32 %i.x, 16
  %or.cond = and i1 %.not4.i, %i.ae
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0320.0.copyload, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !85
  %i.ah = zext i32 %.sroa.10.0.copyload to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ai, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98
  %.not.i.i220 = icmp eq i16 %.sroa.0.0.copyload.i.i, 6
  %i.aj = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i221 = select i1 %.not.i.i220, i1 %i.aj, i1 false
  br i1 %.not4.i221, label %bb.f, label %.split.i.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113
  %.not.i.not = icmp eq ptr %i.al, null
  br i1 %.not.i.not, label %.split.i.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36418
  %i.an = load i8, ptr %i.am, align 2, !tbaa !62
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %.critedge214, label %.split.i.thread

.critedge214:                                     ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 6, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract161 = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract162 = extractvalue { ptr, i32 } %i.ap, 1
  store ptr %.fca.0.extract161, ptr %8, align 8
  %.sroa.2164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract162, ptr %.sroa.2164.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false), !tbaa.struct !670
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %8, ptr %5, align 8, !tbaa !671
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !508
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 56, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %5) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract157 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract158 = extractvalue { ptr, i32 } %i.as, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  store ptr %.fca.0.extract157, ptr %9, align 8, !tbaa !200
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract158, ptr %.sroa.4168.0..sroa_idx, align 8, !tbaa !81
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #25 ; 2 uses
  %.fca.0.extract153 = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract154 = extractvalue { ptr, i32 } %i.at, 1
  %.sroa.9346.8.insert.ext352 = zext i32 %.fca.1.extract154 to i64
  br label %bb.bd

.critedge:                                        ; preds = %bb.d
  %.not.i222 = icmp ne i16 %.sroa.0.0.copyload.i, 8
  %i.au = icmp ne ptr %.sroa.21.0.copyload.i, null
  %i.av = select i1 %.not.i222, i1 true, i1 %i.au
  br i1 %i.av, label %.critedge216, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %10, ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr %.sroa.0320.0.copyload, i32 %.sroa.10.0.copyload, i32 noundef 0) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !23 ; 5 uses
  %i.ay = icmp ult i32 %i.ax, 65
  br i1 %i.ay, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.az = icmp eq i32 %i.ax, 0
  br i1 %i.az, label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %10, align 8, !tbaa !26
  %i.bb = sub nuw nsw i32 64, %i.ax
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.ba, %i.bc
  %i.be = xor i64 %i.bd, -1
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  br label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit

bb.j:                                             ; preds = %bb.g
  %i.bh = call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  br label %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit

_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.bh, %bb.j ], [ %i.bg, %bb.i ], [ 0, %bb.h ]
  %i.bi = icmp ult i32 %.0.i.i, %i.x
  br i1 %i.bi, label %.critedge218, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0320.0.copyload, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85
  %i.bl = zext i32 %.sroa.10.0.copyload to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %.sroa.0.0.copyload.i.i223 = load i16, ptr %i.bm, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i224 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.21.0.copyload.i.i225 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i224, align 8, !tbaa !98
  store ptr %.sroa.0320.0.copyload, ptr %11, align 8, !tbaa !200
  %.sroa.10.0..sroa_idx323 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x i32> %i.ac, ptr %.sroa.10.0..sroa_idx323, align 8
  store ptr %.sroa.0328.0.copyload, ptr %12, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.bn, align 8, !tbaa !115
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i223, ptr %.sroa.21.0.copyload.i.i225, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #25 ; 2 uses
  %.fca.0.extract137 = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract138 = extractvalue { ptr, i32 } %i.bo, 1
  %.sroa.0131.0.copyload = load i16, ptr %6, align 8, !tbaa !64
  %.sroa.2133.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr %.fca.0.extract137, i32 %.fca.1.extract138, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0131.0.copyload, ptr %.sroa.2133.0.copyload) #25 ; 2 uses
  %.fca.0.extract127 = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract128 = extractvalue { ptr, i32 } %i.bp, 1
  %.sroa.9346.8.insert.ext348 = zext i32 %.fca.1.extract128 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !23
  %i.bs = icmp ugt i32 %i.br, 64
  br i1 %i.bs, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.m, %bb.l, %bb.k
  %i.bw = load i32, ptr %i.aw, align 8, !tbaa !23
  %i.bx = icmp ugt i32 %i.bw, 64
  br i1 %i.bx, label %bb.n, label %_ZN4llvm9KnownBitsD2Ev.exit

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.by = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.by) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bd

.critedge218:                                     ; preds = %_ZNK4llvm9KnownBits20countMinLeadingZerosEv.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !23
  %i.cc = icmp ugt i32 %i.cb, 64
  br i1 %i.cc, label %bb.p, label %_ZN4llvm5APIntD2Ev.exit.i228

bb.p:                                             ; preds = %.critedge218
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !26 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN4llvm5APIntD2Ev.exit.i228, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #28
  %.pre = load i32, ptr %i.aw, align 8, !tbaa !23
  br label %_ZN4llvm5APIntD2Ev.exit.i228

_ZN4llvm5APIntD2Ev.exit.i228:                     ; preds = %bb.q, %bb.p, %.critedge218
  %i.cg = phi i32 [ %.pre, %bb.q ], [ %i.ax, %bb.p ], [ %i.ax, %.critedge218 ]
  %i.ch = icmp ugt i32 %i.cg, 64
  br i1 %i.ch, label %bb.r, label %_ZN4llvm9KnownBitsD2Ev.exit229

bb.r:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i228
  %i.ci = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN4llvm9KnownBitsD2Ev.exit229, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.ci) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit229

_ZN4llvm9KnownBitsD2Ev.exit229:                   ; preds = %_ZN4llvm5APIntD2Ev.exit.i228, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.pre371 = load i16, ptr %6, align 8, !tbaa !116
  br label %.critedge216

.critedge216:                                     ; preds = %bb.a, %.critedge, %_ZN4llvm9KnownBitsD2Ev.exit229, %bb.c
  %i.ck = phi i16 [ %.sroa.0.0.copyload.i, %bb.c ], [ %.pre371, %_ZN4llvm9KnownBitsD2Ev.exit229 ], [ %.sroa.0.0.copyload.i, %.critedge ], [ %.sroa.0.0.copyload.i, %bb.a ] ; 4 uses
  %.not349 = phi i1 [ false, %bb.c ], [ false, %_ZN4llvm9KnownBitsD2Ev.exit229 ], [ false, %.critedge ], [ true, %bb.a ] ; 4 uses
  %.0 = phi i64 [ %.0.i.i.i219, %bb.c ], [ %.0.i.i.i219, %_ZN4llvm9KnownBitsD2Ev.exit229 ], [ %.0.i.i.i219, %.critedge ], [ 0, %bb.a ] ; 4 uses
  %.not.i.i230 = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i230, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %.critedge216
  %i.cl = add i16 %i.ck, -19
  %spec.select.i.i.i231 = icmp ult i16 %i.cl, 197
  br i1 %spec.select.i.i.i231, label %bb.t, label %.split.i.thread

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %.critedge216
  %i.cm = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br i1 %i.cm, label %bb.u, label %.split.i.thread

bb.t:                                             ; preds = %.split.i
  %i.cn = zext nneg i16 %i.ck to i64
  %i.co = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !64
  %i.cr = insertvalue { i16, ptr } poison, i16 %i.cq, 0
  %i.cs = insertvalue { i16, ptr } %i.cr, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.u:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.ct = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

.split.i.thread:                                  ; preds = %bb.e, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %bb.f, %_ZNK4llvm3EVT8isVectorEv.exit.i, %.split.i
  %.0404 = phi i64 [ %.0, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %.0, %.split.i ], [ %.0.i.i.i219, %bb.f ], [ %.0.i.i.i219, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit ], [ %.0.i.i.i219, %bb.e ]
  %.not349401 = phi i1 [ %.not349, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %.not349, %.split.i ], [ false, %bb.f ], [ false, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit ], [ false, %bb.e ]
  %i.cu = phi i16 [ 0, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %i.ck, %.split.i ], [ 7, %bb.f ], [ 7, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit ], [ 7, %bb.e ]
  %.sroa.31.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.cv = insertvalue { i16, ptr } poison, i16 %i.cu, 0
  %i.cw = insertvalue { i16, ptr } %i.cv, ptr %.sroa.31.0.copyload.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %bb.t, %bb.u, %.split.i.thread
  %.0403 = phi i64 [ %.0404, %.split.i.thread ], [ %.0, %bb.t ], [ %.0, %bb.u ]
  %.not349400 = phi i1 [ %.not349401, %.split.i.thread ], [ %.not349, %bb.t ], [ %.not349, %bb.u ]
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.cw, %.split.i.thread ], [ %i.cs, %bb.t ], [ %i.ct, %bb.u ] ; 2 uses
  %i.cx = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.cy = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %.not.i232 = icmp ne i16 %i.cx, 8
  %i.cz = icmp ne ptr %i.cy, null
  %i.da = select i1 %.not.i232, i1 true, i1 %i.cz
  br i1 %i.da, label %bb.bd, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %13, ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr nonnull %.sroa.0328.0.copyload, i32 %.sroa.6330.0.copyload, i32 noundef 0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.db = load i16, ptr %6, align 8, !tbaa !116   ; 4 uses
  %.not.i.i233 = icmp eq i16 %i.db, 0
  br i1 %.not.i.i233, label %_ZNK4llvm3EVT8isVectorEv.exit.i239, label %.split.i234

.split.i234:                                      ; preds = %bb.v
  %i.dc = add i16 %i.db, -19
  %spec.select.i.i.i235 = icmp ult i16 %i.dc, 197
  br i1 %spec.select.i.i.i235, label %bb.w, label %bb.y

_ZNK4llvm3EVT8isVectorEv.exit.i239:               ; preds = %bb.v
  %i.dd = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br i1 %i.dd, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.split.i234
  %i.de = zext nneg i16 %i.db to i64
  %i.df = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !64
  %i.di = insertvalue { i16, ptr } poison, i16 %i.dh, 0
  %i.dj = insertvalue { i16, ptr } %i.di, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit240

bb.x:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i239
  %i.dk = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit240

bb.y:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i239, %.split.i234
  %.sroa.31.0.copyload.i237 = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.dl = insertvalue { i16, ptr } poison, i16 %i.db, 0
  %i.dm = insertvalue { i16, ptr } %i.dl, ptr %.sroa.31.0.copyload.i237, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit240

_ZNK4llvm3EVT13getScalarTypeEv.exit240:           ; preds = %bb.w, %bb.x, %bb.y
  %.fca.1.insert.merged.i238 = phi { i16, ptr } [ %i.dm, %bb.y ], [ %i.dj, %bb.w ], [ %i.dk, %bb.x ] ; 2 uses
  %i.dn = extractvalue { i16, ptr } %.fca.1.insert.merged.i238, 0
  store i16 %i.dn, ptr %14, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dp = extractvalue { i16, ptr } %.fca.1.insert.merged.i238, 1
  store ptr %i.dp, ptr %i.do, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !119
  %i.ds = call { i16, ptr } @_ZNK4llvm3EVT21getHalfSizedIntegerVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.dr) ; 4 uses
  %i.dt = extractvalue { i16, ptr } %i.ds, 0      ; 5 uses
  store i16 %i.dt, ptr %15, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.dv = extractvalue { i16, ptr } %i.ds, 1      ; 2 uses
  store ptr %i.dv, ptr %i.du, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i16 %i.dt, ptr %4, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.dv, ptr %i.dx, align 8
  %.not.i.i.i = icmp eq i16 %i.dt, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit240
  %i.dy = add i16 %i.dt, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.dy, 197
  br i1 %spec.select.i.i.i.i, label %bb.z, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit240
  %i.dz = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  br i1 %i.dz, label %bb.aa, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.z:                                             ; preds = %.split.i.i
  %i.ea = zext nneg i16 %i.dt to i64
  %i.eb = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -2
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !64
  %i.ee = insertvalue { i16, ptr } poison, i16 %i.ed, 0
  %i.ef = insertvalue { i16, ptr } %i.ee, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.aa:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.eg = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
end_hunk_1
begin_hunk_2_@_ZNK4llvm20AMDGPUTargetLowering17performShlCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  br i1 %spec.select.i.i.i243, label %bb.ab, label %_ZNK4llvm3EVT17changeElementTypeERNS_11LLVMContextES0_.exit

_ZNK4llvm3EVT8isVectorEv.exit.i245:               ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.el = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br i1 %i.el, label %bb.ab, label %_ZNK4llvm3EVT17changeElementTypeERNS_11LLVMContextES0_.exit

bb.ab:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i245, %.split.i242
  %i.em = call { i16, ptr } @_ZNK4llvm3EVT23changeVectorElementTypeERNS_11LLVMContextES0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i16 %i.eh, ptr %i.ei) ; 2 uses
  %.pre372 = extractvalue { i16, ptr } %i.em, 0
  %.pre373 = extractvalue { i16, ptr } %i.em, 1
  br label %_ZNK4llvm3EVT17changeElementTypeERNS_11LLVMContextES0_.exit

_ZNK4llvm3EVT17changeElementTypeERNS_11LLVMContextES0_.exit: ; preds = %.split.i242, %_ZNK4llvm3EVT8isVectorEv.exit.i245, %bb.ab
  %.pre-phi374 = phi ptr [ %i.ei, %.split.i242 ], [ %i.ei, %_ZNK4llvm3EVT8isVectorEv.exit.i245 ], [ %.pre373, %bb.ab ]
  %.pre-phi = phi i16 [ %i.eh, %.split.i242 ], [ %i.eh, %_ZNK4llvm3EVT8isVectorEv.exit.i245 ], [ %.pre372, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i16 %.pre-phi, ptr %16, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  store ptr %.pre-phi374, ptr %i.en, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !23, !noalias !799 ; 2 uses
  store i32 %i.er, ptr %i.ep, align 8, !tbaa !23, !alias.scope !799
  %i.es = icmp ult i32 %i.er, 65
  br i1 %i.es, label %_ZNK4llvm9KnownBits11getMinValueEv.exit.thread, label %_ZNK4llvm9KnownBits11getMinValueEv.exit

_ZNK4llvm9KnownBits11getMinValueEv.exit.thread:   ; preds = %_ZNK4llvm3EVT17changeElementTypeERNS_11LLVMContextES0_.exit
  %i.et = load i64, ptr %i.eo, align 8, !tbaa !26, !noalias !799 ; 2 uses
  store i64 %i.et, ptr %17, align 8, !tbaa !26, !alias.scope !799
  %i.eu = inttoptr i64 %i.et to ptr
  br label %bb.ac

_ZNK4llvm9KnownBits11getMinValueEv.exit:          ; preds = %_ZNK4llvm3EVT17changeElementTypeERNS_11LLVMContextES0_.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(12) %i.eo) #25
  %.pr = load i32, ptr %i.ep, align 8, !tbaa !23
  %.pr351 = load ptr, ptr %17, align 8            ; 2 uses
  %.pr.fr = freeze i32 %.pr
  %i.ev = icmp ult i32 %.pr.fr, 65                ; 2 uses
  %spec.select = select i1 %i.ev, ptr %17, ptr %.pr351
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm9KnownBits11getMinValueEv.exit, %_ZNK4llvm9KnownBits11getMinValueEv.exit.thread
  %i.ew = phi i1 [ %i.ev, %_ZNK4llvm9KnownBits11getMinValueEv.exit ], [ true, %_ZNK4llvm9KnownBits11getMinValueEv.exit.thread ]
  %i.ex = phi ptr [ %.pr351, %_ZNK4llvm9KnownBits11getMinValueEv.exit ], [ %i.eu, %_ZNK4llvm9KnownBits11getMinValueEv.exit.thread ] ; 2 uses
  %i.ey = phi ptr [ %spec.select, %_ZNK4llvm9KnownBits11getMinValueEv.exit ], [ %17, %_ZNK4llvm9KnownBits11getMinValueEv.exit.thread ]
  %.0.i = load i64, ptr %i.ey, align 8, !tbaa !26
  %i.ez = load i16, ptr %15, align 8, !tbaa !116  ; 2 uses
  %.not.i246 = icmp eq i16 %i.ez, 0
  br i1 %.not.i246, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = zext i16 %i.ez to i64
  %i.fb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fa ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -16
  %.sroa.0.0.copyload.i.i247 = load i64, ptr %i.fc, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.fb, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i248 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i247, 0
  %.fca.1.insert.i.i249 = insertvalue { i64, i8 } %.fca.0.insert.i.i248, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fd = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.ad, %bb.ae
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i249, %bb.ad ], [ %i.fd, %bb.ae ] ; 2 uses
  %.fca.1.extract118 = extractvalue { i64, i8 } %.pn.i, 1
  %i.fe = trunc nuw i8 %.fca.1.extract118 to i1
  br i1 %i.fe, label %bb.af, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.af:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract117 = extractvalue { i64, i8 } %.pn.i, 0
  %i.ff = icmp ult i64 %.0.i, %.fca.0.extract117
  %i.fg = icmp eq ptr %i.ex, null
  %or.cond354 = select i1 %i.ew, i1 true, i1 %i.fg
  br i1 %or.cond354, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ex) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br i1 %i.ff, label %bb.ay, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  br i1 %.not349400, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = and i64 %.0403, 4294967295
  %i.fi = load i16, ptr %15, align 8, !tbaa !116  ; 2 uses
  %.not.i250 = icmp eq i16 %i.fi, 0
  br i1 %.not.i250, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = zext i16 %i.fi to i64
  %i.fk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fj ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -16
  %.sroa.0.0.copyload.i.i251 = load i64, ptr %i.fl, align 16
  %.sroa.2.0..sroa_idx.i.i252 = getelementptr i8, ptr %i.fk, i64 -8
  %.sroa.2.0.copyload.i.i253 = load i8, ptr %.sroa.2.0..sroa_idx.i.i252, align 8
  %.fca.0.insert.i.i254 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i251, 0
  %.fca.1.insert.i.i255 = insertvalue { i64, i8 } %.fca.0.insert.i.i254, i8 %.sroa.2.0.copyload.i.i253, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit257

bb.ak:                                            ; preds = %bb.ai
  %i.fm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit257

_ZNK4llvm3EVT13getSizeInBitsEv.exit257:           ; preds = %bb.aj, %bb.ak
  %.pn.i256 = phi { i64, i8 } [ %.fca.1.insert.i.i255, %bb.aj ], [ %i.fm, %bb.ak ] ; 2 uses
  %.fca.1.extract111 = extractvalue { i64, i8 } %.pn.i256, 1
  %i.fn = trunc nuw i8 %.fca.1.extract111 to i1
  br i1 %i.fn, label %bb.al, label %_ZNK4llvm8TypeSizecvmEv.exit258

bb.al:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit257
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit258:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit257
  %.fca.0.extract110 = extractvalue { i64, i8 } %.pn.i256, 0
  %i.fo = sub i64 %i.fh, %.fca.0.extract110
  %.sroa.0107.0.copyload = load i16, ptr %16, align 8, !tbaa !64
  %.sroa.2109.0.copyload = load ptr, ptr %i.en, align 8, !tbaa !98
  %i.fp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i64 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0107.0.copyload, ptr %.sroa.2109.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25
  br label %bb.aq

bb.am:                                            ; preds = %bb.ah
  %.sroa.097.0.copyload = load i16, ptr %16, align 8, !tbaa !64
  %.sroa.299.0.copyload = load ptr, ptr %i.en, align 8, !tbaa !98
  store ptr %.sroa.0328.0.copyload, ptr %18, align 8, !tbaa !200
  %.sroa.6330.0..sroa_idx331 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x i32> %i.g, ptr %.sroa.6330.0..sroa_idx331, align 8
  %i.fq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.097.0.copyload, ptr %.sroa.299.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #25 ; 2 uses
  %.fca.0.extract93 = extractvalue { ptr, i32 } %i.fq, 0
  %.fca.1.extract94 = extractvalue { ptr, i32 } %i.fq, 1
  %i.fr = load i16, ptr %15, align 8, !tbaa !116  ; 2 uses
  %.not.i259 = icmp eq i16 %i.fr, 0
  br i1 %.not.i259, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fs = zext i16 %i.fr to i64
  %i.ft = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fs ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -16
  %.sroa.0.0.copyload.i.i260 = load i64, ptr %i.fu, align 16
  %.sroa.2.0..sroa_idx.i.i261 = getelementptr i8, ptr %i.ft, i64 -8
  %.sroa.2.0.copyload.i.i262 = load i8, ptr %.sroa.2.0..sroa_idx.i.i261, align 8
  %.fca.0.insert.i.i263 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i260, 0
  %.fca.1.insert.i.i264 = insertvalue { i64, i8 } %.fca.0.insert.i.i263, i8 %.sroa.2.0.copyload.i.i262, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit266

bb.ao:                                            ; preds = %bb.am
  %i.fv = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit266

_ZNK4llvm3EVT13getSizeInBitsEv.exit266:           ; preds = %bb.an, %bb.ao
  %.pn.i265 = phi { i64, i8 } [ %.fca.1.insert.i.i264, %bb.an ], [ %i.fv, %bb.ao ] ; 2 uses
  %.fca.1.extract87 = extractvalue { i64, i8 } %.pn.i265, 1
  %i.fw = trunc nuw i8 %.fca.1.extract87 to i1
  br i1 %i.fw, label %bb.ap, label %_ZNK4llvm8TypeSizecvmEv.exit267

bb.ap:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit266
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit267:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit266
  %.fca.0.extract86 = extractvalue { i64, i8 } %.pn.i265, 0
  %i.fx = add i64 %.fca.0.extract86, -1
  %.sroa.083.0.copyload = load i16, ptr %16, align 8, !tbaa !64
  %.sroa.285.0.copyload = load ptr, ptr %i.en, align 8, !tbaa !98
  %i.fy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i64 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.083.0.copyload, ptr %.sroa.285.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract79 = extractvalue { ptr, i32 } %i.fy, 0
  %.fca.1.extract80 = extractvalue { ptr, i32 } %i.fy, 1
  %.sroa.073.0.copyload = load i16, ptr %16, align 8, !tbaa !64
  %.sroa.275.0.copyload = load ptr, ptr %i.en, align 8, !tbaa !98
  store ptr %.fca.0.extract93, ptr %19, align 8, !tbaa !200
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract94, ptr %.sroa.4101.0..sroa_idx, align 8, !tbaa !81
  store ptr %.fca.0.extract79, ptr %20, align 8, !tbaa !200
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract80, ptr %.sroa.491.0..sroa_idx, align 8, !tbaa !81
  %i.fz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.073.0.copyload, ptr %.sroa.275.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #25
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit267, %_ZNK4llvm8TypeSizecvmEv.exit258
  %.pn = phi { ptr, i32 } [ %i.fz, %_ZNK4llvm8TypeSizecvmEv.exit267 ], [ %i.fp, %_ZNK4llvm8TypeSizecvmEv.exit258 ] ; 2 uses
  %.sroa.0291.0 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.6292.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.063.0.copyload = load i16, ptr %16, align 8, !tbaa !64
  %.sroa.265.0.copyload = load ptr, ptr %i.en, align 8, !tbaa !98
  store ptr %.sroa.0336.0.copyload, ptr %21, align 8, !tbaa !200
  %.sroa.8.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx342, align 8
  %i.ga = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.063.0.copyload, ptr %.sroa.265.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21) #25 ; 2 uses
  %.fca.0.extract59 = extractvalue { ptr, i32 } %i.ga, 0
  %.fca.1.extract60 = extractvalue { ptr, i32 } %i.ga, 1
  %.sroa.054.0.copyload = load i16, ptr %16, align 8, !tbaa !64
  %.sroa.256.0.copyload = load ptr, ptr %i.en, align 8, !tbaa !98
  store ptr %.fca.0.extract59, ptr %22, align 8, !tbaa !200
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract60, ptr %.sroa.467.0..sroa_idx, align 8, !tbaa !81
  store ptr %.sroa.0291.0, ptr %23, align 8, !tbaa !200
  %.sroa.6292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.sroa.6292.0, ptr %.sroa.6292.0..sroa_idx, align 8, !tbaa !81
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i268 = load i32, ptr %i.gb, align 4, !tbaa !81
  %i.gc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.054.0.copyload, ptr %.sroa.256.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, i32 %.sroa.0.0.copyload.i268) #25 ; 2 uses
  %.fca.0.extract49 = extractvalue { ptr, i32 } %i.gc, 0 ; 2 uses
  %.fca.1.extract50 = extractvalue { ptr, i32 } %i.gc, 1 ; 2 uses
  %.sroa.046.0.copyload = load i16, ptr %15, align 8, !tbaa !64
  %.sroa.248.0.copyload = load ptr, ptr %i.du, align 8, !tbaa !98
  %i.gd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.046.0.copyload, ptr %.sroa.248.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract42 = extractvalue { ptr, i32 } %i.gd, 0 ; 19 uses
  %.fca.1.extract43 = extractvalue { ptr, i32 } %i.gd, 1 ; 19 uses
  %i.ge = load i16, ptr %6, align 8, !tbaa !116   ; 2 uses
  %.not.i269 = icmp eq i16 %i.ge, 0
  br i1 %.not.i269, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.aq
  %i.gf = add i16 %i.ge, -19
  %spec.select.i.i = icmp ult i16 %i.gf, 197
  br i1 %spec.select.i.i, label %bb.ar, label %bb.aw

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.aq
  %i.gg = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br i1 %i.gg, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.gh = load ptr, ptr %i.dq, align 8, !tbaa !119
  %i.gi = call { i16, ptr } @_ZNK4llvm3EVT28getDoubleNumVectorElementsVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.gh) ; 2 uses
  %i.gj = extractvalue { i16, ptr } %i.gi, 0
  %i.gk = extractvalue { i16, ptr } %i.gi, 1
  %i.gl = load i16, ptr %16, align 8, !tbaa !116  ; 3 uses
  %.not.i.i270 = icmp eq i16 %i.gl, 0
  br i1 %.not.i.i270, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i271

.split.i271:                                      ; preds = %bb.ar
  %i.gm = add i16 %i.gl, -163
  %spec.select.i.i.i272 = icmp ult i16 %i.gm, 53
  br i1 %spec.select.i.i.i272, label %bb.as, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.ar
  %i.gn = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
  br i1 %i.gn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i271
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.23) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i271
  %i.go = zext i16 %i.gl to i64
  %i.gp = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 -2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !66
  %i.gs = zext i16 %i.gr to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.at:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.gt = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.at
  %i.gu = phi i32 [ %i.gs, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.gt, %bb.at ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.gv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.gv, ptr %24, align 8, !tbaa !21
  %i.gw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 0, ptr %i.gw, align 8, !tbaa !484
  %i.gx = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 8, ptr %i.gx, align 4, !tbaa !485
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.gy = shl i32 %i.gu, 1                        ; 5 uses
  %i.gz = zext i32 %i.gy to i64                   ; 7 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  store ptr %i.ha, ptr %25, align 8, !tbaa !21
  %i.hb = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store i32 0, ptr %i.hb, align 8, !tbaa !484
  %i.hc = getelementptr inbounds nuw i8, ptr %25, i64 12
  store i32 16, ptr %i.hc, align 4, !tbaa !485
  %i.hd = icmp ugt i32 %i.gy, 16
  br i1 %i.hd, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %25, ptr noundef nonnull %i.ha, i64 noundef %i.gz, i64 noundef 16) #25
  %i.he = load ptr, ptr %25, align 8, !tbaa !21   ; 2 uses
  %xtraiter414 = and i64 %i.gz, 6                 ; 2 uses
  %lcmp.mod415.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod415.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.he, %.lr.ph.i.i.i.preheader.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.hf, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.gz, %.lr.ph.i.i.i.preheader.i.i.i ]
  %prol.iter416 = phi i64 [ %prol.iter416.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i ]
  store ptr %.fca.0.extract42, ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol, align 8, !tbaa !81
  %i.hf = add nsw i64 %.068.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter416.next = add i64 %prol.iter416, 1   ; 2 uses
  %prol.iter416.cmp.not = icmp eq i64 %prol.iter416.next, %xtraiter414
  br i1 %prol.iter416.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !802

.lr.ph.i.i.i.preheader.i.i.i.new:                 ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.he, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.gz, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.hf, %.lr.ph.i.i.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.new
  %.09.i.i.i.i.i.i = phi ptr [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.hp, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.ho, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.fca.0.extract42, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !81
  %i.hh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %.fca.0.extract42, ptr %i.hh, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1, align 8, !tbaa !81
  %i.hi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr %.fca.0.extract42, ptr %i.hi, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2, align 8, !tbaa !81
  %i.hj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store ptr %.fca.0.extract42, ptr %i.hj, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !81
  %i.hk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store ptr %.fca.0.extract42, ptr %i.hk, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !81
  %i.hl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store ptr %.fca.0.extract42, ptr %i.hl, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !81
  %i.hm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store ptr %.fca.0.extract42, ptr %i.hm, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !81
  %i.hn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store ptr %.fca.0.extract42, ptr %i.hn, align 8, !tbaa !200
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store i32 %.fca.1.extract43, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !81
  %i.ho = add nsw i64 %.068.i.i.i.i.i.i, -8       ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !804

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not.i274 = icmp eq i32 %i.gy, 0
  br i1 %.not.i274, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %xtraiter = and i64 %i.gz, 6                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i.prol ], [ %i.ha, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.prol = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i.prol ], [ %i.gz, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  store ptr %.fca.0.extract42, ptr %.09.i.i.i.i.i.prol, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol, align 8, !tbaa !81
  %i.hq = add nsw i64 %.068.i.i.i.i.i.prol, -1    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !805

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hr, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %i.gz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hq, %.lr.ph.i.i.i.i.i.prol ]
  %i.hs = icmp ult i32 %i.gy, 8
  br i1 %i.hs, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i = phi i64 [ %i.ia, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr %.fca.0.extract42, ptr %.09.i.i.i.i.i, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !81
  %i.ht = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr %.fca.0.extract42, ptr %i.ht, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !81
  %i.hu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
  store ptr %.fca.0.extract42, ptr %i.hu, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2, align 8, !tbaa !81
  %i.hv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  store ptr %.fca.0.extract42, ptr %i.hv, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3, align 8, !tbaa !81
  %i.hw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 64
  store ptr %.fca.0.extract42, ptr %i.hw, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 72
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.4, align 8, !tbaa !81
  %i.hx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 80
  store ptr %.fca.0.extract42, ptr %i.hx, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 88
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.5, align 8, !tbaa !81
  %i.hy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 96
  store ptr %.fca.0.extract42, ptr %i.hy, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 104
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.6, align 8, !tbaa !81
  %i.hz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 112
  store ptr %.fca.0.extract42, ptr %i.hz, align 8, !tbaa !200
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 120
  store i32 %.fca.1.extract43, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.7, align 8, !tbaa !81
  %i.ia = add nsw i64 %.068.i.i.i.i.i, -8         ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ia, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !804

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  store i32 %i.gy, ptr %i.hb, align 8, !tbaa !484
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12SelectionDAG21ExtractVectorElementsENS_7SDValueERNS_15SmallVectorImplIS1_EEjjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr %.fca.0.extract49, i32 %.fca.1.extract50, ptr noundef nonnull align 8 dereferenceable(16) %24, i32 noundef 0, i32 noundef %i.gu, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %26) #25
  %.not212367 = icmp eq i32 %i.gu, 0
  br i1 %.not212367, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit
  %i.ic = zext i32 %i.gu to i64                   ; 2 uses
  %xtraiter417 = and i64 %i.ic, 1
  %i.id = icmp eq i32 %i.gu, 1
  br i1 %i.id, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ic, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod418.not = icmp eq i64 %xtraiter417, 0
  br i1 %lcmp.mod418.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod419 = trunc i32 %i.gu to i1
  call void @llvm.assume(i1 %lcmp.mod419)
  %i.ie = load ptr, ptr %24, align 8, !tbaa !21
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.epil.init
  %i.ig = shl nuw i64 %indvars.iv.epil.init, 1
  %i.ih = and i64 %i.ig, 4294967294
  %i.ii = load ptr, ptr %25, align 8, !tbaa !21
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ik, ptr noundef nonnull align 8 dereferenceable(12) %i.if, i64 12, i1 false), !tbaa.struct !670
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit
  %i.il = load ptr, ptr %25, align 8, !tbaa !21
  store ptr %i.il, ptr %27, align 8, !tbaa !607
  %i.im = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.in = load i32, ptr %i.hb, align 8, !tbaa !484
  %i.io = zext i32 %i.in to i64
  store i64 %i.io, ptr %i.im, align 8, !tbaa !610
  %i.ip = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.gj, ptr %i.gk, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %27) #25
  %i.iq = load ptr, ptr %25, align 8, !tbaa !21   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ha
  br i1 %i.ir, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.iq) #25
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit: ; preds = %._crit_edge, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %i.is = load ptr, ptr %24, align 8, !tbaa !21   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.gv
  br i1 %i.it, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit
  call void @free(ptr noundef %i.is) #25
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.ax

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.iu = load ptr, ptr %24, align 8, !tbaa !21
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %indvars.iv
  %i.iw = shl nuw i64 %indvars.iv, 1
  %i.ix = and i64 %i.iw, 4294967292
  %i.iy = load ptr, ptr %25, align 8, !tbaa !21
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.ix
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ja, ptr noundef nonnull align 8 dereferenceable(12) %i.iv, i64 12, i1 false), !tbaa.struct !670
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jb = load ptr, ptr %24, align 8, !tbaa !21
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %indvars.iv.next
  %i.jd = shl nuw i64 %indvars.iv.next, 1
  %i.je = and i64 %i.jd, 4294967294
  %i.jf = load ptr, ptr %25, align 8, !tbaa !21
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.je
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jh, ptr noundef nonnull align 8 dereferenceable(12) %i.jc, i64 12, i1 false), !tbaa.struct !670
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !806

bb.aw:                                            ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %.sroa.015.0.copyload = load i16, ptr %16, align 8, !tbaa !64 ; 2 uses
  %switch.tableidx = add i16 %.sroa.015.0.copyload, -2 ; 3 uses
  %i.ji = icmp ult i16 %switch.tableidx, 14
  %switch.shifted = lshr i16 15609, %switch.tableidx
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond412 = select i1 %i.ji, i1 %switch.lobit, i1 false
  br i1 %or.cond412, label %switch.lookup, label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %bb.aw
  %.sroa.217.0.copyload = load ptr, ptr %i.en, align 8, !tbaa !98
  %i.jj = load ptr, ptr %i.dq, align 8, !tbaa !119
  %i.jk = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, i16 %.sroa.015.0.copyload, ptr %.sroa.217.0.copyload, i32 noundef 2, i1 noundef zeroext false) #25 ; 2 uses
  %i.jl = extractvalue { i16, ptr } %i.jk, 0
  %i.jm = extractvalue { i16, ptr } %i.jk, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

switch.lookup:                                    ; preds = %bb.aw
  %i.jn = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm20AMDGPUTargetLowering17performSrlCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE, i64 %i.jn
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %switch.lookup, %_ZN4llvm3MVT11getVectorVTES0_j.exit
  %.sroa.3.0.i = phi ptr [ %i.jm, %_ZN4llvm3MVT11getVectorVTES0_j.exit ], [ null, %switch.lookup ]
  %.sroa.0.0.i = phi i16 [ %i.jl, %_ZN4llvm3MVT11getVectorVTES0_j.exit ], [ %switch.ext, %switch.lookup ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  store ptr %.fca.0.extract42, ptr %28, align 8, !tbaa !200
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81
  %i.jo = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %.fca.0.extract49, ptr %i.jo, align 8, !tbaa !200
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i32 %.fca.1.extract50, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %28, ptr %3, align 8, !tbaa !671
  %.sroa.26.0..sroa_idx.i279 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %.sroa.26.0..sroa_idx.i279, align 8, !tbaa !508
  %i.jp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.i, ptr %.sroa.3.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  %.pn364 = phi { ptr, i32 } [ %i.ip, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ %i.jp, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ] ; 2 uses
  %.sroa.0284.0 = extractvalue { ptr, i32 } %.pn364, 0
  %.sroa.6.0 = extractvalue { ptr, i32 } %.pn364, 1
  %.sroa.02.0.copyload = load i16, ptr %6, align 8, !tbaa !64
  %.sroa.24.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !98
  store ptr %.sroa.0284.0, ptr %29, align 8, !tbaa !200
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !81
  %i.jq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.02.0.copyload, ptr %.sroa.24.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.jq, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.jq, 1
  %.sroa.9346.8.insert.ext = zext i32 %.fca.1.extract to i64
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.ax
  %.sroa.9346.0 = phi i64 [ %.sroa.9346.8.insert.ext, %bb.ax ], [ 0, %_ZN4llvm5APIntD2Ev.exit ]
  %.sroa.0343.0 = phi ptr [ %.fca.0.extract, %bb.ax ], [ null, %_ZN4llvm5APIntD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.jr = load i32, ptr %i.eq, align 8, !tbaa !23
  %i.js = icmp ugt i32 %i.jr, 64
  br i1 %i.js, label %bb.az, label %_ZN4llvm5APIntD2Ev.exit.i280

bb.az:                                            ; preds = %bb.ay
  %i.jt = load ptr, ptr %i.eo, align 8, !tbaa !26 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %_ZN4llvm5APIntD2Ev.exit.i280, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.jt) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i280

_ZN4llvm5APIntD2Ev.exit.i280:                     ; preds = %bb.ba, %bb.az, %bb.ay
  %i.jv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !23
  %i.jx = icmp ugt i32 %i.jw, 64
  br i1 %i.jx, label %bb.bb, label %_ZN4llvm9KnownBitsD2Ev.exit281

bb.bb:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i280
  %i.jy = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZN4llvm9KnownBitsD2Ev.exit281, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.jy) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit281

_ZN4llvm9KnownBitsD2Ev.exit281:                   ; preds = %_ZN4llvm5APIntD2Ev.exit.i280, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit, %bb.b, %_ZN4llvm9KnownBitsD2Ev.exit, %.critedge214, %_ZN4llvm9KnownBitsD2Ev.exit281
  %.sroa.9346.1 = phi i64 [ %.sroa.8.0.copyload, %bb.b ], [ %.sroa.9346.0, %_ZN4llvm9KnownBitsD2Ev.exit281 ], [ %.sroa.9346.8.insert.ext348, %_ZN4llvm9KnownBitsD2Ev.exit ], [ %.sroa.9346.8.insert.ext352, %.critedge214 ], [ 0, %_ZNK4llvm3EVT13getScalarTypeEv.exit ]
  %.sroa.0343.1 = phi ptr [ %.sroa.0336.0.copyload, %bb.b ], [ %.sroa.0343.0, %_ZN4llvm9KnownBitsD2Ev.exit281 ], [ %.fca.0.extract127, %_ZN4llvm9KnownBitsD2Ev.exit ], [ %.fca.0.extract153, %.critedge214 ], [ null, %_ZNK4llvm3EVT13getScalarTypeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0343.1, 0
  %.sroa.9346.8.extract.trunc = trunc i64 %.sroa.9346.1 to i32
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.9346.8.extract.trunc, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm3EVT28getDoubleNumVectorElementsVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !116    ; 3 uses
  %.not.i = icmp eq i16 %i.a, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread

_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread: ; preds = %bb.a
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !64
  br label %bb.b

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.a
  %i.f = tail call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #25 ; 2 uses
  %.pre = load i16, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.g = extractvalue { i16, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i16, ptr } %i.f, 1        ; 2 uses
  %.not.i7 = icmp eq i16 %.pre, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.i = phi ptr [ null, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %i.h, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  %i.j = phi i16 [ %i.e, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %i.g, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  %i.k = phi i16 [ %i.a, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %.pre, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ] ; 2 uses
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !66
  %i.p = add i16 %i.k, -163
  %spec.select.i.i.i = icmp ult i16 %i.p, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.o to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.q = tail call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

_ZNK4llvm3EVT21getVectorElementCountEv.exit:      ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.c ]
  %i.s = phi i16 [ %i.j, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.0.0.in.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %.sroa.6.0.extract.shift.i = and i64 %.sroa.0.0.in.i, 1095216660480
  %i.t = shl i64 %.sroa.0.0.in.i, 1               ; 2 uses
  %.sroa.0.0.insert.ext.i8 = and i64 %i.t, 4294967294
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i8, %.sroa.6.0.extract.shift.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.t to i32 ; 2 uses
  %i.u = and i64 %.sroa.0.0.in.i, 4294967296
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %i.v = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.s, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %i.w = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.s, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.04.0.i.i = phi i16 [ %i.v, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %.not.i9 = icmp eq i16 %.sroa.04.0.i.i, 0
  br i1 %.not.i9, label %bb.f, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit

bb.f:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i
  %i.x = tail call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %i.s, ptr %i.r, i64 %.sroa.0.0.insert.insert.i) #25 ; 2 uses
  %i.y = extractvalue { i16, ptr } %i.x, 0
  %i.z = extractvalue { i16, ptr } %i.x, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit: ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i, %bb.f
  %.sroa.3.0.i = phi ptr [ %i.z, %bb.f ], [ null, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ]
  %.sroa.0.0.i = phi i16 [ %i.y, %bb.f ], [ %.sroa.04.0.i.i, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ]
  %.fca.0.insert.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i16, ptr } %.fca.0.insert.i, ptr %.sroa.3.0.i, 1
  ret { i16, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering17performSraCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.303", align 8 ; 5 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 17 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 17 uses
  %7 = alloca %"struct.llvm::KnownBits", align 8  ; 7 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 9 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 13 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 24 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %18 = alloca %"class.llvm::SmallVector.281", align 8 ; 13 uses
  %19 = alloca %"class.llvm::SmallVector.435", align 8 ; 11 uses
  %20 = alloca %"struct.llvm::EVT", align 8       ; 2 uses
  %21 = alloca %"class.llvm::ArrayRef.303", align 8 ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"struct.llvm::KnownBits", align 8 ; 7 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"class.llvm::SmallVector.281", align 8 ; 9 uses
  %35 = alloca %"class.llvm::SmallVector.281", align 8 ; 9 uses
  %36 = alloca %"class.llvm::SmallVector.435", align 8 ; 12 uses
  %37 = alloca %"struct.llvm::EVT", align 8       ; 2 uses
  %38 = alloca %"struct.llvm::EVT", align 8       ; 2 uses
  %39 = alloca %"class.llvm::ArrayRef.303", align 8 ; 3 uses
  %40 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0482.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !200 ; 4 uses
  %.sroa.6484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = load <2 x i32>, ptr %.sroa.6484.0..sroa_idx, align 8
  %.sroa.6484.0.copyload = load i32, ptr %.sroa.6484.0..sroa_idx, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0482.0.copyload, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106
  switch i32 %i.f, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit [
    i32 37, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %.sroa.0482.0.copyload, %bb.b ], [ null, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.h, align 8, !tbaa !64 ; 5 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !98 ; 2 uses
  %.fca.0.insert.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { i16, ptr } %.fca.0.insert.i, ptr %.sroa.21.0.copyload.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.i, align 8
  %.sroa.0286.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !200 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !704, !nonnull !19, !align !231 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !201
  store i64 %i.m, ptr %6, align 8, !tbaa !201
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !202
  store i32 %i.p, ptr %i.n, align 8, !tbaa !203
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.q = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.q, 197
  br i1 %spec.select.i.i.i, label %bb.c, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.r = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br i1 %i.r, label %bb.d, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.c:                                             ; preds = %.split.i
  %i.s = zext nneg i16 %.sroa.0.0.copyload.i to i64
  %i.t = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !64
  %i.w = insertvalue { i16, ptr } poison, i16 %i.v, 0
  %i.x = insertvalue { i16, ptr } %i.w, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.y = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %.split.i, %_ZNK4llvm3EVT8isVectorEv.exit.i, %bb.c, %bb.d
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.y, %bb.d ], [ %i.x, %bb.c ], [ %.fca.1.insert.i, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %.fca.1.insert.i, %.split.i ] ; 2 uses
  %i.z = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.aa = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
end_hunk_2
begin_hunk_3_@_ZNK4llvm20AMDGPUTargetLowering22performTruncateCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a

bb.i:                                             ; preds = %bb.a
  %.not.i157 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i157, label %_ZNK4llvm3EVT8isVectorEv.exit159, label %.split300

.split300:                                        ; preds = %bb.i
  %i.aw = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i158 = icmp ult i16 %i.aw, 197
  br i1 %spec.select.i.i158, label %.split.i.i.thread, label %bb.j

.split.i.i.thread:                                ; preds = %.split300
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  br label %bb.x

_ZNK4llvm3EVT8isVectorEv.exit159:                 ; preds = %bb.i
  %i.ax = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br i1 %i.ax, label %.thread303, label %bb.j

.thread303:                                       ; preds = %_ZNK4llvm3EVT8isVectorEv.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  br label %_ZNK4llvm3EVT8isVectorEv.exit.i.i

bb.j:                                             ; preds = %.split300, %_ZNK4llvm3EVT8isVectorEv.exit159
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0282.0.copyload, i64 40 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !107 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.sroa.091.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !200
  %.sroa.292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.sroa.292.0.copyload = load i32, ptr %.sroa.292.0..sroa_idx, align 8, !tbaa !81
  %i.bb = call noundef ptr @_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb(ptr %.sroa.091.0.copyload, i32 %.sroa.292.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.not138 = icmp eq ptr %i.bb, null
  br i1 %.not138, label %thread-pre-split.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !107
  %.sroa.088.0.copyload = load ptr, ptr %i.bc, align 8, !tbaa !200 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !106 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 248
  br i1 %i.bf, label %bb.l, label %_ZN4llvm20AMDGPUTargetLowering12stripBitcastENS_7SDValueE.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !107
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !200 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre.i, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !106
  br label %_ZN4llvm20AMDGPUTargetLowering12stripBitcastENS_7SDValueE.exit

_ZN4llvm20AMDGPUTargetLowering12stripBitcastENS_7SDValueE.exit: ; preds = %bb.k, %bb.l
  %i.bi = phi i32 [ %.pre, %bb.l ], [ %i.be, %bb.k ]
  %.sroa.0.0.copyload.i160 = phi ptr [ %.sroa.0.0.copyload.pre.i, %bb.l ], [ %.sroa.088.0.copyload, %bb.k ] ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 162
  br i1 %i.bj, label %bb.m, label %thread-pre-split.thread

bb.m:                                             ; preds = %_ZN4llvm20AMDGPUTargetLowering12stripBitcastENS_7SDValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i160, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !115
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !85
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %.sroa.0.0.copyload.i.i163 = load i16, ptr %i.bs, align 8, !tbaa !64 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i164 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.21.0.copyload.i.i165 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i164, align 8, !tbaa !98
  store i16 %.sroa.0.0.copyload.i.i163, ptr %12, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.21.0.copyload.i.i165, ptr %i.bt, align 8
  %.not.i168 = icmp eq i16 %.sroa.0.0.copyload.i.i163, 0 ; 2 uses
  br i1 %.not.i168, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = zext i16 %.sroa.0.0.copyload.i.i163 to i64
  %i.bv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bu ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -16
  %.sroa.0.0.copyload.i.i169 = load i64, ptr %i.bw, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bv, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i170 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i169, 0
  %.fca.1.insert.i.i171 = insertvalue { i64, i8 } %.fca.0.insert.i.i170, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.o:                                             ; preds = %bb.m
  %i.bx = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.n, %bb.o
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i171, %bb.n ], [ %i.bx, %bb.o ] ; 2 uses
  %.fca.1.extract79 = extractvalue { i64, i8 } %.pn.i, 1
  %i.by = trunc nuw i8 %.fca.1.extract79 to i1
  br i1 %i.by, label %bb.p, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.p:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract78 = extractvalue { i64, i8 } %.pn.i, 0
  %i.bz = trunc i64 %.fca.0.extract78 to i32      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !109 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !23
  %i.cf = icmp ult i32 %i.ce, 65
  %i.cg = load ptr, ptr %i.cc, align 8
  %spec.select.i.i.i = select i1 %i.cf, ptr %i.cc, ptr %i.cg
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !26
  %i.ch = trunc i64 %.0.i.i.i to i32              ; 2 uses
  %i.ci = udiv i32 %i.ch, %i.bz                   ; 3 uses
  %i.cj = mul i32 %i.ci, %i.bz
  %i.ck = icmp eq i32 %i.cj, %i.ch
  br i1 %i.ck, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i160, i64 64
  %i.cm = load i16, ptr %i.cl, align 8, !tbaa !112
  %i.cn = zext i16 %i.cm to i32
  %i.co = icmp ult i32 %i.ci, %i.cn
  br i1 %i.co, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i168, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = zext i16 %.sroa.0.0.copyload.i.i163 to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i173 = load i64, ptr %i.cr, align 16
  %.sroa.2.0..sroa_idx.i.i174 = getelementptr i8, ptr %i.cq, i64 -8
  %.sroa.2.0.copyload.i.i175 = load i8, ptr %.sroa.2.0..sroa_idx.i.i174, align 8
  %.fca.0.insert.i.i176 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i173, 0
  %.fca.1.insert.i.i177 = insertvalue { i64, i8 } %.fca.0.insert.i.i176, i8 %.sroa.2.0.copyload.i.i175, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit179

bb.t:                                             ; preds = %bb.r
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit179

_ZNK4llvm3EVT13getSizeInBitsEv.exit179:           ; preds = %bb.s, %bb.t
  %.pn.i178 = phi { i64, i8 } [ %.fca.1.insert.i.i177, %bb.s ], [ %i.cs, %bb.t ] ; 2 uses
  %.fca.0.extract69 = extractvalue { i64, i8 } %.pn.i178, 0
  %.fca.1.extract70 = extractvalue { i64, i8 } %.pn.i178, 1
  %i.ct = load i16, ptr %8, align 8, !tbaa !116   ; 2 uses
  %.not.i180 = icmp eq i16 %i.ct, 0
  br i1 %.not.i180, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit179
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cu ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -16
  %.sroa.0.0.copyload.i.i181 = load i64, ptr %i.cw, align 16
  %.sroa.2.0..sroa_idx.i.i182 = getelementptr i8, ptr %i.cv, i64 -8
  %.sroa.2.0.copyload.i.i183 = load i8, ptr %.sroa.2.0..sroa_idx.i.i182, align 8
  %.fca.0.insert.i.i184 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i181, 0
  %.fca.1.insert.i.i185 = insertvalue { i64, i8 } %.fca.0.insert.i.i184, i8 %.sroa.2.0.copyload.i.i183, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit187

bb.v:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit179
  %i.cx = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit187

_ZNK4llvm3EVT13getSizeInBitsEv.exit187:           ; preds = %bb.u, %bb.v
  %.pn.i186 = phi { i64, i8 } [ %.fca.1.insert.i.i185, %bb.u ], [ %i.cx, %bb.v ] ; 2 uses
  %.fca.0.extract65 = extractvalue { i64, i8 } %.pn.i186, 0
  %.fca.1.extract66 = extractvalue { i64, i8 } %.pn.i186, 1
  %i.cy = icmp eq i64 %.fca.0.extract69, %.fca.0.extract65
  %i.cz = icmp eq i8 %.fca.1.extract70, %.fca.1.extract66
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.critedge142, label %bb.w

.critedge142:                                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit187
  %i.db = call { i16, ptr } @_ZNK4llvm3EVT19changeTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %12) ; 2 uses
  %i.dc = extractvalue { i16, ptr } %i.db, 0
  %i.dd = extractvalue { i16, ptr } %i.db, 1
  %i.de = load ptr, ptr %i.bk, align 8, !tbaa !107
  %i.df = zext nneg i32 %i.ci to i64
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %i.df
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.dc, ptr %i.dd, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dg) #25 ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.dh, 0
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.dh, 1
  %.sroa.053.0.copyload = load i16, ptr %8, align 8, !tbaa !64
  %.sroa.255.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !98
  store ptr %.fca.0.extract56, ptr %13, align 8, !tbaa !200
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract57, ptr %.sroa.463.0..sroa_idx, align 8, !tbaa !81
  %i.di = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.g, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.053.0.copyload, ptr %.sroa.255.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #25 ; 2 uses
  %.fca.0.extract49 = extractvalue { ptr, i32 } %i.di, 0
  %.fca.1.extract50 = extractvalue { ptr, i32 } %i.di, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.bf

bb.w:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.q, %_ZNK4llvm3EVT13getSizeInBitsEv.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.a, %_ZNK4llvm3EVT8isVectorEv.exit, %.split, %.critedge, %bb.c, %bb.w, %_ZN4llvm20AMDGPUTargetLowering12stripBitcastENS_7SDValueE.exit, %bb.j
  %.pr302 = load i16, ptr %8, align 8, !tbaa !116 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.not.i.i.i = icmp eq i16 %.pr302, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %thread-pre-split.thread
  %.pre321 = add i16 %.pr302, -19
  %i.dj = icmp ult i16 %.pre321, 197
  br i1 %i.dj, label %bb.x, label %bb.z

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %.thread303, %thread-pre-split.thread
  %i.dk = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br i1 %i.dk, label %bb.y, label %bb.z

bb.x:                                             ; preds = %.split.i.i.thread, %.split.i.i
  %i.dl = phi i16 [ %.sroa.0.0.copyload.i, %.split.i.i.thread ], [ %.pr302, %.split.i.i ]
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !64
  %i.dq = insertvalue { i16, ptr } poison, i16 %i.dp, 0
  %i.dr = insertvalue { i16, ptr } %i.dq, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.y:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.ds = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #25
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.z:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.dt = phi i16 [ 0, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.pr302, %.split.i.i ]
  %.sroa.31.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.du = insertvalue { i16, ptr } poison, i16 %i.dt, 0
  %i.dv = insertvalue { i16, ptr } %i.du, ptr %.sroa.31.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.z, %bb.y, %bb.x
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.dv, %bb.z ], [ %i.dr, %bb.x ], [ %i.ds, %bb.y ] ; 2 uses
  %i.dw = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.dw, ptr %6, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dy = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.dy, ptr %i.dx, align 8
  %.not.i.i188 = icmp eq i16 %i.dw, 0
  br i1 %.not.i.i188, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.dz = zext i16 %i.dw to i64
  %i.ea = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -16
  %.sroa.0.0.copyload.i.i.i189 = load i64, ptr %i.eb, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.ab:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ec = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  %i.ed = extractvalue { i64, i8 } %i.ec, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.aa, %bb.ab
  %.pn.i.i190 = phi i64 [ %.sroa.0.0.copyload.i.i.i189, %bb.aa ], [ %i.ed, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ee = icmp ult i64 %.pn.i.i190, 32
  br i1 %i.ee, label %bb.ac, label %bb.bf

bb.ac:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0282.0.copyload, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !85
  %i.eh = zext i32 %.sroa.16.0.copyload to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  %.sroa.0.0.copyload.i.i191 = load i16, ptr %i.ei, align 8, !tbaa !64 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i192 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.21.0.copyload.i.i193 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i192, align 8, !tbaa !98 ; 2 uses
  %.fca.0.insert.i.i194 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i191, 0
  %.fca.1.insert.i.i195 = insertvalue { i16, ptr } %.fca.0.insert.i.i194, ptr %.sroa.21.0.copyload.i.i193, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i191, ptr %14, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.21.0.copyload.i.i193, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.not.i.i.i196 = icmp eq i16 %.sroa.0.0.copyload.i.i191, 0
  br i1 %.not.i.i.i196, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i206, label %.split.i.i197

.split.i.i197:                                    ; preds = %bb.ac
  %i.ek = add i16 %.sroa.0.0.copyload.i.i191, -19
  %spec.select.i.i.i.i198 = icmp ult i16 %i.ek, 197
  br i1 %spec.select.i.i.i.i198, label %bb.ad, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i201

_ZNK4llvm3EVT8isVectorEv.exit.i.i206:             ; preds = %bb.ac
  %i.el = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #26
  br i1 %i.el, label %bb.ae, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i201

bb.ad:                                            ; preds = %.split.i.i197
  %i.em = zext nneg i16 %.sroa.0.0.copyload.i.i191 to i64
  %i.en = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -2
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !64
  %i.eq = insertvalue { i16, ptr } poison, i16 %i.ep, 0
  %i.er = insertvalue { i16, ptr } %i.eq, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i201

bb.ae:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i206
  %i.es = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #25
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i201

_ZNK4llvm3EVT13getScalarTypeEv.exit.i201:         ; preds = %.split.i.i197, %_ZNK4llvm3EVT8isVectorEv.exit.i.i206, %bb.ae, %bb.ad
  %.fca.1.insert.merged.i.i202 = phi { i16, ptr } [ %i.es, %bb.ae ], [ %i.er, %bb.ad ], [ %.fca.1.insert.i.i195, %_ZNK4llvm3EVT8isVectorEv.exit.i.i206 ], [ %.fca.1.insert.i.i195, %.split.i.i197 ] ; 2 uses
  %i.et = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i202, 0 ; 3 uses
  store i16 %i.et, ptr %5, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ev = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i202, 1
  store ptr %i.ev, ptr %i.eu, align 8
  %.not.i.i203 = icmp eq i16 %i.et, 0
  br i1 %.not.i.i203, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i201
  %i.ew = zext i16 %i.et to i64
  %i.ex = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 -16
  %.sroa.0.0.copyload.i.i.i204 = load i64, ptr %i.ey, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit207

bb.ag:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i201
  %i.ez = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.fa = extractvalue { i64, i8 } %i.ez, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit207

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit207:     ; preds = %bb.af, %bb.ag
  %.pn.i.i205 = phi i64 [ %.sroa.0.0.copyload.i.i.i204, %bb.af ], [ %i.fa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.fb = icmp ugt i64 %.pn.i.i205, 32
  br i1 %i.fb, label %bb.ah, label %.critedge150

bb.ah:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit207
  %i.fc = load i32, ptr %i.m, align 8, !tbaa !106
  %.off = add i32 %i.fc, -198
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.ai, label %.critedge150

bb.ai:                                            ; preds = %bb.ah
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0282.0.copyload, i64 40 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !107 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %.sroa.0246.0.copyload = load ptr, ptr %i.ff, align 8, !tbaa !200 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !81 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 52
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %15, ptr noundef nonnull align 8 dereferenceable(920) %i.g, ptr %.sroa.0246.0.copyload, i32 %.sroa.10.0.copyload, i32 noundef 0) #25
  %i.fg = load i32, ptr %i.m, align 8, !tbaa !106
  %i.fh = icmp eq i32 %i.fg, 198
  br i1 %i.fh, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.fi = load i16, ptr %8, align 8, !tbaa !116   ; 4 uses
  %.not.i.i.i208 = icmp eq i16 %i.fi, 0
  br i1 %.not.i.i.i208, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i218, label %.split.i.i209

.split.i.i209:                                    ; preds = %bb.aj
  %i.fj = add i16 %i.fi, -19
  %spec.select.i.i.i.i210 = icmp ult i16 %i.fj, 197
  br i1 %spec.select.i.i.i.i210, label %bb.ak, label %bb.am

_ZNK4llvm3EVT8isVectorEv.exit.i.i218:             ; preds = %bb.aj
  %i.fk = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br i1 %i.fk, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %.split.i.i209
  %i.fl = zext nneg i16 %i.fi to i64
  %i.fm = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 -2
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !64
  %i.fp = insertvalue { i16, ptr } poison, i16 %i.fo, 0
  %i.fq = insertvalue { i16, ptr } %i.fp, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i213

bb.al:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i218
  %i.fr = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #25
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i213

bb.am:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i218, %.split.i.i209
  %.sroa.31.0.copyload.i.i212 = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.fs = insertvalue { i16, ptr } poison, i16 %i.fi, 0
  %i.ft = insertvalue { i16, ptr } %i.fs, ptr %.sroa.31.0.copyload.i.i212, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i213

_ZNK4llvm3EVT13getScalarTypeEv.exit.i213:         ; preds = %bb.am, %bb.al, %bb.ak
  %.fca.1.insert.merged.i.i214 = phi { i16, ptr } [ %i.ft, %bb.am ], [ %i.fq, %bb.ak ], [ %i.fr, %bb.al ] ; 2 uses
  %i.fu = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i214, 0 ; 3 uses
  store i16 %i.fu, ptr %4, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i214, 1
  store ptr %i.fw, ptr %i.fv, align 8
  %.not.i.i215 = icmp eq i16 %i.fu, 0
  br i1 %.not.i.i215, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i213
  %i.fx = zext i16 %i.fu to i64
  %i.fy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -16
end_hunk_3
begin_hunk_4_@_ZNK4llvm20AMDGPUTargetLowering11getFFBX_U32ERNS_12SelectionDAGENS_7SDValueERKNS_5SDLocEj:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !64 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98 ; 3 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.e, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  %i.f = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.f, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i8.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.h = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 16
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  %i.k = extractvalue { i64, i8 } %i.j, 0
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit

_ZNK4llvm3EVT6bitsGTES0_.exit:                    ; preds = %bb.c, %bb.d
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = icmp ugt i64 %.pn.i.i.i, 32
  br i1 %i.l, label %bb.h, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread

_ZNK4llvm3EVT6bitsGTES0_.exit.thread:             ; preds = %bb.a, %_ZNK4llvm3EVT6bitsGTES0_.exit
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i.i, 7
  %i.m = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.n = select i1 %.not.i, i1 true, i1 %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm3EVT6bitsGTES0_.exit.thread
  store ptr %2, ptr %7, align 8, !tbaa !200
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81
  %i.o = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #25 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.o, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.o, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4llvm3EVT6bitsGTES0_.exit.thread
  %.sroa.029.0 = phi ptr [ %.fca.0.extract9, %bb.e ], [ %2, %_ZNK4llvm3EVT6bitsGTES0_.exit.thread ]
  %.sroa.5.0 = phi i32 [ %.fca.1.extract10, %bb.e ], [ %3, %_ZNK4llvm3EVT6bitsGTES0_.exit.thread ]
  store ptr %.sroa.029.0, ptr %8, align 8, !tbaa !200
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx31, align 8, !tbaa !81
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #25 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.p, 0 ; 2 uses
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.p, 1 ; 2 uses
  %i.q = load i16, ptr %6, align 8, !tbaa !116    ; 2 uses
  %.not.i21 = icmp ne i16 %i.q, 7
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = select i1 %.not.i21, i1 true, i1 %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %.fca.0.extract5, ptr %9, align 8, !tbaa !200
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !81
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 4
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.q, ptr %i.r, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.u, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.u, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm3EVT6bitsGTES0_.exit, %bb.f, %bb.g
  %.sroa.6.0 = phi i32 [ %.fca.1.extract6, %bb.f ], [ %.fca.1.extract, %bb.g ], [ 0, %_ZNK4llvm3EVT6bitsGTES0_.exit ]
  %.sroa.035.0 = phi ptr [ %.fca.0.extract5, %bb.f ], [ %.fca.0.extract, %bb.g ], [ null, %_ZNK4llvm3EVT6bitsGTES0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.035.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering23performCtlz_CttzCombineERKNS_5SDLocENS_7SDValueES4_S4_RNS_14TargetLowering15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.020.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !200
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.221.0.copyload = load i32, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !81
  %i.d = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.020.0.copyload, i32 %.sroa.221.0.copyload) #25
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !704, !nonnull !19, !align !231
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !707
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !200 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  switch i32 %i.k, label %bb.i [
    i32 17, label %bb.c
    i32 22, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %6, align 8, !tbaa !108    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !106
  switch i32 %i.n, label %bb.i [
    i32 217, label %bb.d
    i32 212, label %bb.d
    i32 216, label %bb.d
    i32 211, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.r = icmp eq ptr %i.q, %.sroa.0.0.copyload
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %.sroa.7.0.copyload
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef zeroext i1 @_ZN4llvm17isAllOnesConstantENS_7SDValueE(ptr %4, i32 %5) #25
  br i1 %i.w, label %.sink.split, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !106
  switch i32 %i.y, label %bb.i [
    i32 217, label %bb.g
    i32 212, label %bb.g
    i32 216, label %bb.g
    i32 211, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108
  %i.ac = icmp eq ptr %i.ab, %.sroa.0.0.copyload
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ae, %.sroa.7.0.copyload
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.03.0.copyload = load ptr, ptr %6, align 8, !tbaa !200
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !81
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm17isAllOnesConstantENS_7SDValueE(ptr %.sroa.03.0.copyload, i32 %.sroa.24.0.copyload) #25
  br i1 %i.ah, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %bb.e
  %.sink42.in = phi ptr [ %i.m, %bb.e ], [ %i.x, %bb.h ]
  %.sink42 = load i32, ptr %.sink42.in, align 8, !tbaa !106 ; 2 uses
  %i.ai = icmp eq i32 %.sink42, 211
  %i.aj = icmp eq i32 %.sink42, 216
  %i.ak = or i1 %i.ai, %i.aj
  %i.al = select i1 %i.ak, i32 605, i32 604
  %i.am = tail call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering11getFFBX_U32ERNS_12SelectionDAGENS_7SDValueERKNS_5SDLocEj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(920) %i.f, ptr %.sroa.0.0.copyload, i32 %.sroa.7.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.al) ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.am, 1
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.c, %bb.d, %bb.e, %bb.b, %bb.h, %bb.g, %bb.a
  %.sroa.737.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.h ], [ %.fca.1.extract7, %.sink.split ]
  %.sroa.036.1 = phi ptr [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.h ], [ %.fca.0.extract6, %.sink.split ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.036.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.737.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm17isAllOnesConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering20foldFreeOpFromSelectERNS_14TargetLowering15DAGCombinerInfoENS_7SDValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704, !nonnull !19, !align !231 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 6 uses
  %.sroa.043.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !200 ; 2 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.e = load <2 x i32>, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.545.0.copyload = load i32, ptr %.sroa.545.0..sroa_idx, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.0113.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !200 ; 5 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.096.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !200 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.13104.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 3 uses
  %i.j = zext i32 %3 to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.k, align 8, !tbaa !64 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0113.0.copyload, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !106
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !106 ; 3 uses
  switch i32 %i.m, label %.thread [
    i32 261, label %bb.b
    i32 260, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %.pre, 261
  br i1 %i.n, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %.pre, 260
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = tail call noundef zeroext i1 @_ZN4llvm20AMDGPUTargetLowering21allUsesHaveSourceModsEPKNS_6SDNodeEj(ptr noundef nonnull %2, i32 noundef 4)
  br i1 %i.p, label %bb.e, label %.thread149

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.l, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !201
  store i64 %i.s, ptr %6, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !202
  store i32 %i.v, ptr %i.t, align 8, !tbaa !203
  %i.w = getelementptr i8, ptr %.sroa.0113.0.copyload, i64 40
  %.val62.val = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.x = getelementptr i8, ptr %.sroa.0113.0.copyload, i64 48
  %.val62.val65 = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.y = getelementptr i8, ptr %.sroa.096.0.copyload, i64 40
  %.val64.val = load ptr, ptr %i.y, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !704, !nonnull !19, !align !231 ; 2 uses
  %i.aa = zext i32 %.sroa.17.0.copyload to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val62.val65, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ab, align 8, !tbaa !64 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !98 ; 2 uses
  store ptr %.sroa.043.0.copyload, ptr %4, align 8, !tbaa !200
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.545.0.copyload, ptr %.sroa.219.0..sroa_idx.i, align 8, !tbaa !81
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.z, i32 noundef 219, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %.val62.val, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %.val64.val) #25 ; 2 uses
  %.fca.0.extract4.i = extractvalue { ptr, i32 } %i.ac, 0 ; 2 uses
  %.fca.1.extract5.i = extractvalue { ptr, i32 } %i.ac, 1
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.fca.0.extract4.i) #25
  store ptr %.fca.0.extract4.i, ptr %5, align 8, !tbaa !200
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract5.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !81
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.z, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.thread149

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.ae = and i32 %.pre, -2
  %switch = icmp eq i32 %i.ae, 260                ; 4 uses
  %.sroa.13104.0.insert.ext = zext i32 %.sroa.17.0.copyload to i64
  %.sroa.13104.0.insert.mask = and i64 %.sroa.13104.0.copyload, -4294967296
  %.sroa.13104.0.insert.insert = or disjoint i64 %.sroa.13104.0.insert.mask, %.sroa.13104.0.insert.ext
  %.sroa.096.0 = select i1 %switch, ptr %.sroa.0113.0.copyload, ptr %.sroa.096.0.copyload ; 5 uses
  %.sroa.13104.0 = select i1 %switch, i64 %.sroa.13104.0.insert.insert, i64 %.sroa.13104.0.copyload ; 3 uses
  %.sroa.0113.0 = select i1 %switch, ptr %.sroa.096.0.copyload, ptr %.sroa.0113.0.copyload ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !106
  switch i32 %i.ag, label %.thread149 [
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %.thread, %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 24 ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !106 ; 5 uses
  switch i32 %i.ai, label %.thread149 [
    i32 260, label %bb.f
    i32 261, label %.fold.split
  ]

.fold.split:                                      ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit, %.fold.split
  %i.aj = phi i1 [ true, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit ], [ false, %.fold.split ]
  %.val.val = load i16, ptr %i.i, align 8, !tbaa !64
  %i.ak = getelementptr i8, ptr %i.i, i64 8
  %.val.val61 = load ptr, ptr %i.ak, align 8, !tbaa !98
  %.not.i.i.i = icmp eq i16 %.val.val, 14
  %i.al = icmp eq ptr %.val.val61, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.al, i1 false
  br i1 %.not4.i.i, label %.thread149, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !201
  store i64 %i.an, ptr %7, align 8, !tbaa !201
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !202
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !203
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !107 ; 3 uses
  %.sroa.078.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !200 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.13104.8.extract.trunc = trunc i64 %.sroa.13104.0 to i32
  %.sroa.13104.12.extract.shift = lshr i64 %.sroa.13104.0, 32
  %.sroa.13104.12.extract.trunc = trunc nuw i64 %.sroa.13104.12.extract.shift to i32
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.078.0.copyload, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %.thread154, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.ax, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.au, align 8, !tbaa !100 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.h ], [ %.sroa.018.022.i.i, %bb.g ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !115
  %i.ax = icmp ne i32 %i.aw, %.sroa.11.0.copyload ; 2 uses
  %i.ay = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %cond.i.i, label %bb.h, label %.thread154

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.h
  %i.az = icmp eq i32 %.214.i.i, 0
  br i1 %i.az, label %bb.i, label %.thread154

bb.i:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.078.0.copyload, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !106
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call fastcc noundef zeroext i1 @_ZL15fnegFoldsIntoOpPKN4llvm6SDNodeE(ptr noundef nonnull %.sroa.078.0.copyload)
  %not. = xor i1 %i.bc, true
  %.pre164 = load i32, ptr %i.ah, align 8, !tbaa !106
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bd = phi i32 [ %i.ai, %bb.i ], [ %.pre164, %bb.j ] ; 2 uses
  %.059 = phi i1 [ true, %bb.i ], [ %not., %bb.j ]
  %i.be = icmp ne i32 %i.bd, 261
  %i.bf = icmp ne i32 %i.bb, 101
  %or.cond4.not = or i1 %i.bf, %i.be
  %spec.select60 = and i1 %.059, %or.cond4.not
  br i1 %spec.select60, label %.thread154, label %.critedge

.thread154:                                       ; preds = %.lr.ph.i.i, %bb.g, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.k
  %i.bg = phi i32 [ %i.bd, %bb.k ], [ %i.ai, %bb.g ], [ %i.ai, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %i.ai, %.lr.ph.i.i ]
  %i.bh = icmp eq i32 %i.bg, 261
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread154
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !712 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26
  %.not.i.i.i.i = icmp eq ptr %i.bl, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.bn, ptr %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.bp = load i8, ptr %i.bo, align 4
  %i.bq = and i8 %i.bp, 8
  %.not162 = icmp eq i8 %i.bq, 0
  br i1 %.not162, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l, %.thread154
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.078.0.copyload, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !106
  %i.bt = icmp eq i32 %i.bs, 261
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = tail call noundef i32 @_ZNK4llvm20AMDGPUTargetLowering21getConstantNegateCostEPKNS_16ConstantFPSDNodeE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef %.sroa.096.0)
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bv = tail call noundef zeroext i1 @_ZN4llvm20AMDGPUTargetLowering21allUsesHaveSourceModsEPKNS_6SDNodeEj(ptr noundef %2, i32 noundef 4)
  br i1 %i.bv, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %i.ah, align 8, !tbaa !106
  %i.bx = icmp eq i32 %i.bw, 260
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.096.0, ptr %8, align 8, !tbaa !200
  %.sroa.15.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.13104.0, ptr %.sroa.15.0..sroa_idx111, align 8
  %i.by = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #25 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.by, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.by, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.8.0 = phi i32 [ %.fca.1.extract16, %bb.q ], [ %.sroa.13104.8.extract.trunc, %bb.p ] ; 2 uses
  %.sroa.066.0 = phi ptr [ %.fca.0.extract15, %bb.q ], [ %.sroa.096.0, %bb.p ] ; 2 uses
  br i1 %switch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.11.0 = phi i32 [ %.sroa.8.0, %bb.s ], [ %.sroa.11.0.copyload, %bb.r ]
  %.sroa.078.0 = phi ptr [ %.sroa.066.0, %bb.s ], [ %.sroa.078.0.copyload, %bb.r ]
  %.sroa.8.1 = phi i32 [ %.sroa.11.0.copyload, %bb.s ], [ %.sroa.8.0, %bb.r ]
  %.sroa.066.1 = phi ptr [ %.sroa.078.0.copyload, %bb.s ], [ %.sroa.066.0, %bb.r ]
  store ptr %.sroa.043.0.copyload, ptr %9, align 8, !tbaa !200
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x i32> %i.e, ptr %.sroa.545.0..sroa_idx46, align 8
  store ptr %.sroa.078.0, ptr %10, align 8, !tbaa !200
  %.sroa.11.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx84, align 8, !tbaa !81
  %.sroa.13.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx88, align 4
  store ptr %.sroa.066.1, ptr %11, align 8, !tbaa !200
  %.sroa.8.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx70, align 8, !tbaa !81
  %.sroa.9.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %.sroa.13104.12.extract.trunc, ptr %.sroa.9.0..sroa_idx76, align 4
  %i.bz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 219, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #25 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.bz, 0 ; 2 uses
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.bz, 1
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.fca.0.extract8) #25
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !106
  store ptr %.fca.0.extract8, ptr %12, align 8, !tbaa !200
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cb, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cb, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.t
  %.sroa.13139.0 = phi i32 [ 0, %bb.l ], [ %.fca.1.extract, %bb.t ], [ 0, %bb.n ], [ 0, %bb.o ]
  %.sroa.0138.0 = phi ptr [ null, %bb.l ], [ %.fca.0.extract, %bb.t ], [ null, %bb.n ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.thread149

.critedge:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.thread149

.thread149:                                       ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit, %.thread, %bb.f, %.critedge, %bb.u, %bb.d, %bb.e
  %.sroa.13139.1 = phi i32 [ %.fca.1.extract30, %bb.e ], [ %.sroa.13139.0, %bb.u ], [ 0, %bb.d ], [ 0, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit ], [ 0, %.critedge ], [ 0, %bb.f ], [ 0, %.thread ]
  %.sroa.0138.1 = phi ptr [ %.fca.0.extract29, %bb.e ], [ %.sroa.0138.0, %bb.u ], [ null, %bb.d ], [ null, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit ], [ null, %.critedge ], [ null, %bb.f ], [ null, %.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0138.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.13139.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL15fnegFoldsIntoOpPKN4llvm6SDNodeE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %1 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  switch i32 %i.b, label %bb.i [
    i32 248, label %bb.b
    i32 99, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 100, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 101, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 155, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 156, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 295, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 296, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 297, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 298, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 299, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 300, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 301, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 302, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 219, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 264, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 285, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 286, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 287, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 289, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 160, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 641, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 643, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 642, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 658, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 616, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 615, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 610, label %_ZL19fnegFoldsIntoOpcodej.exit
    i32 612, label %_ZL19fnegFoldsIntoOpcodej.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !200 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106
  switch i32 %i.f, label %_ZL19fnegFoldsIntoOpcodej.exit [
    i32 162, label %bb.c
    i32 219, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 64
  %i.h = load i16, ptr %i.g, align 8, !tbaa !112
  %i.i = icmp eq i16 %i.h, 2
  br i1 %i.i, label %bb.d, label %_ZL19fnegFoldsIntoOpcodej.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !115
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.s, align 8, !tbaa !64 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !98
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.t, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.v = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.w, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.v, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.f:                                             ; preds = %bb.d
  %i.x = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.e, %bb.f
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.fca.1.extract = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.y = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.y, label %bb.g, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.g:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.z = icmp eq i64 %.fca.0.extract, 32
  br label %_ZL19fnegFoldsIntoOpcodej.exit

bb.h:                                             ; preds = %bb.b
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85
  %i.ac = zext i32 %.sroa.8.0.copyload to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ad, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98
  %.not.i.i5 = icmp eq i16 %.sroa.0.0.copyload.i.i, 14
  %i.ae = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i5, i1 %i.ae, i1 false
  br label %_ZL19fnegFoldsIntoOpcodej.exit

bb.i:                                             ; preds = %bb.a
  br label %_ZL19fnegFoldsIntoOpcodej.exit

_ZL19fnegFoldsIntoOpcodej.exit:                   ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.i, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.c, %bb.h
  %.1 = phi i1 [ %.not4.i, %bb.h ], [ %i.z, %_ZNK4llvm8TypeSizecvmEv.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.i ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK4llvm20AMDGPUTargetLowering21getConstantNegateCostEPKNS_16ConstantFPSDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %.not.i.i.i.i.i = icmp eq ptr %i.d, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.f, ptr %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 20
  %i.h = load i8, ptr %i.g, align 4               ; 2 uses
  %i.i = and i8 %i.h, 7
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = and i8 %i.h, 8
  %.not8 = icmp eq i8 %i.k, 0
  %i.l = select i1 %.not8, i32 2, i32 0
  br label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread7

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1120
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.n) #25
  br i1 %i.r, label %bb.d, label %_ZL8isInv2PiRKN4llvm7APFloatE.exit.thread7

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !712
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 9 uses
  %i.u = load atomic i8, ptr @_ZGVZL8isInv2PiRKN4llvm7APFloatEE4KF16 acquire, align 8
end_hunk_4
begin_hunk_5_@_ZNK4llvm20AMDGPUTargetLowering18performFNegCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  br i1 %i.o, label %bb.c, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

bb.c:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i
  %i.p = tail call noundef zeroext i1 @_ZN4llvm20AMDGPUTargetLowering21allUsesHaveSourceModsEPKNS_6SDNodeEj(ptr noundef nonnull readonly %1, i32 noundef 0)
  br i1 %i.p, label %bb.bz, label %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i:      ; preds = %.lr.ph.i.i.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %bb.a
  %i.q = tail call fastcc noundef zeroext i1 @_ZL15fnegFoldsIntoOpPKN4llvm6SDNodeE(ptr noundef readonly %.sroa.0832.0.copyload)
  br i1 %i.q, label %bb.d, label %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit

bb.d:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i
  %i.r = tail call noundef zeroext i1 @_ZN4llvm20AMDGPUTargetLowering21allUsesHaveSourceModsEPKNS_6SDNodeEj(ptr noundef nonnull readonly %1, i32 noundef 4)
  br i1 %i.r, label %bb.bz, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZN4llvm20AMDGPUTargetLowering21allUsesHaveSourceModsEPKNS_6SDNodeEj(ptr noundef readonly %.sroa.0832.0.copyload, i32 noundef 4)
  br i1 %i.s, label %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, label %bb.bz

_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit: ; preds = %bb.e, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !201  ; 3 uses
  store i64 %i.u, ptr %3, align 8, !tbaa !201
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !202  ; 3 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !203
  switch i32 %i.h, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread [
    i32 99, label %bb.f
    i32 101, label %bb.p
    i32 616, label %bb.p
    i32 155, label %bb.x
    i32 156, label %bb.x
    i32 296, label %bb.aj
    i32 295, label %bb.aj
    i32 298, label %bb.aj
    i32 297, label %bb.aj
    i32 299, label %bb.aj
    i32 300, label %bb.aj
    i32 301, label %bb.aj
    i32 302, label %bb.aj
    i32 610, label %bb.aj
    i32 615, label %bb.aj
    i32 612, label %bb.aw
    i32 247, label %bb.az
    i32 285, label %bb.az
    i32 286, label %bb.az
    i32 287, label %bb.az
    i32 289, label %bb.az
    i32 264, label %bb.az
    i32 160, label %bb.az
    i32 641, label %bb.az
    i32 643, label %bb.az
    i32 642, label %bb.az
    i32 658, label %bb.az
    i32 244, label %bb.be
    i32 250, label %bb.bj
    i32 248, label %bb.bk
  ]

bb.f:                                             ; preds = %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.y, align 4, !tbaa !81
  %i.z = and i32 %.sroa.0.0.copyload.i.i, 128
  %.not897.a = icmp eq i32 %i.z, 0
  br i1 %.not897.a, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i438 = load i32, ptr %i.aa, align 4, !tbaa !81
  %i.ab = and i32 %.sroa.0.0.copyload.i438, 128
  %.not898.a = icmp eq i32 %i.ab, 0
  br i1 %.not898.a, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 6 uses
  %.sroa.0786.0.copyload = load ptr, ptr %i.ad, align 8, !tbaa !200 ; 3 uses
  %.sroa.10798.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.10798.0.copyload = load i32, ptr %.sroa.10798.0..sroa_idx, align 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.0769.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !200 ; 3 uses
  %.sroa.9774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.10781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %.sroa.10781.0.copyload = load i32, ptr %.sroa.10781.0..sroa_idx, align 4
  %i.af = load <2 x i32>, ptr %.sroa.9774.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0786.0.copyload, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !106
  %.not435 = icmp eq i32 %i.ah, 260
  br i1 %.not435, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %.sroa.9791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.9791.0.copyload = load i32, ptr %.sroa.9791.0..sroa_idx, align 8, !tbaa !81
  store ptr %.sroa.0786.0.copyload, ptr %4, align 8, !tbaa !200
  %.sroa.9791.0..sroa_idx792 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.9791.0.copyload, ptr %.sroa.9791.0..sroa_idx792, align 8, !tbaa !81
  %.sroa.10798.0..sroa_idx799 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.10798.0.copyload, ptr %.sroa.10798.0..sroa_idx799, align 4
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #25 ; 2 uses
  %.fca.0.extract348 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract349 = extractvalue { ptr, i32 } %i.ai, 1
  br label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0786.0.copyload, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !107 ; 2 uses
  %.sroa.0786.0.copyload790 = load ptr, ptr %i.ak, align 8, !tbaa !200
  %.sroa.9791.0..sroa_idx796 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.9791.0.copyload797 = load i32, ptr %.sroa.9791.0..sroa_idx796, align 8, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0786.0 = phi ptr [ %.sroa.0786.0.copyload790, %bb.i ], [ %.fca.0.extract348, %bb.h ]
  %.sroa.9791.0 = phi i32 [ %.sroa.9791.0.copyload797, %bb.i ], [ %.fca.1.extract349, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0769.0.copyload, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !106
  %.not436 = icmp eq i32 %i.am, 260
  br i1 %.not436, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.sroa.0769.0.copyload, ptr %5, align 8, !tbaa !200
  %.sroa.9774.0..sroa_idx775 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x i32> %i.af, ptr %.sroa.9774.0..sroa_idx775, align 8
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25 ; 2 uses
  %.fca.0.extract338 = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract339 = extractvalue { ptr, i32 } %i.an, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0769.0.copyload, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %.sroa.0769.0.copyload773 = load ptr, ptr %i.ap, align 8, !tbaa !200
  %.sroa.9774.0..sroa_idx779 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.9774.0.copyload780 = load i32, ptr %.sroa.9774.0..sroa_idx779, align 8, !tbaa !81
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0769.0 = phi ptr [ %.sroa.0769.0.copyload773, %bb.l ], [ %.fca.0.extract338, %bb.k ]
  %.sroa.9774.0 = phi i32 [ %.sroa.9774.0.copyload780, %bb.l ], [ %.fca.1.extract339, %bb.k ]
  store ptr %.sroa.0786.0, ptr %6, align 8, !tbaa !200
  %.sroa.9791.0..sroa_idx794 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.9791.0, ptr %.sroa.9791.0..sroa_idx794, align 8, !tbaa !81
  %.sroa.10798.0..sroa_idx801 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.10798.0.copyload, ptr %.sroa.10798.0..sroa_idx801, align 4
  store ptr %.sroa.0769.0, ptr %7, align 8, !tbaa !200
  %.sroa.9774.0..sroa_idx777 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.9774.0, ptr %.sroa.9774.0..sroa_idx777, align 8, !tbaa !81
  %.sroa.10781.0..sroa_idx784 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.10781.0.copyload, ptr %.sroa.10781.0..sroa_idx784, align 4
  %.sroa.0.0.copyload.i439 = load i32, ptr %i.y, align 4, !tbaa !81
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 99, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, i32 %.sroa.0.0.copyload.i439) #25 ; 2 uses
  %.fca.0.extract330 = extractvalue { ptr, i32 } %i.aq, 0 ; 4 uses
  %.fca.1.extract331 = extractvalue { ptr, i32 } %i.aq, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.fca.0.extract330, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !106
  %.not437 = icmp eq i32 %i.as, 99
  br i1 %.not437, label %bb.n, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

bb.n:                                             ; preds = %bb.m
  %.sroa.018.022.i.i = load ptr, ptr %i.i, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.aw, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.o
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.o ], [ %.sroa.018.022.i.i, %bb.n ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !115
  %i.aw = icmp ne i32 %i.av, %.sroa.44.0.copyload ; 2 uses
  %i.ax = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %cond.i.i, label %bb.o, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.o
  %i.ay = icmp eq i32 %.214.i.i, 0
  br i1 %i.ay, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %.lr.ph.i.i, %bb.n, %_ZNK4llvm7SDValue9hasOneUseEv.exit
  store ptr %.fca.0.extract330, ptr %8, align 8, !tbaa !200
  %.sroa.6763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract331, ptr %.sroa.6763.0..sroa_idx, align 8, !tbaa !81
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #25 ; 2 uses
  %.fca.0.extract318 = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract319 = extractvalue { ptr, i32 } %i.az, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %.sroa.0832.0.copyload, i32 %.sroa.44.0.copyload, ptr %.fca.0.extract318, i32 %.fca.1.extract319) #25
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

bb.p:                                             ; preds = %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !107 ; 5 uses
  %.sroa.0754.0.copyload = load ptr, ptr %i.bb, align 8, !tbaa !200 ; 4 uses
  %.sroa.7758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bc = load i64, ptr %.sroa.7758.0..sroa_idx, align 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0737.0.copyload = load ptr, ptr %i.bd, align 8, !tbaa !200 ; 4 uses
  %.sroa.9742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %.sroa.9742.0.copyload = load i32, ptr %.sroa.9742.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %.sroa.10749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
  %.sroa.10749.0.copyload = load i32, ptr %.sroa.10749.0..sroa_idx, align 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0754.0.copyload, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !106
  %i.bg = icmp eq i32 %i.bf, 260
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0754.0.copyload, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !107 ; 2 uses
  %.sroa.0754.0.copyload757 = load ptr, ptr %i.bi, align 8, !tbaa !200
  %.sroa.7758.0..sroa_idx760 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bj = load i32, ptr %.sroa.7758.0..sroa_idx760, align 8, !tbaa !81
  %.sroa.7760.0.insert.ext = zext i32 %i.bj to i64
  %.sroa.7760.0.insert.mask = and i64 %i.bc, -4294967296
  %.sroa.7760.0.insert.insert = or disjoint i64 %.sroa.7760.0.insert.mask, %.sroa.7760.0.insert.ext
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0737.0.copyload, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !106
  %i.bm = icmp eq i32 %i.bl, 260
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0737.0.copyload, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !107 ; 2 uses
  %.sroa.0737.0.copyload741 = load ptr, ptr %i.bo, align 8, !tbaa !200
  %.sroa.9742.0..sroa_idx747 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.9742.0.copyload748 = load i32, ptr %.sroa.9742.0..sroa_idx747, align 8, !tbaa !81
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store ptr %.sroa.0737.0.copyload, ptr %9, align 8, !tbaa !200
  %.sroa.9742.0..sroa_idx743 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.9742.0.copyload, ptr %.sroa.9742.0..sroa_idx743, align 8, !tbaa !81
  %.sroa.10749.0..sroa_idx750 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.10749.0.copyload, ptr %.sroa.10749.0..sroa_idx750, align 4
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #25 ; 2 uses
  %.fca.0.extract308 = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract309 = extractvalue { ptr, i32 } %i.bp, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  %.sroa.0737.0 = phi ptr [ %.sroa.0737.0.copyload, %bb.q ], [ %.sroa.0737.0.copyload741, %bb.s ], [ %.fca.0.extract308, %bb.t ]
  %.sroa.9742.0 = phi i32 [ %.sroa.9742.0.copyload, %bb.q ], [ %.sroa.9742.0.copyload748, %bb.s ], [ %.fca.1.extract309, %bb.t ]
  %.sroa.0754.0 = phi ptr [ %.sroa.0754.0.copyload757, %bb.q ], [ %.sroa.0754.0.copyload, %bb.s ], [ %.sroa.0754.0.copyload, %bb.t ]
  %.sroa.7760.0 = phi i64 [ %.sroa.7760.0.insert.insert, %bb.q ], [ %i.bc, %bb.s ], [ %i.bc, %bb.t ]
  store ptr %.sroa.0754.0, ptr %10, align 8, !tbaa !200
  %.sroa.7760.0..sroa_idx761 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.7760.0, ptr %.sroa.7760.0..sroa_idx761, align 8
  store ptr %.sroa.0737.0, ptr %11, align 8, !tbaa !200
  %.sroa.9742.0..sroa_idx745 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.9742.0, ptr %.sroa.9742.0..sroa_idx745, align 8, !tbaa !81
  %.sroa.10749.0..sroa_idx752 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %.sroa.10749.0.copyload, ptr %.sroa.10749.0..sroa_idx752, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 28
  %.sroa.0.0.copyload.i440 = load i32, ptr %i.bq, align 4, !tbaa !81
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, i32 %.sroa.0.0.copyload.i440) #25 ; 2 uses
  %.fca.0.extract300 = extractvalue { ptr, i32 } %i.br, 0 ; 4 uses
  %.fca.1.extract301 = extractvalue { ptr, i32 } %i.br, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.fca.0.extract300, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !106
  %.not434 = icmp eq i32 %i.bt, %i.h
  br i1 %.not434, label %bb.v, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

bb.v:                                             ; preds = %bb.u
  %.sroa.018.022.i.i441 = load ptr, ptr %i.i, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i442 = icmp eq ptr %.sroa.018.022.i.i441, null
  br i1 %.not23.i.i442, label %_ZNK4llvm7SDValue9hasOneUseEv.exit452.thread, label %.lr.ph.i.i443

bb.w:                                             ; preds = %.lr.ph.i.i443
  %.214.i.i446 = select i1 %i.bx, i32 %.01224.i.i445, i32 0 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i444, i64 32
  %.sroa.018.0.i.i450 = load ptr, ptr %i.bu, align 8, !tbaa !100 ; 2 uses
  %.not.i.i451 = icmp eq ptr %.sroa.018.0.i.i450, null
  br i1 %.not.i.i451, label %_ZNK4llvm7SDValue9hasOneUseEv.exit452, label %.lr.ph.i.i443

.lr.ph.i.i443:                                    ; preds = %bb.v, %bb.w
  %.sroa.018.025.i.i444 = phi ptr [ %.sroa.018.0.i.i450, %bb.w ], [ %.sroa.018.022.i.i441, %bb.v ] ; 2 uses
  %.01224.i.i445 = phi i32 [ %.214.i.i446, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i444, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !115
  %i.bx = icmp ne i32 %i.bw, %.sroa.44.0.copyload ; 2 uses
  %i.by = icmp ne i32 %.01224.i.i445, 0
  %cond.i.i447 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %cond.i.i447, label %bb.w, label %_ZNK4llvm7SDValue9hasOneUseEv.exit452.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit452:            ; preds = %bb.w
  %i.bz = icmp eq i32 %.214.i.i446, 0
  br i1 %i.bz, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread, label %_ZNK4llvm7SDValue9hasOneUseEv.exit452.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit452.thread:     ; preds = %.lr.ph.i.i443, %bb.v, %_ZNK4llvm7SDValue9hasOneUseEv.exit452
  store ptr %.fca.0.extract300, ptr %12, align 8, !tbaa !200
  %.sroa.6731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract301, ptr %.sroa.6731.0..sroa_idx, align 8, !tbaa !81
  %i.ca = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #25 ; 2 uses
  %.fca.0.extract288 = extractvalue { ptr, i32 } %i.ca, 0
  %.fca.1.extract289 = extractvalue { ptr, i32 } %i.ca, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %.sroa.0832.0.copyload, i32 %.sroa.44.0.copyload, ptr %.fca.0.extract288, i32 %.fca.1.extract289) #25
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

bb.x:                                             ; preds = %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 28
  %.sroa.0.0.copyload.i.i453 = load i32, ptr %i.cb, align 4, !tbaa !81
  %i.cc = and i32 %.sroa.0.0.copyload.i.i453, 128
  %.not895 = icmp eq i32 %i.cc, 0
  br i1 %.not895, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i454 = load i32, ptr %i.cd, align 4, !tbaa !81
  %i.ce = and i32 %.sroa.0.0.copyload.i454, 128
  %.not896 = icmp eq i32 %i.ce, 0
  br i1 %.not896, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread, label %.critedge2

.critedge2:                                       ; preds = %bb.x, %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !107 ; 8 uses
  %.sroa.0721.0.copyload = load ptr, ptr %i.cg, align 8, !tbaa !200 ; 4 uses
  %.sroa.7725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ch = load i64, ptr %.sroa.7725.0..sroa_idx, align 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %.sroa.0704.0.copyload = load ptr, ptr %i.ci, align 8, !tbaa !200 ; 4 uses
  %.sroa.9709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %.sroa.9709.0.copyload = load i32, ptr %.sroa.9709.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %.sroa.10716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 52
  %.sroa.10716.0.copyload = load i32, ptr %.sroa.10716.0..sroa_idx, align 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %.sroa.0688.0.copyload = load ptr, ptr %i.cj, align 8, !tbaa !200 ; 3 uses
  %.sroa.9693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 92
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %i.ck = load <2 x i32>, ptr %.sroa.9693.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0721.0.copyload, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !106
  %i.cn = icmp eq i32 %i.cm, 260
  br i1 %i.cn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge2
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0721.0.copyload, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !107 ; 2 uses
  %.sroa.0721.0.copyload724 = load ptr, ptr %i.cp, align 8, !tbaa !200
  %.sroa.7725.0..sroa_idx727 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cq = load i32, ptr %.sroa.7725.0..sroa_idx727, align 8, !tbaa !81
  %.sroa.7725.0.insert.ext = zext i32 %i.cq to i64
  %.sroa.7725.0.insert.mask = and i64 %i.ch, -4294967296
  %.sroa.7725.0.insert.insert = or disjoint i64 %.sroa.7725.0.insert.mask, %.sroa.7725.0.insert.ext
  br label %bb.ad

bb.aa:                                            ; preds = %.critedge2
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0704.0.copyload, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !106
  %i.ct = icmp eq i32 %i.cs, 260
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0704.0.copyload, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !107 ; 2 uses
  %.sroa.0704.0.copyload708 = load ptr, ptr %i.cv, align 8, !tbaa !200
  %.sroa.9709.0..sroa_idx714 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.9709.0.copyload715 = load i32, ptr %.sroa.9709.0..sroa_idx714, align 8, !tbaa !81
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store ptr %.sroa.0704.0.copyload, ptr %13, align 8, !tbaa !200
  %.sroa.9709.0..sroa_idx710 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.9709.0.copyload, ptr %.sroa.9709.0..sroa_idx710, align 8, !tbaa !81
  %.sroa.10716.0..sroa_idx717 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.10716.0.copyload, ptr %.sroa.10716.0..sroa_idx717, align 4
  %i.cw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #25 ; 2 uses
  %.fca.0.extract275 = extractvalue { ptr, i32 } %i.cw, 0
  %.fca.1.extract276 = extractvalue { ptr, i32 } %i.cw, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z
  %.sroa.7725.0 = phi i64 [ %.sroa.7725.0.insert.insert, %bb.z ], [ %i.ch, %bb.ab ], [ %i.ch, %bb.ac ]
  %.sroa.0721.0 = phi ptr [ %.sroa.0721.0.copyload724, %bb.z ], [ %.sroa.0721.0.copyload, %bb.ab ], [ %.sroa.0721.0.copyload, %bb.ac ]
  %.sroa.9709.0 = phi i32 [ %.sroa.9709.0.copyload, %bb.z ], [ %.sroa.9709.0.copyload715, %bb.ab ], [ %.fca.1.extract276, %bb.ac ]
  %.sroa.0704.0 = phi ptr [ %.sroa.0704.0.copyload, %bb.z ], [ %.sroa.0704.0.copyload708, %bb.ab ], [ %.fca.0.extract275, %bb.ac ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0688.0.copyload, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !106
  %.not432 = icmp eq i32 %i.cy, 260
  br i1 %.not432, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %.sroa.0688.0.copyload, ptr %14, align 8, !tbaa !200
  %.sroa.9693.0..sroa_idx694 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store <2 x i32> %i.ck, ptr %.sroa.9693.0..sroa_idx694, align 8
  %i.cz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #25 ; 2 uses
  %.fca.0.extract265 = extractvalue { ptr, i32 } %i.cz, 0
  %.fca.1.extract266 = extractvalue { ptr, i32 } %i.cz, 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0688.0.copyload, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !107 ; 2 uses
  %.sroa.0688.0.copyload692 = load ptr, ptr %i.db, align 8, !tbaa !200
  %.sroa.9693.0..sroa_idx698 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.9693.0.copyload699 = load i32, ptr %.sroa.9693.0..sroa_idx698, align 8, !tbaa !81
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.9693.0 = phi i32 [ %.sroa.9693.0.copyload699, %bb.af ], [ %.fca.1.extract266, %bb.ae ]
  %.sroa.0688.0 = phi ptr [ %.sroa.0688.0.copyload692, %bb.af ], [ %.fca.0.extract265, %bb.ae ]
  store ptr %.sroa.0721.0, ptr %15, align 8, !tbaa !200
  %.sroa.7725.0..sroa_idx726 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.7725.0, ptr %.sroa.7725.0..sroa_idx726, align 8
  store ptr %.sroa.0704.0, ptr %16, align 8, !tbaa !200
  %.sroa.9709.0..sroa_idx712 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sroa.9709.0, ptr %.sroa.9709.0..sroa_idx712, align 8, !tbaa !81
  %.sroa.10716.0..sroa_idx719 = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %.sroa.10716.0.copyload, ptr %.sroa.10716.0..sroa_idx719, align 4
  store ptr %.sroa.0688.0, ptr %17, align 8, !tbaa !200
  %.sroa.9693.0..sroa_idx696 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sroa.9693.0, ptr %.sroa.9693.0..sroa_idx696, align 8, !tbaa !81
  %.sroa.10.0..sroa_idx702 = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx702, align 4
  %i.dc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #25 ; 2 uses
  %.fca.0.extract258 = extractvalue { ptr, i32 } %i.dc, 0 ; 4 uses
  %.fca.1.extract259 = extractvalue { ptr, i32 } %i.dc, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.fca.0.extract258, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !106
  %.not433 = icmp eq i32 %i.de, %i.h
  br i1 %.not433, label %bb.ah, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

bb.ah:                                            ; preds = %bb.ag
  %.sroa.018.022.i.i455 = load ptr, ptr %i.i, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i456 = icmp eq ptr %.sroa.018.022.i.i455, null
  br i1 %.not23.i.i456, label %_ZNK4llvm7SDValue9hasOneUseEv.exit466.thread, label %.lr.ph.i.i457

bb.ai:                                            ; preds = %.lr.ph.i.i457
  %.214.i.i460 = select i1 %i.di, i32 %.01224.i.i459, i32 0 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i458, i64 32
  %.sroa.018.0.i.i464 = load ptr, ptr %i.df, align 8, !tbaa !100 ; 2 uses
  %.not.i.i465 = icmp eq ptr %.sroa.018.0.i.i464, null
  br i1 %.not.i.i465, label %_ZNK4llvm7SDValue9hasOneUseEv.exit466, label %.lr.ph.i.i457

.lr.ph.i.i457:                                    ; preds = %bb.ah, %bb.ai
  %.sroa.018.025.i.i458 = phi ptr [ %.sroa.018.0.i.i464, %bb.ai ], [ %.sroa.018.022.i.i455, %bb.ah ] ; 2 uses
  %.01224.i.i459 = phi i32 [ %.214.i.i460, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i458, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !115
  %i.di = icmp ne i32 %i.dh, %.sroa.44.0.copyload ; 2 uses
  %i.dj = icmp ne i32 %.01224.i.i459, 0
  %cond.i.i461 = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %cond.i.i461, label %bb.ai, label %_ZNK4llvm7SDValue9hasOneUseEv.exit466.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit466:            ; preds = %bb.ai
  %i.dk = icmp eq i32 %.214.i.i460, 0
  br i1 %i.dk, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread, label %_ZNK4llvm7SDValue9hasOneUseEv.exit466.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit466.thread:     ; preds = %.lr.ph.i.i457, %bb.ah, %_ZNK4llvm7SDValue9hasOneUseEv.exit466
  store ptr %.fca.0.extract258, ptr %18, align 8, !tbaa !200
  %.sroa.6682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract259, ptr %.sroa.6682.0..sroa_idx, align 8, !tbaa !81
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #25 ; 2 uses
  %.fca.0.extract246 = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract247 = extractvalue { ptr, i32 } %i.dl, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %.sroa.0832.0.copyload, i32 %.sroa.44.0.copyload, ptr %.fca.0.extract246, i32 %.fca.1.extract247) #25
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

bb.aj:                                            ; preds = %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !107 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %.sroa.0239.0.copyload = load ptr, ptr %i.do, align 8, !tbaa !200 ; 2 uses
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 2 uses
  %i.dp = load <2 x i32>, ptr %.sroa.5241.0..sroa_idx, align 8
  %.sroa.5241.0.copyload = load i32, ptr %.sroa.5241.0..sroa_idx, align 8, !tbaa !81
  %i.dq = tail call noundef ptr @_ZN4llvm21isConstOrConstSplatFPENS_7SDValueEb(ptr %.sroa.0239.0.copyload, i32 %.sroa.5241.0.copyload, i1 noundef zeroext false) #25 ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.not.not.i, label %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread, label %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit

_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit: ; preds = %bb.aj
  %i.dr = tail call noundef i32 @_ZNK4llvm20AMDGPUTargetLowering21getConstantNegateCostEPKNS_16ConstantFPSDNodeE(ptr noundef nonnull readonly align 8 dereferenceable(518448) %0, ptr noundef nonnull %i.dq)
  %i.ds = icmp eq i32 %i.dr, 2
  br i1 %i.ds, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread, label %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread

_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread: ; preds = %bb.aj, %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit
  %i.dt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #25 ; 2 uses
  %.fca.0.extract226 = extractvalue { ptr, i32 } %i.dt, 0
  %.fca.1.extract227 = extractvalue { ptr, i32 } %i.dt, 1
  store ptr %.sroa.0239.0.copyload, ptr %20, align 8, !tbaa !200
  %.sroa.5241.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x i32> %i.dp, ptr %.sroa.5241.0..sroa_idx242, align 8
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #25 ; 2 uses
  %.fca.0.extract216 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract217 = extractvalue { ptr, i32 } %i.du, 1
  switch i32 %i.h, label %bb.at [
    i32 296, label %_ZL13inverseMinMaxj.exit
    i32 295, label %bb.ak
    i32 298, label %bb.al
    i32 297, label %bb.am
    i32 300, label %bb.an
    i32 299, label %bb.ao
    i32 302, label %bb.ap
    i32 301, label %bb.aq
    i32 610, label %bb.ar
    i32 615, label %bb.as
  ]

bb.ak:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.al:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.am:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.an:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.ao:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.ap:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.aq:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.ar:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.as:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  br label %_ZL13inverseMinMaxj.exit

bb.at:                                            ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread
  unreachable

_ZL13inverseMinMaxj.exit:                         ; preds = %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i467 = phi i32 [ 610, %bb.as ], [ 296, %bb.ak ], [ 297, %bb.al ], [ 298, %bb.am ], [ 299, %bb.an ], [ 300, %bb.ao ], [ 301, %bb.ap ], [ 302, %bb.aq ], [ 615, %bb.ar ], [ 295, %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit.thread ] ; 2 uses
  store ptr %.fca.0.extract226, ptr %21, align 8, !tbaa !200
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract227, ptr %.sroa.4234.0..sroa_idx, align 8, !tbaa !81
  store ptr %.fca.0.extract216, ptr %22, align 8, !tbaa !200
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract217, ptr %.sroa.4224.0..sroa_idx, align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 28
  %.sroa.0.0.copyload.i468 = load i32, ptr %i.dv, align 4, !tbaa !81
  %i.dw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %.0.i467, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, i32 %.sroa.0.0.copyload.i468) #25 ; 2 uses
  %.fca.0.extract206 = extractvalue { ptr, i32 } %i.dw, 0 ; 4 uses
  %.fca.1.extract207 = extractvalue { ptr, i32 } %i.dw, 1 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.fca.0.extract206, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !106
  %.not431 = icmp eq i32 %i.dy, %.0.i467
  br i1 %.not431, label %bb.au, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

bb.au:                                            ; preds = %_ZL13inverseMinMaxj.exit
  %.sroa.018.022.i.i469 = load ptr, ptr %i.i, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i470 = icmp eq ptr %.sroa.018.022.i.i469, null
  br i1 %.not23.i.i470, label %_ZNK4llvm7SDValue9hasOneUseEv.exit480.thread, label %.lr.ph.i.i471

bb.av:                                            ; preds = %.lr.ph.i.i471
  %.214.i.i474 = select i1 %i.ec, i32 %.01224.i.i473, i32 0 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i472, i64 32
  %.sroa.018.0.i.i478 = load ptr, ptr %i.dz, align 8, !tbaa !100 ; 2 uses
  %.not.i.i479 = icmp eq ptr %.sroa.018.0.i.i478, null
  br i1 %.not.i.i479, label %_ZNK4llvm7SDValue9hasOneUseEv.exit480, label %.lr.ph.i.i471

.lr.ph.i.i471:                                    ; preds = %bb.au, %bb.av
  %.sroa.018.025.i.i472 = phi ptr [ %.sroa.018.0.i.i478, %bb.av ], [ %.sroa.018.022.i.i469, %bb.au ] ; 2 uses
  %.01224.i.i473 = phi i32 [ %.214.i.i474, %bb.av ], [ 1, %bb.au ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i472, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !115
  %i.ec = icmp ne i32 %i.eb, %.sroa.44.0.copyload ; 2 uses
  %i.ed = icmp ne i32 %.01224.i.i473, 0
  %cond.i.i475 = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %cond.i.i475, label %bb.av, label %_ZNK4llvm7SDValue9hasOneUseEv.exit480.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit480:            ; preds = %bb.av
  %i.ee = icmp eq i32 %.214.i.i474, 0
  br i1 %i.ee, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread, label %_ZNK4llvm7SDValue9hasOneUseEv.exit480.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit480.thread:     ; preds = %.lr.ph.i.i471, %bb.au, %_ZNK4llvm7SDValue9hasOneUseEv.exit480
  store ptr %.fca.0.extract206, ptr %23, align 8, !tbaa !200
  %.sroa.6674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract207, ptr %.sroa.6674.0..sroa_idx, align 8, !tbaa !81
  %i.ef = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #25 ; 2 uses
  %.fca.0.extract194 = extractvalue { ptr, i32 } %i.ef, 0
  %.fca.1.extract195 = extractvalue { ptr, i32 } %i.ef, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %.sroa.0832.0.copyload, i32 %.sroa.44.0.copyload, ptr %.fca.0.extract194, i32 %.fca.1.extract195) #25
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

bb.aw:                                            ; preds = %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 28 ; 4 uses
  %.sroa.0.0.copyload.i481 = load i32, ptr %i.eg, align 4, !tbaa !81 ; 2 uses
  %i.eh = and i32 %.sroa.0.0.copyload.i481, 32
  %.not893 = icmp eq i32 %i.eh, 0
  br i1 %.not893, label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread, label %.preheader

.preheader:                                       ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.ei = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0832.0.copyload, i64 40 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !107
  %i.en = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.em, i32 %.sroa.0.0.copyload.i481) #25 ; 2 uses
  %.fca.0.extract180 = extractvalue { ptr, i32 } %i.en, 0
  %.fca.1.extract181 = extractvalue { ptr, i32 } %i.en, 1
  store ptr %.fca.0.extract180, ptr %24, align 16, !tbaa !200
  store i32 %.fca.1.extract181, ptr %i.ei, align 8, !tbaa !81
end_hunk_5
begin_hunk_6_@_ZNK4llvm20AMDGPUTargetLowering18performFNegCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract80 = extractvalue { i64, i8 } %.pn.i, 0
  %.not = icmp eq i64 %.fca.0.extract80, 32
  br i1 %.not, label %bb.bq, label %.critedge4

bb.bq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ip = call fastcc noundef zeroext i1 @_ZL15fnegFoldsIntoOpPKN4llvm6SDNodeE(ptr noundef nonnull %.sroa.0607.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br i1 %i.ip, label %bb.br, label %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread

.critedge4:                                       ; preds = %bb.bl, %_ZNK4llvm8TypeSizecvmEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread

bb.br:                                            ; preds = %bb.bq
  store ptr %.sroa.0607.0.copyload, ptr %37, align 8, !tbaa !200
  %.sroa.7611.0..sroa_idx612 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store <2 x i32> %i.ic, ptr %.sroa.7611.0..sroa_idx612, align 8
  %i.iq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37) #25 ; 2 uses
  %.fca.0.extract73 = extractvalue { ptr, i32 } %i.iq, 0
  %.fca.1.extract74 = extractvalue { ptr, i32 } %i.iq, 1
  store ptr %.fca.0.extract73, ptr %38, align 8, !tbaa !200
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract74, ptr %.sroa.478.0..sroa_idx, align 8, !tbaa !81
  %i.ir = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38) #25 ; 2 uses
  %.fca.0.extract69 = extractvalue { ptr, i32 } %i.ir, 0 ; 2 uses
  %.fca.1.extract70 = extractvalue { ptr, i32 } %i.ir, 1
  %i.is = load ptr, ptr %i.if, align 8, !tbaa !85
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %i.ih ; 2 uses
  %.sroa.0.0.copyload.i.i550 = load i16, ptr %i.it, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i551 = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %.sroa.21.0.copyload.i.i552 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i551, align 8, !tbaa !98
  store ptr %.fca.0.extract69, ptr %39, align 8, !tbaa !200
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 %.fca.1.extract70, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81
  %i.iu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 %.sroa.0.0.copyload.i.i550, ptr %.sroa.21.0.copyload.i.i552, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39) #25 ; 2 uses
  %.fca.0.extract60 = extractvalue { ptr, i32 } %i.iu, 0
  %.fca.1.extract61 = extractvalue { ptr, i32 } %i.iu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.iv = load ptr, ptr %i.hy, align 8, !tbaa !107
  %i.iw = load i16, ptr %i.hu, align 8, !tbaa !112
  %i.ix = zext i16 %i.iw to i64
  call void @_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(144) %40, ptr %i.iv, i64 %i.ix)
  %i.iy = load ptr, ptr %40, align 8, !tbaa !21
  %i.iz = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !484
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -16
  store ptr %.fca.0.extract60, ptr %i.jd, align 8, !tbaa !200
  %.sroa.467.0..sroa_idx = getelementptr inbounds i8, ptr %i.jc, i64 -8
  store i32 %.fca.1.extract61, ptr %.sroa.467.0..sroa_idx, align 8, !tbaa !81
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo13AddToWorklistEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.fca.0.extract69) #25
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0617.0.copyload, i64 48
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !85
  %i.jg = zext i32 %.sroa.13.0.copyload to i64
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.jg ; 2 uses
  %.sroa.0.0.copyload.i.i557 = load i16, ptr %i.jh, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i.i558 = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %.sroa.21.0.copyload.i.i559 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i558, align 8, !tbaa !98
  %i.ji = load ptr, ptr %40, align 8, !tbaa !21
  store ptr %i.ji, ptr %41, align 8, !tbaa !607
  %i.jj = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.jk = load i32, ptr %i.iz, align 8, !tbaa !484
  %i.jl = zext i32 %i.jk to i64
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !610
  %i.jm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 %.sroa.0.0.copyload.i.i557, ptr %.sroa.21.0.copyload.i.i559, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %41) #25 ; 2 uses
  %.fca.0.extract49 = extractvalue { ptr, i32 } %i.jm, 0
  %.fca.1.extract50 = extractvalue { ptr, i32 } %i.jm, 1
  store ptr %.fca.0.extract49, ptr %42, align 8, !tbaa !200
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.fca.1.extract50, ptr %.sroa.456.0..sroa_idx, align 8, !tbaa !81
  %i.jn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 15, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42) #25 ; 2 uses
  %.fca.0.extract42 = extractvalue { ptr, i32 } %i.jn, 0 ; 2 uses
  %.fca.1.extract43 = extractvalue { ptr, i32 } %i.jn, 1 ; 2 uses
  %.sroa.018.022.i.i562 = load ptr, ptr %i.i, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i563 = icmp eq ptr %.sroa.018.022.i.i562, null
  br i1 %.not23.i.i563, label %_ZNK4llvm7SDValue9hasOneUseEv.exit573.thread, label %.lr.ph.i.i564

bb.bs:                                            ; preds = %.lr.ph.i.i564
  %.214.i.i567 = select i1 %i.jr, i32 %.01224.i.i566, i32 0 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i565, i64 32
  %.sroa.018.0.i.i571 = load ptr, ptr %i.jo, align 8, !tbaa !100 ; 2 uses
  %.not.i.i572 = icmp eq ptr %.sroa.018.0.i.i571, null
  br i1 %.not.i.i572, label %_ZNK4llvm7SDValue9hasOneUseEv.exit573, label %.lr.ph.i.i564

.lr.ph.i.i564:                                    ; preds = %bb.br, %bb.bs
  %.sroa.018.025.i.i565 = phi ptr [ %.sroa.018.0.i.i571, %bb.bs ], [ %.sroa.018.022.i.i562, %bb.br ] ; 2 uses
  %.01224.i.i566 = phi i32 [ %.214.i.i567, %bb.bs ], [ 1, %bb.br ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i565, i64 8
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !115
  %i.jr = icmp ne i32 %i.jq, %.sroa.44.0.copyload ; 2 uses
  %i.js = icmp ne i32 %.01224.i.i566, 0
  %cond.i.i568 = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %cond.i.i568, label %bb.bs, label %_ZNK4llvm7SDValue9hasOneUseEv.exit573.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit573:            ; preds = %bb.bs
  %i.jt = icmp eq i32 %.214.i.i567, 0
  br i1 %i.jt, label %bb.bt, label %_ZNK4llvm7SDValue9hasOneUseEv.exit573.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit573.thread:     ; preds = %.lr.ph.i.i564, %bb.br, %_ZNK4llvm7SDValue9hasOneUseEv.exit573
  store ptr %.fca.0.extract42, ptr %43, align 8, !tbaa !200
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !81
  %i.ju = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 15, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43) #25 ; 2 uses
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.ju, 0
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.ju, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %.sroa.0832.0.copyload, i32 %.sroa.44.0.copyload, ptr %.fca.0.extract31, i32 %.fca.1.extract32) #25
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit573.thread, %_ZNK4llvm7SDValue9hasOneUseEv.exit573
  %i.jv = load ptr, ptr %40, align 8, !tbaa !21   ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @free(ptr noundef %i.jv) #25
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread

bb.bv:                                            ; preds = %bb.bk
  %.not.i.i574 = icmp eq i16 %.sroa.0.0.copyload.i, 14
  %i.jy = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not4.i = select i1 %.not.i.i574, i1 %i.jy, i1 false
  br i1 %.not4.i, label %bb.bw, label %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread

bb.bw:                                            ; preds = %bb.bv
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0617.0.copyload, i64 56
  %.sroa.018.022.i.i575 = load ptr, ptr %i.jz, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i576 = icmp eq ptr %.sroa.018.022.i.i575, null
  br i1 %.not23.i.i576, label %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread, label %.lr.ph.i.i577

bb.bx:                                            ; preds = %.lr.ph.i.i577
  %.214.i.i580 = select i1 %i.kd, i32 %.01224.i.i579, i32 0 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i578, i64 32
  %.sroa.018.0.i.i584 = load ptr, ptr %i.ka, align 8, !tbaa !100 ; 2 uses
  %.not.i.i585 = icmp eq ptr %.sroa.018.0.i.i584, null
  br i1 %.not.i.i585, label %_ZNK4llvm7SDValue9hasOneUseEv.exit586, label %.lr.ph.i.i577

.lr.ph.i.i577:                                    ; preds = %bb.bw, %bb.bx
  %.sroa.018.025.i.i578 = phi ptr [ %.sroa.018.0.i.i584, %bb.bx ], [ %.sroa.018.022.i.i575, %bb.bw ] ; 2 uses
  %.01224.i.i579 = phi i32 [ %.214.i.i580, %bb.bx ], [ 1, %bb.bw ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i578, i64 8
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !115
  %i.kd = icmp ne i32 %i.kc, %.sroa.13.0.copyload ; 2 uses
  %i.ke = icmp ne i32 %.01224.i.i579, 0
  %cond.i.i581 = select i1 %i.kd, i1 true, i1 %i.ke
  br i1 %cond.i.i581, label %bb.bx, label %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit586:            ; preds = %bb.bx
  %i.kf = icmp eq i32 %.214.i.i580, 0
  br i1 %i.kf, label %bb.by, label %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread

bb.by:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit586
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0617.0.copyload, i64 40 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !107
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %i.kj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ki) #25 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.kj, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.kj, 1
  %i.kk = load ptr, ptr %i.kg, align 8, !tbaa !107
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 80
  %i.km = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.kl) #25 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.km, 0
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.km, 1
  store ptr %.fca.0.extract24, ptr %44, align 8, !tbaa !200
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.fca.1.extract25, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !81
  %i.kn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44) #25 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.kn, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.kn, 1
  store ptr %.fca.0.extract17, ptr %45, align 8, !tbaa !200
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.fca.1.extract18, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !81
  %i.ko = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45) #25 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.ko, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.ko, 1
  %i.kp = load ptr, ptr %i.kg, align 8, !tbaa !107
  store ptr %.fca.0.extract10, ptr %46, align 8, !tbaa !200
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %.fca.1.extract11, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !81
  store ptr %.fca.0.extract5, ptr %47, align 8, !tbaa !200
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !81
  %i.kq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 219, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.kp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.kq, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.kq, 1
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread:     ; preds = %.lr.ph.i.i577, %bb.bk, %bb.bw, %bb.bv, %_ZNK4llvm7SDValue9hasOneUseEv.exit586, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, %.critedge4, %bb.bq, %bb.by
  %.sroa.46.9 = phi i32 [ 0, %bb.bq ], [ %.fca.1.extract, %bb.by ], [ %.fca.1.extract43, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ 0, %.critedge4 ], [ 0, %bb.bw ], [ 0, %bb.bk ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit586 ], [ 0, %bb.bv ], [ 0, %.lr.ph.i.i577 ]
  %.sroa.0871.9 = phi ptr [ null, %bb.bq ], [ %.fca.0.extract, %bb.by ], [ %.fca.0.extract42, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ null, %.critedge4 ], [ null, %bb.bw ], [ null, %bb.bk ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit586 ], [ null, %bb.bv ], [ null, %.lr.ph.i.i577 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread:     ; preds = %.lr.ph.i.i516, %.lr.ph.i.i500, %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit, %_ZNK4llvm7SDValue9hasOneUseEv.exit480, %_ZNK4llvm7SDValue9hasOneUseEv.exit480.thread, %_ZL13inverseMinMaxj.exit, %bb.bg, %bb.bb, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit, %bb.bf, %bb.bi, %_ZNK4llvm7SDValue9hasOneUseEv.exit525, %bb.ba, %bb.bd, %_ZNK4llvm7SDValue9hasOneUseEv.exit509, %bb.aw, %bb.ag, %_ZNK4llvm7SDValue9hasOneUseEv.exit466.thread, %_ZNK4llvm7SDValue9hasOneUseEv.exit466, %bb.y, %bb.u, %_ZNK4llvm7SDValue9hasOneUseEv.exit452.thread, %_ZNK4llvm7SDValue9hasOneUseEv.exit452, %bb.m, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.g, %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread, %bb.bj, %.loopexit
  %.sroa.46.10 = phi i32 [ %.fca.1.extract207, %_ZNK4llvm7SDValue9hasOneUseEv.exit480 ], [ 0, %bb.g ], [ %.sroa.46.9, %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread ], [ %.fca.1.extract331, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ 0, %bb.y ], [ %.fca.1.extract301, %_ZNK4llvm7SDValue9hasOneUseEv.exit452 ], [ 0, %.lr.ph.i.i500 ], [ %.sroa.46.5, %.loopexit ], [ %.fca.1.extract259, %_ZNK4llvm7SDValue9hasOneUseEv.exit466 ], [ 0, %bb.aw ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit509 ], [ %.fca.1.extract85, %bb.bj ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit525 ], [ 0, %bb.m ], [ %.fca.1.extract331, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread ], [ 0, %bb.u ], [ %.fca.1.extract301, %_ZNK4llvm7SDValue9hasOneUseEv.exit452.thread ], [ 0, %bb.ag ], [ %.fca.1.extract259, %_ZNK4llvm7SDValue9hasOneUseEv.exit466.thread ], [ %.fca.1.extract151, %bb.ba ], [ %.fca.1.extract134, %bb.bd ], [ 0, %bb.bb ], [ 0, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit ], [ %.fca.1.extract127, %bb.bf ], [ %.fca.1.extract111, %bb.bi ], [ 0, %bb.bg ], [ 0, %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit ], [ 0, %_ZL13inverseMinMaxj.exit ], [ %.fca.1.extract207, %_ZNK4llvm7SDValue9hasOneUseEv.exit480.thread ], [ 0, %.lr.ph.i.i516 ]
  %.sroa.0871.10 = phi ptr [ %.fca.0.extract206, %_ZNK4llvm7SDValue9hasOneUseEv.exit480 ], [ null, %bb.g ], [ %.sroa.0871.9, %_ZNK4llvm7SDValue9hasOneUseEv.exit586.thread ], [ %.fca.0.extract330, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ null, %bb.y ], [ %.fca.0.extract300, %_ZNK4llvm7SDValue9hasOneUseEv.exit452 ], [ null, %.lr.ph.i.i500 ], [ %.sroa.0871.5, %.loopexit ], [ %.fca.0.extract258, %_ZNK4llvm7SDValue9hasOneUseEv.exit466 ], [ null, %bb.aw ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit509 ], [ %.fca.0.extract84, %bb.bj ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit525 ], [ null, %bb.m ], [ %.fca.0.extract330, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread ], [ null, %bb.u ], [ %.fca.0.extract300, %_ZNK4llvm7SDValue9hasOneUseEv.exit452.thread ], [ null, %bb.ag ], [ %.fca.0.extract258, %_ZNK4llvm7SDValue9hasOneUseEv.exit466.thread ], [ %.fca.0.extract150, %bb.ba ], [ %.fca.0.extract133, %bb.bd ], [ null, %bb.bb ], [ null, %_ZN4llvm20AMDGPUTargetLowering21shouldFoldFNegIntoSrcEPNS_6SDNodeENS_7SDValueE.exit ], [ %.fca.0.extract126, %bb.bf ], [ %.fca.0.extract110, %bb.bi ], [ null, %bb.bg ], [ null, %_ZNK4llvm20AMDGPUTargetLowering26isConstantCostlierToNegateENS_7SDValueE.exit ], [ null, %_ZL13inverseMinMaxj.exit ], [ %.fca.0.extract206, %_ZNK4llvm7SDValue9hasOneUseEv.exit480.thread ], [ null, %.lr.ph.i.i516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bz

bb.bz:                                            ; preds = %bb.d, %bb.e, %bb.c, %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread
  %.sroa.46.11 = phi i32 [ %.sroa.46.10, %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.0871.11 = phi ptr [ %.sroa.0871.10, %_ZNK4llvm7SDValue9hasOneUseEv.exit509.thread ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0871.11, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.46.11, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr, i32) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::ArrayRef.303") align 8, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, i64 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !484
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !485
  %.idx = mul i64 %2, 40                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp ugt i64 %2, 8
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread: ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 16) #25
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !484
  %.pre9.i = zext i32 %.pre.i to i64
  br label %.lr.ph.i.i.i.i.preheader.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i: ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i
  %.pre-phi.i4 = phi i64 [ %.pre9.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i ]
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pre-phi.i4 ; 2 uses
  %i.h = add i64 %.idx, -40                       ; 2 uses
  %i.i = udiv i64 %i.h, 40
  %i.j = add nuw nsw i64 %i.i, 1
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.prol
  %.011.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !670
  %i.k = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.prol, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !836

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %i.m = icmp ult i64 %i.h, 120
  br i1 %i.m, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !670
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 16, i1 false), !tbaa.struct !670
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 16, i1 false), !tbaa.struct !670
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 16, i1 false), !tbaa.struct !670
  %i.t = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.t, %i.d
  br i1 %.not.i.i.i.i.i.3, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !837

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.pre8.i = load i32, ptr %i.b, align 8, !tbaa !484
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i
  %i.v = phi i32 [ %.pre8.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i ]
  %i.w = trunc i64 %2 to i32
  %i.x = add i32 %i.v, %i.w
  store i32 %i.x, ptr %i.b, align 8, !tbaa !484
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering18performFAbsCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704, !nonnull !19, !align !231 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %.sroa.074.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !200 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.074.0.copyload, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.i, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.b ], [ %.sroa.018.022.i.i, %bb.a ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115
  %i.i = icmp ne i32 %i.h, %.sroa.9.0.copyload    ; 2 uses
  %i.j = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %cond.i.i, label %bb.b, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.b
  %i.k = icmp eq i32 %.214.i.i, 0
  br i1 %i.k, label %bb.c, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.c:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.074.0.copyload, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !106
  switch i32 %i.m, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread [
    i32 250, label %bb.d
    i32 244, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !201
  store i64 %i.o, ptr %3, align 8, !tbaa !201
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !202
  store i32 %i.r, ptr %i.p, align 8, !tbaa !203
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.074.0.copyload, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %.sroa.066.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !200 ; 2 uses
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85
  store ptr %.sroa.066.0.copyload, ptr %4, align 8, !tbaa !200
  %.sroa.568.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load <2 x i32>, ptr %.sroa.568.0..sroa_idx, align 8
  %.sroa.568.0.copyload = load i32, ptr %.sroa.568.0..sroa_idx, align 8, !tbaa !81
  %i.x = zext i32 %.sroa.568.0.copyload to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.y, align 8, !tbaa !64 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !98 ; 2 uses
  store <2 x i32> %i.w, ptr %.sroa.568.0..sroa_idx69, align 8
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef 32767, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract22, ptr %5, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.225.0..sroa_idx, align 8
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.aa, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !85 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ac, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !98
  store ptr %.fca.0.extract18, ptr %6, align 8, !tbaa !200
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract19, ptr %.sroa.433.0..sroa_idx, align 8, !tbaa !81
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 250, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #25 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !201
end_hunk_6
begin_hunk_7_@_ZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.bf ], [ 1, %bb.be ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !115
  %i.hy = icmp ne i32 %i.hx, %.sroa.13.0.copyload ; 2 uses
  %i.hz = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.hy, i1 true, i1 %i.hz
  br i1 %cond.i.i, label %bb.bf, label %.critedge397

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.bf
  %i.ia = icmp eq i32 %.214.i.i, 0
  br i1 %i.ia, label %bb.bg, label %.critedge397

bb.bg:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @_ZN4llvm5APInt10getBitsSetEjjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %23, i32 noundef 32, i32 noundef %i.fy, i32 noundef %i.hg)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.ib = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 1, ptr %i.ib, align 8, !tbaa !23
  store i64 0, ptr %24, align 8, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 1, ptr %i.id, align 8, !tbaa !23
  store i64 0, ptr %i.ic, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !710 ; 2 uses
  %i.ig = icmp ne i32 %i.if, 0
  %i.ih = icmp sgt i32 %i.if, 1
  %i.ii = zext i1 %i.ig to i8
  %i.ij = zext i1 %i.ih to i8
  store ptr %i.b, ptr %25, align 8, !tbaa !847
  %i.ik = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i8 %i.ii, ptr %i.ik, align 8, !tbaa !848
  %i.il = getelementptr inbounds nuw i8, ptr %25, i64 9
  store i8 %i.ij, ptr %i.il, align 1, !tbaa !850
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr null, ptr %i.im, align 8, !tbaa !108
  %i.in = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i32 0, ptr %i.in, align 8, !tbaa !115
  %i.io = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr null, ptr %i.io, align 8, !tbaa !108
  %i.ip = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i32 0, ptr %i.ip, align 8, !tbaa !115
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !791 ; 2 uses
  %i.is = call noundef zeroext i1 @_ZNK4llvm14TargetLowering22ShrinkDemandedConstantENS_7SDValueERKNS_5APIntERNS0_17TargetLoweringOptE(ptr noundef nonnull align 8 dereferenceable(518435) %i.ir, ptr %.sroa.0459.0.copyload, i32 %.sroa.13.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(48) %25) #25
  br i1 %i.is, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.it = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %i.ir, ptr %.sroa.0459.0.copyload, i32 %.sroa.13.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(48) %25, i32 noundef 0, i1 noundef zeroext false) #25
  br i1 %i.it, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @_ZN4llvm14TargetLowering15DAGCombinerInfo23CommitTargetLoweringOptERKNS0_17TargetLoweringOptE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %25) #25
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.iu = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !23
  %i.iw = icmp ugt i32 %i.iv, 64
  br i1 %i.iw, label %bb.bk, label %_ZN4llvm5APIntD2Ev.exit437

bb.bk:                                            ; preds = %bb.bj
  %i.ix = load ptr, ptr %23, align 8, !tbaa !26   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %_ZN4llvm5APIntD2Ev.exit437, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.ix) #28
  br label %_ZN4llvm5APIntD2Ev.exit437

_ZN4llvm5APIntD2Ev.exit437:                       ; preds = %bb.bj, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %.critedge397

bb.bm:                                            ; preds = %bb.a
  %i.iz = tail call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering18performLoadCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.iz, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.iz, 1
  br label %.critedge403

bb.bn:                                            ; preds = %bb.a
  %i.ja = tail call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering19performStoreCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518448) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.ja, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.ja, 1
  br label %.critedge403

bb.bo:                                            ; preds = %bb.a, %bb.a
  %i.jb = tail call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering17performRcpCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.fca.0.extract32 = extractvalue { ptr, i32 } %i.jb, 0
  %.fca.1.extract33 = extractvalue { ptr, i32 } %i.jb, 1
  br label %.critedge403

bb.bp:                                            ; preds = %bb.a, %bb.a
  %i.jc = tail call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering25performAssertSZExtCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.jc, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.jc, 1
  br label %.critedge403

bb.bq:                                            ; preds = %bb.a
  %i.jd = tail call { ptr, i32 } @_ZNK4llvm20AMDGPUTargetLowering30performIntrinsicWOChainCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.jd, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.jd, 1
  br label %.critedge403

bb.br:                                            ; preds = %bb.a
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !107 ; 3 uses
  %.sroa.0452.0.copyload = load ptr, ptr %i.jf, align 8, !tbaa !200 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %.sroa.0450.0.copyload = load ptr, ptr %i.jg, align 8, !tbaa !200 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 80
  %.sroa.0449.0.copyload = load ptr, ptr %i.jh, align 8, !tbaa !200 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !85 ; 2 uses
  %.sroa.0.0.copyload.i438 = load i16, ptr %i.jj, align 8, !tbaa !64
  %.sroa.21.0..sroa_idx.i439 = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %.sroa.21.0.copyload.i440 = load ptr, ptr %.sroa.21.0..sroa_idx.i439, align 8, !tbaa !98
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0452.0.copyload, i64 24
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !106
  switch i32 %i.jl, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit444 [
    i32 38, label %bb.bs
    i32 13, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  br label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit444

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit444: ; preds = %bb.br, %bb.bs
  %.0.i.i.i443 = phi ptr [ %.sroa.0452.0.copyload, %bb.bs ], [ null, %bb.br ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0450.0.copyload, i64 24
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !106
  switch i32 %i.jn, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit446 [
    i32 38, label %bb.bt
    i32 13, label %bb.bt
  ]

bb.bt:                                            ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit444, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit444
  br label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit446

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit446: ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit444, %bb.bt
  %.0.i.i.i445 = phi ptr [ %.sroa.0450.0.copyload, %bb.bt ], [ null, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit444 ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0449.0.copyload, i64 24
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !106
  switch i32 %i.jp, label %.critedge397 [
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit448
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit448
  ]

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit448: ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit446, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit446
  %i.jq = icmp eq ptr %.0.i.i.i443, null
  %i.jr = icmp eq ptr %.0.i.i.i445, null
  %or.cond12.not377 = or i1 %i.jq, %i.jr
  br i1 %or.cond12.not377, label %.critedge397, label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit448
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i.i.i443, i64 88
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !712
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  call fastcc void @"_ZZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clERKNS_7APFloatE"(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %i.ju)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i.i.i445, i64 88
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !712
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  call fastcc void @"_ZZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clERKNS_7APFloatE"(ptr dead_on_unwind noalias writable align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %i.jx)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0449.0.copyload, i64 88
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !712
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  call fastcc void @"_ZZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clERKNS_7APFloatE"(ptr dead_on_unwind noalias writable align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %i.ka)
  %i.kb = call noundef i32 @_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27, i8 noundef signext 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call fastcc void @"_ZZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clERKNS_7APFloatE"(ptr dead_on_unwind noalias writable align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %26)
  %i.kc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %29) #25 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.kd = call noundef i32 @_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, i8 noundef signext 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call fastcc void @"_ZZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clERKNS_7APFloatE"(ptr dead_on_unwind noalias writable align 8 %30, ptr noundef nonnull align 8 dereferenceable(24) %26)
  %i.ke = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPERKNS_7APFloatERKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i438, ptr %.sroa.21.0.copyload.i440, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ke, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ke, 1
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %.critedge403

.critedge393:                                     ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %.split502, %_ZNK4llvm3EVT8isVectorEv.exit413
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge397

.critedge397:                                     ; preds = %.lr.ph.i.i, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit446, %bb.be, %bb.ar, %bb.aq, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit448, %_ZN4llvm5APIntD2Ev.exit437, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %.thread522, %.critedge393, %bb.ai, %bb.ab, %bb.a, %bb.y
  br label %.critedge403

.critedge403:                                     ; preds = %bb.bd, %bb.au, %bb.av, %bb.as, %bb.ba, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.bu, %.critedge399, %bb.ai, %.critedge391, %bb.y, %.critedge397, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.sroa.33.9 = phi i32 [ 0, %.critedge397 ], [ %.fca.1.extract250, %.critedge391 ], [ %.sroa.33.6, %bb.y ], [ %.fca.1.extract179, %bb.ad ], [ %.fca.1.extract175, %bb.ae ], [ %.fca.1.extract171, %bb.af ], [ %.fca.1.extract167, %bb.ag ], [ %.fca.1.extract163, %bb.ah ], [ %.fca.1.extract159, %bb.ai ], [ %.fca.1.extract155, %bb.aj ], [ %.fca.1.extract151, %bb.ak ], [ %.fca.1.extract147, %bb.al ], [ %.fca.1.extract143, %bb.am ], [ %.fca.1.extract139, %bb.an ], [ %.fca.1.extract135, %bb.ao ], [ %.fca.1.extract131, %bb.ap ], [ %.fca.1.extract116, %.critedge399 ], [ %.fca.1.extract, %bb.bu ], [ %.fca.1.extract41, %bb.bm ], [ %.fca.1.extract37, %bb.bn ], [ %.fca.1.extract33, %bb.bo ], [ %.fca.1.extract29, %bb.bp ], [ %.fca.1.extract25, %bb.bq ], [ %.fca.1.extract84, %bb.au ], [ %.fca.1.extract74, %bb.av ], [ %.sroa.13.0.copyload, %bb.as ], [ %.fca.1.extract52, %bb.bd ], [ %.fca.1.extract67, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ %.fca.1.extract63, %bb.ba ]
  %.sroa.0501.9 = phi ptr [ null, %.critedge397 ], [ %.fca.0.extract249, %.critedge391 ], [ %.sroa.0501.6, %bb.y ], [ %.fca.0.extract178, %bb.ad ], [ %.fca.0.extract174, %bb.ae ], [ %.fca.0.extract170, %bb.af ], [ %.fca.0.extract166, %bb.ag ], [ %.fca.0.extract162, %bb.ah ], [ %.fca.0.extract158, %bb.ai ], [ %.fca.0.extract154, %bb.aj ], [ %.fca.0.extract150, %bb.ak ], [ %.fca.0.extract146, %bb.al ], [ %.fca.0.extract142, %bb.am ], [ %.fca.0.extract138, %bb.an ], [ %.fca.0.extract134, %bb.ao ], [ %.fca.0.extract130, %bb.ap ], [ %.fca.0.extract115, %.critedge399 ], [ %.fca.0.extract, %bb.bu ], [ %.fca.0.extract40, %bb.bm ], [ %.fca.0.extract36, %bb.bn ], [ %.fca.0.extract32, %bb.bo ], [ %.fca.0.extract28, %bb.bp ], [ %.fca.0.extract24, %bb.bq ], [ %.fca.0.extract83, %bb.au ], [ %.fca.0.extract73, %bb.av ], [ %.sroa.0459.0.copyload, %bb.as ], [ %.fca.0.extract51, %bb.bd ], [ %.fca.0.extract66, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ %.fca.0.extract62, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0501.9, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.33.9, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL15constantFoldBFEIiEN4llvm7SDValueERNS0_12SelectionDAGET_jjRKNS0_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %1, i32 noundef range(i32 1, 32) %2, i32 noundef range(i32 1, 32) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) unnamed_addr #3 {
bb.a:
  %i.a = add nuw nsw i32 %3, %2                   ; 2 uses
  %i.b = icmp samesign ult i32 %i.a, 32
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i32 32, %i.a
  %i.d = shl i32 %1, %i.c
  %i.e = sub nuw nsw i32 32, %3
  %i.f = ashr i32 %i.d, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = ashr i32 %1, %2
  %i.j = sext i32 %i.i to i64
  %i.k = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.k, %bb.c ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL15constantFoldBFEIjEN4llvm7SDValueERNS0_12SelectionDAGET_jjRKNS0_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %1, i32 noundef range(i32 1, 32) %2, i32 noundef range(i32 1, 32) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) unnamed_addr #3 {
bb.a:
  %i.a = add nuw nsw i32 %3, %2                   ; 2 uses
  %i.b = icmp samesign ult i32 %i.a, 32
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i32 32, %i.a
  %i.d = shl i32 %1, %i.c
  %i.e = sub nuw nsw i32 32, %3
  %i.f = lshr i32 %i.d, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i32 %1, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink21 = phi i32 [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  %i.h = zext nneg i32 %.sink21 to i64
  %i.i = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25
  ret { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm5APInt10getBitsSetEjjj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !23
  %i.b = icmp ult i32 %1, 65
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef 0, i1 noundef zeroext false) #25
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.b, %bb.c
  %i.c = icmp eq i32 %2, %3
  br i1 %i.c, label %_ZN4llvm5APInt7setBitsEjj.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.d = icmp ult i32 %3, 65
  br i1 %i.d, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.neg.i = add i32 %2, 64
  %i.e = sub i32 %.neg.i, %3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 -1, %i.f
  %i.h = zext nneg i32 %2 to i64
  %i.i = shl i64 %i.g, %i.h                       ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !23
  %i.k = icmp ult i32 %i.j, 65
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %0, align 8, !tbaa !26
  %i.m = or i64 %i.l, %i.i
  store i64 %i.m, ptr %0, align 8, !tbaa !26
  br label %_ZN4llvm5APInt7setBitsEjj.exit

bb.g:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !508
  %i.p = or i64 %i.o, %i.i
  store i64 %i.p, ptr %i.n, align 8, !tbaa !508
  br label %_ZN4llvm5APInt7setBitsEjj.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %2, i32 noundef %3) #25
  br label %_ZN4llvm5APInt7setBitsEjj.exit

_ZN4llvm5APInt7setBitsEjj.exit:                   ; preds = %_ZN4llvm5APIntC2Ejmbb.exit, %bb.f, %bb.g, %bb.h
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering22ShrinkDemandedConstantENS_7SDValueERKNS_5APIntERNS0_17TargetLoweringOptE(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm14TargetLowering15DAGCombinerInfo23CommitTargetLoweringOptERKNS0_17TargetLoweringOptE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZNK4llvm20AMDGPUTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clERKNS_7APFloatE"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APFloat", align 8     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %_ZNK4llvm7APFloat10isDenormalEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  br i1 %i.b, label %bb.b, label %bb.h

_ZNK4llvm7APFloat10isDenormalEv.exit:             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.split, %_ZNK4llvm7APFloat10isDenormalEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = load ptr, ptr %1, align 8, !tbaa !26     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) %i.d, i64 noundef 0) #25
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) %i.d, i64 noundef 0) #25
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit:    ; preds = %bb.c, %bb.d
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  %.not.i.i4 = icmp eq ptr %i.e, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %.0.i.i = select i1 %.not.i.i4, ptr %i.g, ptr %1
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, 8
  %.not = icmp eq i8 %i.j, 0
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #25
  br i1 %.not, label %_ZNK4llvm7APFloatngEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit
  %i.k = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !851
  %.not.i.i5 = icmp eq ptr %i.k, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm6detail9IEEEFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  br label %_ZNK4llvm7APFloatngEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  br label %_ZNK4llvm7APFloatngEv.exit

_ZNK4llvm7APFloatngEv.exit:                       ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm.exit, %bb.g, %bb.f
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.i

bb.h:                                             ; preds = %.split, %_ZNK4llvm7APFloat10isDenormalEv.exit
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK4llvm7APFloatngEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
end_hunk_7
