Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/decimal?download=true
inline.NumInlined: 1554
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK5arrow10Decimal1288ToDoubleEi:bb.a

_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i15.i: ; preds = %bb.q, %bb.p
  %.0.i.i17.i16.i = phi double [ %i.bo, %bb.p ], [ %i.bq, %bb.q ]
  %i.br = sitofp i64 %.sroa.4.0.copyload.i14.i to double
  %i.bs = fmul nnan double %i.br, f0x43F0000000000000
  %i.bt = uitofp i64 %.sroa.0.0.copyload.i12.i to double
  %i.bu = fadd nnan double %i.bs, %i.bt
  %i.bv = fmul double %i.bu, %.0.i.i17.i16.i
  %i.bw = fadd double %i.bi, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIdEET_RKS2_i.exit

_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE6ToRealIdEET_RKS2_i.exit: ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIdEET_RKNS_10Decimal128Ei.exit.i, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i19.i, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i15.i
  %.0.i = phi double [ %i.an, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion14ToRealPositiveIdEET_RKNS_10Decimal128Ei.exit.i ], [ %i.be, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit.i19.i ], [ %i.bw, %_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal128Ei.exit18.i15.i ]
  ret double %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow10Decimal12815ToIntegerStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Decimal128", align 16 ; 6 uses
  %3 = alloca %"struct.std::array", align 16      ; 5 uses
  %4 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %i.a, align 8, !tbaa !38
  store i64 1, ptr %i.b, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.h = load <2 x i64>, ptr %2, align 16, !tbaa !45
  store <2 x i64> %i.h, ptr %3, align 16, !tbaa !45
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.k = load i64, ptr %1, align 8, !tbaa !45
  store i64 %i.k, ptr %4, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !45
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.i
  ret void

bb.l:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.m, %bb.j ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.l
  %i.p = load i64, ptr %i.a, align 8, !tbaa !38
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %2 = alloca %"struct.std::array.23", align 1    ; 3 uses
  %3 = alloca %"struct.std::array.23", align 1    ; 3 uses
  %4 = alloca %"struct.std::array", align 8       ; 8 uses
  %5 = alloca %"struct.std::array.57", align 4    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.val.i.i.i = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !183
  %.not14.i.i.i = icmp eq i64 %.val2.val.i.i.i, 0
  %.sroa.gep128 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not14.i.i.i, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit: ; preds = %._crit_edge.i.i.i
  %.val.val.i.i.i = load i64, ptr %0, align 8, !tbaa !45, !noalias !183
  %.not15.i.i.i = icmp eq i64 %.val.val.i.i.i, 0
  br i1 %.not15.i.i.i, label %bb.a, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread

bb.a:                                             ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  %i.h = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.h)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.j = phi i64 [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.k = icmp ugt i64 %i.d, %i.j
  br i1 %i.k, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.c, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.b
  %i.l = phi ptr [ %.pre.i, %bb.b ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 48, ptr %i.m, align 1, !tbaa !38
  store i64 %i.d, ptr %i.b, align 8, !tbaa !22
  %i.n = load ptr, ptr %1, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  store i8 0, ptr %i.o, align 1, !tbaa !38
  br label %bb.x

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit
  %.sroa.phi = phi ptr [ %4, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit ], [ %.sroa.gep128, %._crit_edge.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !184
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread, %bb.d
  %.039 = phi i64 [ %i.ac, %bb.d ], [ 0, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.critedge
  %.042 = phi i64 [ 0, %.critedge ], [ %i.x, %bb.c ]
  %.041 = phi ptr [ %.sroa.phi, %.critedge ], [ %i.aa, %bb.c ] ; 4 uses
  %i.p = load i64, ptr %.041, align 8, !tbaa !45  ; 2 uses
  %i.q = and i64 %i.p, 4294967295
  %i.r = call i64 @llvm.fshl.i64(i64 %.042, i64 %i.p, i64 32) ; 2 uses
  %i.s = udiv i64 %i.r, 1000000000
  %i.t = urem i64 %i.r, 1000000000
  %i.u = shl nuw nsw i64 %i.t, 32
  %i.v = or disjoint i64 %i.u, %i.q               ; 2 uses
  %i.w = udiv i64 %i.v, 1000000000
  %i.x = urem i64 %i.v, 1000000000                ; 3 uses
  %i.y = shl nuw i64 %i.s, 32
  %i.z = or i64 %i.w, %i.y
  store i64 %i.z, ptr %.041, align 8, !tbaa !45
  %i.aa = getelementptr inbounds i8, ptr %.041, i64 -8
  %.not = icmp eq ptr %.041, %4
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !181

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc nuw nsw i64 %i.x to i32           ; 2 uses
  %i.ac = add nuw nsw i64 %.039, 1                ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.039
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !10
  %i.ae = load i64, ptr %.sroa.phi, align 8, !tbaa !45
  %.not44 = icmp eq i64 %i.ae, 0
  br i1 %.not44, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %.sroa.phi, i64 -8 ; 2 uses
  %.not45 = icmp eq ptr %.sroa.phi, %4
  br i1 %.not45, label %bb.h, label %.critedge.1

.critedge.1:                                      ; preds = %bb.e, %bb.g
  %.039.1 = phi i64 [ %i.at, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.critedge.1
  %.042.1 = phi i64 [ 0, %.critedge.1 ], [ %i.ao, %bb.f ]
  %.041.1 = phi ptr [ %i.af, %.critedge.1 ], [ %i.ar, %bb.f ] ; 4 uses
  %i.ag = load i64, ptr %.041.1, align 8, !tbaa !45 ; 2 uses
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = call i64 @llvm.fshl.i64(i64 %.042.1, i64 %i.ag, i64 32) ; 2 uses
  %i.aj = udiv i64 %i.ai, 1000000000
  %i.ak = urem i64 %i.ai, 1000000000
  %i.al = shl nuw nsw i64 %i.ak, 32
  %i.am = or disjoint i64 %i.al, %i.ah            ; 2 uses
  %i.an = udiv i64 %i.am, 1000000000
  %i.ao = urem i64 %i.am, 1000000000              ; 3 uses
  %i.ap = shl nuw i64 %i.aj, 32
  %i.aq = or i64 %i.an, %i.ap
  store i64 %i.aq, ptr %.041.1, align 8, !tbaa !45
  %i.ar = getelementptr inbounds i8, ptr %.041.1, i64 -8
  %.not.1 = icmp eq ptr %.041.1, %4
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !181

bb.g:                                             ; preds = %bb.f
  %i.as = trunc nuw nsw i64 %i.ao to i32          ; 2 uses
  %i.at = add nuw nsw i64 %.039.1, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.039.1
  store i32 %i.as, ptr %i.au, align 4, !tbaa !10
  %i.av = load i64, ptr %i.af, align 8, !tbaa !45
  %.not44.1 = icmp eq i64 %i.av, 0
  br i1 %.not44.1, label %bb.h, label %.critedge.1

bb.h:                                             ; preds = %bb.g, %bb.e
  %.lcssa127.lcssa = phi i32 [ %i.ab, %bb.e ], [ %i.as, %bb.g ] ; 2 uses
  %.lcssa126.lcssa = phi i64 [ %i.ac, %bb.e ], [ %i.at, %bb.g ]
  %.039.lcssa.lcssa = phi i64 [ %.039, %bb.e ], [ %.039.1, %bb.g ] ; 2 uses
  %.lcssa125.lcssa.lcssa = phi i64 [ %i.x, %bb.e ], [ %i.ao, %bb.g ]
  %.idx = shl nuw nsw i64 %.039.lcssa.lcssa, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !22 ; 11 uses
  %i.az = mul nuw nsw i64 %.lcssa126.lcssa, 9     ; 4 uses
  %i.ba = add i64 %i.ay, %i.az                    ; 5 uses
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bc = sub i64 9223372036854775807, %i.ay
  %i.bd = icmp ult i64 %i.bc, %i.az
  br i1 %i.bd, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.i
  %i.be = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bh = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i50 = icmp ugt i64 %i.ba, %i.bj
  br i1 %.not.i.i.i50, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ay, i64 noundef 0, ptr noundef null, i64 noundef %i.az)
  %.pre.i51 = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bk = phi ptr [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i51, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i8 48, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

bb.l:                                             ; preds = %bb.h
  %i.bm = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i, %bb.l
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !22
  %i.bn = load ptr, ptr %1, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ba
  store i8 0, ptr %i.bo, align 1, !tbaa !38
  %.pre = load i64, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp ult i64 %i.ay, %.pre
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.bp = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit ], [ %i.ay, %bb.l ]
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.26, i64 noundef %i.ay, i64 noundef %i.bp) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ay ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 11 ; 3 uses
  %i.bt = icmp samesign ugt i64 %.lcssa125.lcssa.lcssa, 99
  br i1 %i.bt, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %.lr.ph.i.i
  %.0.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ] ; 2 uses
  %.08.i.i = phi i32 [ %i.cd, %.lr.ph.i.i ], [ %.lcssa127.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ] ; 3 uses
  %i.bu = urem i32 %.08.i.i, 100
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !38
  %i.ca = getelementptr inbounds i8, ptr %.0.i, i64 -1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !38
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !38
  %i.cc = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 3 uses
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !38
  %i.cd = udiv i32 %.08.i.i, 100                  ; 2 uses
  %i.ce = icmp samesign ugt i32 %.08.i.i, 9999
  br i1 %i.ce, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %.1.i = phi ptr [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %i.cc, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ %.lcssa127.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %i.cd, %.lr.ph.i.i ] ; 3 uses
  %i.cf = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.cg = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !38
  %i.cl = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !38
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !38
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.cn = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.co = or disjoint i8 %i.cn, 48
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit: ; preds = %bb.m, %bb.n
  %.2.i = phi ptr [ %i.cl, %bb.m ], [ %.1.i, %bb.n ]
  %.sink.i.i = phi i8 [ %i.cm, %bb.m ], [ %i.co, %bb.n ]
  %i.cp = getelementptr inbounds i8, ptr %.2.i, i64 -1 ; 3 uses
  store i8 %.sink.i.i, ptr %i.cp, align 1, !tbaa !38
  %i.cq = ptrtoint ptr %i.bs to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr nonnull readonly align 1 %i.cp, i64 %i.cs, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cs ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not4680 = icmp eq i64 %.039.lcssa.lcssa, 0
  br i1 %.not4680, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 3 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %.082 = phi ptr [ %i.aw, %.lr.ph ], [ %i.cw, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %.07081 = phi ptr [ %i.ct, %.lr.ph ], [ %i.cx, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %i.cw = getelementptr inbounds i8, ptr %.082, i64 -4 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.07081, i64 9 ; 3 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.cz = icmp ugt i32 %i.cy, 99
  br i1 %i.cz, label %.lr.ph.i.i57, label %._crit_edge.i.i52

.lr.ph.i.i57:                                     ; preds = %bb.o, %.lr.ph.i.i57
  %.0.i58 = phi ptr [ %i.di, %.lr.ph.i.i57 ], [ %i.cu, %bb.o ] ; 2 uses
  %.08.i.i59 = phi i32 [ %i.dj, %.lr.ph.i.i57 ], [ %i.cy, %bb.o ] ; 3 uses
  %i.da = urem i32 %.08.i.i59, 100
  %i.db = shl nuw nsw i32 %i.da, 1
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !38
  %i.dg = getelementptr inbounds i8, ptr %.0.i58, i64 -1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !38
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !38
  %i.di = getelementptr inbounds i8, ptr %.0.i58, i64 -2 ; 3 uses
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !38
  %i.dj = udiv i32 %.08.i.i59, 100                ; 2 uses
  %i.dk = icmp ugt i32 %.08.i.i59, 9999
  br i1 %i.dk, label %.lr.ph.i.i57, label %._crit_edge.i.i52, !llvm.loop !0

._crit_edge.i.i52:                                ; preds = %.lr.ph.i.i57, %bb.o
  %.1.i53 = phi ptr [ %i.cu, %bb.o ], [ %i.di, %.lr.ph.i.i57 ] ; 2 uses
  %.0.lcssa.i.i54 = phi i32 [ %i.cy, %bb.o ], [ %i.dj, %.lr.ph.i.i57 ] ; 3 uses
  %i.dl = icmp samesign ugt i32 %.0.lcssa.i.i54, 9
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i52
  %i.dm = shl nuw nsw i32 %.0.lcssa.i.i54, 1
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !38
  %i.dr = getelementptr inbounds i8, ptr %.1.i53, i64 -1 ; 2 uses
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !38
  %i.ds = load i8, ptr %i.do, align 1, !tbaa !38
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

bb.q:                                             ; preds = %._crit_edge.i.i52
  %i.dt = trunc nuw nsw i32 %.0.lcssa.i.i54 to i8
  %i.du = or disjoint i8 %i.dt, 48
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit: ; preds = %bb.p, %bb.q
  %.2.i55 = phi ptr [ %i.dr, %bb.p ], [ %.1.i53, %bb.q ]
  %.sink.i.i56 = phi i8 [ %i.ds, %bb.p ], [ %i.du, %bb.q ]
  %i.dv = getelementptr inbounds i8, ptr %.2.i55, i64 -1 ; 3 uses
  store i8 %.sink.i.i56, ptr %i.dv, align 1, !tbaa !38
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.cv, %i.dw                    ; 2 uses
  %i.dy = sub i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.cx, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull readonly align 1 %i.dv, i64 %i.dx, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.not46 = icmp eq ptr %i.cw, %5
  br i1 %.not46, label %._crit_edge, label %bb.o, !llvm.loop !182

._crit_edge:                                      ; preds = %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %.070.lcssa = phi ptr [ %i.ct, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ], [ %i.cx, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm2EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %i.ea = load ptr, ptr %1, align 8, !tbaa !21    ; 3 uses
  %i.eb = ptrtoint ptr %.070.lcssa to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 6 uses
  %i.ee = load i64, ptr %i.ax, align 8, !tbaa !22 ; 7 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  br i1 %i.ef, label %bb.r, label %bb.w

bb.r:                                             ; preds = %._crit_edge
  %i.eg = sub nuw i64 %i.ed, %i.ee                ; 4 uses
  %i.eh = sub i64 9223372036854775807, %i.ee
  %i.ei = icmp ult i64 %i.eh, %i.eg
  br i1 %i.ei, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.r
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ea, %i.ej
  br i1 %i.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.el = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.el)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.em = load i64, ptr %i.ej, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.en = phi i64 [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ed, %i.en
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ee, i64 noundef 0, ptr noundef null, i64 noundef %i.eg)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.eo = phi ptr [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %bb.t ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ee ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.eg, 1
  br i1 %cond.i.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.ep, align 1, !tbaa !38
  br label %.sink.split.i.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ep, i8 0, i64 %i.eg, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Decimal256", align 8 ; 6 uses
  %3 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %4 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %i.a, align 8, !tbaa !38
  store i64 1, ptr %i.b, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.i
  ret void

bb.l:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.j, %bb.j ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.l
  %i.m = load i64, ptr %i.a, align 8, !tbaa !38
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.lr.ph.i.preheader.i.i:
  %2 = alloca %"struct.std::array.23", align 1    ; 3 uses
  %3 = alloca %"struct.std::array.23", align 1    ; 3 uses
  %4 = alloca %"struct.std::array.16", align 8    ; 6 uses
  %5 = alloca %"struct.std::array.102", align 4   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val7.val.i.i.i = load i64, ptr %i.c, align 8, !tbaa !45, !noalias !291
  %.not16.i.i.i = icmp eq i64 %.val7.val.i.i.i, 0
  br i1 %.not16.i.i.i, label %bb.a, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.a:                                             ; preds = %.lr.ph.i.preheader.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val6.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !45, !noalias !291
  %.not17.i.i.i = icmp eq i64 %.val6.val.i.i.i, 0
  br i1 %.not17.i.i.i, label %bb.b, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5.val.i.i.i = load i64, ptr %i.e, align 8, !tbaa !45, !noalias !291
  %.not18.i.i.i = icmp eq i64 %.val5.val.i.i.i, 0
  br i1 %.not18.i.i.i, label %bb.c, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.c:                                             ; preds = %bb.b
  %.val4.val.i.i.i = load i64, ptr %0, align 8, !tbaa !45, !noalias !291
  %.not19.i.i.i = icmp eq i64 %.val4.val.i.i.i, 0
  br i1 %.not19.i.i.i, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread
  %i.l = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread
  %i.m = load i64, ptr %i.j, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.o = icmp ugt i64 %i.h, %i.n
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.p = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 48, ptr %i.q, align 1, !tbaa !38
  store i64 %i.h, ptr %i.f, align 8, !tbaa !22
  %i.r = load ptr, ptr %1, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  store i8 0, ptr %i.s, align 1, !tbaa !38
  br label %bb.x

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit: ; preds = %.lr.ph.i.preheader.i.i, %bb.c, %bb.b, %bb.a
  %.sink.i.i.i = phi ptr [ %i.a, %.lr.ph.i.preheader.i.i ], [ %i.e, %bb.c ], [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  %i.t = getelementptr inbounds i8, ptr %.sink.i.i.i, i64 -8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !292
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 %i.v
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %bb.g, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit
  %.040.ph = phi ptr [ %i.an, %bb.g ], [ %i.w, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit ] ; 4 uses
  %.039.ph = phi i64 [ %i.ak, %bb.g ], [ 0, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.outer, %bb.f
  %.039 = phi i64 [ %i.ak, %bb.f ], [ %.039.ph, %.critedge.outer ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge
  %.042 = phi i64 [ 0, %.critedge ], [ %i.af, %bb.e ]
  %.041 = phi ptr [ %.040.ph, %.critedge ], [ %i.ai, %bb.e ] ; 4 uses
  %i.x = load i64, ptr %.041, align 8, !tbaa !45  ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = call i64 @llvm.fshl.i64(i64 %.042, i64 %i.x, i64 32) ; 2 uses
  %i.aa = udiv i64 %i.z, 1000000000
  %i.ab = urem i64 %i.z, 1000000000
  %i.ac = shl nuw nsw i64 %i.ab, 32
  %i.ad = or disjoint i64 %i.ac, %i.y             ; 2 uses
  %i.ae = udiv i64 %i.ad, 1000000000
  %i.af = urem i64 %i.ad, 1000000000              ; 3 uses
  %i.ag = shl nuw i64 %i.aa, 32
  %i.ah = or i64 %i.ae, %i.ag
  store i64 %i.ah, ptr %.041, align 8, !tbaa !45
  %i.ai = getelementptr inbounds i8, ptr %.041, i64 -8
  %.not = icmp eq ptr %.041, %4
  br i1 %.not, label %bb.f, label %bb.e, !llvm.loop !288

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw nsw i64 %i.af to i32          ; 3 uses
  %i.ak = add nuw nsw i64 %.039, 1                ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.039
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !10
  %i.am = load i64, ptr %.040.ph, align 8, !tbaa !45
  %.not44 = icmp eq i64 %i.am, 0
  br i1 %.not44, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %.040.ph, i64 -8
  %.not45 = icmp eq ptr %.040.ph, %4
  br i1 %.not45, label %bb.h, label %.critedge.outer, !llvm.loop !289

bb.h:                                             ; preds = %bb.g
  %.idx = shl nuw nsw i64 %.039, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !22 ; 11 uses
  %i.ar = mul nuw nsw i64 %i.ak, 9                ; 4 uses
  %i.as = add i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp ult i64 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.au = sub i64 9223372036854775807, %i.aq
  %i.av = icmp ult i64 %i.au, %i.ar
  br i1 %i.av, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.i
  %i.aw = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.az = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bb = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i50 = icmp ugt i64 %i.as, %i.bb
  br i1 %.not.i.i.i50, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aq, i64 noundef 0, ptr noundef null, i64 noundef %i.ar)
  %.pre.i51 = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bc = phi ptr [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i51, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, i8 48, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

bb.l:                                             ; preds = %bb.h
  %i.be = icmp ult i64 %i.as, %i.aq
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i, %bb.l
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !22
  %i.bf = load ptr, ptr %1, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.as
  store i8 0, ptr %i.bg, align 1, !tbaa !38
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp ult i64 %i.aq, %.pre
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.bh = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit ], [ %i.aq, %bb.l ]
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.26, i64 noundef %i.aq, i64 noundef %i.bh) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.aq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 11 ; 3 uses
  %i.bl = icmp samesign ugt i64 %i.af, 99
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %.lr.ph.i.i
  %.0.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ] ; 2 uses
  %.08.i.i = phi i32 [ %i.bv, %.lr.ph.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ] ; 3 uses
  %i.bm = urem i32 %.08.i.i, 100
  %i.bn = shl nuw nsw i32 %i.bm, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %i.bs = getelementptr inbounds i8, ptr %.0.i, i64 -1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !38
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.bu = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 3 uses
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !38
  %i.bv = udiv i32 %.08.i.i, 100                  ; 2 uses
  %i.bw = icmp samesign ugt i32 %.08.i.i, 9999
  br i1 %i.bw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %.1.i = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %i.bu, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %i.bv, %.lr.ph.i.i ] ; 3 uses
  %i.bx = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.by = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !38
  %i.cd = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !38
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !38
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.cf = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.cg = or disjoint i8 %i.cf, 48
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit: ; preds = %bb.m, %bb.n
  %.2.i = phi ptr [ %i.cd, %bb.m ], [ %.1.i, %bb.n ]
  %.sink.i.i = phi i8 [ %i.ce, %bb.m ], [ %i.cg, %bb.n ]
  %i.ch = getelementptr inbounds i8, ptr %.2.i, i64 -1 ; 3 uses
  store i8 %.sink.i.i, ptr %i.ch, align 1, !tbaa !38
  %i.ci = ptrtoint ptr %i.bk to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull readonly align 1 %i.ch, i64 %i.ck, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ck ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not4688 = icmp eq i64 %.039, 0
  br i1 %.not4688, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 3 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %.090 = phi ptr [ %i.ao, %.lr.ph ], [ %i.co, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %.07089 = phi ptr [ %i.cl, %.lr.ph ], [ %i.cp, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %i.co = getelementptr inbounds i8, ptr %.090, i64 -4 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.07089, i64 9 ; 3 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.cr = icmp ugt i32 %i.cq, 99
  br i1 %i.cr, label %.lr.ph.i.i57, label %._crit_edge.i.i52

.lr.ph.i.i57:                                     ; preds = %bb.o, %.lr.ph.i.i57
  %.0.i58 = phi ptr [ %i.da, %.lr.ph.i.i57 ], [ %i.cm, %bb.o ] ; 2 uses
  %.08.i.i59 = phi i32 [ %i.db, %.lr.ph.i.i57 ], [ %i.cq, %bb.o ] ; 3 uses
  %i.cs = urem i32 %.08.i.i59, 100
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !38
  %i.cy = getelementptr inbounds i8, ptr %.0.i58, i64 -1
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !38
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !38
  %i.da = getelementptr inbounds i8, ptr %.0.i58, i64 -2 ; 3 uses
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !38
  %i.db = udiv i32 %.08.i.i59, 100                ; 2 uses
  %i.dc = icmp ugt i32 %.08.i.i59, 9999
  br i1 %i.dc, label %.lr.ph.i.i57, label %._crit_edge.i.i52, !llvm.loop !0

._crit_edge.i.i52:                                ; preds = %.lr.ph.i.i57, %bb.o
  %.1.i53 = phi ptr [ %i.cm, %bb.o ], [ %i.da, %.lr.ph.i.i57 ] ; 2 uses
  %.0.lcssa.i.i54 = phi i32 [ %i.cq, %bb.o ], [ %i.db, %.lr.ph.i.i57 ] ; 3 uses
  %i.dd = icmp samesign ugt i32 %.0.lcssa.i.i54, 9
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i52
  %i.de = shl nuw nsw i32 %.0.lcssa.i.i54, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !38
  %i.dj = getelementptr inbounds i8, ptr %.1.i53, i64 -1 ; 2 uses
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !38
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !38
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

bb.q:                                             ; preds = %._crit_edge.i.i52
  %i.dl = trunc nuw nsw i32 %.0.lcssa.i.i54 to i8
  %i.dm = or disjoint i8 %i.dl, 48
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit: ; preds = %bb.p, %bb.q
  %.2.i55 = phi ptr [ %i.dj, %bb.p ], [ %.1.i53, %bb.q ]
  %.sink.i.i56 = phi i8 [ %i.dk, %bb.p ], [ %i.dm, %bb.q ]
  %i.dn = getelementptr inbounds i8, ptr %.2.i55, i64 -1 ; 3 uses
  store i8 %.sink.i.i56, ptr %i.dn, align 1, !tbaa !38
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.cn, %i.do                    ; 2 uses
  %i.dq = sub i64 0, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.cp, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull readonly align 1 %i.dn, i64 %i.dp, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.not46 = icmp eq ptr %i.co, %5
  br i1 %.not46, label %._crit_edge, label %bb.o, !llvm.loop !290

._crit_edge:                                      ; preds = %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %.070.lcssa = phi ptr [ %i.cl, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ], [ %i.cp, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %i.ds = load ptr, ptr %1, align 8, !tbaa !21    ; 3 uses
  %i.dt = ptrtoint ptr %.070.lcssa to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = load i64, ptr %i.ap, align 8, !tbaa !22 ; 7 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.r, label %bb.w

bb.r:                                             ; preds = %._crit_edge
  %i.dy = sub nuw i64 %i.dv, %i.dw                ; 4 uses
  %i.dz = sub i64 9223372036854775807, %i.dw
  %i.ea = icmp ult i64 %i.dz, %i.dy
  br i1 %i.ea, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ds, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ed = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.ed)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ee = load i64, ptr %i.eb, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ef = phi i64 [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.dv, %i.ef
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dw, i64 noundef 0, ptr noundef null, i64 noundef %i.dy)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.eg = phi ptr [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %bb.t ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dw ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.dy, 1
  br i1 %cond.i.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.eh, align 1, !tbaa !38
  br label %.sink.split.i.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.eh, i8 0, i64 %i.dy, i1 false)
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE16FromPositiveRealIfEENS_6ResultIS2_EET_ii:bb.a

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIfEENS_6StatusET_ii(ptr dead_on_unwind noalias nonnull writable align 8 %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store float %1, ptr %i.a, align 4, !tbaa !37
  store i32 %2, ptr %i.b, align 4, !tbaa !10
  store i32 %3, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !433
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5arrow13DecimalTraitsINS_15BasicDecimal256EE9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.36), !noalias !433
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !21, !noalias !433 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !433
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !21, !noalias !433 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !38, !noalias !433
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !433
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !433
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly byval(%"class.arrow::Decimal256") align 8 captures(none) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array.16", align 8    ; 11 uses
  %4 = alloca %"struct.std::array.16", align 8    ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %6 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = sdiv i32 %2, 64                          ; 7 uses
  %i.c = srem i32 %2, 64                          ; 5 uses
  %i.d = icmp sgt i32 %2, 255
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = icmp sgt i32 %2, 63
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = add nsw i32 %i.b, -1
  %i.g = icmp ult i32 %i.f, 3
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 33554428
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.03341.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.03341.epil = phi i64 [ %.03341.epil.init, %.lr.ph.epil.preheader ], [ %i.l, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.h = icmp ne i64 %.03341.epil, 0
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %i.l = or i64 %i.k, %i.i                        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !434

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %.033.lcssa = phi i64 [ 0, %bb.e ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil ] ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  %i.m = sext i32 %i.b to i64                     ; 2 uses
  br i1 %.not, label %.lr.ph45.split.us.preheader, label %.lr.ph45.split.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.03341 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.n = icmp ne i64 %.03341, 0
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.q = load i64, ptr %i.p, align 8, !tbaa !45
  %i.r = or i64 %i.q, %i.o
  %i.s = icmp ne i64 %i.r, 0
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45
  %i.x = or i64 %i.w, %i.t
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.ad = or i64 %i.ac, %i.z
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !45
  %i.aj = or i64 %i.ai, %i.af                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !435

.lr.ph45.split.preheader:                         ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.am = sub nsw i32 64, %i.c
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl i64 %i.al, %i.an
  %i.ap = icmp ne i64 %.033.lcssa, 0
  %i.aq = zext i1 %i.ap to i64
  %i.ar = zext nneg i32 %i.c to i64
  %i.as = lshr i64 %.033.lcssa, %i.ar
  %i.at = or i64 %i.as, %i.aq
  %i.au = or i64 %i.at, %i.ao
  %i.av = zext nneg i32 %i.c to i64
  %i.aw = sub nsw i32 64, %i.c
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = sext i32 %i.b to i64                    ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 3)
  %i.az = add nuw nsw i32 %smax, 1
  %wide.trip.count52 = zext nneg i32 %i.az to i64
  br label %.lr.ph45.split

.lr.ph45.split.us.preheader:                      ; preds = %._crit_edge
  %i.ba = shl nsw i64 %i.m, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.ba
  %smax54 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 3)
  %i.bb = sub nsw i32 %smax54, %i.b
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %i.be, i1 false), !tbaa !45
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %bb.g, %.lr.ph45.split.us.preheader
  %.160 = phi i64 [ %.033.lcssa, %.lr.ph45.split.us.preheader ], [ %i.au, %bb.g ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.bf = icmp ugt i64 %.160, -9223372036854775808
  br i1 %i.bf, label %bb.h, label %bb.i

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %bb.g
  %indvars.iv49 = phi i64 [ %i.ay, %.lr.ph45.split.preheader ], [ %indvars.iv.next50, %bb.g ] ; 4 uses
  %i.bg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv49 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bi = lshr i64 %i.bh, %i.av                   ; 2 uses
  %i.bj = sub nuw nsw i64 %indvars.iv49, %i.ay
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bj ; 2 uses
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !45
  %i.bl = icmp eq i64 %indvars.iv49, 3
  br i1 %i.bl, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph45.split
  %i.bm = getelementptr i8, ptr %i.bg, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !45
  %i.bo = shl i64 %i.bn, %i.ax
  %i.bp = or i64 %i.bo, %i.bi
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph45.split, %bb.f
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %._crit_edge46, label %.lr.ph45.split, !llvm.loop !436

bb.h:                                             ; preds = %._crit_edge46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false), !alias.scope !441
  store i64 1, ptr %5, align 8, !tbaa !45, !alias.scope !441
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256pLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.l

bb.i:                                             ; preds = %._crit_edge46
  %i.bs = icmp eq i64 %.160, -9223372036854775808
  br i1 %i.bs, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bt = load i64, ptr %0, align 8, !tbaa !45
  %i.bu = and i64 %i.bt, 1
  %.not39 = icmp eq i64 %i.bu, 0
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !alias.scope !442
  store i64 1, ptr %6, align 8, !tbaa !45, !alias.scope !442
  %i.bw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256pLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256lSEj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5arrow15BasicDecimal25615FitsInPrecisionEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256pLERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE16FromPositiveRealIdEENS_6ResultIS2_EET_ii(ptr dead_on_unwind noalias writable align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.arrow::Decimal256", align 8 ; 18 uses
  %7 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %8 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %9 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 608
  %i.f = load double, ptr %i.e, align 8, !tbaa !40, !noalias !448
  %i.g = fmul double %1, %i.f
  %i.h = tail call double @llvm.nearbyint.f64(double %i.g) ; 3 uses
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 608
  %i.l = load double, ptr %i.k, align 8, !tbaa !40, !noalias !448
  %i.m = fcmp ult double %i.h, %i.l
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !448
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %4, double noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 0) %3), !noalias !448
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.n = load ptr, ptr %4, align 8, !tbaa !14, !noalias !448 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !32, !range !33, !noundef !34
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !448
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

bb.f:                                             ; preds = %bb.b
  %i.r = tail call double @ldexp(double noundef %i.h, i32 noundef -192) #26, !tbaa !10, !noalias !448
  %i.s = tail call double @llvm.floor.f64(double %i.r) ; 2 uses
  %i.t = tail call double @ldexp(double noundef %i.s, i32 noundef 192) #26, !tbaa !10, !noalias !448
  %i.u = fsub double %i.h, %i.t                   ; 2 uses
  %i.v = tail call double @ldexp(double noundef %i.u, i32 noundef -128) #26, !tbaa !10, !noalias !448
  %i.w = tail call double @llvm.floor.f64(double %i.v) ; 2 uses
  %i.x = tail call double @ldexp(double noundef %i.w, i32 noundef 128) #26, !tbaa !10, !noalias !448
  %i.y = fsub double %i.u, %i.x                   ; 2 uses
  %i.z = tail call double @ldexp(double noundef %i.y, i32 noundef -64) #26, !tbaa !10, !noalias !448
  %i.aa = tail call double @llvm.floor.f64(double %i.z) ; 2 uses
  %i.ab = tail call double @ldexp(double noundef %i.aa, i32 noundef 64) #26, !tbaa !10, !noalias !448
  %i.ac = fsub double %i.y, %i.ab
  %i.ad = fptoui double %i.ac to i64
  %i.ae = fptoui double %i.aa to i64
  %i.af = fptoui double %i.w to i64
  %i.ag = fptoui double %i.s to i64
  store ptr null, ptr %0, align 8, !tbaa !14, !alias.scope !448
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ah, align 8, !alias.scope !448
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ae, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !448
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.af, ptr %.sroa.523.0..sroa_idx.i, align 8, !alias.scope !448
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ag, ptr %.sroa.624.0..sroa_idx.i, align 8, !alias.scope !448
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

bb.g:                                             ; preds = %bb.a
  %i.ai = sub nsw i32 %2, %3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 608
  %i.am = load double, ptr %i.al, align 8, !tbaa !40
  %i.an = fcmp ogt double %1, %i.am
  br i1 %i.an, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %5, double noundef %1, i32 noundef %2, i32 noundef %3)
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.ao = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !32, !range !33, !noundef !34
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.as = call double @frexp(double noundef %1, ptr noundef nonnull %i.a) #26
  %i.at = tail call double @ldexp(double noundef %i.as, i32 noundef 53) #26, !tbaa !10
  %i.au = fptoui double %i.at to i64
  %i.av = load i32, ptr %i.a, align 4, !tbaa !10  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false), !alias.scope !449
  store i64 %i.au, ptr %6, align 8, !tbaa !45, !alias.scope !449
  %i.ax = icmp slt i32 %i.av, 53
  br i1 %i.ax, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ay = sub nsw i32 53, %i.av                   ; 2 uses
  %i.az = icmp samesign ult i32 %3, 61
  br i1 %i.az, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.ba = zext nneg i32 %3 to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.ba
  %i.bc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bb) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, i32 noundef %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.r

end_hunk_2
