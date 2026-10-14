Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeDAG?download=true
inline.NumInlined: 5337
inline.NumDeleted: 1400
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_120SelectionDAGLegalize13ExpandLibCallEN4llvm5RTLIB7LibcallEPNS1_6SDNodeEb:bb.a

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit ] ; 13 uses
  %.sroa.044.051 = phi ptr [ %i.b, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.w = load ptr, ptr %.sroa.044.051, align 8, !tbaa !149
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.044.051, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !164
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !155
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ac, align 8, !tbaa !157
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !159
  store i16 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.g, align 8
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !154, !nonnull !137, !align !138
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !191
  %i.ag = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.af) #18 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.044.051, align 8, !tbaa !179 ; 2 uses
  %.sroa.2.0.copyload = load i32, ptr %i.x, align 8, !tbaa !168 ; 2 uses
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !160, !nonnull !137, !align !138 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !134
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1136
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(518435) %i.ah, ptr noundef %i.ag, i1 noundef zeroext %4) #18
  %i.am = select i1 %i.al, i16 1, i16 2           ; 2 uses
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !355
  %.not.i = icmp eq ptr %i.u, %i.an
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %.sroa.2.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.ag, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.ag, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i16 %i.am, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 43
  store i8 0, ptr %.sroa.1335.0..sroa_idx, align 1
  %.sroa.1440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr null, ptr %.sroa.1440.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !491
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.ap = ptrtoint ptr %i.u to i64
  %i.aq = ptrtoint ptr %i.v to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.f, label %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #20
  unreachable

_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.at = sdiv exact i64 %i.ar, 56                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 164703072086692425)
  %i.ax = select i1 %i.av, i64 164703072086692425, i64 %i.aw ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i16)
  %i.ay = mul nuw nsw i64 %i.ax, 56
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #22 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar ; 8 uses
  store ptr null, ptr %i.ba, align 8
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx19, align 8
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 %.sroa.2.0.copyload, ptr %.sroa.6.0..sroa_idx21, align 8
  %.sroa.725.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.ag, ptr %.sroa.725.0..sroa_idx26, align 8
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.ag, ptr %.sroa.8.0..sroa_idx28, align 8
  %.sroa.9.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i16 %i.am, ptr %.sroa.9.0..sroa_idx30, align 8
  %.sroa.1335.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.ba, i64 43
  store i8 0, ptr %.sroa.1335.0..sroa_idx36, align 1
  %.sroa.1440.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store ptr null, ptr %.sroa.1440.0..sroa_idx41, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i, i64 56, i1 false), !alias.scope !813
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 56 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ar) #21
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bd, ptr %i.j, align 8, !tbaa !491
  %i.be = getelementptr inbounds nuw [56 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.be, ptr %i.k, align 8, !tbaa !355
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bf = phi ptr [ %i.ao, %bb.d ], [ %i.bd, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.bg = phi ptr [ %i.v, %bb.d ], [ %i.az, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.044.051, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.f
  br i1 %.not, label %._crit_edge, label %bb.c
}

declare noundef zeroext i16 @_ZN4llvm5RTLIB10getFPROUNDENS_3EVTES1_(i16, ptr, i16, ptr) local_unnamed_addr #1

declare noundef zeroext i16 @_ZN4llvm5RTLIB11getSINTTOFPENS_3EVTES1_(i16, ptr, i16, ptr) local_unnamed_addr #1

declare noundef zeroext i16 @_ZN4llvm5RTLIB11getUINTTOFPENS_3EVTES1_(i16, ptr, i16, ptr) local_unnamed_addr #1

declare noundef zeroext i16 @_ZN4llvm5RTLIB11getFPTOSINTENS_3EVTES1_(i16, ptr, i16, ptr) local_unnamed_addr #1

declare noundef zeroext i16 @_ZN4llvm5RTLIB11getFPTOUINTENS_3EVTES1_(i16, ptr, i16, ptr) local_unnamed_addr #1

declare noundef zeroext i16 @_ZN4llvm5RTLIB8getFPEXTENS_3EVTES1_(i16, ptr, i16, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZN12_GLOBAL__N_120SelectionDAGLegalize16ExpandIntLibCallEPN4llvm6SDNodeEbNS1_5RTLIB7LibcallES5_S5_S5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, i1 noundef zeroext %2, i16 noundef zeroext range(i16 909, 1601) %3, i16 noundef zeroext range(i16 910, 1602) %4, i16 noundef zeroext range(i16 911, 1603) %5, i16 noundef zeroext range(i16 912, 1604) %6, i16 noundef zeroext range(i16 913, 1605) %7) unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.std::pair.284", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.b, align 8, !tbaa !157
  switch i16 %.sroa.0.0.copyload.i.i, label %bb.b [
    i16 5, label %bb.g
    i16 6, label %bb.c
    i16 7, label %bb.d
    i16 8, label %bb.e
    i16 9, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i16 [ %7, %bb.f ], [ %4, %bb.c ], [ %5, %bb.d ], [ %6, %bb.e ], [ %3, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call fastcc void @_ZN12_GLOBAL__N_120SelectionDAGLegalize13ExpandLibCallEN4llvm5RTLIB7LibcallEPNS1_6SDNodeEb(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %.0, ptr noundef nonnull %1, i1 noundef zeroext %2)
  %.sroa.09.0.copyload = load ptr, ptr %8, align 8, !tbaa !179
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.09.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120SelectionDAGLegalize19ExpandDivRemLibCallEPN4llvm6SDNodeERNS1_15SmallVectorImplINS1_7SDValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %9 = alloca %"struct.llvm::TargetLowering::CallLoweringInfo", align 8 ; 39 uses
  %10 = alloca %"struct.std::pair.284", align 8   ; 7 uses
  %11 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !153
  %i.c = icmp eq i32 %i.b, 68                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.e, align 8, !tbaa !157 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i, label %bb.b [
    i16 5, label %bb.c
    i16 6, label %bb.d
    i16 7, label %bb.e
    i16 8, label %bb.f
    i16 9, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = select i1 %i.c, i64 1233, i64 1553
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = select i1 %i.c, i64 1234, i64 1554
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.h = select i1 %i.c, i64 1235, i64 1555
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.i = select i1 %i.c, i64 1236, i64 1556
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.j = select i1 %i.c, i64 1237, i64 1557
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !154, !nonnull !137, !align !138 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !159
  store i16 %.sroa.0.0.copyload.i.i, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !191
  %i.q = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.p) #18 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !163  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i16, ptr %i.t, align 8, !tbaa !200  ; 2 uses
  %i.v = zext i16 %i.u to i64
  %.idx = mul nuw nsw i64 %i.v, 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not220 = icmp eq i16 %i.u, 0
  br i1 %.not220, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.h
  %.pre232 = select i1 %i.c, i16 1, i16 2
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = select i1 %i.c, i16 1, i16 2             ; 3 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118, %.._crit_edge_crit_edge
  %.pre-phi = phi i16 [ %.pre232, %.._crit_edge_crit_edge ], [ %i.y, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118 ] ; 3 uses
  %.sroa.19.0.lcssa = phi ptr [ null, %.._crit_edge_crit_edge ], [ %.sroa.19.3, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118 ] ; 5 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %.._crit_edge_crit_edge ], [ %.sroa.10.2, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118 ] ; 10 uses
  %.sroa.0200.0.lcssa = phi ptr [ null, %.._crit_edge_crit_edge ], [ %.sroa.0200.3, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118 ] ; 6 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !154, !nonnull !137, !align !138
  %.sroa.053.0.copyload = load i16, ptr %4, align 8, !tbaa !157
  %.sroa.255.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !159
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG20CreateStackTemporaryENS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920) %i.z, i16 %.sroa.053.0.copyload, ptr %.sroa.255.0.copyload, i32 noundef 1) #18 ; 2 uses
  %.fca.0.extract49 = extractvalue { ptr, i32 } %i.aa, 0 ; 4 uses
  %.fca.1.extract50 = extractvalue { ptr, i32 } %i.aa, 1 ; 3 uses
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !824, !nonnull !137, !align !138
  %i.ac = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef 0) #18 ; 4 uses
  %.not.i = icmp eq ptr %.sroa.10.0.lcssa, %.sroa.19.0.lcssa
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr null, ptr %.sroa.10.0.lcssa, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa, i64 8
  store ptr %.fca.0.extract49, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa, i64 16
  store i32 %.fca.1.extract50, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa, i64 24
  store ptr %i.ac, ptr %.sroa.7141.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa, i64 32
  store ptr %i.ac, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa, i64 40
  store i16 %.pre-phi, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa, i64 43
  store i8 0, ptr %.sroa.13151.0..sroa_idx, align 1
  %.sroa.14156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa, i64 48
  store ptr null, ptr %.sroa.14156.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ad = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.ae = ptrtoint ptr %.sroa.0200.0.lcssa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.k, label %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #20
  unreachable

_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ah = sdiv exact i64 %i.af, 56                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 164703072086692425)
  %i.al = select i1 %i.aj, i64 164703072086692425, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = mul nuw nsw i64 %i.al, 56
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #22 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 8 uses
  store ptr null, ptr %i.ao, align 8
  %.sroa.5.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.fca.0.extract49, ptr %.sroa.5.0..sroa_idx135, align 8
  %.sroa.6.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %.fca.1.extract50, ptr %.sroa.6.0..sroa_idx137, align 8
  %.sroa.7141.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.ac, ptr %.sroa.7141.0..sroa_idx142, align 8
  %.sroa.8.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.ac, ptr %.sroa.8.0..sroa_idx144, align 8
  %.sroa.9.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i16 %.pre-phi, ptr %.sroa.9.0..sroa_idx146, align 8
  %.sroa.13151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.ao, i64 43
  store i8 0, ptr %.sroa.13151.0..sroa_idx152, align 1
  %.sroa.14156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr null, ptr %.sroa.14156.0..sroa_idx157, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0200.0.lcssa, %.sroa.19.0.lcssa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.an, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.sroa.0200.0.lcssa, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i, i64 56, i1 false), !alias.scope !825
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %.sroa.19.0.lcssa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0200.0.lcssa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0.lcssa, i64 noundef %i.af) #21
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.i, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.sroa.19.2 = phi ptr [ %i.ar, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.19.0.lcssa, %bb.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.10.0.lcssa, %bb.i ]
  %.sroa.0200.2 = phi ptr [ %i.an, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0200.0.lcssa, %bb.i ] ; 5 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !154, !nonnull !137, !align !138 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !307
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %.0
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !309 ; 3 uses
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %_ZN4llvm14TargetLowering16CallLoweringInfo12setLibCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EE.exit

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118
  %.sroa.0200.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.0200.3, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118 ] ; 6 uses
  %.sroa.10.0223 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.2, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118 ] ; 13 uses
  %.sroa.19.0222 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.3, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118 ] ; 2 uses
  %.sroa.0196.0221 = phi ptr [ %i.s, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.az = load ptr, ptr %.sroa.0196.0221, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0196.0221, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !164
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !155
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %.sroa.0.0.copyload.i.i101 = load i16, ptr %i.bf, align 8, !tbaa !157
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !159
  store i16 %.sroa.0.0.copyload.i.i101, ptr %5, align 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.x, align 8
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !154, !nonnull !137, !align !138
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !191
  %i.bj = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #18 ; 4 uses
  %.sroa.056.0.copyload = load ptr, ptr %.sroa.0196.0221, align 8, !tbaa !179 ; 2 uses
  %.sroa.257.0.copyload = load i32, ptr %i.ba, align 8, !tbaa !168 ; 2 uses
  %.not.i105 = icmp eq ptr %.sroa.10.0223, %.sroa.19.0222
  br i1 %.not.i105, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %.sroa.10.0223, align 8
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 8
  store ptr %.sroa.056.0.copyload, ptr %.sroa.5164.0..sroa_idx, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 16
  store i32 %.sroa.257.0.copyload, ptr %.sroa.6167.0..sroa_idx, align 8
  %.sroa.7173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 24
  store ptr %i.bj, ptr %.sroa.7173.0..sroa_idx, align 8
  %.sroa.8176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 32
  store ptr %i.bj, ptr %.sroa.8176.0..sroa_idx, align 8
  %.sroa.9179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 40
  store i16 %i.y, ptr %.sroa.9179.0..sroa_idx, align 8
  %.sroa.13186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 43
  store i8 0, ptr %.sroa.13186.0..sroa_idx, align 1
  %.sroa.14192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 48
  store ptr null, ptr %.sroa.14192.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118

bb.o:                                             ; preds = %bb.m
  %i.bk = ptrtoint ptr %.sroa.10.0223 to i64
  %i.bl = ptrtoint ptr %.sroa.0200.0224 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.p, label %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i106

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #20
  unreachable

_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i106: ; preds = %bb.o
  %i.bo = sdiv exact i64 %i.bm, 56                ; 3 uses
  %.sroa.speculated.i.i.i107 = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i107, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 164703072086692425)
  %i.bs = select i1 %i.bq, i64 164703072086692425, i64 %i.br ; 3 uses
  %.not.i.i.i108 = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i108)
  %i.bt = mul nuw nsw i64 %i.bs, 56
  %i.bu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #22 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm ; 8 uses
  store ptr null, ptr %i.bv, align 8
  %.sroa.5164.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %.sroa.056.0.copyload, ptr %.sroa.5164.0..sroa_idx165, align 8
  %.sroa.6167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i32 %.sroa.257.0.copyload, ptr %.sroa.6167.0..sroa_idx168, align 8
  %.sroa.7173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.bj, ptr %.sroa.7173.0..sroa_idx174, align 8
  %.sroa.8176.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.bj, ptr %.sroa.8176.0..sroa_idx177, align 8
  %.sroa.9179.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i16 %i.y, ptr %.sroa.9179.0..sroa_idx180, align 8
  %.sroa.13186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.bv, i64 43
  store i8 0, ptr %.sroa.13186.0..sroa_idx187, align 1
  %.sroa.14192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr null, ptr %.sroa.14192.0..sroa_idx193, align 8
  %.not10.i.i.i.i.i109 = icmp eq ptr %.sroa.0200.0224, %.sroa.10.0223
  br i1 %.not10.i.i.i.i.i109, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i114, label %.lr.ph.i.i.i.i.i110

.lr.ph.i.i.i.i.i110:                              ; preds = %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i106, %.lr.ph.i.i.i.i.i110
  %.012.i.i.i.i.i111 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i110 ], [ %i.bu, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i106 ] ; 2 uses
  %.0911.i.i.i.i.i112 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i110 ], [ %.sroa.0200.0224, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i106 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i111, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i112, i64 56, i1 false), !alias.scope !826
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i112, i64 56 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i111, i64 56 ; 2 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.bw, %.sroa.10.0223
  br i1 %.not.i.i.i.i.i113, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i114, label %.lr.ph.i.i.i.i.i110, !llvm.loop !11

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i114: ; preds = %.lr.ph.i.i.i.i.i110, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i106
  %.0.lcssa.i.i.i.i.i115 = phi ptr [ %i.bu, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i106 ], [ %i.bx, %.lr.ph.i.i.i.i.i110 ]
  %.not.i23.i.i116 = icmp eq ptr %.sroa.0200.0224, null
  br i1 %.not.i23.i.i116, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i117, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i114
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0224, i64 noundef %i.bm) #21
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i117

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i117: ; preds = %bb.q, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i114
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %i.bs
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit118: ; preds = %bb.n, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i117
  %.sroa.19.3 = phi ptr [ %i.by, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i117 ], [ %.sroa.19.0222, %bb.n ] ; 2 uses
  %.0.lcssa.i.i.i.i.i115.pn = phi ptr [ %.0.lcssa.i.i.i.i.i115, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i117 ], [ %.sroa.10.0223, %bb.n ]
  %.sroa.0200.3 = phi ptr [ %i.bu, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i117 ], [ %.sroa.0200.0224, %bb.n ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i115.pn, i64 56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0196.0221, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.w
  br i1 %.not, label %._crit_edge, label %bb.m

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZNK4llvm6SDNode16getOperationNameB5cxx11EPKNS_12SelectionDAGE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.as) #18
  store ptr @.str.11, ptr %6, align 8, !alias.scope !827
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.cc, align 8, !alias.scope !827
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.cd, align 8, !tbaa !206, !alias.scope !827
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 4, ptr %i.ce, align 1, !tbaa !207, !alias.scope !827
  call void @_ZN4llvm11LLVMContext9emitErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(34) %6) #18
  %i.cf = load ptr, ptr %7, align 8, !tbaa !358   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !135
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !154, !nonnull !137, !align !138
  %.sroa.037.0.copyload = load i16, ptr %4, align 8, !tbaa !157
  %.sroa.239.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.cl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ck, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.037.0.copyload, ptr %.sroa.239.0.copyload) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.fca.0.extract33 = extractvalue { ptr, i32 } %i.cl, 0 ; 4 uses
  %.fca.1.extract34 = extractvalue { ptr, i32 } %i.cl, 1 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !181 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !182
  %.not.i119 = icmp ult i32 %i.cn, %i.cp
  br i1 %.not.i119, label %bb.s, label %bb.r, !prof !183

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract33, i32 %.fca.1.extract34)
  %.pre231 = load i32, ptr %i.cm, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = zext i32 %i.cn to i64
  %i.cr = load ptr, ptr %2, align 8, !tbaa !180
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  store ptr %.fca.0.extract33, ptr %i.cs, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.fca.1.extract34, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !181
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  store i32 %i.cu, ptr %i.cm, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.r, %bb.s
  %i.cv = phi i32 [ %.pre231, %bb.r ], [ %i.cu, %bb.s ] ; 2 uses
  %i.cw = load i32, ptr %i.co, align 4, !tbaa !182
  %.not.i120 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i120, label %bb.u, label %bb.t, !prof !183

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract33, i32 %.fca.1.extract34)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %2, align 8, !tbaa !180
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  store ptr %.fca.0.extract33, ptr %i.cz, align 1
  %.sroa.32.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %.fca.1.extract34, ptr %.sroa.32.0..sroa_idx.i121, align 1
  %i.da = load i32, ptr %i.cm, align 8, !tbaa !181
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cm, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122

_ZN4llvm14TargetLowering16CallLoweringInfo12setLibCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EE.exit: ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE9push_backERKS2_.exit
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !160, !nonnull !137, !align !138 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !185
  %i.dg = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.df) #18
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !134
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call i16 %i.dj(ptr noundef nonnull align 8 dereferenceable(518435) %i.dd, ptr noundef nonnull align 8 dereferenceable(912) %i.dg, i32 noundef 0) #18
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getExternalSymbolENS_5RTLIB11LibcallImplENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.as, i16 noundef zeroext %i.ax, i16 %i.dk, ptr null) #18 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.dl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !169
  store i64 %i.dn, ptr %8, align 8, !tbaa !169
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !170
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.dr = load ptr, ptr %i.k, align 8, !tbaa !154, !nonnull !137, !align !138 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  %i.dv = load i16, ptr %i.du, align 8
  %i.dw = and i16 %i.dv, -1024
  %i.dx = or disjoint i16 %i.dw, 32
  store i16 %i.dx, ptr %i.du, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 34
  store i8 0, ptr %i.dy, align 2, !tbaa !346
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 35
  store i8 0, ptr %i.dz, align 1, !tbaa !347
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  store i32 -1, ptr %i.ea, align 4, !tbaa !348
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i32 0, ptr %i.eb, align 8, !tbaa !349
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store i32 0, ptr %i.ed, align 8, !tbaa !164
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.dr, ptr %i.ef, align 8, !tbaa !132
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr null, ptr %i.eh, align 8, !tbaa !350
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !180
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i32 0, ptr %i.ek, align 8, !tbaa !181
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i32 32, ptr %i.el, align 4, !tbaa !182
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 1928 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 1944 ; 2 uses
  store ptr %i.en, ptr %i.em, align 8, !tbaa !180
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 1936
  store i32 0, ptr %i.eo, align 8, !tbaa !181
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 1940
  store i32 32, ptr %i.ep, align 4, !tbaa !182
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 2456 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 2472 ; 2 uses
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !180
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 2464
  store i32 0, ptr %i.es, align 8, !tbaa !181
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 2468
  store i32 32, ptr %i.et, align 4, !tbaa !182
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 4520 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 4536 ; 2 uses
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !180
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 4528
  store i32 0, ptr %i.ew, align 8, !tbaa !181
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 4532
  store i32 4, ptr %i.ex, align 4, !tbaa !182
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 4600
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 4624
  store ptr null, ptr %i.ez, align 8, !tbaa !351
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 4656
  store i8 0, ptr %i.fa, align 8, !tbaa !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ey, i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.eg, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !353
  store ptr %i.m, ptr %9, align 8, !tbaa !179
  store i32 0, ptr %i.ds, align 8, !tbaa !168
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !307
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !493, !nonnull !137, !align !138
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 376
  %i.ff = zext i16 %i.ax to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !168 ; 2 uses
  store ptr %i.q, ptr %i.dt, align 8, !tbaa !488
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.q, ptr %i.fi, align 8, !tbaa !489
  store ptr %.fca.0.extract19, ptr %i.ec, align 8, !tbaa !179
  store i32 %.fca.1.extract20, ptr %i.ed, align 8, !tbaa !168
  store i32 %i.fh, ptr %i.eb, align 8, !tbaa !349
  %i.fj = ptrtoint ptr %.sroa.10.1 to i64
  %i.fk = ptrtoint ptr %.sroa.0200.2 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 56
  %i.fn = trunc i64 %i.fm to i32
  store i32 %i.fn, ptr %i.ea, align 4, !tbaa !348
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  store ptr %.sroa.0200.2, ptr %i.ee, align 8, !tbaa !354
  store ptr %.sroa.10.1, ptr %i.fo, align 8, !tbaa !491
  store ptr %.sroa.19.2, ptr %i.fp, align 8, !tbaa !355
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !140 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !185
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !134
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2336
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(518435) %i.fr, ptr noundef nonnull %i.ft, i32 noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %i.ee) #18, !inline_history !10
  %i.fx = load i16, ptr %i.du, align 8
  %i.fy = and i16 %i.fx, -4
  %i.fz = or disjoint i16 %.pre-phi, %i.fy
  store i16 %i.fz, ptr %i.du, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ga = load ptr, ptr %i.dc, align 8, !tbaa !160, !nonnull !137, !align !138
  call void @_ZNK4llvm14TargetLowering11LowerCallToERNS0_16CallLoweringInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.284") align 8 %10, ptr noundef nonnull align 8 dereferenceable(518435) %i.ga, ptr noundef nonnull align 8 dereferenceable(4664) %9) #18
  %i.gb = getelementptr inbounds nuw i8, ptr %.fca.0.extract49, i64 88
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !375
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.gd = load ptr, ptr %i.k, align 8, !tbaa !154, !nonnull !137, !align !138
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !185
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1065) %i.gf, i32 noundef %i.gc, i64 noundef 0) #18
  %i.gg = load ptr, ptr %i.k, align 8, !tbaa !154, !nonnull !137, !align !138
  %.sroa.09.0.copyload = load i16, ptr %4, align 8, !tbaa !157
  %.sroa.211.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !159
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.06.0.copyload = load ptr, ptr %i.gh, align 8, !tbaa !179
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !168
  store ptr %.fca.0.extract49, ptr %12, align 8, !tbaa !179
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract50, ptr %.sroa.5160.0..sroa_idx, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %i.gi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.gg, i16 %.sroa.09.0.copyload, ptr %.sroa.211.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %.sroa.06.0.copyload, i32 %.sroa.27.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %11, i16 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef null) #18 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.gi, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.gi, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %.sroa.01.0.copyload = load ptr, ptr %10, align 8, !tbaa !179 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !168 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !181 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !182
  %.not.i124 = icmp ult i32 %i.gk, %i.gm
  br i1 %.not.i124, label %bb.w, label %bb.v, !prof !183

bb.v:                                             ; preds = %_ZN4llvm14TargetLowering16CallLoweringInfo12setLibCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload)
  %.pre = load i32, ptr %i.gj, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit126

bb.w:                                             ; preds = %_ZN4llvm14TargetLowering16CallLoweringInfo12setLibCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EE.exit
  %i.gn = zext i32 %i.gk to i64
  %i.go = load ptr, ptr %2, align 8, !tbaa !180
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gn ; 2 uses
  store ptr %.sroa.01.0.copyload, ptr %i.gp, align 1
  %.sroa.32.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i32 %.sroa.22.0.copyload, ptr %.sroa.32.0..sroa_idx.i125, align 1
  %i.gq = load i32, ptr %i.gj, align 8, !tbaa !181
  %i.gr = add i32 %i.gq, 1                        ; 2 uses
  store i32 %i.gr, ptr %i.gj, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit126

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit126: ; preds = %bb.v, %bb.w
  %i.gs = phi i32 [ %.pre, %bb.v ], [ %i.gr, %bb.w ] ; 2 uses
  %i.gt = load i32, ptr %i.gl, align 4, !tbaa !182
  %.not.i127 = icmp ult i32 %i.gs, %i.gt
  br i1 %.not.i127, label %bb.y, label %bb.x, !prof !183

bb.x:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit126
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.fca.0.extract, i32 %.fca.1.extract)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit129

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit126
  %i.gu = zext i32 %i.gs to i64
  %i.gv = load ptr, ptr %2, align 8, !tbaa !180
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gu ; 2 uses
  store ptr %.fca.0.extract, ptr %i.gw, align 1
  %.sroa.32.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.32.0..sroa_idx.i128, align 1
  %i.gx = load i32, ptr %i.gj, align 8, !tbaa !181
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gj, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit129

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit129: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.gz = load ptr, ptr %i.eu, align 8, !tbaa !180 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ev
  br i1 %i.ha, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit129
  call void @free(ptr noundef %i.gz) #18
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i: ; preds = %bb.z, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit129
  %i.hb = load ptr, ptr %i.eq, align 8, !tbaa !180 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.er
  br i1 %i.hc, label %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.hb) #18
  br label %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i: ; preds = %bb.aa, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i
  %i.hd = load ptr, ptr %i.em, align 8, !tbaa !180 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.en
  br i1 %i.he, label %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.hd) #18
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i: ; preds = %bb.ab, %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i
  %i.hf = load ptr, ptr %i.ei, align 8, !tbaa !180 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.ej
  br i1 %i.hg, label %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.hf) #18
  br label %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i: ; preds = %bb.ac, %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i
  %i.hh = load ptr, ptr %i.ee, align 8, !tbaa !354 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i
  %i.hi = load ptr, ptr %i.fp, align 8, !tbaa !355
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hl) #21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122.thread

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122.thread: ; preds = %bb.ad, %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122: ; preds = %bb.u, %bb.t
  %.not.i.i.i130 = icmp eq ptr %.sroa.0200.2, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122
  %i.hm = ptrtoint ptr %.sroa.19.2 to i64
  %i.hn = ptrtoint ptr %.sroa.0200.2 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.2, i64 noundef %i.ho) #21
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122.thread, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZN12_GLOBAL__N_120SelectionDAGLegalize24ExpandBitCountingLibCallEPN4llvm6SDNodeENS1_5RTLIB7LibcallES5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, i16 noundef zeroext range(i16 278, 282) %2, i16 noundef zeroext range(i16 279, 283) %3, i16 noundef zeroext range(i16 280, 284) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.std::pair.284", align 8    ; 5 uses
  %7 = alloca %"class.std::vector.374", align 8   ; 7 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.b, align 8, !tbaa !157
  switch i16 %.sroa.0.0.copyload.i.i, label %bb.b [
    i16 7, label %bb.e
    i16 8, label %bb.c
    i16 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i16 [ %4, %bb.d ], [ %3, %bb.c ], [ %2, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %.sroa.041.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !179 ; 2 uses
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.542.0.copyload = load i32, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154, !nonnull !137, !align !138 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !359
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  %i.m = load i32, ptr %i.l, align 4, !tbaa !373  ; 3 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.m)
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.split.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

.split.i.i:                                       ; preds = %bb.e
  %i.p = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.m, i1 true) ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 10
  br i1 %i.q, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i:              ; preds = %.split.i.i
end_hunk_0
