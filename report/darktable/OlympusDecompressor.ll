Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/OlympusDecompressor?download=true
inline.NumInlined: 353
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8rawspeed19OlympusDecompressor10decompressERKNS_10ByteStreamE:bb.a
  %.sroa.0.i.i.i.i = alloca i32, align 4          ; 10 uses
  %2 = alloca %"class.rawspeed::(anonymous namespace)::OlympusDecompressorImpl", align 8 ; 11 uses
  %3 = alloca %"class.rawspeed::RawImage", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !108
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !108
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !16
  %.pre20 = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ %.pre20, %bb.d ]
  %i.k = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %.pre, %bb.d ]
  store ptr %i.k, ptr %2, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !11
  store ptr %i.j, ptr %i.l, align 8, !tbaa !11
  store ptr null, ptr %3, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.p = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #21
          to label %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i unwind label %.loopexit.split-lp.i.i ; 5 uses

_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i: ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  store ptr %i.p, ptr %i.m, align 8, !tbaa !110
  store ptr %i.p, ptr %i.o, align 8, !tbaa !112
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4096 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !113
  br label %bb.e

thread-pre-split.i.i:                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i
  %.val.val.i.pr.i.i = load ptr, ptr %i.m, align 8, !tbaa !110
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !113
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i.i, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i
  %i.r = phi ptr [ %.pre.i, %thread-pre-split.i.i ], [ %i.q, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i ] ; 4 uses
  %.val.val.i.i.i = phi ptr [ %.val.val.i.pr.i.i, %thread-pre-split.i.i ], [ %i.p, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i ] ; 6 uses
  %.val.val3.i.i.i = phi ptr [ %i.am, %thread-pre-split.i.i ], [ %i.p, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i ] ; 3 uses
  %.06.i.i.i = phi i32 [ %i.an, %thread-pre-split.i.i ], [ 4096, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i ]
  %i.s = ptrtoint ptr %.val.val3.i.i.i to i64
  %i.t = ptrtoint ptr %.val.val.i.i.i to i64      ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 8 uses
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 false)
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = add nsw i8 %i.w, -52                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.val3.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.x, ptr %.val.val3.i.i.i, align 1, !tbaa !107
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.o, align 8, !tbaa !112
  br label %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %i.u, 9223372036854775807
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.i.i

.noexc4.i.i:                                      ; preds = %bb.h
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.ab = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.u ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.u
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 9223372036854775807)
  %i.ae = select i1 %i.ac, i64 9223372036854775807, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc5.i.i unwind label %.loopexit.i.i ; 4 uses

.noexc5.i.i:                                      ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.u ; 2 uses
  store i8 %i.x, ptr %i.ag, align 1, !tbaa !107
  %i.ah = icmp sgt i64 %i.u, 0
  br i1 %i.ah, label %bb.i, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.noexc5.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %.val.val.i.i.i, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.i, %.noexc5.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %.val.val.i.i.i, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  %i.aj = ptrtoint ptr %i.r to i64
  %i.ak = sub i64 %i.aj, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.val.i.i.i, i64 noundef %i.ak) #22
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.af, ptr %i.m, align 8, !tbaa !110
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !112
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store ptr %i.al, ptr %i.n, align 8, !tbaa !113
  br label %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i: ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.f
  %i.am = phi ptr [ %i.z, %bb.f ], [ %i.ai, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i ]
  %i.an = add nsw i32 %.06.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit, label %thread-pre-split.i.i, !llvm.loop !114

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i.i:                           ; preds = %bb.h, %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.ao = phi ptr [ %i.r, %bb.h ], [ null, %_ZN8rawspeed8RawImageC2ERKS0_.exit ]
  %i.ap = phi ptr [ %.val.val.i.i.i, %bb.h ], [ null, %_ZN8rawspeed8RawImageC2ERKS0_.exit ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %i.aq = phi ptr [ %i.r, %.loopexit.i.i ], [ %i.ao, %.loopexit.split-lp.i.i ]
  %i.ar = phi ptr [ %.val.val.i.i.i, %.loopexit.i.i ], [ %i.ap, %.loopexit.split-lp.i.i ] ; 3 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %.not.i.i.i.i.i6 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i6, label %.body.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.au) #22
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.k
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(40) %2) #19
  br label %.body

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i
  %.sroa.015.0.copyload = load ptr, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.416.0.copyload = load i32, ptr %.sroa.416.0..sroa_idx, align 8 ; 3 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !16    ; 6 uses
  %.val5 = load ptr, ptr %i.m, align 8            ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !116 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp uge i32 %.sroa.2.0.copyload, %.sroa.416.0.copyload
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = sub i32 %.sroa.2.0.copyload, %.sroa.416.0.copyload ; 15 uses
  %i.bb = zext i32 %.sroa.416.0.copyload to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %i.bb ; 8 uses
  %i.bd = icmp sgt i32 %i.ba, -1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp samesign ult i32 %i.ba, 4
  br i1 %i.be, label %.invoke, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i: ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 592
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !19, !noalias !117
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 608
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !120, !noalias !117
  %i.bk = mul nsw i32 %i.bj, %i.bh                ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 612
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !121, !noalias !117
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !122, !noalias !117
  %i.bp = ashr i32 %i.bo, 1                       ; 3 uses
  %i.bq = icmp sge i32 %i.bp, %i.bk
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = icmp sgt i32 %i.bk, 0
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = and i32 %i.bk, 1
  %i.bt = icmp eq i32 %i.bs, 0
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = lshr exact i32 %i.bk, 1
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !123, !noalias !124 ; 2 uses
  %i.bw = add nuw nsw i32 %i.ba, 8                ; 4 uses
  %i.bx = zext nneg i32 %i.bk to i64              ; 4 uses
  %.not238.i.i = icmp eq i32 %i.bk, 2
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = zext i32 %i.bp to i64
  %i.ca = zext nneg i32 %i.bm to i64              ; 2 uses
  %4 = sext i32 %i.bp to i64
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i
  %indvars.iv.i = phi i64 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %indvars.iv.next.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 5 uses
  %.sroa.4011.016.i = phi i32 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.4011.6.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 5 uses
  %.sroa.02.015.i = phi i64 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.02.2.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 2 uses
  %.sroa.19.014.i = phi i32 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.19.1.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 5 uses
  %i.cb = icmp samesign ult i64 %indvars.iv.i, 2  ; 4 uses
  %i.cc = add nsw i64 %indvars.iv.i, -2           ; 2 uses
  %i.cd = icmp samesign ult i64 %i.cc, %i.ca      ; 4 uses
  %i.ce = mul nuw nsw i64 %i.cc, %4
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ce ; 6 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.i, %i.ca
  %i.ch = mul nuw nsw i64 %indvars.iv.i, %i.bz
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ch ; 7 uses
  %i.cj = icmp samesign ult i32 %.sroa.19.014.i, 65
  tail call void @llvm.assume(i1 %i.cj)
  %.not.i30.i.i = icmp samesign ult i32 %.sroa.19.014.i, 32
  br i1 %.not.i30.i.i, label %bb.n, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ck = add nuw nsw i32 %.sroa.4011.016.i, 4    ; 2 uses
  %.not.i.i.i.i7 = icmp samesign ugt i32 %i.ck, %i.ba
  br i1 %.not.i.i.i.i7, label %bb.p, label %bb.o, !prof !109

bb.o:                                             ; preds = %bb.n
  %i.cl = zext nneg i32 %.sroa.4011.016.i to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cl
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cn = icmp samesign ugt i32 %.sroa.4011.016.i, %i.bw
  br i1 %i.cn, label %.invoke, label %bb.q, !prof !109

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %.sroa.4011.016.i) ; 3 uses
  %i.co = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.co)
  %i.cp = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.cq = icmp samesign ult i32 %i.cp, 5
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cr
  %i.ct = zext nneg i32 %i.cp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.cs, i64 %i.ct, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i: ; preds = %bb.q, %bb.o
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.q ], [ %i.cm, %bb.o ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i)
  %i.cv = zext i32 %i.cu to i64
  %i.cw = or disjoint i32 %.sroa.19.014.i, 32
  %i.cx = sub nuw nsw i32 32, %.sroa.19.014.i
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw i64 %i.cv, %i.cy
  %i.da = or i64 %i.cz, %.sroa.02.015.i
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i, %bb.m
  %.sroa.4011.1.i = phi i32 [ %i.ck, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.4011.016.i, %bb.m ] ; 5 uses
  %i.db = phi i64 [ %i.da, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.02.015.i, %bb.m ] ; 3 uses
  %i.dc = phi i32 [ %i.cw, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.19.014.i, %bb.m ] ; 3 uses
  %i.dd = lshr i64 %i.db, 49                      ; 2 uses
  %i.de = trunc nuw nsw i64 %i.dd to i32          ; 2 uses
  %i.df = lshr i32 %i.de, 14
  %i.dg = sub nsw i32 0, %i.df
  %i.dh = and i64 %i.dd, 4095
  %i.di = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !107 ; 3 uses
  %.not.i13.i.i = icmp eq i8 %i.dj, 12
  br i1 %.not.i13.i.i, label %bb.s, label %bb.r, !prof !109

bb.r:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.dk = sext i8 %i.dj to i32                    ; 2 uses
  %i.dl = add nsw i32 %i.dk, 4                    ; 3 uses
  %i.dm = icmp slt i8 %i.dj, 29
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp samesign ule i32 %i.dl, %i.dc
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = sub nsw i32 %i.dc, %i.dl
  %i.dp = zext nneg i32 %i.dl to i64
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i

bb.s:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.dq = lshr i64 %i.db, 38
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 2047
  %i.dt = add nsw i32 %i.dc, -27
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i: ; preds = %bb.s, %bb.r
  %.sink.i.i = phi i32 [ %i.dt, %bb.s ], [ %i.do, %bb.r ] ; 5 uses
  %.pn.i.i = phi i64 [ 27, %bb.s ], [ %i.dp, %bb.r ]
  %.0.i14.i.i = phi i32 [ %i.ds, %bb.s ], [ %i.dk, %bb.r ]
  %storemerge.i.i = shl i64 %i.db, %.pn.i.i       ; 2 uses
  %i.du = shl nsw i32 %.0.i14.i.i, 4
  %i.dv = icmp samesign ult i32 %.sink.i.i, 65
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ugt i32 %.sink.i.i, 3
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = lshr i64 %storemerge.i.i, 60
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nsw i32 %.sink.i.i, -4              ; 2 uses
  %i.ea = shl i64 %storemerge.i.i, 4              ; 2 uses
  %i.eb = or disjoint i32 %i.du, %i.dy            ; 3 uses
  %i.ec = xor i32 %i.eb, %i.dg                    ; 2 uses
  %i.ed = mul nsw i32 %i.ec, 3
  %i.ee = icmp slt i32 %i.eb, 17
  %spec.select.i.i = zext i1 %i.ee to i32
  %i.ef = lshr i32 %i.de, 12
  %i.eg = and i32 %i.ef, 3
  %i.eh = shl nsw i32 %i.ec, 2
  %i.ei = or disjoint i32 %i.eh, %i.eg
  br i1 %i.cb, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i
  tail call void @llvm.assume(i1 %i.cd)
  %i.ej = load i16, ptr %i.cf, align 2, !tbaa !127
  %i.ek = zext i16 %i.ej to i32
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i: ; preds = %bb.t, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i
  %.1.i.i.i = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i ], [ %i.ek, %bb.t ]
  %i.el = add nsw i32 %i.ei, %.1.i.i.i
  %i.em = trunc i32 %i.el to i16
  tail call void @llvm.assume(i1 %i.cg)
  store i16 %i.em, ptr %i.ci, align 2, !tbaa !127
  %.not.i30.1.i.i = icmp samesign ult i32 %.sink.i.i, 36
  br i1 %.not.i30.1.i.i, label %bb.u, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i

bb.u:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.en = add nuw nsw i32 %.sroa.4011.1.i, 4      ; 2 uses
  %.not.i.i.1.i.i = icmp samesign ugt i32 %i.en, %i.ba
  br i1 %.not.i.i.1.i.i, label %bb.w, label %bb.v, !prof !109

bb.v:                                             ; preds = %bb.u
  %i.eo = zext nneg i32 %.sroa.4011.1.i to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.eo
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i

bb.w:                                             ; preds = %bb.u
  %i.eq = icmp samesign ugt i32 %.sroa.4011.1.i, %i.bw
  br i1 %i.eq, label %.invoke, label %bb.x, !prof !109

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %.sroa.4011.1.i) ; 3 uses
  %i.er = add nuw nsw i32 %.sroa.speculated27.i.i.i.1.i.i, 4
  %.sroa.speculated.i.i.i.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.er)
  %i.es = sub nsw i32 %.sroa.speculated.i.i.i.1.i.i, %.sroa.speculated27.i.i.i.1.i.i ; 2 uses
  %i.et = icmp samesign ult i32 %i.es, 5
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = zext nneg i32 %.sroa.speculated27.i.i.i.1.i.i to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.eu
  %i.ew = zext nneg i32 %i.es to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ev, i64 %i.ew, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i: ; preds = %bb.x, %bb.v
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.1.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.x ], [ %i.ep, %bb.v ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.1.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.1.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ex = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.1.i.i)
  %i.ey = zext i32 %i.ex to i64
  %i.ez = or disjoint i32 %i.dz, 32
  %i.fa = sub nuw nsw i32 36, %.sink.i.i
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw i64 %i.ey, %i.fb
  %i.fd = or i64 %i.fc, %i.ea
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i
  %.sroa.4011.2.i = phi i32 [ %i.en, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %.sroa.4011.1.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.fe = phi i64 [ %i.fd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %i.ea, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.ff = phi i32 [ %i.ez, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %i.dz, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.fg = lshr i64 %i.fe, 49                      ; 2 uses
  %i.fh = trunc nuw nsw i64 %i.fg to i32          ; 2 uses
  %i.fi = lshr i32 %i.fh, 14
  %i.fj = sub nsw i32 0, %i.fi
  %i.fk = and i64 %i.fg, 4095
  %i.fl = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !107 ; 3 uses
  %.not.i13.1.i.i = icmp eq i8 %i.fm, 12
  br i1 %.not.i13.1.i.i, label %bb.z, label %bb.y, !prof !109

bb.y:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i
  %i.fn = sext i8 %i.fm to i32                    ; 2 uses
  %i.fo = add nsw i32 %i.fn, 4                    ; 3 uses
  %i.fp = icmp slt i8 %i.fm, 29
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp samesign ule i32 %i.fo, %i.ff
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = sub nsw i32 %i.ff, %i.fo
  %i.fs = zext nneg i32 %i.fo to i64
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i

bb.z:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i
  %i.ft = lshr i64 %i.fe, 38
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = and i32 %i.fu, 2047
  %i.fw = add nsw i32 %i.ff, -27
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i: ; preds = %bb.z, %bb.y
  %.sink265.i.i = phi i32 [ %i.fw, %bb.z ], [ %i.fr, %bb.y ] ; 3 uses
  %.pn285.i.i = phi i64 [ 27, %bb.z ], [ %i.fs, %bb.y ]
end_hunk_0
