Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/depth_registration?download=true
inline.NumInlined: 452
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv:bb.a
  %.pn6.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi4ELi4EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Matx.0") align 4 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 17 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 4
  %or.cond17 = select i1 %or.cond, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 4
  %or.cond20 = select i1 %or.cond17, i1 %i.k, i1 false
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.m = and i32 %i.l, 4064
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv, ptr noundef nonnull @.str.10, i32 noundef 1314) #14
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !14
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.v = and i32 %i.l, 16415
  %or.cond12 = icmp eq i32 %i.v, 16389
  br i1 %or.cond12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load float, ptr %i.b, align 4, !tbaa !31
  store float %i.w, ptr %0, align 4, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.y, ptr %i.z, align 4, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ab, ptr %i.ac, align 4, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ae, ptr %i.af, align 4, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ah, ptr %i.ai, align 4, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ak, ptr %i.al, align 4, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = load float, ptr %i.am, align 4, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.an, ptr %i.ao, align 4, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.aq, ptr %i.ar, align 4, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.at = load float, ptr %i.as, align 4, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.at, ptr %i.au, align 4, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.aw = load float, ptr %i.av, align 4, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.aw, ptr %i.ax, align 4, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.az = load float, ptr %i.ay, align 4, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.az, ptr %i.ba, align 4, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.bc, ptr %i.bd, align 4, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bf = load float, ptr %i.be, align 4, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.bf, ptr %i.bg, align 4, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bi, ptr %i.bj, align 4, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bl, ptr %i.bm, align 4, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.bo, ptr %i.bp, align 4, !tbaa !31
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.br, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !32
  store ptr %4, ptr %i.bq, align 8, !tbaa !19
  %i.bs = load i32, ptr %4, align 8, !tbaa !26
  %i.bt = and i32 %i.bs, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.bt, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.i
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.bu, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19performRegistrationItEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 %5, i1 noundef zeroext %6, float noundef %7, ptr noundef nonnull align 8 dereferenceable(208) %8) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Range", align 4         ; 5 uses
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %12 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %13 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %14 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %15 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %17 = alloca %"class.cv::Mat_.1", align 8       ; 9 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %.sroa.0460 = alloca [15 x float], align 4      ; 9 uses
  %19 = alloca %"class.cv::Matx.0", align 16      ; 27 uses
  %20 = alloca %"class.cv::Mat_.3", align 8       ; 14 uses
  %21 = alloca %"class.cv::Mat_.3", align 8       ; 10 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %25 = alloca %"class.std::vector", align 8      ; 10 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Mat_.3", align 8       ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %29 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %31 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %.sroa.0381.0.extract.trunc = trunc i64 %5 to i32 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %5, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %.sroa.3.0.extract.trunc, i32 noundef %.sroa.0381.0.extract.trunc, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  %i.a = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN2cv4Mat_ItEC2ENS_5Size_IiEERKt.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %bb.c, %bb.au, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %bb.c ], [ %.pn144.pn.pn.pn.pn, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  br label %common.resume

_ZN2cv4Mat_ItEC2ENS_5Size_IiEERKt.exit:           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.c = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %.preheader396 unwind label %bb.c ; 0 uses

.preheader396:                                    ; preds = %_ZN2cv4Mat_ItEC2ENS_5Size_IiEERKt.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.d = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !16
  store i32 -2130640891, ptr %18, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !19
  %i.g = call noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0460)
  %.sroa.0460.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0460, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.0460.12..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0460, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa !31
  %scevgep426.1 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0460.16.scevgep.1.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0460, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0460.16.scevgep.1.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep426.1, i64 12, i1 false), !tbaa !31
  %scevgep426.2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0460.32.scevgep.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0460, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0460.32.scevgep.2.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep426.2, i64 12, i1 false), !tbaa !31
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %19, i8 0, i64 64, i1 false), !tbaa !31
  br i1 %i.h, label %bb.d, label %.preheader

bb.c:                                             ; preds = %_ZN2cv4Mat_ItEC2ENS_5Size_IiEERKt.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %common.resume

bb.d:                                             ; preds = %.preheader396
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13, !noalias !90
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.j, i8 0, i64 56, i1 false), !tbaa !31, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13, !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %14, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.0460, i64 60, i1 false), !tbaa.struct !33, !noalias !90
  %.sroa.9461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 60
  store float 1.000000e+00, ptr %.sroa.9461.0..sroa_idx, align 4, !tbaa !14, !noalias !90
  store float 1.000000e+00, ptr %15, align 16, !tbaa !31, !noalias !90
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 20
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !31, !noalias !90
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 40
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !31, !noalias !90
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 60
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !31, !noalias !90
  %i.n = call noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef nonnull %14, i64 noundef 16, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(64) %15, i64 noundef 16, i32 noundef 4), !noalias !90
  %.not392 = icmp eq i32 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13, !noalias !90
  br i1 %.not392, label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.20317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.36333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.52349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.o = load <4 x float>, ptr %15, align 16, !tbaa !14
  %i.p = load <4 x float>, ptr %.sroa.20317.0..sroa_idx, align 16, !tbaa !14
  %i.q = load <4 x float>, ptr %.sroa.36333.0..sroa_idx, align 16, !tbaa !14
  %i.r = load <4 x float>, ptr %.sroa.52349.0..sroa_idx, align 16, !tbaa !14
  br label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit

_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit:             ; preds = %bb.d, %bb.e
  %i.s = phi <4 x float> [ %i.r, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.t = phi <4 x float> [ %i.q, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.u = phi <4 x float> [ %i.p, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.v = phi <4 x float> [ %i.o, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13, !noalias !90
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = load <4 x float>, ptr %4, align 4, !tbaa !31 ; 4 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.v, <4 x float> zeroinitializer)
  %i.ac = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ad = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.u, <4 x float> %i.ab)
  %i.ae = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.af = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.t, <4 x float> %i.ad)
  %i.ag = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.s, <4 x float> %i.af)
  store <4 x float> %i.ah, ptr %19, align 16, !tbaa !14
  %.sroa.7369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ai = load <4 x float>, ptr %i.w, align 4, !tbaa !31 ; 4 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.v, <4 x float> zeroinitializer)
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.am = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.u, <4 x float> %i.ak)
  %i.an = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ao = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.t, <4 x float> %i.am)
  %i.ap = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.s, <4 x float> %i.ao)
  store <4 x float> %i.aq, ptr %.sroa.7369.0..sroa_idx, align 16, !tbaa !14
  %.sroa.11373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.ar = load <4 x float>, ptr %i.x, align 4, !tbaa !31 ; 4 uses
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.v, <4 x float> zeroinitializer)
  %i.au = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.av = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.u, <4 x float> %i.at)
  %i.aw = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.t, <4 x float> %i.av)
  %i.ay = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.az = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.s, <4 x float> %i.ax)
  store <4 x float> %i.az, ptr %.sroa.11373.0..sroa_idx, align 16, !tbaa !14
  %.sroa.15377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.ba = load <4 x float>, ptr %i.y, align 4, !tbaa !31 ; 4 uses
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.v, <4 x float> zeroinitializer)
  %i.bd = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.be = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.u, <4 x float> %i.bc)
  %i.bf = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.t, <4 x float> %i.be)
  %i.bh = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.s, <4 x float> %i.bg)
  store <4 x float> %i.bi, ptr %.sroa.15377.0..sroa_idx, align 16, !tbaa !14
  br label %bb.g

.preheader:                                       ; preds = %.preheader396
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bj, i8 0, i64 52, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa !31
  %scevgep.1436 = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %scevgep431.1 = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %scevgep.1436, ptr noundef nonnull align 4 dereferenceable(12) %scevgep431.1, i64 12, i1 false), !tbaa !31
  %scevgep.2437 = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  %scevgep431.2 = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %scevgep.2437, ptr noundef nonnull align 4 dereferenceable(12) %scevgep431.2, i64 12, i1 false), !tbaa !31
  %i.bk = load <1 x float>, ptr %19, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.bm = load <1 x float>, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bp = load <1 x float>, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.bs = load <1 x float>, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bu = load <4 x float>, ptr %4, align 4, !tbaa !31 ; 4 uses
  %i.bv = shufflevector <1 x float> %i.bk, <1 x float> poison, <4 x i32> zeroinitializer
  %i.bw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bu, <4 x float> zeroinitializer)
  %i.bx = load <4 x float>, ptr %i.bn, align 4, !tbaa !31 ; 4 uses
  %i.by = shufflevector <1 x float> %i.bm, <1 x float> poison, <4 x i32> zeroinitializer
  %i.bz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.bx, <4 x float> %i.bw)
  %i.ca = load <4 x float>, ptr %i.bq, align 4, !tbaa !31 ; 4 uses
  %i.cb = shufflevector <1 x float> %i.bp, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.ca, <4 x float> %i.bz)
  %i.cd = load <4 x float>, ptr %i.bt, align 4, !tbaa !31 ; 4 uses
  %i.ce = shufflevector <1 x float> %i.bs, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.cd, <4 x float> %i.cc) ; 4 uses
  %i.cg = load <1 x float>, ptr %scevgep.1436, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.ci = load <1 x float>, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ck = load <1 x float>, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 28
  %i.cm = load <1 x float>, ptr %i.cl, align 4
  %i.cn = shufflevector <1 x float> %i.cg, <1 x float> poison, <4 x i32> zeroinitializer
  %i.co = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.bu, <4 x float> zeroinitializer)
  %i.cp = shufflevector <1 x float> %i.ci, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.bx, <4 x float> %i.co)
  %i.cr = shufflevector <1 x float> %i.ck, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.ca, <4 x float> %i.cq)
  %i.ct = shufflevector <1 x float> %i.cm, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cd, <4 x float> %i.cs) ; 4 uses
  %i.cv = load <1 x float>, ptr %scevgep.2437, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %19, i64 36
  %i.cx = load <1 x float>, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.cz = load <1 x float>, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %19, i64 44
  %i.db = load <1 x float>, ptr %i.da, align 4
  %i.dc = shufflevector <1 x float> %i.cv, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.bu, <4 x float> zeroinitializer)
  %i.de = shufflevector <1 x float> %i.cx, <1 x float> poison, <4 x i32> zeroinitializer
  %i.df = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.bx, <4 x float> %i.dd)
  %i.dg = shufflevector <1 x float> %i.cz, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.ca, <4 x float> %i.df)
  %i.di = shufflevector <1 x float> %i.db, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.cd, <4 x float> %i.dh) ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.dl = load <1 x float>, ptr %i.dk, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 52
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !31
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.dp = load float, ptr %i.do, align 8, !tbaa !31
  %i.dq = shufflevector <1 x float> %i.dl, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.bu, <4 x float> zeroinitializer)
  %i.ds = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.bx, <4 x float> %i.dr)
  %i.dv = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.ca, <4 x float> %i.du)
  %i.dy = fadd <4 x float> %i.cd, %i.dx           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13, !noalias !91
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dz, i8 0, i64 56, i1 false), !tbaa !31, !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13, !noalias !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %12, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.0460, i64 60, i1 false), !tbaa.struct !33, !noalias !91
  %.sroa.9461.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %12, i64 60
  store float 1.000000e+00, ptr %.sroa.9461.0..sroa_idx462, align 4, !tbaa !14, !noalias !91
  store float 1.000000e+00, ptr %13, align 16, !tbaa !31, !noalias !91
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 20
  store float 1.000000e+00, ptr %i.ea, align 4, !tbaa !31, !noalias !91
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 40
  store float 1.000000e+00, ptr %i.eb, align 8, !tbaa !31, !noalias !91
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 60
  store float 1.000000e+00, ptr %i.ec, align 4, !tbaa !31, !noalias !91
  %i.ed = call noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef nonnull %12, i64 noundef 16, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(64) %13, i64 noundef 16, i32 noundef 4), !noalias !91
  %.not391 = icmp eq i32 %i.ed, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13, !noalias !91
  br i1 %.not391, label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152, label %bb.f

bb.f:                                             ; preds = %.preheader
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ee = load <4 x float>, ptr %13, align 16, !tbaa !14
  %i.ef = load <4 x float>, ptr %.sroa.20.0..sroa_idx, align 16, !tbaa !14
  %i.eg = load <4 x float>, ptr %.sroa.36.0..sroa_idx, align 16, !tbaa !14
  %i.eh = load <4 x float>, ptr %.sroa.52.0..sroa_idx, align 16, !tbaa !14
  br label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152

_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152:          ; preds = %.preheader, %bb.f
  %i.ei = phi <4 x float> [ %i.eh, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.ej = phi <4 x float> [ %i.eg, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.ek = phi <4 x float> [ %i.ef, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.el = phi <4 x float> [ %i.ee, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13, !noalias !91
  %i.em = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.en = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.el, <4 x float> zeroinitializer)
  %i.eo = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.ek, <4 x float> %i.en)
  %i.eq = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.er = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.ej, <4 x float> %i.ep)
  %i.es = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.ei, <4 x float> %i.er)
  store <4 x float> %i.et, ptr %19, align 16, !tbaa !14
  %i.eu = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.el, <4 x float> zeroinitializer)
  %i.ew = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.ek, <4 x float> %i.ev)
  %i.ey = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.ej, <4 x float> %i.ex)
  %i.fa = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.ei, <4 x float> %i.ez)
  store <4 x float> %i.fb, ptr %scevgep.1436, align 16, !tbaa !14
  %i.fc = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.el, <4 x float> zeroinitializer)
  %i.fe = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.ek, <4 x float> %i.fd)
  %i.fg = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> %i.ej, <4 x float> %i.ff)
  %i.fi = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.ei, <4 x float> %i.fh)
  store <4 x float> %i.fj, ptr %scevgep.2437, align 16, !tbaa !14
  %i.fk = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.el, <4 x float> zeroinitializer)
  %i.fm = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %i.ek, <4 x float> %i.fl)
  %i.fo = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %i.ej, <4 x float> %i.fn)
  %i.fq = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.ei, <4 x float> %i.fp)
  store <4 x float> %i.fr, ptr %i.dk, align 16, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152, %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %20) #13
  %i.fs = load i32, ptr %20, align 8, !tbaa !26
  %i.ft = and i32 %i.fs, -4096
  %i.fu = or disjoint i32 %i.ft, 69
  store i32 %i.fu, ptr %20, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %.sroa.3.0.extract.trunc, i32 noundef %.sroa.0381.0.extract.trunc, i32 noundef 69)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.fv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %.noexc
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !34 ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph406, label %._crit_edge407.split

.lr.ph406:                                        ; preds = %bb.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !29
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !28
  %i.ge = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !29
  %i.gg = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !28
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !35 ; 4 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph.preheader, label %._crit_edge407.split

.lr.ph.preheader:                                 ; preds = %.lr.ph406
  %wide.trip.count = zext nneg i32 %i.fy to i64
  %i.gl = zext nneg i32 %i.gj to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.gj, 4
  %n.vec = and i64 %i.gl, 2147483644              ; 5 uses
  %i.gm = trunc nuw nsw i64 %n.vec to i32
  %i.gn = mul nuw nsw i64 %n.vec, 12
  %i.go = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert498 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat499 = shufflevector <4 x float> %broadcast.splatinsert498, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.gl
  br label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.gq = mul i64 %i.gd, %indvars.iv
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gq ; 3 uses
  %i.gs = mul i64 %i.gh, %indvars.iv
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gs ; 3 uses
  %i.gu = trunc nuw nsw i64 %indvars.iv to i32
  %i.gv = uitofp nneg i32 %i.gu to float          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.gw = getelementptr i8, ptr %i.gt, i64 %i.gn
  %i.gx = getelementptr i8, ptr %i.gr, i64 %i.go
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gy = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %i.gt, i64 %i.gy
  %i.gz = shl i64 %index, 1
  %next.gep500 = getelementptr i8, ptr %i.gr, i64 %i.gz
  %wide.load = load <4 x i16>, ptr %next.gep500, align 2, !tbaa !93
  %i.ha = uitofp <4 x i16> %wide.load to <4 x float>
  %i.hb = fmul <4 x float> %broadcast.splat499, %i.ha ; 2 uses
  %i.hc = fcmp oeq <4 x float> %i.hb, zeroinitializer
  %i.hd = select <4 x i1> %i.hc, <4 x float> splat (float +qnan), <4 x float> %i.hb ; 3 uses
  %i.he = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.hf = fmul <4 x float> %i.hd, %i.he
  %i.hg = fmul <4 x float> %i.hd, %broadcast.splat
  %i.hh = shufflevector <4 x float> %i.hf, <4 x float> %i.hg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hi = shufflevector <4 x float> %i.hd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.hh, <8 x float> %i.hi, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0100403.ph = phi i32 [ 0, %.lr.ph ], [ %i.gm, %middle.block ]
  %.0101402.ph = phi ptr [ %i.gt, %.lr.ph ], [ %i.gw, %middle.block ]
  %.0102401.ph = phi ptr [ %i.gr, %.lr.ph ], [ %i.gx, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond439.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond439.not, label %._crit_edge407.split, label %.lr.ph, !llvm.loop !82

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0100403 = phi i32 [ %i.ht, %scalar.ph ], [ %.0100403.ph, %scalar.ph.preheader ] ; 2 uses
  %.0101402 = phi ptr [ %i.hv, %scalar.ph ], [ %.0101402.ph, %scalar.ph.preheader ] ; 4 uses
  %.0102401 = phi ptr [ %i.hu, %scalar.ph ], [ %.0102401.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hk = load i16, ptr %.0102401, align 2, !tbaa !93
  %i.hl = uitofp i16 %i.hk to float
  %i.hm = fmul float %7, %i.hl                    ; 2 uses
  %i.hn = fcmp oeq float %i.hm, 0.000000e+00
  %.099 = select i1 %i.hn, float +qnan, float %i.hm ; 3 uses
  %i.ho = uitofp nneg i32 %.0100403 to float
  %i.hp = fmul float %.099, %i.ho
  store float %i.hp, ptr %.0101402, align 4, !tbaa !40
  %i.hq = fmul float %.099, %i.gv
  %i.hr = getelementptr inbounds nuw i8, ptr %.0101402, i64 4
  store float %i.hq, ptr %i.hr, align 4, !tbaa !41
  %i.hs = getelementptr inbounds nuw i8, ptr %.0101402, i64 8
  store float %.099, ptr %i.hs, align 4, !tbaa !42
  %i.ht = add nuw nsw i32 %.0100403, 1            ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0102401, i64 2
  %i.hv = getelementptr inbounds nuw i8, ptr %.0101402, i64 12
  %exitcond.not = icmp eq i32 %i.ht, %i.gj
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !83

._crit_edge407.split:                             ; preds = %._crit_edge, %.lr.ph406, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.hw = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.hw, align 8, !tbaa !17
  %i.hx = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.hx, align 4, !tbaa !16
  store i32 -2130640827, ptr %22, align 8, !tbaa !32
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %21, ptr %i.hy, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  %i.hz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.ia, align 8
  store i32 -2113863611, ptr %23, align 8, !tbaa !32
  store ptr %20, ptr %i.hz, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  %i.ib = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 -1056833531, ptr %24, align 8, !tbaa !32
  %i.ic = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %19, ptr %i.ic, align 8, !tbaa !19
  store i64 17179869188, ptr %i.ib, align 8, !tbaa !27
  invoke void @_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %._crit_edge407.split
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  %i.id = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !35 ; 3 uses
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = icmp slt i32 %i.ie, 0
  br i1 %i.ig, label %bb.l, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #14
          to label %.noexc156 unwind label %bb.o

.noexc156:                                        ; preds = %bb.l
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.k
  store i64 0, ptr %25, align 8
  %.not.i.i.i.i = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ih = shl nuw nsw i64 %i.if, 3                ; 3 uses
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #16
          to label %.noexc157 unwind label %bb.o  ; 5 uses

.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ii, ptr %25, align 8, !tbaa !45
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.if
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ii, i8 0, i64 %i.ih, i1 false), !tbaa !31
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ii, i64 %i.ih
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.ik = phi ptr [ %i.ii, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ij, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.il = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.im, align 8, !tbaa !46
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.il, align 8, !tbaa !47
  %i.in = fdiv float 1.000000e+00, %7
  %i.io = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !34
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph422, label %._crit_edge423

.lr.ph422:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.ir = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.iw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.jh = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge423:                                   ; preds = %._crit_edge419, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.jn = phi ptr [ %i.ik, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.mq, %._crit_edge419 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge423
  %i.jo = load ptr, ptr %i.im, align 8, !tbaa !46
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jn to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.jr) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge423, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0460)
  ret void

bb.n:                                             ; preds = %._crit_edge407.split
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.h
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.fw, %bb.h ], [ %i.js, %bb.n ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gp, %bb.j ], [ %.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph422, %._crit_edge419
  %i.ju = phi ptr [ %i.ik, %.lr.ph422 ], [ %i.mq, %._crit_edge419 ] ; 8 uses
  %indvars.iv448 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next449, %._crit_edge419 ] ; 5 uses
  %i.jv = ptrtoaddr ptr %i.ju to i64
  br i1 %i.h, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !94
  %i.jw = trunc nuw nsw i64 %indvars.iv448 to i32
  store i32 %i.jw, ptr %9, align 4, !tbaa !49, !noalias !94
  %i.jx = trunc i64 %indvars.iv448 to i32
  %i.jy = add i32 %i.jx, 1
  store i32 %i.jy, ptr %i.it, align 4, !tbaa !50, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !94
  store i64 9223372034707292160, ptr %10, align 8, !noalias !94
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !94
  store i32 0, ptr %i.iu, align 8, !tbaa !17
  store i32 0, ptr %i.iv, align 4, !tbaa !16
  store i32 -2130640827, ptr %26, align 8, !tbaa !32
  store ptr %27, ptr %i.iw, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.ix, align 8, !tbaa !31
  store i32 -1056833531, ptr %28, align 8, !tbaa !32
  store ptr %29, ptr %i.iz, align 8, !tbaa !19
  store i64 12884901889, ptr %i.iy, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.ja, align 8, !tbaa !31
  store i32 -1056833531, ptr %30, align 8, !tbaa !32
  store ptr %31, ptr %i.jc, align 8, !tbaa !19
  store i64 12884901889, ptr %i.jb, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !32
  store ptr %2, ptr %i.je, align 8, !tbaa !19
  store i64 12884901891, ptr %i.jd, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.jf, align 8, !tbaa !17
  store i32 0, ptr %i.jg, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !32
  store ptr %3, ptr %i.jh, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.jj, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !32
  store ptr %25, ptr %i.ji, align 8, !tbaa !19
  %i.jz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.jz, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !45
  %.pre464 = load ptr, ptr %i.ir, align 8, !tbaa !29
  %.pre465 = load i64, ptr %i.is, align 8, !tbaa !28
  %.pre466 = mul i64 %.pre465, %indvars.iv448
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kb, %bb.v ], [ %i.ka, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.kc = load ptr, ptr %25, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.kd = load ptr, ptr %i.il, align 8, !tbaa !47 ; 3 uses
  %i.ke = load ptr, ptr %i.ir, align 8, !tbaa !29 ; 4 uses
  %i.kf = load i64, ptr %i.is, align 8, !tbaa !28
  %i.kg = mul i64 %i.kf, %indvars.iv448           ; 4 uses
  %i.kh = icmp ult ptr %i.ju, %i.kd
  br i1 %i.kh, label %.lr.ph411.preheader, label %.loopexit

.lr.ph411.preheader:                              ; preds = %bb.x
  %i.ki = ptrtoaddr ptr %i.kd to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kg ; 6 uses
  %i.kk = xor i64 %i.jv, -1
  %i.kl = add i64 %i.kk, %i.ki                    ; 2 uses
  %i.km = lshr i64 %i.kl, 3
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check504 = icmp ult i64 %i.kl, 24
  br i1 %min.iters.check504, label %.lr.ph411.preheader520, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph411.preheader
  %n.vec506 = and i64 %i.kn, 4611686018427387900  ; 4 uses
  %i.ko = mul i64 %n.vec506, 12
  %i.kp = getelementptr i8, ptr %i.kj, i64 %i.ko
  %i.kq = shl i64 %n.vec506, 3
  %i.kr = getelementptr i8, ptr %i.ju, i64 %i.kq
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 3 uses
  %i.ks = mul i64 %index508, 12                   ; 4 uses
  %next.gep509 = getelementptr i8, ptr %i.kj, i64 %i.ks ; 3 uses
  %i.kt = getelementptr i8, ptr %i.kj, i64 %i.ks  ; 3 uses
  %next.gep510 = getelementptr i8, ptr %i.kt, i64 12
  %i.ku = getelementptr i8, ptr %i.kj, i64 %i.ks  ; 3 uses
  %next.gep511 = getelementptr i8, ptr %i.ku, i64 24
  %i.kv = getelementptr i8, ptr %i.kj, i64 %i.ks  ; 3 uses
  %next.gep512 = getelementptr i8, ptr %i.kv, i64 36
  %i.kw = shl i64 %index508, 3
  %next.gep513 = getelementptr i8, ptr %i.ju, i64 %i.kw
  %i.kx = load float, ptr %next.gep509, align 4, !tbaa !40
  %i.ky = load float, ptr %next.gep510, align 4, !tbaa !40
  %i.kz = load float, ptr %next.gep511, align 4, !tbaa !40
  %i.la = load float, ptr %next.gep512, align 4, !tbaa !40
  %i.lb = insertelement <4 x float> poison, float %i.kx, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.ky, i64 1
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 2
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %next.gep509, i64 8
  %i.lg = getelementptr i8, ptr %i.kt, i64 20
  %i.lh = getelementptr i8, ptr %i.ku, i64 32
  %i.li = getelementptr i8, ptr %i.kv, i64 44
  %i.lj = load float, ptr %i.lf, align 4, !tbaa !42
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !42
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !42
  %i.lm = load float, ptr %i.li, align 4, !tbaa !42
  %i.ln = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.lo = insertelement <4 x float> %i.ln, float %i.lk, i64 1
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 2
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 3 ; 2 uses
  %i.lr = fdiv <4 x float> %i.le, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %next.gep509, i64 4
  %i.lt = getelementptr i8, ptr %i.kt, i64 16
  %i.lu = getelementptr i8, ptr %i.ku, i64 28
  %i.lv = getelementptr i8, ptr %i.kv, i64 40
  %i.lw = load float, ptr %i.ls, align 4, !tbaa !41
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !41
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !41
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !41
  %i.ma = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.mb = insertelement <4 x float> %i.ma, float %i.lx, i64 1
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 2
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 3
  %i.me = fdiv <4 x float> %i.md, %i.lq
  %interleaved.vec514 = shufflevector <4 x float> %i.lr, <4 x float> %i.me, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec514, ptr %next.gep513, align 4, !tbaa !31
  %index.next515 = add nuw i64 %index508, 4       ; 2 uses
  %i.mf = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.mf, label %middle.block516, label %vector.body507, !llvm.loop !86

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.kn, %n.vec506
  br i1 %cmp.n517, label %.loopexit, label %.lr.ph411.preheader520

.lr.ph411.preheader520:                           ; preds = %.lr.ph411.preheader, %middle.block516
  %.096409.ph = phi ptr [ %i.kj, %.lr.ph411.preheader ], [ %i.kp, %middle.block516 ]
  %.097408.ph = phi ptr [ %i.ju, %.lr.ph411.preheader ], [ %i.kr, %middle.block516 ]
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader520, %.lr.ph411
end_hunk_0
begin_hunk_1_@_ZN2cv19performRegistrationItEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a

bb.ab:                                            ; preds = %bb.z, %bb.aa
  br i1 %6, label %bb.ac, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ny = add nsw i32 %i.na, -1                   ; 4 uses
  %i.nz = add nsw i32 %i.nc, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.na, 0
  %i.oa = icmp sle i32 %i.na, %.sroa.0381.0.extract.trunc
  %or.cond388.us = and i1 %.not.i160.us, %i.oa    ; 4 uses
  br i1 %i.np, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ac
  br i1 %or.cond388.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread

.split.us.preheader:                              ; preds = %bb.ac
  br i1 %or.cond388.us, label %bb.ad, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us

bb.ad:                                            ; preds = %.split.us.preheader
  %.not8.i161.us = icmp sgt i32 %i.nc, -1
  br i1 %.not8.i161.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ob = zext nneg i32 %i.ny to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.ob ; 2 uses
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !93
  %i.oe = add i16 %i.od, -1
  %or.cond390.not.us = icmp ult i16 %i.oe, %i.nn
  br i1 %or.cond390.not.us, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i16 %i.nn, ptr %i.oc, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us: ; preds = %.split.us.preheader
  %.not.i160.us.1 = icmp sgt i32 %i.na, -1
  br i1 %.not.i160.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.af, %bb.ae, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us
  %.not8.i161.us.1 = icmp sgt i32 %i.nc, 0
  %i.of = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.us.1 = and i1 %.not8.i161.us.1, %i.of
  br i1 %or.cond389.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.nu ; 2 uses
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !93
  %i.oi = add i16 %i.oh, -1
  %or.cond390.not.us.1 = icmp ult i16 %i.oi, %i.nn
  br i1 %or.cond390.not.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i16 %i.nn, ptr %i.og, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1: ; preds = %bb.ah, %bb.ag, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  br i1 %or.cond388.us, label %bb.ai, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ai:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1
  %.not8.i161.us.2 = icmp sgt i32 %i.nc, 0
  %i.oj = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.us.2 = and i1 %.not8.i161.us.2, %i.oj
  br i1 %or.cond389.us.2, label %bb.aj, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ok = zext nneg i32 %i.ny to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %i.ok ; 2 uses
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !93
  %i.on = add i16 %i.om, -1
  %or.cond390.not.us.2 = icmp ult i16 %i.on, %i.nn
  br i1 %or.cond390.not.us.2, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.nn, ptr %i.ol, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.al:                                            ; preds = %.split.preheader
  %.not8.i161 = icmp sgt i32 %i.nc, -1
  br i1 %.not8.i161, label %bb.am, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.oo = load i64, ptr %i.jm, align 8
  %i.op = zext nneg i32 %i.nc to i64
  %i.oq = mul i64 %i.oo, %i.op
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.oq
  %i.or = zext nneg i32 %i.ny to i64
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %.sink.i164, i64 %i.or ; 2 uses
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !93
  %i.ou = add i16 %i.ot, -1
  %or.cond390.not = icmp ult i16 %i.ou, %i.nn
  br i1 %or.cond390.not, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i16 %i.nn, ptr %i.os, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread: ; preds = %.split.preheader
  %.not.i160.1 = icmp sgt i32 %i.na, -1
  br i1 %.not.i160.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread: ; preds = %bb.an, %bb.am, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread
  %.not8.i161.1 = icmp sgt i32 %i.nc, 0
  %i.ov = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.1 = and i1 %.not8.i161.1, %i.ov
  br i1 %or.cond389.1, label %bb.ao, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

bb.ao:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  %i.ow = load i64, ptr %i.jm, align 8
  %i.ox = zext nneg i32 %i.nz to i64
  %i.oy = mul i64 %i.ow, %i.ox
  %.sink.i164.1 = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.oy
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.sink.i164.1, i64 %i.nu ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !93
  %i.pb = add i16 %i.pa, -1
  %or.cond390.not.1 = icmp ult i16 %i.pb, %i.nn
  br i1 %or.cond390.not.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i16 %i.nn, ptr %i.oz, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1: ; preds = %bb.ap, %bb.ao, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  br i1 %or.cond388.us, label %bb.aq, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aq:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1
  %.not8.i161.2 = icmp sgt i32 %i.nc, 0
  %i.pc = icmp sle i32 %i.nc, %.sroa.3.0.extract.trunc
  %or.cond389.2 = and i1 %.not8.i161.2, %i.pc
  br i1 %or.cond389.2, label %bb.ar, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.pd = load i64, ptr %i.jm, align 8
  %i.pe = zext nneg i32 %i.nz to i64
  %i.pf = mul i64 %i.pd, %i.pe
  %.sink.i164.2 = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.pf
  %i.pg = zext nneg i32 %i.ny to i64
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %.sink.i164.2, i64 %i.pg ; 2 uses
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !93
  %i.pj = add i16 %i.pi, -1
  %or.cond390.not.2 = icmp ult i16 %i.pj, %i.nn
  br i1 %or.cond390.not.2, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i16 %i.nn, ptr %i.ph, align 2, !tbaa !93
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread: ; preds = %bb.al, %bb.ad, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1, %bb.aq, %bb.ar, %bb.as, %bb.ak, %bb.aj, %bb.ai, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, %bb.y, %bb.ab, %.lr.ph418
  %i.pk = getelementptr inbounds nuw i8, ptr %.095415, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %.094416, i64 12 ; 2 uses
  %i.pm = icmp ult ptr %i.pl, %i.mu
  br i1 %i.pm, label %.lr.ph418, label %._crit_edge419, !llvm.loop !88

._crit_edge419:                                   ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, %.loopexit
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %i.pn = load i32, ptr %i.io, align 8, !tbaa !34
  %i.po = sext i32 %i.pn to i64
  %i.pp = icmp slt i64 %indvars.iv.next449, %i.po
  br i1 %i.pp, label %bb.p, label %._crit_edge423, !llvm.loop !89

bb.at:                                            ; preds = %bb.w
  %i.pq = load ptr, ptr %i.im, align 8, !tbaa !46
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %i.kc to i64
  %i.pt = sub i64 %i.pr, %i.ps
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.pt) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166: ; preds = %bb.at, %bb.w, %bb.o
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %i.jt, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.w ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, %.body
  %.pn144.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166 ], [ %.pn.pn.pn.pn, %.body ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0460)
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19performRegistrationIfEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 %5, i1 noundef zeroext %6, float noundef %7, ptr noundef nonnull align 8 dereferenceable(208) %8) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Range", align 4         ; 5 uses
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %12 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %13 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %14 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %15 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.cv::Mat_", align 8         ; 9 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %.sroa.0461 = alloca [15 x float], align 4      ; 9 uses
  %19 = alloca %"class.cv::Matx.0", align 16      ; 27 uses
  %20 = alloca %"class.cv::Mat_.3", align 8       ; 14 uses
  %21 = alloca %"class.cv::Mat_.3", align 8       ; 10 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %25 = alloca %"class.std::vector", align 8      ; 10 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Mat_.3", align 8       ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %29 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %31 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %.sroa.0382.0.extract.trunc = trunc i64 %5 to i32 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %5, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %.sroa.3.0.extract.trunc, i32 noundef %.sroa.0382.0.extract.trunc, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store double +qnan, ptr %16, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN2cv4Mat_IfEC2ENS_5Size_IiEERKf.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %bb.c, %bb.au, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.j, %bb.c ], [ %.pn144.pn.pn.pn.pn, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  br label %common.resume

_ZN2cv4Mat_IfEC2ENS_5Size_IiEERKf.exit:           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.d = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %.preheader397 unwind label %bb.c ; 0 uses

.preheader397:                                    ; preds = %_ZN2cv4Mat_IfEC2ENS_5Size_IiEERKf.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !16
  store i32 -2130640891, ptr %18, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %3, ptr %i.g, align 8, !tbaa !19
  %i.h = call noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0461)
  %.sroa.0461.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.0461.12..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa !31
  %scevgep427.1 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0461.16.scevgep.1.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461.16.scevgep.1.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep427.1, i64 12, i1 false), !tbaa !31
  %scevgep427.2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0461.32.scevgep.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461.32.scevgep.2.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep427.2, i64 12, i1 false), !tbaa !31
  %i.i = icmp sgt i32 %i.h, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %19, i8 0, i64 64, i1 false), !tbaa !31
  br i1 %i.i, label %bb.d, label %.preheader

bb.c:                                             ; preds = %_ZN2cv4Mat_IfEC2ENS_5Size_IiEERKf.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %common.resume

bb.d:                                             ; preds = %.preheader397
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13, !noalias !111
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !tbaa !31, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13, !noalias !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %14, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.0461, i64 60, i1 false), !tbaa.struct !33, !noalias !111
  %.sroa.9462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 60
  store float 1.000000e+00, ptr %.sroa.9462.0..sroa_idx, align 4, !tbaa !14, !noalias !111
  store float 1.000000e+00, ptr %15, align 16, !tbaa !31, !noalias !111
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 20
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !31, !noalias !111
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 40
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !31, !noalias !111
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 60
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !31, !noalias !111
  %i.o = call noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef nonnull %14, i64 noundef 16, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(64) %15, i64 noundef 16, i32 noundef 4), !noalias !111
  %.not393 = icmp eq i32 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13, !noalias !111
  br i1 %.not393, label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.20317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.36333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.52349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.p = load <4 x float>, ptr %15, align 16, !tbaa !14
  %i.q = load <4 x float>, ptr %.sroa.20317.0..sroa_idx, align 16, !tbaa !14
  %i.r = load <4 x float>, ptr %.sroa.36333.0..sroa_idx, align 16, !tbaa !14
  %i.s = load <4 x float>, ptr %.sroa.52349.0..sroa_idx, align 16, !tbaa !14
  br label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit

_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit:             ; preds = %bb.d, %bb.e
  %i.t = phi <4 x float> [ %i.s, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.u = phi <4 x float> [ %i.r, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.v = phi <4 x float> [ %i.q, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.w = phi <4 x float> [ %i.p, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13, !noalias !111
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = load <4 x float>, ptr %4, align 4, !tbaa !31 ; 4 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.ad = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.v, <4 x float> %i.ac)
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.u, <4 x float> %i.ae)
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ai = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.t, <4 x float> %i.ag)
  store <4 x float> %i.ai, ptr %19, align 16, !tbaa !14
  %.sroa.7369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.aj = load <4 x float>, ptr %i.x, align 4, !tbaa !31 ; 4 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.am = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.an = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.v, <4 x float> %i.al)
  %i.ao = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.u, <4 x float> %i.an)
  %i.aq = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ar = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.t, <4 x float> %i.ap)
  store <4 x float> %i.ar, ptr %.sroa.7369.0..sroa_idx, align 16, !tbaa !14
  %.sroa.11373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.as = load <4 x float>, ptr %i.y, align 4, !tbaa !31 ; 4 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.av = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.v, <4 x float> %i.au)
  %i.ax = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ay = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.u, <4 x float> %i.aw)
  %i.az = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.t, <4 x float> %i.ay)
  store <4 x float> %i.ba, ptr %.sroa.11373.0..sroa_idx, align 16, !tbaa !14
  %.sroa.15377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.bb = load <4 x float>, ptr %i.z, align 4, !tbaa !31 ; 4 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.v, <4 x float> %i.bd)
  %i.bg = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.u, <4 x float> %i.bf)
  %i.bi = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.t, <4 x float> %i.bh)
  store <4 x float> %i.bj, ptr %.sroa.15377.0..sroa_idx, align 16, !tbaa !14
  br label %bb.g

.preheader:                                       ; preds = %.preheader397
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bk, i8 0, i64 52, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa !31
  %scevgep.1437 = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %scevgep432.1 = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %scevgep.1437, ptr noundef nonnull align 4 dereferenceable(12) %scevgep432.1, i64 12, i1 false), !tbaa !31
  %scevgep.2438 = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  %scevgep432.2 = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %scevgep.2438, ptr noundef nonnull align 4 dereferenceable(12) %scevgep432.2, i64 12, i1 false), !tbaa !31
  %i.bl = load <1 x float>, ptr %19, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.bn = load <1 x float>, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bq = load <1 x float>, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.bt = load <1 x float>, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bv = load <4 x float>, ptr %4, align 4, !tbaa !31 ; 4 uses
  %i.bw = shufflevector <1 x float> %i.bl, <1 x float> poison, <4 x i32> zeroinitializer
  %i.bx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bv, <4 x float> zeroinitializer)
  %i.by = load <4 x float>, ptr %i.bo, align 4, !tbaa !31 ; 4 uses
  %i.bz = shufflevector <1 x float> %i.bn, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.by, <4 x float> %i.bx)
  %i.cb = load <4 x float>, ptr %i.br, align 4, !tbaa !31 ; 4 uses
  %i.cc = shufflevector <1 x float> %i.bq, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cb, <4 x float> %i.ca)
  %i.ce = load <4 x float>, ptr %i.bu, align 4, !tbaa !31 ; 4 uses
  %i.cf = shufflevector <1 x float> %i.bt, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.ce, <4 x float> %i.cd) ; 4 uses
  %i.ch = load <1 x float>, ptr %scevgep.1437, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.cj = load <1 x float>, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.cl = load <1 x float>, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 28
  %i.cn = load <1 x float>, ptr %i.cm, align 4
  %i.co = shufflevector <1 x float> %i.ch, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.bv, <4 x float> zeroinitializer)
  %i.cq = shufflevector <1 x float> %i.cj, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.by, <4 x float> %i.cp)
  %i.cs = shufflevector <1 x float> %i.cl, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ct = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.cb, <4 x float> %i.cr)
  %i.cu = shufflevector <1 x float> %i.cn, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.ce, <4 x float> %i.ct) ; 4 uses
  %i.cw = load <1 x float>, ptr %scevgep.2438, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 36
  %i.cy = load <1 x float>, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.da = load <1 x float>, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 44
  %i.dc = load <1 x float>, ptr %i.db, align 4
  %i.dd = shufflevector <1 x float> %i.cw, <1 x float> poison, <4 x i32> zeroinitializer
  %i.de = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.bv, <4 x float> zeroinitializer)
  %i.df = shufflevector <1 x float> %i.cy, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.by, <4 x float> %i.de)
  %i.dh = shufflevector <1 x float> %i.da, <1 x float> poison, <4 x i32> zeroinitializer
  %i.di = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.cb, <4 x float> %i.dg)
  %i.dj = shufflevector <1 x float> %i.dc, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.ce, <4 x float> %i.di) ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.dm = load <1 x float>, ptr %i.dl, align 16
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 52
  %i.do = load float, ptr %i.dn, align 4, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !31
  %i.dr = shufflevector <1 x float> %i.dm, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.bv, <4 x float> zeroinitializer)
  %i.dt = insertelement <4 x float> poison, float %i.do, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.by, <4 x float> %i.ds)
  %i.dw = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.cb, <4 x float> %i.dv)
  %i.dz = fadd <4 x float> %i.ce, %i.dy           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13, !noalias !112
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ea, i8 0, i64 56, i1 false), !tbaa !31, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13, !noalias !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %12, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.0461, i64 60, i1 false), !tbaa.struct !33, !noalias !112
  %.sroa.9462.0..sroa_idx463 = getelementptr inbounds nuw i8, ptr %12, i64 60
  store float 1.000000e+00, ptr %.sroa.9462.0..sroa_idx463, align 4, !tbaa !14, !noalias !112
  store float 1.000000e+00, ptr %13, align 16, !tbaa !31, !noalias !112
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 20
  store float 1.000000e+00, ptr %i.eb, align 4, !tbaa !31, !noalias !112
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 40
  store float 1.000000e+00, ptr %i.ec, align 8, !tbaa !31, !noalias !112
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 60
  store float 1.000000e+00, ptr %i.ed, align 4, !tbaa !31, !noalias !112
  %i.ee = call noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef nonnull %12, i64 noundef 16, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(64) %13, i64 noundef 16, i32 noundef 4), !noalias !112
  %.not392 = icmp eq i32 %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13, !noalias !112
  br i1 %.not392, label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152, label %bb.f

bb.f:                                             ; preds = %.preheader
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ef = load <4 x float>, ptr %13, align 16, !tbaa !14
  %i.eg = load <4 x float>, ptr %.sroa.20.0..sroa_idx, align 16, !tbaa !14
  %i.eh = load <4 x float>, ptr %.sroa.36.0..sroa_idx, align 16, !tbaa !14
  %i.ei = load <4 x float>, ptr %.sroa.52.0..sroa_idx, align 16, !tbaa !14
  br label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152

_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152:          ; preds = %.preheader, %bb.f
  %i.ej = phi <4 x float> [ %i.ei, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.ek = phi <4 x float> [ %i.eh, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.el = phi <4 x float> [ %i.eg, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.em = phi <4 x float> [ %i.ef, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13, !noalias !112
  %i.en = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.em, <4 x float> zeroinitializer)
  %i.ep = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.el, <4 x float> %i.eo)
  %i.er = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.ek, <4 x float> %i.eq)
  %i.et = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ej, <4 x float> %i.es)
  store <4 x float> %i.eu, ptr %19, align 16, !tbaa !14
  %i.ev = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.em, <4 x float> zeroinitializer)
  %i.ex = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.el, <4 x float> %i.ew)
  %i.ez = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> %i.ek, <4 x float> %i.ey)
  %i.fb = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.ej, <4 x float> %i.fa)
  store <4 x float> %i.fc, ptr %scevgep.1437, align 16, !tbaa !14
  %i.fd = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.em, <4 x float> zeroinitializer)
  %i.ff = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.el, <4 x float> %i.fe)
  %i.fh = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.ek, <4 x float> %i.fg)
  %i.fj = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.ej, <4 x float> %i.fi)
  store <4 x float> %i.fk, ptr %scevgep.2438, align 16, !tbaa !14
  %i.fl = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.em, <4 x float> zeroinitializer)
  %i.fn = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.el, <4 x float> %i.fm)
  %i.fp = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.ek, <4 x float> %i.fo)
  %i.fr = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.ej, <4 x float> %i.fq)
  store <4 x float> %i.fs, ptr %i.dl, align 16, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152, %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %20) #13
  %i.ft = load i32, ptr %20, align 8, !tbaa !26
  %i.fu = and i32 %i.ft, -4096
  %i.fv = or disjoint i32 %i.fu, 69
  store i32 %i.fv, ptr %20, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %.sroa.3.0.extract.trunc, i32 noundef %.sroa.0382.0.extract.trunc, i32 noundef 69)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.fw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %.noexc
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !34 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph407, label %._crit_edge408.split

.lr.ph407:                                        ; preds = %bb.i
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !29 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !28 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !29 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !28 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !35 ; 7 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.preheader, label %._crit_edge408.split

.lr.ph.preheader:                                 ; preds = %.lr.ph407
  %wide.trip.count = zext nneg i32 %i.fz to i64   ; 2 uses
  %i.gm = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.gn = mul i64 %i.ge, %i.gm
  %i.go = add nsw i32 %i.gk, -1
  %i.gp = zext i32 %i.go to i64                   ; 2 uses
  %i.gq = shl nuw nsw i64 %i.gp, 2
  %i.gr = getelementptr i8, ptr %i.gc, i64 %i.gn
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.gq
  %scevgep = getelementptr i8, ptr %i.gs, i64 4
  %i.gt = mul i64 %i.gi, %i.gm
  %i.gu = mul nuw nsw i64 %i.gp, 12
  %i.gv = getelementptr i8, ptr %i.gg, i64 %i.gt
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gu
  %scevgep496 = getelementptr i8, ptr %i.gw, i64 12
  %i.gx = zext nneg i32 %i.gk to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.gk, 4
  %bound0 = icmp ult ptr %i.gg, %scevgep
  %bound1 = icmp ult ptr %i.gc, %scevgep496
  %found.conflict = and i1 %bound0, %bound1
  %i.gy = or i64 %i.ge, %i.gi
  %i.gz = icmp slt i64 %i.gy, 0
  %i.ha = or i1 %found.conflict, %i.gz
  %n.vec = and i64 %i.gx, 2147483644              ; 5 uses
  %i.hb = trunc nuw nsw i64 %n.vec to i32
  %i.hc = mul nuw nsw i64 %n.vec, 12
  %i.hd = shl nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert498 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat499 = shufflevector <4 x float> %broadcast.splatinsert498, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.gx
  br label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.hf = mul i64 %i.ge, %indvars.iv
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hf ; 3 uses
  %i.hh = mul i64 %i.gi, %indvars.iv
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.hh ; 3 uses
  %i.hj = trunc nuw nsw i64 %indvars.iv to i32
  %i.hk = uitofp nneg i32 %i.hj to float          ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ha
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.hl = getelementptr i8, ptr %i.hi, i64 %i.hc
  %i.hm = getelementptr i8, ptr %i.hg, i64 %i.hd
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.hn = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %i.hi, i64 %i.hn
  %i.ho = shl i64 %index, 2
  %next.gep500 = getelementptr i8, ptr %i.hg, i64 %i.ho
  %wide.load = load <4 x float>, ptr %next.gep500, align 4, !tbaa !31, !alias.scope !113
  %i.hp = fmul <4 x float> %broadcast.splat499, %wide.load ; 2 uses
  %i.hq = fcmp oeq <4 x float> %i.hp, zeroinitializer
  %i.hr = select <4 x i1> %i.hq, <4 x float> splat (float +qnan), <4 x float> %i.hp ; 3 uses
  %i.hs = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.ht = fmul <4 x float> %i.hr, %i.hs
  %i.hu = fmul <4 x float> %i.hr, %broadcast.splat
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hw = shufflevector <4 x float> %i.hr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.hv, <8 x float> %i.hw, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !31, !alias.scope !114, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0100404.ph = phi i32 [ %i.hb, %middle.block ], [ 0, %.lr.ph ] ; 5 uses
  %.0101403.ph = phi ptr [ %i.hl, %middle.block ], [ %i.hi, %.lr.ph ] ; 5 uses
  %.0102402.ph = phi ptr [ %i.hm, %middle.block ], [ %i.hg, %.lr.ph ] ; 3 uses
  %i.hy = sub i32 %i.gk, %.0100404.ph
  %.neg = add i32 %.0100404.ph, 1
  %xtraiter = and i32 %i.hy, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hz = load float, ptr %.0102402.ph, align 4, !tbaa !31
  %i.ia = fmul float %7, %i.hz                    ; 2 uses
  %i.ib = fcmp oeq float %i.ia, 0.000000e+00
  %.099.prol = select i1 %i.ib, float +qnan, float %i.ia ; 3 uses
  %i.ic = uitofp nneg i32 %.0100404.ph to float
  %i.id = fmul float %.099.prol, %i.ic
  store float %i.id, ptr %.0101403.ph, align 4, !tbaa !40
  %i.ie = fmul float %.099.prol, %i.hk
  %i.if = getelementptr inbounds nuw i8, ptr %.0101403.ph, i64 4
  store float %i.ie, ptr %i.if, align 4, !tbaa !41
  %i.ig = getelementptr inbounds nuw i8, ptr %.0101403.ph, i64 8
  store float %.099.prol, ptr %i.ig, align 4, !tbaa !42
  %i.ih = add nuw nsw i32 %.0100404.ph, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0102402.ph, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.0101403.ph, i64 12
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0100404.unr = phi i32 [ %.0100404.ph, %scalar.ph.preheader ], [ %i.ih, %scalar.ph.prol ]
  %.0101403.unr = phi ptr [ %.0101403.ph, %scalar.ph.preheader ], [ %i.ij, %scalar.ph.prol ]
  %.0102402.unr = phi ptr [ %.0102402.ph, %scalar.ph.preheader ], [ %i.ii, %scalar.ph.prol ]
  %i.ik = icmp eq i32 %i.gk, %.neg
  br i1 %i.ik, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond440.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond440.not, label %._crit_edge408.split, label %.lr.ph, !llvm.loop !103

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0100404 = phi i32 [ %i.je, %scalar.ph ], [ %.0100404.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0101403 = phi ptr [ %i.jg, %scalar.ph ], [ %.0101403.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %.0102402 = phi ptr [ %i.jf, %scalar.ph ], [ %.0102402.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.il = load float, ptr %.0102402, align 4, !tbaa !31
  %i.im = fmul float %7, %i.il                    ; 2 uses
  %i.in = fcmp oeq float %i.im, 0.000000e+00
  %.099 = select i1 %i.in, float +qnan, float %i.im ; 3 uses
  %i.io = uitofp nneg i32 %.0100404 to float
  %i.ip = fmul float %.099, %i.io
  store float %i.ip, ptr %.0101403, align 4, !tbaa !40
  %i.iq = fmul float %.099, %i.hk
  %i.ir = getelementptr inbounds nuw i8, ptr %.0101403, i64 4
  store float %i.iq, ptr %i.ir, align 4, !tbaa !41
  %i.is = getelementptr inbounds nuw i8, ptr %.0101403, i64 8
  store float %.099, ptr %i.is, align 4, !tbaa !42
  %i.it = add nuw nsw i32 %.0100404, 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.0102402, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %.0101403, i64 12
  %i.iw = load float, ptr %i.iu, align 4, !tbaa !31
  %i.ix = fmul float %7, %i.iw                    ; 2 uses
  %i.iy = fcmp oeq float %i.ix, 0.000000e+00
  %.099.1 = select i1 %i.iy, float +qnan, float %i.ix ; 3 uses
  %i.iz = uitofp nneg i32 %i.it to float
  %i.ja = fmul float %.099.1, %i.iz
  store float %i.ja, ptr %i.iv, align 4, !tbaa !40
  %i.jb = fmul float %.099.1, %i.hk
  %i.jc = getelementptr inbounds nuw i8, ptr %.0101403, i64 16
  store float %i.jb, ptr %i.jc, align 4, !tbaa !41
  %i.jd = getelementptr inbounds nuw i8, ptr %.0101403, i64 20
  store float %.099.1, ptr %i.jd, align 4, !tbaa !42
  %i.je = add nuw nsw i32 %.0100404, 2            ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0102402, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.0101403, i64 24
  %exitcond.not.1 = icmp eq i32 %i.je, %i.gk
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !104

._crit_edge408.split:                             ; preds = %._crit_edge, %.lr.ph407, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.jh = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.jh, align 8, !tbaa !17
  %i.ji = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.ji, align 4, !tbaa !16
  store i32 -2130640827, ptr %22, align 8, !tbaa !32
  %i.jj = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %21, ptr %i.jj, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  %i.jk = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.jl, align 8
  store i32 -2113863611, ptr %23, align 8, !tbaa !32
  store ptr %20, ptr %i.jk, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  %i.jm = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 -1056833531, ptr %24, align 8, !tbaa !32
  %i.jn = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %19, ptr %i.jn, align 8, !tbaa !19
  store i64 17179869188, ptr %i.jm, align 8, !tbaa !27
  invoke void @_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %._crit_edge408.split
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  %i.jo = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !35 ; 3 uses
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  %i.jr = icmp slt i32 %i.jp, 0
  br i1 %i.jr, label %bb.l, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #14
          to label %.noexc156 unwind label %bb.o

.noexc156:                                        ; preds = %bb.l
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.k
  store i64 0, ptr %25, align 8
  %.not.i.i.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.js = shl nuw nsw i64 %i.jq, 3                ; 3 uses
  %i.jt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #16
          to label %.noexc157 unwind label %bb.o  ; 5 uses

.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.jt, ptr %25, align 8, !tbaa !45
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jt, i8 0, i64 %i.js, i1 false), !tbaa !31
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.jt, i64 %i.js
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.jv = phi ptr [ %i.jt, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ju, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.jw = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.jx, align 8, !tbaa !46
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.jw, align 8, !tbaa !47
  %i.jy = fdiv float 1.000000e+00, %7
  %i.jz = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !34
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.kf = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.kh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.kp = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.kr = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.ks = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.kw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kx = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge424:                                   ; preds = %._crit_edge420, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.ky = phi ptr [ %i.jv, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.ob, %._crit_edge420 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge424
  %i.kz = load ptr, ptr %i.jx, align 8, !tbaa !46
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lc) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge424, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  ret void

bb.n:                                             ; preds = %._crit_edge408.split
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.h
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.fx, %bb.h ], [ %i.ld, %bb.n ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.j ], [ %.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph423, %._crit_edge420
  %i.lf = phi ptr [ %i.jv, %.lr.ph423 ], [ %i.ob, %._crit_edge420 ] ; 8 uses
  %indvars.iv449 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next450, %._crit_edge420 ] ; 5 uses
  %i.lg = ptrtoaddr ptr %i.lf to i64
  br i1 %i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !115
  %i.lh = trunc nuw nsw i64 %indvars.iv449 to i32
  store i32 %i.lh, ptr %9, align 4, !tbaa !49, !noalias !115
  %i.li = trunc i64 %indvars.iv449 to i32
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr %i.ke, align 4, !tbaa !50, !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !115
  store i64 9223372034707292160, ptr %10, align 8, !noalias !115
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !115
  store i32 0, ptr %i.kf, align 8, !tbaa !17
  store i32 0, ptr %i.kg, align 4, !tbaa !16
  store i32 -2130640827, ptr %26, align 8, !tbaa !32
  store ptr %27, ptr %i.kh, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.ki, align 8, !tbaa !31
  store i32 -1056833531, ptr %28, align 8, !tbaa !32
  store ptr %29, ptr %i.kk, align 8, !tbaa !19
  store i64 12884901889, ptr %i.kj, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.kl, align 8, !tbaa !31
  store i32 -1056833531, ptr %30, align 8, !tbaa !32
  store ptr %31, ptr %i.kn, align 8, !tbaa !19
  store i64 12884901889, ptr %i.km, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !32
  store ptr %2, ptr %i.kp, align 8, !tbaa !19
  store i64 12884901891, ptr %i.ko, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.kq, align 8, !tbaa !17
  store i32 0, ptr %i.kr, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !32
  store ptr %3, ptr %i.ks, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.ku, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !32
  store ptr %25, ptr %i.kt, align 8, !tbaa !19
  %i.lk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.lk, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !45
  %.pre465 = load ptr, ptr %i.kc, align 8, !tbaa !29
  %.pre466 = load i64, ptr %i.kd, align 8, !tbaa !28
  %.pre467 = mul i64 %.pre466, %indvars.iv449
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lm, %bb.v ], [ %i.ll, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.ln = load ptr, ptr %25, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.lo = load ptr, ptr %i.jw, align 8, !tbaa !47 ; 3 uses
  %i.lp = load ptr, ptr %i.kc, align 8, !tbaa !29 ; 4 uses
  %i.lq = load i64, ptr %i.kd, align 8, !tbaa !28
  %i.lr = mul i64 %i.lq, %indvars.iv449           ; 4 uses
  %i.ls = icmp ult ptr %i.lf, %i.lo
  br i1 %i.ls, label %.lr.ph412.preheader, label %.loopexit

.lr.ph412.preheader:                              ; preds = %bb.x
  %i.lt = ptrtoaddr ptr %i.lo to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lr ; 6 uses
  %i.lv = xor i64 %i.lg, -1
  %i.lw = add i64 %i.lv, %i.lt                    ; 2 uses
  %i.lx = lshr i64 %i.lw, 3
  %i.ly = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %min.iters.check504 = icmp ult i64 %i.lw, 24
  br i1 %min.iters.check504, label %.lr.ph412.preheader520, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph412.preheader
  %n.vec506 = and i64 %i.ly, 4611686018427387900  ; 4 uses
  %i.lz = mul i64 %n.vec506, 12
  %i.ma = getelementptr i8, ptr %i.lu, i64 %i.lz
  %i.mb = shl i64 %n.vec506, 3
  %i.mc = getelementptr i8, ptr %i.lf, i64 %i.mb
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 3 uses
  %i.md = mul i64 %index508, 12                   ; 4 uses
  %next.gep509 = getelementptr i8, ptr %i.lu, i64 %i.md ; 3 uses
  %i.me = getelementptr i8, ptr %i.lu, i64 %i.md  ; 3 uses
  %next.gep510 = getelementptr i8, ptr %i.me, i64 12
  %i.mf = getelementptr i8, ptr %i.lu, i64 %i.md  ; 3 uses
  %next.gep511 = getelementptr i8, ptr %i.mf, i64 24
  %i.mg = getelementptr i8, ptr %i.lu, i64 %i.md  ; 3 uses
  %next.gep512 = getelementptr i8, ptr %i.mg, i64 36
  %i.mh = shl i64 %index508, 3
  %next.gep513 = getelementptr i8, ptr %i.lf, i64 %i.mh
  %i.mi = load float, ptr %next.gep509, align 4, !tbaa !40
  %i.mj = load float, ptr %next.gep510, align 4, !tbaa !40
  %i.mk = load float, ptr %next.gep511, align 4, !tbaa !40
  %i.ml = load float, ptr %next.gep512, align 4, !tbaa !40
  %i.mm = insertelement <4 x float> poison, float %i.mi, i64 0
  %i.mn = insertelement <4 x float> %i.mm, float %i.mj, i64 1
  %i.mo = insertelement <4 x float> %i.mn, float %i.mk, i64 2
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 3
  %i.mq = getelementptr inbounds nuw i8, ptr %next.gep509, i64 8
  %i.mr = getelementptr i8, ptr %i.me, i64 20
  %i.ms = getelementptr i8, ptr %i.mf, i64 32
  %i.mt = getelementptr i8, ptr %i.mg, i64 44
  %i.mu = load float, ptr %i.mq, align 4, !tbaa !42
  %i.mv = load float, ptr %i.mr, align 4, !tbaa !42
  %i.mw = load float, ptr %i.ms, align 4, !tbaa !42
  %i.mx = load float, ptr %i.mt, align 4, !tbaa !42
  %i.my = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.mz = insertelement <4 x float> %i.my, float %i.mv, i64 1
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 2
  %i.nb = insertelement <4 x float> %i.na, float %i.mx, i64 3 ; 2 uses
  %i.nc = fdiv <4 x float> %i.mp, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %next.gep509, i64 4
  %i.ne = getelementptr i8, ptr %i.me, i64 16
  %i.nf = getelementptr i8, ptr %i.mf, i64 28
  %i.ng = getelementptr i8, ptr %i.mg, i64 40
  %i.nh = load float, ptr %i.nd, align 4, !tbaa !41
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !41
  %i.nj = load float, ptr %i.nf, align 4, !tbaa !41
  %i.nk = load float, ptr %i.ng, align 4, !tbaa !41
  %i.nl = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nm = insertelement <4 x float> %i.nl, float %i.ni, i64 1
  %i.nn = insertelement <4 x float> %i.nm, float %i.nj, i64 2
  %i.no = insertelement <4 x float> %i.nn, float %i.nk, i64 3
  %i.np = fdiv <4 x float> %i.no, %i.nb
  %interleaved.vec514 = shufflevector <4 x float> %i.nc, <4 x float> %i.np, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec514, ptr %next.gep513, align 4, !tbaa !31
  %index.next515 = add nuw i64 %index508, 4       ; 2 uses
  %i.nq = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.nq, label %middle.block516, label %vector.body507, !llvm.loop !107

middle.block516:                                  ; preds = %vector.body507
  %cmp.n517 = icmp eq i64 %i.ly, %n.vec506
  br i1 %cmp.n517, label %.loopexit, label %.lr.ph412.preheader520

.lr.ph412.preheader520:                           ; preds = %.lr.ph412.preheader, %middle.block516
  %.096410.ph = phi ptr [ %i.lu, %.lr.ph412.preheader ], [ %i.ma, %middle.block516 ]
  %.097409.ph = phi ptr [ %i.lf, %.lr.ph412.preheader ], [ %i.mc, %middle.block516 ]
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader520, %.lr.ph412
end_hunk_1
begin_hunk_2_@_ZN2cv19performRegistrationIfEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE:bb.a

bb.ac:                                            ; preds = %bb.ab
  %i.pg = add nsw i32 %i.ol, -1                   ; 4 uses
  %i.ph = add nsw i32 %i.on, -1                   ; 2 uses
  %.not.i160.us = icmp sgt i32 %i.ol, 0
  %i.pi = icmp sle i32 %i.ol, %.sroa.0382.0.extract.trunc
  %or.cond389.us = and i1 %.not.i160.us, %i.pi    ; 4 uses
  br i1 %i.ow, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.al, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread

.split.us.preheader:                              ; preds = %bb.ac
  br i1 %or.cond389.us, label %bb.ad, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us

bb.ad:                                            ; preds = %.split.us.preheader
  %.not8.i161.us = icmp sgt i32 %i.on, -1
  br i1 %.not8.i161.us, label %bb.ae, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.pj = zext nneg i32 %i.pg to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pj ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !31 ; 2 uses
  %i.pm = fcmp uno float %i.pl, 0.000000e+00
  %i.pn = fcmp ogt float %i.pl, %i.ou
  %or.cond391.us = select i1 %i.pm, i1 true, i1 %i.pn
  br i1 %or.cond391.us, label %bb.af, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

bb.af:                                            ; preds = %bb.ae
  store float %i.ou, ptr %i.pk, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us: ; preds = %.split.us.preheader
  %.not.i160.us.1 = icmp sgt i32 %i.ol, -1
  br i1 %.not.i160.us.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread: ; preds = %bb.af, %bb.ae, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us
  %.not8.i161.us.1 = icmp sgt i32 %i.on, 0
  %i.po = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.us.1 = and i1 %.not8.i161.us.1, %i.po
  br i1 %or.cond390.us.1, label %bb.ag, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ag:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pb ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !31 ; 2 uses
  %i.pr = fcmp uno float %i.pq, 0.000000e+00
  %i.ps = fcmp ogt float %i.pq, %i.ou
  %or.cond391.us.1 = select i1 %i.pr, i1 true, i1 %i.ps
  br i1 %or.cond391.us.1, label %bb.ah, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

bb.ah:                                            ; preds = %bb.ag
  store float %i.ou, ptr %i.pp, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1: ; preds = %bb.ah, %bb.ag, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.thread
  br i1 %or.cond389.us, label %bb.ai, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ai:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1
  %.not8.i161.us.2 = icmp sgt i32 %i.on, 0
  %i.pt = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.us.2 = and i1 %.not8.i161.us.2, %i.pt
  br i1 %or.cond390.us.2, label %bb.aj, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.pu = zext nneg i32 %i.pg to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pu ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !31 ; 2 uses
  %i.px = fcmp uno float %i.pw, 0.000000e+00
  %i.py = fcmp ogt float %i.pw, %i.ou
  %or.cond391.us.2 = select i1 %i.px, i1 true, i1 %i.py
  br i1 %or.cond391.us.2, label %bb.ak, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ak:                                            ; preds = %bb.aj
  store float %i.ou, ptr %i.pv, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.al:                                            ; preds = %.split.preheader
  %.not8.i161 = icmp sgt i32 %i.on, -1
  br i1 %.not8.i161, label %bb.am, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.pz = load i64, ptr %i.kx, align 8
  %i.qa = zext nneg i32 %i.on to i64
  %i.qb = mul i64 %i.pz, %i.qa
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.qb
  %i.qc = zext nneg i32 %i.pg to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i164, i64 %i.qc ; 2 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !31 ; 2 uses
  %i.qf = fcmp uno float %i.qe, 0.000000e+00
  %i.qg = fcmp ogt float %i.qe, %i.ou
  %or.cond391 = select i1 %i.qf, i1 true, i1 %i.qg
  br i1 %or.cond391, label %bb.an, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

bb.an:                                            ; preds = %bb.am
  store float %i.ou, ptr %i.qd, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread: ; preds = %.split.preheader
  %.not.i160.1 = icmp sgt i32 %i.ol, -1
  br i1 %.not.i160.1, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread: ; preds = %bb.an, %bb.am, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread
  %.not8.i161.1 = icmp sgt i32 %i.on, 0
  %i.qh = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.1 = and i1 %.not8.i161.1, %i.qh
  br i1 %or.cond390.1, label %bb.ao, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

bb.ao:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  %i.qi = load i64, ptr %i.kx, align 8
  %i.qj = zext nneg i32 %i.ph to i64
  %i.qk = mul i64 %i.qi, %i.qj
  %.sink.i164.1 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.qk
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.sink.i164.1, i64 %i.pb ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !31 ; 2 uses
  %i.qn = fcmp uno float %i.qm, 0.000000e+00
  %i.qo = fcmp ogt float %i.qm, %i.ou
  %or.cond391.1 = select i1 %i.qn, i1 true, i1 %i.qo
  br i1 %or.cond391.1, label %bb.ap, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

bb.ap:                                            ; preds = %bb.ao
  store float %i.ou, ptr %i.ql, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1: ; preds = %bb.ap, %bb.ao, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.thread
  br i1 %or.cond389.us, label %bb.aq, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.aq:                                            ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1
  %.not8.i161.2 = icmp sgt i32 %i.on, 0
  %i.qp = icmp sle i32 %i.on, %.sroa.3.0.extract.trunc
  %or.cond390.2 = and i1 %.not8.i161.2, %i.qp
  br i1 %or.cond390.2, label %bb.ar, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.qq = load i64, ptr %i.kx, align 8
  %i.qr = zext nneg i32 %i.ph to i64
  %i.qs = mul i64 %i.qq, %i.qr
  %.sink.i164.2 = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.qs
  %i.qt = zext nneg i32 %i.pg to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i164.2, i64 %i.qt ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !31 ; 2 uses
  %i.qw = fcmp uno float %i.qv, 0.000000e+00
  %i.qx = fcmp ogt float %i.qv, %i.ou
  %or.cond391.2 = select i1 %i.qw, i1 true, i1 %i.qx
  br i1 %or.cond391.2, label %bb.as, label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

bb.as:                                            ; preds = %bb.ar
  store float %i.ou, ptr %i.qu, align 4, !tbaa !31
  br label %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread: ; preds = %bb.al, %bb.ad, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.1, %bb.aq, %bb.ar, %bb.as, %bb.ak, %bb.aj, %bb.ai, %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit162.thread.us.1, %bb.y, %bb.ab, %.lr.ph419
  %i.qy = getelementptr inbounds nuw i8, ptr %.095416, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %.094417, i64 12 ; 2 uses
  %i.ra = icmp ult ptr %i.qz, %i.of
  br i1 %i.ra, label %.lr.ph419, label %._crit_edge420, !llvm.loop !109

._crit_edge420:                                   ; preds = %_ZNK2cv5Rect_IiE8containsIiEEbRKNS_6Point_IT_EE.exit.thread, %.loopexit
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.rb = load i32, ptr %i.jz, align 8, !tbaa !34
  %i.rc = sext i32 %i.rb to i64
  %i.rd = icmp slt i64 %indvars.iv.next450, %i.rc
  br i1 %i.rd, label %bb.p, label %._crit_edge424, !llvm.loop !110

bb.at:                                            ; preds = %bb.w
  %i.re = load ptr, ptr %i.jx, align 8, !tbaa !46
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.ln to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef %i.rh) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166: ; preds = %bb.at, %bb.w, %bb.o
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %i.le, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.w ], [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, %.body
  %.pn144.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166 ], [ %.pn.pn.pn.pn, %.body ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19performRegistrationIdEEvRKNS_4Mat_IT_EERKNS_4MatxIfLi3ELi3EEES9_RKNS1_IfEERKNS6_IfLi4ELi4EEENS_5Size_IiEEbfRNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 %5, i1 noundef zeroext %6, float noundef %7, ptr noundef nonnull align 8 dereferenceable(208) %8) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Range", align 4         ; 5 uses
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %12 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %13 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %14 = alloca %"class.cv::Matx.0", align 4       ; 5 uses
  %15 = alloca %"class.cv::Matx.0", align 16      ; 12 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.cv::Mat_.2", align 8       ; 9 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %.sroa.0461 = alloca [15 x float], align 4      ; 9 uses
  %19 = alloca %"class.cv::Matx.0", align 16      ; 27 uses
  %20 = alloca %"class.cv::Mat_.3", align 8       ; 14 uses
  %21 = alloca %"class.cv::Mat_.3", align 8       ; 10 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %25 = alloca %"class.std::vector", align 8      ; 10 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Mat_.3", align 8       ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %29 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %31 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %.sroa.0382.0.extract.trunc = trunc i64 %5 to i32 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %5, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %.sroa.3.0.extract.trunc, i32 noundef %.sroa.0382.0.extract.trunc, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store double +qnan, ptr %16, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN2cv4Mat_IdEC2ENS_5Size_IiEERKd.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %bb.c, %bb.au, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.j, %bb.c ], [ %.pn144.pn.pn.pn.pn, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  br label %common.resume

_ZN2cv4Mat_IdEC2ENS_5Size_IiEERKd.exit:           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.d = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %.preheader397 unwind label %bb.c ; 0 uses

.preheader397:                                    ; preds = %_ZN2cv4Mat_IdEC2ENS_5Size_IiEERKd.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !16
  store i32 -2130640891, ptr %18, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %3, ptr %i.g, align 8, !tbaa !19
  %i.h = call noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0461)
  %.sroa.0461.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.0461.12..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa !31
  %scevgep427.1 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0461.16.scevgep.1.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461.16.scevgep.1.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep427.1, i64 12, i1 false), !tbaa !31
  %scevgep427.2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0461.32.scevgep.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0461, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0461.32.scevgep.2.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %scevgep427.2, i64 12, i1 false), !tbaa !31
  %i.i = icmp sgt i32 %i.h, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %19, i8 0, i64 64, i1 false), !tbaa !31
  br i1 %i.i, label %bb.d, label %.preheader

bb.c:                                             ; preds = %_ZN2cv4Mat_IdEC2ENS_5Size_IiEERKd.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %common.resume

bb.d:                                             ; preds = %.preheader397
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13, !noalias !129
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !tbaa !31, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13, !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %14, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.0461, i64 60, i1 false), !tbaa.struct !33, !noalias !129
  %.sroa.9462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 60
  store float 1.000000e+00, ptr %.sroa.9462.0..sroa_idx, align 4, !tbaa !14, !noalias !129
  store float 1.000000e+00, ptr %15, align 16, !tbaa !31, !noalias !129
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 20
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !31, !noalias !129
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 40
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !31, !noalias !129
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 60
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !31, !noalias !129
  %i.o = call noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef nonnull %14, i64 noundef 16, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(64) %15, i64 noundef 16, i32 noundef 4), !noalias !129
  %.not393 = icmp eq i32 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13, !noalias !129
  br i1 %.not393, label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.20317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.36333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.52349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.p = load <4 x float>, ptr %15, align 16, !tbaa !14
  %i.q = load <4 x float>, ptr %.sroa.20317.0..sroa_idx, align 16, !tbaa !14
  %i.r = load <4 x float>, ptr %.sroa.36333.0..sroa_idx, align 16, !tbaa !14
  %i.s = load <4 x float>, ptr %.sroa.52349.0..sroa_idx, align 16, !tbaa !14
  br label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit

_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit:             ; preds = %bb.d, %bb.e
  %i.t = phi <4 x float> [ %i.s, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.u = phi <4 x float> [ %i.r, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.v = phi <4 x float> [ %i.q, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  %i.w = phi <4 x float> [ %i.p, %bb.e ], [ zeroinitializer, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13, !noalias !129
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = load <4 x float>, ptr %4, align 4, !tbaa !31 ; 4 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.ad = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.v, <4 x float> %i.ac)
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.u, <4 x float> %i.ae)
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ai = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.t, <4 x float> %i.ag)
  store <4 x float> %i.ai, ptr %19, align 16, !tbaa !14
  %.sroa.7369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.aj = load <4 x float>, ptr %i.x, align 4, !tbaa !31 ; 4 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.am = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.an = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.v, <4 x float> %i.al)
  %i.ao = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.u, <4 x float> %i.an)
  %i.aq = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ar = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.t, <4 x float> %i.ap)
  store <4 x float> %i.ar, ptr %.sroa.7369.0..sroa_idx, align 16, !tbaa !14
  %.sroa.11373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.as = load <4 x float>, ptr %i.y, align 4, !tbaa !31 ; 4 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.av = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.v, <4 x float> %i.au)
  %i.ax = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ay = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.u, <4 x float> %i.aw)
  %i.az = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.t, <4 x float> %i.ay)
  store <4 x float> %i.ba, ptr %.sroa.11373.0..sroa_idx, align 16, !tbaa !14
  %.sroa.15377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.bb = load <4 x float>, ptr %i.z, align 4, !tbaa !31 ; 4 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.w, <4 x float> zeroinitializer)
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.v, <4 x float> %i.bd)
  %i.bg = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.u, <4 x float> %i.bf)
  %i.bi = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.t, <4 x float> %i.bh)
  store <4 x float> %i.bj, ptr %.sroa.15377.0..sroa_idx, align 16, !tbaa !14
  br label %bb.g

.preheader:                                       ; preds = %.preheader397
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bk, i8 0, i64 52, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa !31
  %scevgep.1437 = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %scevgep432.1 = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %scevgep.1437, ptr noundef nonnull align 4 dereferenceable(12) %scevgep432.1, i64 12, i1 false), !tbaa !31
  %scevgep.2438 = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  %scevgep432.2 = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %scevgep.2438, ptr noundef nonnull align 4 dereferenceable(12) %scevgep432.2, i64 12, i1 false), !tbaa !31
  %i.bl = load <1 x float>, ptr %19, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.bn = load <1 x float>, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bq = load <1 x float>, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.bt = load <1 x float>, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bv = load <4 x float>, ptr %4, align 4, !tbaa !31 ; 4 uses
  %i.bw = shufflevector <1 x float> %i.bl, <1 x float> poison, <4 x i32> zeroinitializer
  %i.bx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bv, <4 x float> zeroinitializer)
  %i.by = load <4 x float>, ptr %i.bo, align 4, !tbaa !31 ; 4 uses
  %i.bz = shufflevector <1 x float> %i.bn, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.by, <4 x float> %i.bx)
  %i.cb = load <4 x float>, ptr %i.br, align 4, !tbaa !31 ; 4 uses
  %i.cc = shufflevector <1 x float> %i.bq, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cb, <4 x float> %i.ca)
  %i.ce = load <4 x float>, ptr %i.bu, align 4, !tbaa !31 ; 4 uses
  %i.cf = shufflevector <1 x float> %i.bt, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.ce, <4 x float> %i.cd) ; 4 uses
  %i.ch = load <1 x float>, ptr %scevgep.1437, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.cj = load <1 x float>, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.cl = load <1 x float>, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 28
  %i.cn = load <1 x float>, ptr %i.cm, align 4
  %i.co = shufflevector <1 x float> %i.ch, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.bv, <4 x float> zeroinitializer)
  %i.cq = shufflevector <1 x float> %i.cj, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.by, <4 x float> %i.cp)
  %i.cs = shufflevector <1 x float> %i.cl, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ct = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.cb, <4 x float> %i.cr)
  %i.cu = shufflevector <1 x float> %i.cn, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.ce, <4 x float> %i.ct) ; 4 uses
  %i.cw = load <1 x float>, ptr %scevgep.2438, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 36
  %i.cy = load <1 x float>, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.da = load <1 x float>, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 44
  %i.dc = load <1 x float>, ptr %i.db, align 4
  %i.dd = shufflevector <1 x float> %i.cw, <1 x float> poison, <4 x i32> zeroinitializer
  %i.de = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.bv, <4 x float> zeroinitializer)
  %i.df = shufflevector <1 x float> %i.cy, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.by, <4 x float> %i.de)
  %i.dh = shufflevector <1 x float> %i.da, <1 x float> poison, <4 x i32> zeroinitializer
  %i.di = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.cb, <4 x float> %i.dg)
  %i.dj = shufflevector <1 x float> %i.dc, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.ce, <4 x float> %i.di) ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.dm = load <1 x float>, ptr %i.dl, align 16
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 52
  %i.do = load float, ptr %i.dn, align 4, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !31
  %i.dr = shufflevector <1 x float> %i.dm, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.bv, <4 x float> zeroinitializer)
  %i.dt = insertelement <4 x float> poison, float %i.do, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.by, <4 x float> %i.ds)
  %i.dw = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.cb, <4 x float> %i.dv)
  %i.dz = fadd <4 x float> %i.ce, %i.dy           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13, !noalias !130
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ea, i8 0, i64 56, i1 false), !tbaa !31, !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13, !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %12, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.0461, i64 60, i1 false), !tbaa.struct !33, !noalias !130
  %.sroa.9462.0..sroa_idx463 = getelementptr inbounds nuw i8, ptr %12, i64 60
  store float 1.000000e+00, ptr %.sroa.9462.0..sroa_idx463, align 4, !tbaa !14, !noalias !130
  store float 1.000000e+00, ptr %13, align 16, !tbaa !31, !noalias !130
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 20
  store float 1.000000e+00, ptr %i.eb, align 4, !tbaa !31, !noalias !130
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 40
  store float 1.000000e+00, ptr %i.ec, align 8, !tbaa !31, !noalias !130
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 60
  store float 1.000000e+00, ptr %i.ed, align 4, !tbaa !31, !noalias !130
  %i.ee = call noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef nonnull %12, i64 noundef 16, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(64) %13, i64 noundef 16, i32 noundef 4), !noalias !130
  %.not392 = icmp eq i32 %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13, !noalias !130
  br i1 %.not392, label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152, label %bb.f

bb.f:                                             ; preds = %.preheader
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ef = load <4 x float>, ptr %13, align 16, !tbaa !14
  %i.eg = load <4 x float>, ptr %.sroa.20.0..sroa_idx, align 16, !tbaa !14
  %i.eh = load <4 x float>, ptr %.sroa.36.0..sroa_idx, align 16, !tbaa !14
  %i.ei = load <4 x float>, ptr %.sroa.52.0..sroa_idx, align 16, !tbaa !14
  br label %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152

_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152:          ; preds = %.preheader, %bb.f
  %i.ej = phi <4 x float> [ %i.ei, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.ek = phi <4 x float> [ %i.eh, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.el = phi <4 x float> [ %i.eg, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.em = phi <4 x float> [ %i.ef, %bb.f ], [ zeroinitializer, %.preheader ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13, !noalias !130
  %i.en = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.em, <4 x float> zeroinitializer)
  %i.ep = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.el, <4 x float> %i.eo)
  %i.er = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.ek, <4 x float> %i.eq)
  %i.et = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ej, <4 x float> %i.es)
  store <4 x float> %i.eu, ptr %19, align 16, !tbaa !14
  %i.ev = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.em, <4 x float> zeroinitializer)
  %i.ex = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.el, <4 x float> %i.ew)
  %i.ez = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> %i.ek, <4 x float> %i.ey)
  %i.fb = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.ej, <4 x float> %i.fa)
  store <4 x float> %i.fc, ptr %scevgep.1437, align 16, !tbaa !14
  %i.fd = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.em, <4 x float> zeroinitializer)
  %i.ff = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.el, <4 x float> %i.fe)
  %i.fh = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.ek, <4 x float> %i.fg)
  %i.fj = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.ej, <4 x float> %i.fi)
  store <4 x float> %i.fk, ptr %scevgep.2438, align 16, !tbaa !14
  %i.fl = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.em, <4 x float> zeroinitializer)
  %i.fn = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.el, <4 x float> %i.fm)
  %i.fp = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.ek, <4 x float> %i.fo)
  %i.fr = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.ej, <4 x float> %i.fq)
  store <4 x float> %i.fs, ptr %i.dl, align 16, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit152, %_ZNK2cv4MatxIfLi4ELi4EE3invEiPb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %20) #13
  %i.ft = load i32, ptr %20, align 8, !tbaa !26
  %i.fu = and i32 %i.ft, -4096
  %i.fv = or disjoint i32 %i.fu, 69
  store i32 %i.fv, ptr %20, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %.sroa.3.0.extract.trunc, i32 noundef %.sroa.0382.0.extract.trunc, i32 noundef 69)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.fw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %.noexc
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !34 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph407, label %._crit_edge408.split

.lr.ph407:                                        ; preds = %bb.i
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !28
  %i.gf = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !28
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !35 ; 4 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.preheader, label %._crit_edge408.split

.lr.ph.preheader:                                 ; preds = %.lr.ph407
  %wide.trip.count = zext nneg i32 %i.fz to i64
  %i.gm = zext nneg i32 %i.gk to i64              ; 2 uses
  %min.iters.check = icmp eq i32 %i.gk, 1
  %n.vec = and i64 %i.gm, 2147483646              ; 5 uses
  %i.gn = trunc nuw nsw i64 %n.vec to i32
  %i.go = mul nuw nsw i64 %n.vec, 12
  %i.gp = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert494 = insertelement <2 x float> poison, float %7, i64 0
  %broadcast.splat495 = shufflevector <2 x float> %broadcast.splatinsert494, <2 x float> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.gm
  br label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.gr = mul i64 %i.ge, %indvars.iv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gr ; 3 uses
  %i.gt = mul i64 %i.gi, %indvars.iv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gt ; 3 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  %i.gw = uitofp nneg i32 %i.gv to float          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.gx = getelementptr i8, ptr %i.gu, i64 %i.go
  %i.gy = getelementptr i8, ptr %i.gs, i64 %i.gp
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.gw, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gz = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %i.gu, i64 %i.gz
  %i.ha = shl i64 %index, 3
  %next.gep496 = getelementptr i8, ptr %i.gs, i64 %i.ha
  %wide.load = load <2 x double>, ptr %next.gep496, align 8, !tbaa !53
  %i.hb = fptrunc <2 x double> %wide.load to <2 x float>
  %i.hc = fmul <2 x float> %broadcast.splat495, %i.hb ; 2 uses
  %i.hd = fcmp oeq <2 x float> %i.hc, zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x float> splat (float +qnan), <2 x float> %i.hc ; 2 uses
  %i.hf = uitofp nneg <2 x i32> %vec.ind to <2 x float>
  %i.hg = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hh = shufflevector <2 x float> %i.hf, <2 x float> %broadcast.splatinsert, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hi = fmul <4 x float> %i.hg, %i.hh
  %i.hj = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x float> %i.hi, <4 x float> %i.hj, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0100404.ph = phi i32 [ 0, %.lr.ph ], [ %i.gn, %middle.block ]
  %.0101403.ph = phi ptr [ %i.gu, %.lr.ph ], [ %i.gx, %middle.block ]
  %.0102402.ph = phi ptr [ %i.gs, %.lr.ph ], [ %i.gy, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond440.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond440.not, label %._crit_edge408.split, label %.lr.ph, !llvm.loop !121

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0100404 = phi i32 [ %i.hu, %scalar.ph ], [ %.0100404.ph, %scalar.ph.preheader ] ; 2 uses
  %.0101403 = phi ptr [ %i.hw, %scalar.ph ], [ %.0101403.ph, %scalar.ph.preheader ] ; 4 uses
  %.0102402 = phi ptr [ %i.hv, %scalar.ph ], [ %.0102402.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hl = load double, ptr %.0102402, align 8, !tbaa !53
  %i.hm = fptrunc double %i.hl to float
  %i.hn = fmul float %7, %i.hm                    ; 2 uses
  %i.ho = fcmp oeq float %i.hn, 0.000000e+00
  %.099 = select i1 %i.ho, float +qnan, float %i.hn ; 3 uses
  %i.hp = uitofp nneg i32 %.0100404 to float
  %i.hq = fmul float %.099, %i.hp
  store float %i.hq, ptr %.0101403, align 4, !tbaa !40
  %i.hr = fmul float %.099, %i.gw
  %i.hs = getelementptr inbounds nuw i8, ptr %.0101403, i64 4
  store float %i.hr, ptr %i.hs, align 4, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %.0101403, i64 8
  store float %.099, ptr %i.ht, align 4, !tbaa !42
  %i.hu = add nuw nsw i32 %.0100404, 1            ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0102402, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.0101403, i64 12
  %exitcond.not = icmp eq i32 %i.hu, %i.gk
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !122

._crit_edge408.split:                             ; preds = %._crit_edge, %.lr.ph407, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.hx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.hx, align 8, !tbaa !17
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.hy, align 4, !tbaa !16
  store i32 -2130640827, ptr %22, align 8, !tbaa !32
  %i.hz = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %21, ptr %i.hz, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  %i.ia = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.ib, align 8
  store i32 -2113863611, ptr %23, align 8, !tbaa !32
  store ptr %20, ptr %i.ia, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  %i.ic = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 -1056833531, ptr %24, align 8, !tbaa !32
  %i.id = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %19, ptr %i.id, align 8, !tbaa !19
  store i64 17179869188, ptr %i.ic, align 8, !tbaa !27
  invoke void @_ZN2cv20perspectiveTransformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %._crit_edge408.split
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  %i.ie = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !35 ; 3 uses
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = icmp slt i32 %i.if, 0
  br i1 %i.ih, label %bb.l, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #14
          to label %.noexc156 unwind label %bb.o

.noexc156:                                        ; preds = %bb.l
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.k
  store i64 0, ptr %25, align 8
  %.not.i.i.i.i = icmp eq i32 %i.if, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ii = shl nuw nsw i64 %i.ig, 3                ; 3 uses
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #16
          to label %.noexc157 unwind label %bb.o  ; 5 uses

.noexc157:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ij, ptr %25, align 8, !tbaa !45
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ig
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ij, i8 0, i64 %i.ii, i1 false), !tbaa !31
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ij, i64 %i.ii
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc157
  %i.il = phi ptr [ %i.ij, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.ik, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc157 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.in, align 8, !tbaa !46
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.im, align 8, !tbaa !47
  %i.io = fdiv float 1.000000e+00, %7
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !34
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.ix = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.ji = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  br label %bb.p

._crit_edge424:                                   ; preds = %._crit_edge420, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.jo = phi ptr [ %i.il, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.mr, %._crit_edge420 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge424
  %i.jp = load ptr, ptr %i.in, align 8, !tbaa !46
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jo to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.js) #15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge424, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0461)
  ret void

bb.n:                                             ; preds = %._crit_edge408.split
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.h
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.fx, %bb.h ], [ %i.jt, %bb.n ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.j ], [ %.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.au

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.l
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.p:                                             ; preds = %.lr.ph423, %._crit_edge420
  %i.jv = phi ptr [ %i.il, %.lr.ph423 ], [ %i.mr, %._crit_edge420 ] ; 8 uses
  %indvars.iv449 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next450, %._crit_edge420 ] ; 5 uses
  %i.jw = ptrtoaddr ptr %i.jv to i64
  br i1 %i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !131
  %i.jx = trunc nuw nsw i64 %indvars.iv449 to i32
  store i32 %i.jx, ptr %9, align 4, !tbaa !49, !noalias !131
  %i.jy = trunc i64 %indvars.iv449 to i32
  %i.jz = add i32 %i.jy, 1
  store i32 %i.jz, ptr %i.iu, align 4, !tbaa !50, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !131
  store i64 9223372034707292160, ptr %10, align 8, !noalias !131
  invoke void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !131
  store i32 0, ptr %i.iv, align 8, !tbaa !17
  store i32 0, ptr %i.iw, align 4, !tbaa !16
  store i32 -2130640827, ptr %26, align 8, !tbaa !32
  store ptr %27, ptr %i.ix, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.iy, align 8, !tbaa !31
  store i32 -1056833531, ptr %28, align 8, !tbaa !32
  store ptr %29, ptr %i.ja, align 8, !tbaa !19
  store i64 12884901889, ptr %i.iz, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.jb, align 8, !tbaa !31
  store i32 -1056833531, ptr %30, align 8, !tbaa !32
  store ptr %31, ptr %i.jd, align 8, !tbaa !19
  store i64 12884901889, ptr %i.jc, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i32 -1056833531, ptr %32, align 8, !tbaa !32
  store ptr %2, ptr %i.jf, align 8, !tbaa !19
  store i64 12884901891, ptr %i.je, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  store i32 0, ptr %i.jg, align 8, !tbaa !17
  store i32 0, ptr %i.jh, align 4, !tbaa !16
  store i32 -2130640891, ptr %33, align 8, !tbaa !32
  store ptr %3, ptr %i.ji, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  store i64 0, ptr %i.jk, align 8
  store i32 -2113732571, ptr %34, align 8, !tbaa !32
  store ptr %25, ptr %i.jj, align 8, !tbaa !19
  %i.ka = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.ka, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %.pre = load ptr, ptr %25, align 8, !tbaa !45
  %.pre465 = load ptr, ptr %i.is, align 8, !tbaa !29
  %.pre466 = load i64, ptr %i.it, align 8, !tbaa !28
  %.pre467 = mul i64 %.pre466, %indvars.iv449
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kc, %bb.v ], [ %i.kb, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.kd = load ptr, ptr %25, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166, label %bb.at

bb.x:                                             ; preds = %bb.p
  %i.ke = load ptr, ptr %i.im, align 8, !tbaa !47 ; 3 uses
  %i.kf = load ptr, ptr %i.is, align 8, !tbaa !29 ; 4 uses
  %i.kg = load i64, ptr %i.it, align 8, !tbaa !28
  %i.kh = mul i64 %i.kg, %indvars.iv449           ; 4 uses
  %i.ki = icmp ult ptr %i.jv, %i.ke
  br i1 %i.ki, label %.lr.ph412.preheader, label %.loopexit

.lr.ph412.preheader:                              ; preds = %bb.x
  %i.kj = ptrtoaddr ptr %i.ke to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kh ; 6 uses
  %i.kl = xor i64 %i.jw, -1
  %i.km = add i64 %i.kl, %i.kj                    ; 2 uses
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.km, 24
  br i1 %min.iters.check500, label %.lr.ph412.preheader516, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph412.preheader
  %n.vec502 = and i64 %i.ko, 4611686018427387900  ; 4 uses
  %i.kp = mul i64 %n.vec502, 12
  %i.kq = getelementptr i8, ptr %i.kk, i64 %i.kp
  %i.kr = shl i64 %n.vec502, 3
  %i.ks = getelementptr i8, ptr %i.jv, i64 %i.kr
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next511, %vector.body503 ] ; 3 uses
  %i.kt = mul i64 %index504, 12                   ; 4 uses
  %next.gep505 = getelementptr i8, ptr %i.kk, i64 %i.kt ; 3 uses
  %i.ku = getelementptr i8, ptr %i.kk, i64 %i.kt  ; 3 uses
  %next.gep506 = getelementptr i8, ptr %i.ku, i64 12
  %i.kv = getelementptr i8, ptr %i.kk, i64 %i.kt  ; 3 uses
  %next.gep507 = getelementptr i8, ptr %i.kv, i64 24
  %i.kw = getelementptr i8, ptr %i.kk, i64 %i.kt  ; 3 uses
  %next.gep508 = getelementptr i8, ptr %i.kw, i64 36
  %i.kx = shl i64 %index504, 3
  %next.gep509 = getelementptr i8, ptr %i.jv, i64 %i.kx
  %i.ky = load float, ptr %next.gep505, align 4, !tbaa !40
  %i.kz = load float, ptr %next.gep506, align 4, !tbaa !40
  %i.la = load float, ptr %next.gep507, align 4, !tbaa !40
  %i.lb = load float, ptr %next.gep508, align 4, !tbaa !40
  %i.lc = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 1
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 2
  %i.lf = insertelement <4 x float> %i.le, float %i.lb, i64 3
  %i.lg = getelementptr inbounds nuw i8, ptr %next.gep505, i64 8
  %i.lh = getelementptr i8, ptr %i.ku, i64 20
  %i.li = getelementptr i8, ptr %i.kv, i64 32
  %i.lj = getelementptr i8, ptr %i.kw, i64 44
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !42
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !42
  %i.lm = load float, ptr %i.li, align 4, !tbaa !42
  %i.ln = load float, ptr %i.lj, align 4, !tbaa !42
  %i.lo = insertelement <4 x float> poison, float %i.lk, i64 0
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 1
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 2
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 3 ; 2 uses
  %i.ls = fdiv <4 x float> %i.lf, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %next.gep505, i64 4
  %i.lu = getelementptr i8, ptr %i.ku, i64 16
  %i.lv = getelementptr i8, ptr %i.kv, i64 28
  %i.lw = getelementptr i8, ptr %i.kw, i64 40
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !41
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !41
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !41
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !41
  %i.mb = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 1
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 3
  %i.mf = fdiv <4 x float> %i.me, %i.lr
  %interleaved.vec510 = shufflevector <4 x float> %i.ls, <4 x float> %i.mf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec510, ptr %next.gep509, align 4, !tbaa !31
  %index.next511 = add nuw i64 %index504, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next511, %n.vec502
  br i1 %i.mg, label %middle.block512, label %vector.body503, !llvm.loop !125

middle.block512:                                  ; preds = %vector.body503
  %cmp.n513 = icmp eq i64 %i.ko, %n.vec502
  br i1 %cmp.n513, label %.loopexit, label %.lr.ph412.preheader516

.lr.ph412.preheader516:                           ; preds = %.lr.ph412.preheader, %middle.block512
  %.096410.ph = phi ptr [ %i.kk, %.lr.ph412.preheader ], [ %i.kq, %middle.block512 ]
  %.097409.ph = phi ptr [ %i.jv, %.lr.ph412.preheader ], [ %i.ks, %middle.block512 ]
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %.lr.ph412.preheader516, %.lr.ph412
end_hunk_2
