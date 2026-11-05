Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sparse_matching_gpc?download=true
inline.NumInlined: 1491
inline.NumDeleted: 567
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv7optflow12_GLOBAL__N_128getAllWHTDescriptorsForImageEPKNS_3MatERSt6vectorINS0_18GPCPatchDescriptorESaIS6_EERKNS0_17GPCMatchingParamsE:bb.a
  store i32 33619968, ptr %9, align 8, !tbaa !51
  store ptr %.ptr.1, ptr %i.aw, align 8, !tbaa !52
  invoke void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 6)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.az, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.ba, align 4, !tbaa !49
  store i32 16842752, ptr %10, align 8, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.bd, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !51
  store ptr %.ptr.2, ptr %i.bc, align 8, !tbaa !52
  invoke void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.bf = load ptr, ptr %1, align 8, !tbaa !34
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 144
  %i.bk = trunc i64 %i.bj to i32
  store i32 0, ptr %12, align 4, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %.sroa.0.0.insert.ext = zext i32 %i.r to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv7optflow12_GLOBAL__N_117ParallelWHTFillerE, i64 16), ptr %13, align 8, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.0.0.insert.insert, ptr %i.bm, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %5, ptr %i.bn, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %1, ptr %i.bo, align 8, !tbaa !55
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef -1.000000e+00)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bp) #28
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bq) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv7optflow18GPCPatchDescriptorESaIS2_EE6resizeEm.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.s

bb.p:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.s

bb.q:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.pn25 = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %i.bt, %bb.q ], [ %i.bs, %bb.p ], [ %i.br, %bb.o ]
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bv) #28
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bw) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !56
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.d, ptr %i.a, align 8, !tbaa !57
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !25
  %i.g = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.g, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.i, ptr %i.h, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !58
  %i.l = load ptr, ptr %0, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN2cv7optflow10GPCDetails23getCoordinatesFromIndexEmNS_5Size_IiEERiS4_(i64 noundef %0, i64 %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = shl i64 %1, 32
  %sext = add i64 %i.a, -85899345920
  %i.b = ashr exact i64 %sext, 32                 ; 3 uses
  %i.c = udiv i64 %0, %i.b                        ; 2 uses
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %3, align 4, !tbaa !30
  %i.e = mul i64 %i.c, %i.b                       ; 0 uses
  %.recomposed = urem i64 %0, %i.b
  %i.f = trunc i64 %.recomposed to i32
  %i.g = add i32 %i.f, 10
  store i32 %i.g, ptr %2, align 4, !tbaa !30
  %i.h = load i32, ptr %3, align 4, !tbaa !30
  %i.i = add nsw i32 %i.h, 10
  store i32 %i.i, ptr %3, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2cv7optflow7GPCTree9trainNodeEmN9__gnu_cxx17__normal_iteratorIPNS0_14GPCPatchSampleESt6vectorIS4_SaIS4_EEEES9_j(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, ptr %2, ptr %3, i32 noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"struct.cv::optflow::(anonymous namespace)::PartitionPredicate2", align 16 ; 14 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"struct.cv::optflow::(anonymous namespace)::PartitionPredicate1", align 16 ; 14 uses
  %7 = alloca %"class.cv::Vec", align 8           ; 27 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = ptrtoint ptr %3 to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 432                 ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !143
  %i.z = icmp sle i32 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %.not = icmp ult i32 %4, %i.ab
  %or.cond = select i1 %i.z, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !68 ; 6 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 160               ; 4 uses
  %.not110 = icmp ult i64 %1, %i.aj
  br i1 %.not110, label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = add i64 %1, 1                           ; 4 uses
  %i.al = icmp ugt i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = sub nuw i64 %i.ak, %i.aj
  tail call void @_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.am)
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !68
  br label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i64 %i.ak, %i.aj
  br i1 %i.an, label %bb.f, label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [160 x i8], ptr %i.af, i64 %i.ak ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.ao
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv7optflow7GPCTree4NodeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv7optflow7GPCTree4NodeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !67
  br label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv7optflow7GPCTree4NodeES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d, %bb.b
  %i.ap = phi ptr [ %i.af, %_ZSt8_DestroyIPN2cv7optflow7GPCTree4NodeES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.af, %bb.f ], [ %i.af, %bb.e ], [ %.pre, %bb.d ], [ %i.af, %bb.b ]
  %i.aq = getelementptr inbounds nuw [160 x i8], ptr %i.ap, i64 %1 ; 33 uses
  %i.ar = shl nsw i32 %i.w, 1
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp slt i32 %i.w, 0
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE6resizeEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE6resizeEm.exit
  %.not218.a = icmp eq i32 %i.w, 0
  br i1 %.not218.a, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.au = shl nuw nsw i64 %i.as, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #31
          to label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %bb.h, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %.sroa.26200.5 = phi ptr [ %i.aw, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ], [ null, %bb.h ]
  %.sroa.16194.3 = phi ptr [ %i.av, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ], [ null, %bb.h ] ; 2 uses
  %.not220290 = icmp eq ptr %2, %3                ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.bo = lshr i64 %i.v, 1
  %i.bp = and i64 %i.bo, 1073741823               ; 2 uses
  %i.bq = lshr i32 %i.w, 2
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 1)
  %i.br = zext nneg i32 %.sroa.speculated to i64
  %i.bs = mul i32 %i.w, 6                         ; 3 uses
  %i.bt = uitofp i32 %i.bs to double
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 144 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.l
  %i.bv = icmp ne i32 %.3, 0                      ; 3 uses
  br i1 %i.bv, label %bb.ar, label %bb.bi

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit, %bb.l
  %.084314 = phi i32 [ 0, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %.3, %bb.l ]
  %.098313 = phi i32 [ 0, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %i.cn, %bb.l ]
  %.sroa.0184.0312 = phi ptr [ %.sroa.16194.3, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %.sroa.0184.2.lcssa419423, %bb.l ]
  %.sroa.16194.0311 = phi ptr [ %.sroa.16194.3, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %.sroa.16194.2.lcssa418425, %bb.l ]
  %.sroa.26200.0310 = phi ptr [ %.sroa.26200.5, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ], [ %.sroa.26200.2.lcssa417427, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i64 144, i1 false), !tbaa !15
  %_ZN2cv7optflow12_GLOBAL__N_13rngE.promoted.i = load i64, ptr @_ZN2cv7optflow12_GLOBAL__N_13rngE.0, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.bw = phi i64 [ %_ZN2cv7optflow12_GLOBAL__N_13rngE.promoted.i, %bb.j ], [ %i.cf, %bb.k ] ; 2 uses
  %i.bx = and i64 %i.bw, 4294967295
  %i.by = mul nuw i64 %i.bx, 4164903690
  %i.bz = lshr i64 %i.bw, 32
  %i.ca = add nuw i64 %i.by, %i.bz                ; 3 uses
  %i.cb = shl i64 %i.ca, 32
  %i.cc = and i64 %i.ca, 4294967295
  %i.cd = mul nuw i64 %i.cc, 4164903690
  %i.ce = lshr i64 %i.ca, 32
  %i.cf = add nuw i64 %i.cd, %i.ce                ; 3 uses
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = or disjoint i64 %i.cg, %i.cb
  %i.ci = uitofp i64 %i.ch to double
  %i.cj = fmul nnan double %i.ci, f0x3BF0000000000000
  %i.ck = tail call noundef double @llvm.fmuladd.f64(double %i.cj, double 3.080000e+00, double -1.540000e+00)
  %i.cl = tail call noundef double @tan(double noundef %i.ck) #28
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  store double %i.cl, ptr %i.cm, align 8, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 18
  br i1 %exitcond.not.i, label %_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit, label %bb.k, !llvm.loop !123

_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit: ; preds = %bb.k
  store i64 %i.cf, ptr @_ZN2cv7optflow12_GLOBAL__N_13rngE.0, align 8, !tbaa !70
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

bb.l:                                             ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.cn = add nuw nsw i32 %.098313, 1             ; 2 uses
  %exitcond350.not = icmp eq i32 %i.cn, 3
  br i1 %exitcond350.not, label %bb.i, label %bb.j, !llvm.loop !124

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit, %bb.aq
  %.185309 = phi i32 [ %.084314, %_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit ], [ %.3, %bb.aq ] ; 3 uses
  %.0103308 = phi i32 [ 0, %_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit ], [ %.2105, %bb.aq ] ; 5 uses
  %.0106306 = phi i32 [ 0, %_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit ], [ %i.mt, %bb.aq ] ; 3 uses
  %.sroa.0184.1305 = phi ptr [ %.sroa.0184.0312, %_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit ], [ %.sroa.0184.2.lcssa419423, %bb.aq ] ; 5 uses
  %.sroa.16194.1304 = phi ptr [ %.sroa.16194.0311, %_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit ], [ %.sroa.16194.2.lcssa418425, %bb.aq ] ; 2 uses
  %.sroa.26200.1303 = phi ptr [ %.sroa.26200.0310, %_ZN2cv7optflow12_GLOBAL__N_121getRandomCauchyVectorERNS_3VecIdLi18EEE.exit ], [ %.sroa.26200.2.lcssa417427, %bb.aq ] ; 2 uses
  %i.co = load i64, ptr @_ZN2cv7optflow12_GLOBAL__N_13rngE.0, align 8, !tbaa !70 ; 2 uses
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = mul nuw i64 %i.cp, 4164903690
  %i.cr = lshr i64 %i.co, 32
  %i.cs = add nuw i64 %i.cq, %i.cr                ; 3 uses
  %i.ct = shl i64 %i.cs, 32
  %i.cu = and i64 %i.cs, 4294967295
  %i.cv = mul nuw i64 %i.cu, 4164903690
  %i.cw = lshr i64 %i.cs, 32
  %i.cx = add nuw i64 %i.cv, %i.cw                ; 2 uses
  store i64 %i.cx, ptr @_ZN2cv7optflow12_GLOBAL__N_13rngE.0, align 8, !tbaa !70
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = or disjoint i64 %i.cy, %i.ct
  %i.da = uitofp i64 %i.cz to double
  %i.db = fmul nnan double %i.da, f0x3BF0000000000000
  %.lhs.trunc = trunc nuw nsw i32 %.0106306 to i16 ; 2 uses
  %i.dc = udiv i16 %.lhs.trunc, 18
  %i.dd = uitofp nneg i16 %i.dc to double
  %i.de = insertelement <2 x double> poison, double %i.db, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.dd, i64 1
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> <double 3.080000e+00, double 2.000000e-01>, <2 x double> <double -1.540000e+00, double 1.000000e+00>) ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  %i.di = tail call noundef double @tan(double noundef %i.dh) #28
  %i.dj = extractelement <2 x double> %i.dg, i64 1
  %i.dk = fmul double %i.dj, %i.di
  %i.dl = urem i16 %.lhs.trunc, 18
  %i.dm = zext nneg i16 %i.dl to i64
end_hunk_0
begin_hunk_1_@_ZN2cv7optflow7GPCTree9trainNodeEmN9__gnu_cxx17__normal_iteratorIPNS0_14GPCPatchSampleESt6vectorIS4_SaIS4_EEEES9_j:bb.a
  %i.lw = and i64 %i.lv, 4294967295
  %i.lx = mul nuw i64 %i.lw, 4164903690
  %i.ly = lshr i64 %i.lv, 32
  %i.lz = add nuw i64 %i.lx, %i.ly                ; 3 uses
  %i.ma = shl i64 %i.lz, 32
  %i.mb = and i64 %i.lz, 4294967295
  %i.mc = mul nuw i64 %i.mb, 4164903690
  %i.md = lshr i64 %i.lz, 32
  %i.me = add nuw i64 %i.mc, %i.md                ; 2 uses
  store i64 %i.me, ptr @_ZN2cv7optflow12_GLOBAL__N_13rngE.0, align 8, !tbaa !70
  %i.mf = and i64 %i.me, 4294967295
  %i.mg = or disjoint i64 %i.mf, %i.ma
  %i.mh = uitofp i64 %i.mg to double
  %i.mi = fmul nnan double %i.mh, f0x3BF0000000000000
  %i.mj = fpext nnan ninf float %sqrt to double
  %i.mk = fmul nnan double %i.mj, -2.000000e+02
  %i.ml = fdiv double %i.mk, %i.bt
  %i.mm = sub nuw i32 %.0103308, %.0100.lcssa450
  %i.mn = uitofp i32 %i.mm to double
  %i.mo = fmul double %i.ml, %i.mn
  %i.mp = tail call double @exp(double noundef %i.mo) #28
  %i.mq = fcmp ogt double %i.mi, %i.mp
  br i1 %i.mq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge301.thread
  store double %i.do, ptr %i.dn, align 8, !tbaa !15
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge301.thread, %bb.an, %._crit_edge301
  %.0100.lcssa451 = phi i32 [ %.2102, %._crit_edge301 ], [ %.0100.lcssa450, %bb.an ], [ %.0100.lcssa450, %._crit_edge301.thread ] ; 2 uses
  %.sroa.26200.2.lcssa417428437449 = phi ptr [ %.sroa.26200.6, %._crit_edge301 ], [ %.sroa.26200.2.lcssa417428437448, %bb.an ], [ %.sroa.26200.2.lcssa417428437448, %._crit_edge301.thread ] ; 2 uses
  %.sroa.16194.2.lcssa418426438447 = phi ptr [ %.sroa.16194.5, %._crit_edge301 ], [ %.sroa.16194.2.lcssa418426438446, %bb.an ], [ %.sroa.16194.2.lcssa418426438446, %._crit_edge301.thread ] ; 2 uses
  %.sroa.0184.2.lcssa419424439445 = phi ptr [ %.sroa.0184.6, %._crit_edge301 ], [ %.sroa.0184.2.lcssa419424439444, %bb.an ], [ %.sroa.0184.2.lcssa419424439444, %._crit_edge301.thread ] ; 2 uses
  %i.mr = phi double [ %i.lk, %._crit_edge301 ], [ %i.lt, %bb.an ], [ %i.lt, %._crit_edge301.thread ]
  %.1104 = phi i32 [ %.2102, %._crit_edge301 ], [ %.0103308, %bb.an ], [ %.0103308, %._crit_edge301.thread ] ; 2 uses
  %i.ms = icmp ugt i32 %.0100.lcssa451, %.185309
  br i1 %i.ms, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aq, ptr noundef nonnull align 8 dereferenceable(144) %7, i64 144, i1 false)
  store double %i.mr, ptr %i.bu, align 8, !tbaa !78
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEN2cv7optflow12_GLOBAL__N_120CompareWithToleranceEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit
  %.sroa.26200.2.lcssa417427 = phi ptr [ %.sroa.26200.6, %_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEN2cv7optflow12_GLOBAL__N_120CompareWithToleranceEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit ], [ %.sroa.26200.2.lcssa417428437449, %bb.ap ], [ %.sroa.26200.2.lcssa417428437449, %bb.ao ] ; 6 uses
  %.sroa.16194.2.lcssa418425 = phi ptr [ %.sroa.16194.5, %_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEN2cv7optflow12_GLOBAL__N_120CompareWithToleranceEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit ], [ %.sroa.16194.2.lcssa418426438447, %bb.ap ], [ %.sroa.16194.2.lcssa418426438447, %bb.ao ] ; 2 uses
  %.sroa.0184.2.lcssa419423 = phi ptr [ %.sroa.0184.6, %_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEN2cv7optflow12_GLOBAL__N_120CompareWithToleranceEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit ], [ %.sroa.0184.2.lcssa419424439445, %bb.ap ], [ %.sroa.0184.2.lcssa419424439445, %bb.ao ] ; 8 uses
  %.2105 = phi i32 [ %.0103308, %_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEN2cv7optflow12_GLOBAL__N_120CompareWithToleranceEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit ], [ %.1104, %bb.ap ], [ %.1104, %bb.ao ]
  %.3 = phi i32 [ %.185309, %_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEN2cv7optflow12_GLOBAL__N_120CompareWithToleranceEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit ], [ %.0100.lcssa451, %bb.ap ], [ %.185309, %bb.ao ] ; 5 uses
  %i.mt = add nuw nsw i32 %.0106306, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.mt, 500
  br i1 %exitcond.not, label %bb.l, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, !llvm.loop !135

bb.ar:                                            ; preds = %bb.i
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.mv = load i8, ptr %i.mu, align 4, !tbaa !144, !range !18, !noundef !19
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.mx = uitofp i32 %.3 to double
  %i.my = sitofp i32 %i.bs to double
  %i.mz = fdiv double %i.mx, %i.my
  %i.na = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %4, double noundef %i.mz, i32 noundef %.3, i32 noundef %i.bs) ; 0 uses
  %i.nb = load double, ptr %i.aq, align 8, !tbaa !15
  %i.nc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.nb) ; 0 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !15
  %i.nf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.ne) ; 0 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !15
  %i.ni = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.nh) ; 0 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !15
  %i.nl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.nk) ; 0 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !15
  %i.no = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.nn) ; 0 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.nq = load double, ptr %i.np, align 8, !tbaa !15
  %i.nr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.nq) ; 0 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !15
  %i.nu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.nt) ; 0 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !15
  %i.nx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.nw) ; 0 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !15
  %i.oa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.nz) ; 0 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !15
  %i.od = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.oc) ; 0 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.of = load double, ptr %i.oe, align 8, !tbaa !15
  %i.og = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.of) ; 0 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !15
  %i.oj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.oi) ; 0 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !15
  %i.om = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.ol) ; 0 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.oo = load double, ptr %i.on, align 8, !tbaa !15
  %i.op = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.oo) ; 0 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.or = load double, ptr %i.oq, align 8, !tbaa !15
  %i.os = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.or) ; 0 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !15
  %i.ov = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.ou) ; 0 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !15
  %i.oy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.ox) ; 0 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !15
  %i.pb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.pa) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %.not220290, label %._crit_edge320, label %.lr.ph319

.lr.ph319:                                        ; preds = %bb.at, %bb.ax
  %.sroa.0165.0317 = phi ptr [ %i.pi, %bb.ax ], [ %2, %bb.at ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28
  %i.pc = load double, ptr %i.bu, align 8, !tbaa !78
  call void @_ZNK2cv7optflow14GPCPatchSample13getDirectionsERbS2_S2_RKNS_3VecIdLi18EEEd(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.0165.0317, ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(144) %i.aq, double noundef %i.pc)
  %i.pd = load i8, ptr %i.p, align 1, !tbaa !17, !range !18, !noundef !19 ; 2 uses
  %i.pe = load i8, ptr %i.q, align 1, !tbaa !17, !range !18, !noundef !19
  %.not112 = icmp eq i8 %i.pd, %i.pe
  br i1 %.not112, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph319
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0165.0317, i64 144
  store double +qnan, ptr %i.pf, align 8, !tbaa !15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph319
  %i.pg = load i8, ptr %i.r, align 1, !tbaa !17, !range !18, !noundef !19
  %.not113 = icmp eq i8 %i.pd, %i.pg
  br i1 %.not113, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0165.0317, i64 288
  store double +qnan, ptr %i.ph, align 8, !tbaa !15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0165.0317, i64 432 ; 2 uses
  %.not219 = icmp eq ptr %i.pi, %3
  br i1 %.not219, label %._crit_edge320, label %.lr.ph319, !llvm.loop !136

._crit_edge320:                                   ; preds = %bb.ax, %bb.at
  %i.pj = load double, ptr %i.bu, align 8, !tbaa !78 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.aq, i64 80 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.aq, i64 112 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.aq, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ps = load <2 x double>, ptr %i.aq, align 8, !tbaa !15
  store <2 x double> %i.ps, ptr %6, align 16, !tbaa !15
  %i.pt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pu = load <2 x double>, ptr %i.pk, align 8, !tbaa !15
  store <2 x double> %i.pu, ptr %i.pt, align 16, !tbaa !15
  %i.pv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.pw = load <2 x double>, ptr %i.pl, align 8, !tbaa !15
  store <2 x double> %i.pw, ptr %i.pv, align 16, !tbaa !15
  %i.px = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.py = load <2 x double>, ptr %i.pm, align 8, !tbaa !15
  store <2 x double> %i.py, ptr %i.px, align 16, !tbaa !15
  %i.pz = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.qa = load <2 x double>, ptr %i.pn, align 8, !tbaa !15
  store <2 x double> %i.qa, ptr %i.pz, align 16, !tbaa !15
  %i.qb = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.qc = load <2 x double>, ptr %i.po, align 8, !tbaa !15
  store <2 x double> %i.qc, ptr %i.qb, align 16, !tbaa !15
  %i.qd = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.qe = load <2 x double>, ptr %i.pp, align 8, !tbaa !15
  store <2 x double> %i.qe, ptr %i.qd, align 16, !tbaa !15
  %i.qf = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.qg = load <2 x double>, ptr %i.pq, align 8, !tbaa !15
  store <2 x double> %i.qg, ptr %i.qf, align 16, !tbaa !15
  %i.qh = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.qi = load <2 x double>, ptr %i.pr, align 8, !tbaa !15
  store <2 x double> %i.qi, ptr %i.qh, align 16, !tbaa !15
  %i.qj = getelementptr inbounds nuw i8, ptr %6, i64 144
  store double %i.pj, ptr %i.qj, align 16, !tbaa !146
  br i1 %.not220290, label %.loopexit225, label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %._crit_edge320, %.noexc132
  %.sroa.0.021.i.i = phi ptr [ %.sroa.0.1.i.i, %.noexc132 ], [ %3, %._crit_edge320 ] ; 2 uses
  %.sroa.08.020.i.i = phi ptr [ %i.qx, %.noexc132 ], [ %2, %._crit_edge320 ]
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %.lr.ph.i.i131
  %.sroa.08.117.i.i = phi ptr [ %.sroa.08.020.i.i, %.lr.ph.i.i131 ], [ %i.qp, %bb.az ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  call void @_ZNK2cv7optflow14GPCPatchSample13getDirectionsERbS2_S2_RKNS_3VecIdLi18EEEd(ptr noundef nonnull readonly align 8 dereferenceable(432) %.sroa.08.117.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(152) %6, double noundef %i.pj)
  %8 = load i8, ptr %i.j, align 1, !tbaa !17, !range !18, !noundef !19
  %9 = icmp eq i8 %8, 0
  %i.qk = load i8, ptr %i.k, align 1, !range !18
  %i.ql = icmp eq i8 %i.qk, 0
  %i.qm = load i8, ptr %i.l, align 1, !range !18
  %i.qn = trunc nuw i8 %i.qm to i1
  %10 = select i1 %i.ql, i1 true, i1 %i.qn
  %i.qo = select i1 %9, i1 %10, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  br i1 %i.qo, label %bb.az, label %.preheader.i.i.a

bb.az:                                            ; preds = %bb.ay
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.08.117.i.i, i64 432 ; 3 uses
  %i.qq = icmp eq ptr %i.qp, %.sroa.0.021.i.i
  br i1 %i.qq, label %.loopexit225, label %bb.ay, !llvm.loop !137

.preheader.i.i.a:                                 ; preds = %bb.ay, %bb.ba
  %.sroa.0.0.pn.i.i.a = phi ptr [ %.sroa.0.1.i.i, %bb.ba ], [ %.sroa.0.021.i.i, %bb.ay ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i.a, i64 -432 ; 6 uses
  %i.qr = icmp eq ptr %.sroa.08.117.i.i, %.sroa.0.1.i.i
  br i1 %i.qr, label %.loopexit225, label %bb.ba

bb.ba:                                            ; preds = %.preheader.i.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  call void @_ZNK2cv7optflow14GPCPatchSample13getDirectionsERbS2_S2_RKNS_3VecIdLi18EEEd(ptr noundef nonnull readonly align 8 dereferenceable(432) %.sroa.0.1.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(152) %6, double noundef %i.pj)
  %11 = load i8, ptr %i.g, align 1, !tbaa !17, !range !18, !noundef !19
  %12 = icmp eq i8 %11, 0
  %i.qs = load i8, ptr %i.h, align 1, !range !18
  %i.qt = icmp eq i8 %i.qs, 0
  %i.qu = load i8, ptr %i.i, align 1, !range !18
  %i.qv = trunc nuw i8 %i.qu to i1
  %13 = select i1 %i.qt, i1 true, i1 %i.qv
  %i.qw = select i1 %12, i1 %13, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br i1 %i.qw, label %bb.bb, label %.preheader.i.i.a, !llvm.loop !138

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt4swapIN2cv7optflow14GPCPatchSampleEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.08.117.i.i, ptr noundef nonnull align 8 dereferenceable(432) %.sroa.0.1.i.i)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc132:                                        ; preds = %bb.bb
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.08.117.i.i, i64 432 ; 3 uses
  %i.qy = icmp eq ptr %i.qx, %.sroa.0.1.i.i
  br i1 %i.qy, label %.loopexit225, label %.lr.ph.i.i131, !llvm.loop !139

.loopexit225:                                     ; preds = %.noexc132, %bb.az, %.preheader.i.i.a, %._crit_edge320
  %.sroa.08.115.i.i = phi ptr [ %i.qp, %bb.az ], [ %.sroa.08.117.i.i, %.preheader.i.i.a ], [ %2, %._crit_edge320 ], [ %i.qx, %.noexc132 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.qz = load double, ptr %i.bu, align 8, !tbaa !78 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ra = load <2 x double>, ptr %i.aq, align 8, !tbaa !15
  store <2 x double> %i.ra, ptr %5, align 16, !tbaa !15
  %i.rb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rc = load <2 x double>, ptr %i.pk, align 8, !tbaa !15
  store <2 x double> %i.rc, ptr %i.rb, align 16, !tbaa !15
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.re = load <2 x double>, ptr %i.pl, align 8, !tbaa !15
  store <2 x double> %i.re, ptr %i.rd, align 16, !tbaa !15
  %i.rf = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.rg = load <2 x double>, ptr %i.pm, align 8, !tbaa !15
  store <2 x double> %i.rg, ptr %i.rf, align 16, !tbaa !15
  %i.rh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ri = load <2 x double>, ptr %i.pn, align 8, !tbaa !15
  store <2 x double> %i.ri, ptr %i.rh, align 16, !tbaa !15
  %i.rj = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.rk = load <2 x double>, ptr %i.po, align 8, !tbaa !15
  store <2 x double> %i.rk, ptr %i.rj, align 16, !tbaa !15
  %i.rl = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.rm = load <2 x double>, ptr %i.pp, align 8, !tbaa !15
  store <2 x double> %i.rm, ptr %i.rl, align 16, !tbaa !15
  %i.rn = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ro = load <2 x double>, ptr %i.pq, align 8, !tbaa !15
  store <2 x double> %i.ro, ptr %i.rn, align 16, !tbaa !15
  %i.rp = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.rq = load <2 x double>, ptr %i.pr, align 8, !tbaa !15
  store <2 x double> %i.rq, ptr %i.rp, align 16, !tbaa !15
  %i.rr = getelementptr inbounds nuw i8, ptr %5, i64 144
  store double %i.qz, ptr %i.rr, align 16, !tbaa !148
  %i.rs = icmp eq ptr %.sroa.08.115.i.i, %3
  br i1 %i.rs, label %.loopexit, label %.lr.ph.i.i133

.lr.ph.i.i133:                                    ; preds = %.loopexit225, %.noexc138
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.1.i.i137, %.noexc138 ], [ %3, %.loopexit225 ] ; 2 uses
  %.sroa.09.021.i.i = phi ptr [ %i.sg, %.noexc138 ], [ %.sroa.08.115.i.i, %.loopexit225 ]
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %.lr.ph.i.i133
  %.sroa.09.118.i.i = phi ptr [ %.sroa.09.021.i.i, %.lr.ph.i.i133 ], [ %i.ry, %bb.bd ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @_ZNK2cv7optflow14GPCPatchSample13getDirectionsERbS2_S2_RKNS_3VecIdLi18EEEd(ptr noundef nonnull readonly align 8 dereferenceable(432) %.sroa.09.118.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(152) %5, double noundef %i.qz)
  %i.rt = load i8, ptr %i.d, align 1, !tbaa !17, !range !18, !noundef !19 ; 2 uses
  %i.ru = load i8, ptr %i.e, align 1, !tbaa !17, !range !18, !noundef !19
  %.not.i.i.i = icmp ne i8 %i.rt, %i.ru
  %i.rv = load i8, ptr %i.f, align 1, !range !18
  %i.rw = icmp eq i8 %i.rt, %i.rv
  %i.rx = select i1 %.not.i.i.i, i1 %i.rw, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br i1 %i.rx, label %bb.bd, label %.preheader.i.i135

bb.bd:                                            ; preds = %bb.bc
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.09.118.i.i, i64 432 ; 3 uses
  %i.rz = icmp eq ptr %i.ry, %.sroa.0.022.i.i
  br i1 %i.rz, label %.loopexit, label %bb.bc, !llvm.loop !140

.preheader.i.i135:                                ; preds = %bb.bc, %bb.be
  %.sroa.0.0.pn.i.i136 = phi ptr [ %.sroa.0.1.i.i137, %bb.be ], [ %.sroa.0.022.i.i, %bb.bc ]
  %.sroa.0.1.i.i137 = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i136, i64 -432 ; 6 uses
  %i.sa = icmp eq ptr %.sroa.09.118.i.i, %.sroa.0.1.i.i137
  br i1 %i.sa, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %.preheader.i.i135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @_ZNK2cv7optflow14GPCPatchSample13getDirectionsERbS2_S2_RKNS_3VecIdLi18EEEd(ptr noundef nonnull readonly align 8 dereferenceable(432) %.sroa.0.1.i.i137, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(152) %5, double noundef %i.qz)
  %i.sb = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19 ; 2 uses
  %i.sc = load i8, ptr %i.b, align 1, !tbaa !17, !range !18, !noundef !19
  %.not.i4.i.i = icmp ne i8 %i.sb, %i.sc
  %i.sd = load i8, ptr %i.c, align 1, !range !18
  %i.se = icmp eq i8 %i.sb, %i.sd
  %i.sf = select i1 %.not.i4.i.i, i1 %i.se, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %i.sf, label %bb.bf, label %.preheader.i.i135, !llvm.loop !141

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt4swapIN2cv7optflow14GPCPatchSampleEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.09.118.i.i, ptr noundef nonnull align 8 dereferenceable(432) %.sroa.0.1.i.i137)
          to label %.noexc138 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138:                                        ; preds = %bb.bf
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.09.118.i.i, i64 432 ; 3 uses
  %i.sh = icmp eq ptr %i.sg, %.sroa.0.1.i.i137
  br i1 %i.sh, label %.loopexit, label %.lr.ph.i.i133, !llvm.loop !142

.loopexit:                                        ; preds = %.noexc138, %bb.bd, %.preheader.i.i135, %.loopexit225
  %.sroa.09.116.i.i = phi ptr [ %i.ry, %bb.bd ], [ %.sroa.09.118.i.i, %.preheader.i.i135 ], [ %.sroa.08.115.i.i, %.loopexit225 ], [ %i.sg, %.noexc138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.si = shl i64 %1, 1                           ; 2 uses
  %i.sj = or disjoint i64 %i.si, 1                ; 2 uses
  %i.sk = add nuw i32 %4, 1                       ; 2 uses
  %i.sl = invoke noundef zeroext i1 @_ZN2cv7optflow7GPCTree9trainNodeEmN9__gnu_cxx17__normal_iteratorIPNS0_14GPCPatchSampleESt6vectorIS4_SaIS4_EEEES9_j(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.sj, ptr %2, ptr %.sroa.08.115.i.i, i32 noundef %i.sk)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %.loopexit
  %i.sm = trunc i64 %i.sj to i32
  %i.sn = select i1 %i.sl, i32 %i.sm, i32 0
  %i.so = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  store i32 %i.sn, ptr %i.so, align 8, !tbaa !79
  %i.sp = add i64 %i.si, 2                        ; 2 uses
  %i.sq = invoke noundef zeroext i1 @_ZN2cv7optflow7GPCTree9trainNodeEmN9__gnu_cxx17__normal_iteratorIPNS0_14GPCPatchSampleESt6vectorIS4_SaIS4_EEEES9_j(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.sp, ptr %.sroa.09.116.i.i, ptr %3, i32 noundef %i.sk)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %i.sr = trunc i64 %i.sp to i32
  %i.ss = select i1 %i.sq, i32 %i.sr, i32 0
  %i.st = getelementptr inbounds nuw i8, ptr %i.aq, i64 156
  store i32 %i.ss, ptr %i.st, align 4, !tbaa !80
  br label %bb.bi

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, %bb.g, %bb.bg, %.loopexit
  %.sroa.26200.3.ph.ph = phi ptr [ %.sroa.26200.2.lcssa417427, %bb.bg ], [ %.sroa.26200.2.lcssa417427, %.loopexit ], [ null, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ], [ null, %bb.g ]
  %.sroa.0184.3.ph.ph = phi ptr [ %.sroa.0184.2.lcssa419423, %bb.bg ], [ %.sroa.0184.2.lcssa419423, %.loopexit ], [ null, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ], [ null, %bb.g ]
  %lpad.loopexit.split-lp228 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bi:                                            ; preds = %bb.i, %bb.bh
  %.not.i.i.i139 = icmp eq ptr %.sroa.0184.2.lcssa419423, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.su = ptrtoint ptr %.sroa.26200.2.lcssa417427 to i64
  %i.sv = ptrtoint ptr %.sroa.0184.2.lcssa419423 to i64
  %i.sw = sub i64 %i.su, %i.sv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.2.lcssa419423, i64 noundef %i.sw) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp232
  %.sroa.26200.4 = phi ptr [ %.sroa.26200.2261, %.loopexit.split-lp232 ], [ %.sroa.26200.3.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.26200.2.lcssa417427, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0184.4 = phi ptr [ %.sroa.0184.2254, %.loopexit.split-lp232 ], [ %.sroa.0184.3.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0184.2.lcssa419423, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn118.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi234, %.loopexit.split-lp232 ], [ %lpad.loopexit.split-lp228, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i140 = icmp eq ptr %.sroa.0184.4, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIdSaIdEED2Ev.exit141, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.split-lp
  %i.sx = ptrtoint ptr %.sroa.26200.4 to i64
  %i.sy = ptrtoint ptr %.sroa.0184.4 to i64
  %i.sz = sub i64 %i.sx, %i.sy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.4, i64 noundef %i.sz) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit141

_ZNSt6vectorIdSaIdEED2Ev.exit141:                 ; preds = %.loopexit.split-lp, %bb.bk
  resume { ptr, i32 } %.pn118.pn.pn.pn.pn

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.bj, %bb.bi, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.bv, %bb.bj ], [ %i.bv, %bb.bi ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN2cv7optflow7GPCTree5trainERNS0_18GPCTrainingSamplesENS0_17GPCTrainingParamsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, i64 %2, i64 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %.sroa.2.8.extract.trunc = trunc i64 %3 to i32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87
  %.not = icmp eq i32 %i.b, %.sroa.2.8.extract.trunc
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv7optflow7GPCTree5trainERNS0_18GPCTrainingSamplesENS0_17GPCTrainingParamsE, ptr noundef nonnull @.str.1, i32 noundef 640) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !26
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv7optflow7GPCTree4NodeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv7optflow7GPCTree4NodeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.j, ptr %i.k, align 8, !tbaa !67
  br label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE5clearEv.exit

_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE5clearEv.exit: ; preds = %bb.e, %_ZSt8_DestroyIPN2cv7optflow7GPCTree4NodeES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.m = phi ptr [ %i.l, %bb.e ], [ %i.j, %_ZSt8_DestroyIPN2cv7optflow7GPCTree4NodeES3_EvT_S5_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = load ptr, ptr %1, align 8, !tbaa !89
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 432
  %i.u = shl nsw i64 %i.t, 1
  %i.v = add nsw i64 %i.u, -1                     ; 4 uses
  %i.w = icmp ugt i64 %i.v, 57646075230342348
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE5clearEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 160
  %i.ad = icmp ult i64 %i.ac, %i.v
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE7reserveEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = ptrtoint ptr %i.m to i64
  %i.af = sub i64 %i.ae, %i.aa
  %i.ag = tail call noundef ptr @_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.v, ptr noundef %i.j, ptr noundef %i.m) ; 3 uses
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !68  ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i11, label %_ZNSt12_Vector_baseIN2cv7optflow7GPCTree4NodeESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #30
  br label %_ZNSt12_Vector_baseIN2cv7optflow7GPCTree4NodeESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN2cv7optflow7GPCTree4NodeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.i, %bb.h
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.am, ptr %i.k, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw [160 x i8], ptr %i.ag, i64 %i.v
  store ptr %i.an, ptr %i.x, align 8, !tbaa !90
  br label %_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN2cv7optflow7GPCTree4NodeESaIS3_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIN2cv7optflow7GPCTree4NodeESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.ao, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0.extract.trunc = trunc i64 %3 to i40
  store i40 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ap = load ptr, ptr %1, align 8, !tbaa !149
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !149
  %i.ar = tail call noundef zeroext i1 @_ZN2cv7optflow7GPCTree9trainNodeEmN9__gnu_cxx17__normal_iteratorIPNS0_14GPCPatchSampleESt6vectorIS4_SaIS4_EEEES9_j(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0, ptr %i.ap, ptr %i.aq, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv7optflow7GPCTree5writeERNS_11FileStorageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.cv::internal::WriteStructContext", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv7optflow7GPCTree5writeERNS_11FileStorageE, ptr noundef nonnull @.str.1, i32 noundef 651) #29
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %9, align 8, !tbaa !25     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !26
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_1
