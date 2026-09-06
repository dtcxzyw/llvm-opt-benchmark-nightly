Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv9composeRTERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_S5_S5_S5_:bb.a
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.k
  %.pn256.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ks ], [ %i.an, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #20
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.j
  %.pn256.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kt ], [ %i.am, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  resume { ptr, i32 } %.pn256.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv11setIdentityERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, double noundef %12) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 18 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %i.a = alloca [9 x double], align 16            ; 11 uses
  %i.b = alloca [27 x double], align 16           ; 23 uses
  %i.c = alloca [3 x double], align 16            ; 6 uses
  %i.d = alloca [9 x double], align 16            ; 7 uses
  %i.e = alloca [14 x double], align 16           ; 28 uses
  %31 = alloca %"class.cv::Matx.0", align 8       ; 14 uses
  %32 = alloca %"class.cv::Matx.0", align 16      ; 14 uses
  %33 = alloca %"class.cv::Matx.0", align 16      ; 14 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.std::allocator", align 1   ; 3 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::allocator", align 1   ; 3 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::allocator", align 1   ; 3 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %44 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %46 = alloca %"class.std::allocator", align 1   ; 3 uses
  %47 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %49 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::allocator", align 1   ; 3 uses
  %52 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %53 = alloca %"class.cv::Vec.1", align 8        ; 6 uses
  %54 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %55 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %56 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %57 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %58 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %59 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.f = alloca [3 x double], align 16            ; 6 uses
  %60 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %61 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %62 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %63 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %64 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %66 = alloca %"class.std::allocator", align 1   ; 3 uses
  %67 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %68 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %69 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %71 = alloca %"class.std::allocator", align 1   ; 3 uses
  %72 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %73 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %74 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %76 = alloca %"class.std::allocator", align 1   ; 3 uses
  %77 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %78 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %79 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %81 = alloca %"class.std::allocator", align 1   ; 3 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %83 = alloca %"class.std::allocator", align 1   ; 3 uses
  %84 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %85 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %86 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.g = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.a
  %i.h = icmp eq i32 %i.g, 65536
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12, !noalias !188
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.j)
          to label %bb.d unwind label %bb.k

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %29) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.k = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !tbaa !31, !alias.scope !189
  store double 1.000000e+00, ptr %31, align 8, !tbaa !31, !alias.scope !189
  %i.l = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 3 uses
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !31, !alias.scope !189
  %i.m = getelementptr inbounds nuw i8, ptr %31, i64 64 ; 2 uses
  store double 1.000000e+00, ptr %i.m, align 8, !tbaa !31, !alias.scope !189
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.n = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %32, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %32, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %32, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %32, i8 0, i64 56, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %32, i64 64
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.t, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  %i.v = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %33, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %33, i8 0, i64 48, i1 false)
  store double 1.000000e+00, ptr %i.aa, align 16, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %33, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %34, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %35, i32 noundef 3, i32 noundef 9, i32 noundef 6, ptr noundef nonnull %i.b, i64 noundef 0)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ad = fcmp ogt double %12, f0x3E80000000000000 ; 2 uses
  %i.ae = load i32, ptr %24, align 8, !tbaa !20   ; 2 uses
  %i.af = and i32 %i.ae, 31                       ; 4 uses
  %i.ag = lshr i32 %i.ae, 5
  %i.ah = and i32 %i.ag, 127                      ; 2 uses
  %i.ai = add nuw nsw i32 %i.ah, 1                ; 3 uses
  %i.aj = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %24, align 8, !tbaa !20
  %i.al = lshr i32 %i.ak, 5
  %i.am = and i32 %i.al, 127
  %i.an = add nuw nsw i32 %i.am, 1
  %i.ao = trunc i64 %i.aj to i32
  %i.ap = mul i32 %i.an, %i.ao                    ; 3 uses
  %i.aq = srem i32 %i.ap, 3
  %i.ar = sdiv i32 %i.ap, 3                       ; 13 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @__func__._ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d, ptr noundef nonnull @.str.1, i32 noundef 535) #21
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.l:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.m:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.n:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.o:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %36, align 8, !tbaa !24   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !25
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn861 = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ax, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.jm

bb.q:                                             ; preds = %bb.g
  %i.bd = add nsw i32 %i.af, -5
  %or.cond = icmp ult i32 %i.bd, 2
  br i1 %or.cond, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @__func__._ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d, ptr noundef nonnull @.str.1, i32 noundef 538) #21
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928

bb.v:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %38, align 8, !tbaa !24   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926: ; preds = %bb.v
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926, %bb.u
  %.pn = phi { ptr, i32 } [ %i.be, %bb.u ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926 ], [ %i.bf, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  br label %bb.jm

bb.w:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !27 ; 4 uses
  %i.bn = icmp eq i32 %i.bm, 1
  %i.bo = icmp eq i32 %i.ai, 3
  %or.cond4 = and i1 %i.bo, %i.bn
  br i1 %or.cond4, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = icmp eq i32 %i.bm, %i.ar
  %i.bq = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.br = load i32, ptr %i.bq, align 4            ; 3 uses
  %i.bs = mul nsw i32 %i.br, %i.ai
  %i.bt = icmp eq i32 %i.bs, 3
  %or.cond1446 = select i1 %i.bp, i1 %i.bt, i1 false
  br i1 %or.cond1446, label %bb.ad, label %._crit_edge1407

._crit_edge1407:                                  ; preds = %bb.x
  %i.bu = icmp eq i32 %i.bm, 3
  %i.bv = icmp eq i32 %i.ah, 0
  %or.cond6 = and i1 %i.bv, %i.bu
  %i.bw = icmp eq i32 %i.br, %i.ar
  %or.cond871 = select i1 %or.cond6, i1 %i.bw, i1 false
  br i1 %or.cond871, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %._crit_edge1407
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @__func__._ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d, ptr noundef nonnull @.str.1, i32 noundef 541) #21
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931

bb.ac:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %40, align 8, !tbaa !24   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i929

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i929: ; preds = %bb.ac
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit931: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i929, %bb.ab
  %.pn764 = phi { ptr, i32 } [ %i.bx, %bb.ab ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i929 ], [ %i.by, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.jm

bb.ad:                                            ; preds = %bb.x, %._crit_edge1407
  %i.ce = phi i32 [ %i.ar, %._crit_edge1407 ], [ %i.br, %bb.x ]
  %i.cf = icmp eq i32 %i.bm, 3
  %i.cg = icmp eq i32 %i.ce, %i.ar
  %or.cond874 = and i1 %i.cf, %i.cg
  br i1 %or.cond874, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %42) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  %i.ch = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i32 0, ptr %i.ch, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %43, i64 20
  store i32 0, ptr %i.ci, align 4, !tbaa !51
  store i32 16842752, ptr %43, align 8, !tbaa !49
  %i.cj = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %24, ptr %i.cj, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  %i.ck = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 0, ptr %i.cl, align 8
  store i32 33619968, ptr %44, align 8, !tbaa !49
  store ptr %42, ptr %i.ck, align 8, !tbaa !12
  invoke void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %i.cm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %42)
          to label %bb.ag unwind label %bb.ai     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %.thread

bb.ah:                                            ; preds = %bb.ae
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn769 = phi { ptr, i32 } [ %i.co, %bb.ai ], [ %i.cn, %bb.ah ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %bb.jm

.thread:                                          ; preds = %bb.w, %bb.ad, %bb.ag
  %i.cp = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.thread
  br i1 %i.cp, label %bb.ar, label %bb.am

bb.al:                                            ; preds = %bb.ar, %.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %46)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull @__func__._ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d, ptr noundef nonnull @.str.1, i32 noundef 549) #21
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit934

bb.aq:                                            ; preds = %bb.an
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %45, align 8, !tbaa !24   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit934, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i932

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i932: ; preds = %bb.aq
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !25
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit934

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit934: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i932, %bb.ap
  %.pn771 = phi { ptr, i32 } [ %i.cr, %bb.ap ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i932 ], [ %i.cs, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  br label %bb.jm

bb.ar:                                            ; preds = %bb.ak
  %i.cy = or disjoint i32 %i.af, 32
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ar, i32 noundef 1, i32 noundef %i.cy, i32 noundef -1, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.as unwind label %bb.al

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  %i.cz = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc935 unwind label %bb.bj

.noexc935:                                        ; preds = %bb.as
  %i.da = icmp eq i32 %i.cz, 65536
  br i1 %i.da, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc935
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !12, !noalias !190
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %i.dc)
          to label %_ZNK2cv11_InputArray6getMatEi.exit938 unwind label %bb.bj

bb.au:                                            ; preds = %.noexc935
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %47, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit938 unwind label %bb.bj

_ZNK2cv11_InputArray6getMatEi.exit938:            ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  %i.dd = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc939 unwind label %bb.bk

.noexc939:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit938
  %i.de = icmp eq i32 %i.dd, 65536
  br i1 %i.de, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.noexc939
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !12, !noalias !191
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %i.dg)
          to label %_ZNK2cv11_InputArray6getMatEi.exit942 unwind label %bb.bk

bb.aw:                                            ; preds = %.noexc939
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit942 unwind label %bb.bk

_ZNK2cv11_InputArray6getMatEi.exit942:            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  %i.dh = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc943 unwind label %bb.bl

.noexc943:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit942
  %i.di = icmp eq i32 %i.dh, 65536
  br i1 %i.di, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc943
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !12, !noalias !192
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %49, ptr noundef nonnull align 8 dereferenceable(208) %i.dk)
          to label %_ZNK2cv11_InputArray6getMatEi.exit946 unwind label %bb.bl

bb.ay:                                            ; preds = %.noexc943
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %49, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit946 unwind label %bb.bl

_ZNK2cv11_InputArray6getMatEi.exit946:            ; preds = %bb.ax, %bb.ay
  %i.dl = load i32, ptr %48, align 8, !tbaa !20   ; 4 uses
  %i.dm = and i32 %i.dl, 31
  %.off = add nsw i32 %i.dm, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.az, label %.critedge876

bb.az:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit946
  %i.dn = getelementptr inbounds nuw i8, ptr %48, i64 72
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !40 ; 6 uses
  %i.dp = icmp slt i32 %i.do, 3
  br i1 %i.dp, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %.noexc947 unwind label %bb.bm

.noexc947:                                        ; preds = %bb.ba
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.46, i32 noundef 109) #21
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc947
  unreachable

bb.bc:                                            ; preds = %.noexc947
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %21, align 8, !tbaa !24   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bc
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !25
  %i.dv = add i64 %i.du, 1
end_hunk_0
begin_hunk_1_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d:bb.a
  %.sroa.2.0.insert.shift.i1025 = shl nuw i64 %.sroa.2.0.insert.ext.i1024, 32
  %.sroa.0.0.insert.ext.i1026 = zext i32 %i.md to i64
  %.sroa.0.0.insert.insert.i1027 = or disjoint i64 %.sroa.2.0.insert.shift.i1025, %.sroa.0.0.insert.ext.i1026
  %i.mf = shl nuw nsw i32 %i.ks, 5
  %i.mg = add nsw i32 %i.mf, -26
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %77, i64 %.sroa.0.0.insert.insert.i1027, i32 noundef %i.mg, ptr noundef nonnull %i.e, i64 noundef 0)
          to label %bb.es unwind label %bb.ev

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #20
  %i.mh = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %78, i64 16
  store i64 0, ptr %i.mi, align 8
  store i32 33619968, ptr %78, align 8, !tbaa !49
  store ptr %77, ptr %i.mh, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %74, ptr noundef nonnull align 8 dereferenceable(24) %78, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.et unwind label %bb.ew

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  %i.mj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.mk = load double, ptr %i.mj, align 16, !tbaa !31 ; 2 uses
  %i.ml = fcmp une double %i.mk, 0.000000e+00
  %i.mm = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.mn = load double, ptr %i.mm, align 8         ; 2 uses
  %i.mo = fcmp une double %i.mn, 0.000000e+00
  %or.cond20 = select i1 %i.ml, i1 true, i1 %i.mo
  br i1 %or.cond20, label %bb.eu, label %bb.ey

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZN2cv27computeTiltProjectionMatrixIdEEvT_S1_PNS_4MatxIS1_Li3ELi3EEES4_S4_S4_(double noundef %i.mk, double noundef %i.mn, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef null)
          to label %bb.ey unwind label %bb.ex

bb.ev:                                            ; preds = %bb.el, %bb.er
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %.body1030

bb.ew:                                            ; preds = %bb.es
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  br label %bb.ez

bb.ex:                                            ; preds = %bb.eu
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ey:                                            ; preds = %bb.eu, %bb.et
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %77) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %.pn803 = phi { ptr, i32 } [ %i.mr, %bb.ex ], [ %i.mq, %bb.ew ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %77) #20
  br label %.body1030

.body1030:                                        ; preds = %bb.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1021, %bb.ez
  %.pn803.pn = phi { ptr, i32 } [ %.pn803, %bb.ez ], [ %i.mp, %bb.ev ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1021 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  br label %bb.jd

bb.fa:                                            ; preds = %bb.ey, %_ZNK2cv11_InputArray6getMatEi.exit1016
  %.0723 = phi i32 [ %i.kv, %bb.ey ], [ 0, %_ZNK2cv11_InputArray6getMatEi.exit1016 ] ; 3 uses
  %i.ms = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.ms, label %bb.fc, label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  %i.mt = shl nsw i32 %i.ar, 1
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %25, i32 noundef %i.mt, i32 noundef 3, i32 noundef 6)
          to label %bb.fd unwind label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.mu = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !29
  %i.mw = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %25, i32 noundef 0)
          to label %bb.fe unwind label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.mx = trunc i64 %i.mw to i32
  br label %bb.fg

bb.ff:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit, %bb.ga, %bb.fy, %bb.fx, %bb.fv, %bb.ft, %bb.fs, %bb.fq, %bb.fo, %bb.fn, %bb.fl, %bb.fj, %bb.fi, %bb.fg, %bb.fd, %bb.fc, %bb.fa
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.jd

bb.fg:                                            ; preds = %bb.fe, %bb.fb
  %.0754 = phi ptr [ %i.mv, %bb.fe ], [ null, %bb.fb ]
  %.0733 = phi i32 [ %i.mx, %bb.fe ], [ 0, %bb.fb ] ; 2 uses
  %i.mz = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.fh unwind label %bb.ff

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.mz, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.na = shl nsw i32 %i.ar, 1
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %26, i32 noundef %i.na, i32 noundef 3, i32 noundef 6)
          to label %bb.fj unwind label %bb.ff

bb.fj:                                            ; preds = %bb.fi
  %i.nb = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !29
  %i.nd = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %26, i32 noundef 0)
          to label %bb.fk unwind label %bb.ff

bb.fk:                                            ; preds = %bb.fj
  %i.ne = trunc i64 %i.nd to i32
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fh
  %.0750 = phi ptr [ %i.nc, %bb.fk ], [ null, %bb.fh ]
  %.0732 = phi i32 [ %i.ne, %bb.fk ], [ 0, %bb.fh ] ; 2 uses
  %i.nf = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.fm unwind label %bb.ff

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.nf, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  %i.ng = shl nsw i32 %i.ar, 1
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %28, i32 noundef %i.ng, i32 noundef 2, i32 noundef 6)
          to label %bb.fo unwind label %bb.ff

bb.fo:                                            ; preds = %bb.fn
  %i.nh = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !29
  %i.nj = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %28, i32 noundef 0)
          to label %bb.fp unwind label %bb.ff

bb.fp:                                            ; preds = %bb.fo
  %i.nk = trunc i64 %i.nj to i32
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fm
  %.0742 = phi ptr [ %i.ni, %bb.fp ], [ null, %bb.fm ]
  %.0730 = phi i32 [ %i.nk, %bb.fp ], [ 0, %bb.fm ] ; 2 uses
  %i.nl = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.fr unwind label %bb.ff

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.nl, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %i.nm = shl nsw i32 %i.ar, 1
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %27, i32 noundef %i.nm, i32 noundef 2, i32 noundef 6)
          to label %bb.ft unwind label %bb.ff

bb.ft:                                            ; preds = %bb.fs
  %i.nn = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !29
  %i.np = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %27, i32 noundef 0)
          to label %bb.fu unwind label %bb.ff

bb.fu:                                            ; preds = %bb.ft
  %i.nq = trunc i64 %i.np to i32
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fr
  %.0738 = phi ptr [ %i.no, %bb.fu ], [ null, %bb.fr ]
  %.0729 = phi i32 [ %i.nq, %bb.fu ], [ 0, %bb.fr ] ; 2 uses
  %i.nr = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.fw unwind label %bb.ff

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.nr, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  %i.ns = shl nsw i32 %i.ar, 1
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %29, i32 noundef %i.ns, i32 noundef %.0723, i32 noundef 6)
          to label %bb.fy unwind label %bb.ff

bb.fy:                                            ; preds = %bb.fx
  %i.nt = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !29
  %i.nv = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %29, i32 noundef 0)
          to label %bb.fz unwind label %bb.ff

bb.fz:                                            ; preds = %bb.fy
  %i.nw = trunc i64 %i.nv to i32
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fw
  %.0746 = phi ptr [ %i.nu, %bb.fz ], [ null, %bb.fw ]
  %.0731 = phi i32 [ %i.nw, %bb.fz ], [ 0, %bb.fw ] ; 2 uses
  %i.nx = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.gb unwind label %bb.ff

bb.gb:                                            ; preds = %bb.ga
  br i1 %i.nx, label %bb.gc, label %bb.gi

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #20
  %i.ny = shl nsw i32 %i.ar, 1
  %87 = mul nsw i32 %i.ar, 3
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %79, i32 noundef %i.ny, i32 noundef %87, i32 noundef 6)
          to label %bb.gd unwind label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.nz = load ptr, ptr %79, align 8, !tbaa !46   ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !48
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8
  invoke void %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull align 8 dereferenceable(688) %79, ptr noundef nonnull align 8 dereferenceable(208) %30, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.gg, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.gd
  %i.od = getelementptr inbounds nuw i8, ptr %79, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.od) #20
  %i.oe = getelementptr inbounds nuw i8, ptr %79, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.oe) #20
  %i.of = getelementptr inbounds nuw i8, ptr %79, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.of) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  %i.og = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !29
  %i.oi = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %30, i32 noundef 0)
          to label %bb.ge unwind label %bb.ff

bb.ge:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.oj = trunc i64 %i.oi to i32
  br label %bb.gi

bb.gf:                                            ; preds = %bb.gc
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gg:                                            ; preds = %bb.gd
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %79) #20
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pn806 = phi { ptr, i32 } [ %i.ol, %bb.gg ], [ %i.ok, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  br label %bb.jd

bb.gi:                                            ; preds = %bb.ge, %bb.gb
  %.0734 = phi ptr [ %i.oh, %bb.ge ], [ null, %bb.gb ]
  %.0728 = phi i32 [ %i.oj, %bb.ge ], [ 0, %bb.gb ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !29
  %i.oo = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = insertelement <4 x ptr> poison, ptr %i.on, i64 0
  %i.ov = insertelement <4 x ptr> %i.ou, ptr %i.op, i64 1
  %i.ow = insertelement <4 x ptr> %i.ov, ptr %i.or, i64 2
  %i.ox = insertelement <4 x ptr> %i.ow, ptr %i.ot, i64 3
  %.fr = freeze <4 x ptr> %i.ox
  %i.oy = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.oz = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8
  %.fr1482 = freeze ptr %i.pa
  %i.pb = icmp ne ptr %.fr1482, null
  %i.pc = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8
  %.not1256 = icmp ne ptr %i.pd, null
  %i.pe = bitcast <4 x i1> %i.oy to i4
  %i.pf = icmp ne i4 %i.pe, 0
  %op.rdx = or i1 %i.pf, %i.pb
  %op.rdx1449 = select i1 %op.rdx, i1 true, i1 %.not1256 ; 2 uses
  br i1 %op.rdx1449, label %.thread1247, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.pg = icmp eq i32 %i.af, 5
  %i.ph = load i32, ptr %47, align 8, !tbaa !20
  %i.pi = and i32 %i.ph, 4095                     ; 2 uses
  br i1 %i.pg, label %bb.gk, label %bb.gr

bb.gk:                                            ; preds = %bb.gj
  %i.pj = icmp eq i32 %i.pi, 5
  br i1 %i.pj, label %bb.gl, label %.thread1247

bb.gl:                                            ; preds = %bb.gk
  switch i32 %.0723, label %bb.gm [
    i32 0, label %.thread1247
    i32 4, label %.thread1247
    i32 5, label %.thread1247
    i32 8, label %.thread1247
    i32 12, label %.thread1247
    i32 14, label %.thread1247
  ]

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %81)
          to label %bb.gn unwind label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @__func__._ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d, ptr noundef nonnull @.str.1, i32 noundef 687) #21
          to label %bb.go unwind label %bb.gq

bb.go:                                            ; preds = %bb.gn
  unreachable

bb.gp:                                            ; preds = %bb.gm
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1035

bb.gq:                                            ; preds = %bb.gn
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pm = load ptr, ptr %80, align 8, !tbaa !24   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1035, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1034

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1034: ; preds = %bb.gq
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !25
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1035

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1035: ; preds = %bb.gq, %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1034
  %.pn819 = phi { ptr, i32 } [ %i.pk, %bb.gp ], [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1034 ], [ %i.pl, %bb.gq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #20
  br label %bb.jd

bb.gr:                                            ; preds = %bb.gj
  %i.pr = icmp eq i32 %i.pi, 6
  br i1 %i.pr, label %bb.gs, label %.thread1247

bb.gs:                                            ; preds = %bb.gr
  switch i32 %.0723, label %bb.gt [
    i32 0, label %.thread1247
    i32 4, label %.thread1247
    i32 5, label %.thread1247
    i32 8, label %.thread1247
    i32 12, label %.thread1247
    i32 14, label %.thread1247
  ]

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %83)
          to label %bb.gu unwind label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @__func__._ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d, ptr noundef nonnull @.str.1, i32 noundef 743) #21
          to label %bb.gv unwind label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  unreachable

bb.gw:                                            ; preds = %bb.gt
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1041

bb.gx:                                            ; preds = %bb.gu
  %i.pt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pu = load ptr, ptr %82, align 8, !tbaa !24   ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1041, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1040

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1040: ; preds = %bb.gx
  %i.px = load i64, ptr %i.pv, align 8, !tbaa !25
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.py) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1041

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1041: ; preds = %bb.gx, %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1040
  %.pn816 = phi { ptr, i32 } [ %i.ps, %bb.gw ], [ %i.pt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1040 ], [ %i.pt, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20
  br label %bb.jd

.thread1247:                                      ; preds = %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gk, %bb.gi, %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #20
  %i.pz = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !40 ; 6 uses
  %i.qb = icmp slt i32 %i.qa, 3
  br i1 %i.qb, label %bb.hb, label %bb.gy

bb.gy:                                            ; preds = %.thread1247
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc1055 unwind label %bb.hl

.noexc1055:                                       ; preds = %bb.gy
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.46, i32 noundef 109) #21
          to label %bb.gz unwind label %bb.ha

bb.gz:                                            ; preds = %.noexc1055
  unreachable

bb.ha:                                            ; preds = %.noexc1055
  %i.qc = landingpad { ptr, i32 }
          cleanup
  %i.qd = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qd, %i.qe
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1047, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1046

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1046: ; preds = %bb.ha
  %i.qg = load i64, ptr %i.qe, align 8, !tbaa !25
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1047

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1047: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1046
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.body1056

bb.hb:                                            ; preds = %.thread1247
  %i.qi = icmp sgt i32 %i.qa, 0
  br i1 %i.qi, label %bb.hc, label %.thread.i1049

.thread.i1049:                                    ; preds = %bb.hb
  %i.qj = icmp eq i32 %i.qa, 0
  %i.qk = zext i1 %i.qj to i32
  br label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.ql = getelementptr inbounds nuw i8, ptr %24, i64 84
  %i.qm = icmp eq i32 %i.qa, 2
  %.sroa.gep1212 = getelementptr inbounds nuw i8, ptr %24, i64 88
  %.sroa.gep1212.val = load i32, ptr %.sroa.gep1212, align 8
  %.val1257 = load i32, ptr %i.ql, align 4        ; 2 uses
  %i.qn = select i1 %i.qm, i32 %.sroa.gep1212.val, i32 %.val1257 ; 2 uses
  %.not.i1054 = icmp eq i32 %i.qa, 1
  br i1 %.not.i1054, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc, %.thread.i1049
  %i.qo = phi i32 [ %i.qk, %.thread.i1049 ], [ %i.qn, %bb.hc ]
  %i.qp = icmp sgt i32 %i.qa, -1
  %i.qq = zext i1 %i.qp to i32
  br label %bb.he

bb.he:                                            ; preds = %bb.hc, %bb.hd
  %i.qr = phi i32 [ %i.qo, %bb.hd ], [ %i.qn, %bb.hc ]
  %i.qs = phi i32 [ %i.qq, %bb.hd ], [ %.val1257, %bb.hc ]
  %.sroa.2.0.insert.ext.i1050 = zext i32 %i.qs to i64
  %.sroa.2.0.insert.shift.i1051 = shl nuw i64 %.sroa.2.0.insert.ext.i1050, 32
  %.sroa.0.0.insert.ext.i1052 = zext i32 %i.qr to i64
  %.sroa.0.0.insert.insert.i1053 = or disjoint i64 %.sroa.2.0.insert.shift.i1051, %.sroa.0.0.insert.ext.i1052
  %i.qt = shl nuw nsw i32 %i.ai, 5
  %i.qu = add nsw i32 %i.qt, -26
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %84, i64 %.sroa.0.0.insert.insert.i1053, i32 noundef %i.qu)
          to label %bb.hf unwind label %bb.hl

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #20
  %i.qv = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %85, i64 16
  store i64 0, ptr %i.qw, align 8
  store i32 33619968, ptr %85, align 8, !tbaa !49
  store ptr %84, ptr %i.qv, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(24) %85, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.hg unwind label %bb.hm

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #20
  %i.qx = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %86, i64 16
  store i64 0, ptr %i.qy, align 8
  store i32 33619968, ptr %86, align 8, !tbaa !49
  store ptr %23, ptr %i.qx, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(24) %86, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.hh unwind label %bb.hn

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  %i.qz = getelementptr inbounds nuw i8, ptr %84, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !29
  %i.rb = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !29
  %i.rd = icmp sgt i32 %i.ap, 2
  br i1 %i.rd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.hh
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.rf = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ri = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 10 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 6 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 7 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 7 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 10 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 10 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 10 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 9 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 9 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 9 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.rw = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.ry = sext i32 %.0729 to i64
  %i.rz = shl nsw i32 %.0729, 1
  %i.sa = sext i32 %i.rz to i64
  %i.sb = sext i32 %.0730 to i64
  %i.sc = shl nsw i32 %.0730, 1
  %i.sd = sext i32 %i.sc to i64
  %i.se = sext i32 %.0731 to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.sg = shl nsw i32 %.0731, 1
  %i.sh = sext i32 %i.sg to i64
  %i.si = shl nsw i32 %.0732, 1
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.sm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.sn = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.so = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.sp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.sr = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ss = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.st = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.su = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.sw = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.sy = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.sz = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ta = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.tb = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.tc = shl nsw i32 %.0733, 1
  %i.td = sext i32 %i.tc to i64
  %i.te = shl nsw i32 %.0728, 1
  %i.tf = sext i32 %i.te to i64
  %i.tg = sext i32 %.0732 to i64                  ; 3 uses
  %i.th = sext i32 %.0733 to i64                  ; 3 uses
  %i.ti = sext i32 %.0728 to i64
  %wide.trip.count = zext nneg i32 %i.ar to i64
  %i.tj = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.tk = insertelement <2 x double> %i.ke, double %.0758, i64 1
  %i.tl = insertelement <2 x double> %i.ke, double %.0758, i64 1 ; 13 uses
  %i.tm = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.tn = insertelement <2 x double> %i.tm, double %i.kd, i64 1
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph, %bb.ih
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ih ] ; 4 uses
  %.17351274 = phi ptr [ %.0734, %.lr.ph ], [ %.3737, %bb.ih ] ; 9 uses
  %.17391273 = phi ptr [ %.0738, %.lr.ph ], [ %.3741, %bb.ih ] ; 5 uses
  %.17431272 = phi ptr [ %.0742, %.lr.ph ], [ %.3745, %bb.ih ] ; 7 uses
  %.17471271 = phi ptr [ %.0746, %.lr.ph ], [ %.3749, %bb.ih ] ; 18 uses
  %.17511270 = phi ptr [ %.0750, %.lr.ph ], [ %.3753, %bb.ih ] ; 9 uses
  %.17551269 = phi ptr [ %.0754, %.lr.ph ], [ %.3757, %bb.ih ] ; 9 uses
  %i.to = getelementptr inbounds nuw [24 x i8], ptr %i.ra, i64 %indvars.iv ; 2 uses
  %i.tp = load double, ptr %i.rg, align 16, !tbaa !31
  %i.tq = load double, ptr %i.rh, align 8, !tbaa !31
  %i.tr = load double, ptr %i.ri, align 16, !tbaa !31
  %i.ts = load double, ptr %i.rj, align 16, !tbaa !31
  %i.tt = load <3 x double>, ptr %i.to, align 8, !tbaa !31 ; 6 uses
  %i.tu = load double, ptr %i.to, align 8, !tbaa !58 ; 3 uses
  %i.tv = load <4 x double>, ptr %i.a, align 16, !tbaa !31 ; 3 uses
  %i.tw = load <2 x double>, ptr %i.rf, align 16, !tbaa !31
  %i.tx = shufflevector <3 x double> %i.tt, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.ty = shufflevector <2 x double> %i.tw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.tz = shufflevector <4 x double> %i.tv, <4 x double> %i.ty, <2 x i32> <i32 1, i32 4>
  %i.ua = fmul <2 x double> %i.tx, %i.tz
  %i.ub = shufflevector <4 x double> %i.tv, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.uc = shufflevector <3 x double> %i.tt, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ub, <2 x double> %i.uc, <2 x double> %i.ua)
  %i.ue = shufflevector <4 x double> %i.tv, <4 x double> %i.ty, <2 x i32> <i32 2, i32 5>
  %i.uf = shufflevector <3 x double> %i.tt, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.ug = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ue, <2 x double> %i.uf, <2 x double> %i.ud)
  %i.uh = load <2 x double>, ptr %i.c, align 16, !tbaa !31
  %i.ui = fadd <2 x double> %i.uh, %i.ug
  %i.uj = extractelement <3 x double> %i.tt, i64 1 ; 2 uses
  %i.uk = fmul double %i.uj, %i.tq
  %i.ul = call double @llvm.fmuladd.f64(double %i.tp, double %i.tu, double %i.uk)
  %i.um = extractelement <3 x double> %i.tt, i64 2 ; 5 uses
  %i.un = call double @llvm.fmuladd.f64(double %i.tr, double %i.um, double %i.ul)
  %i.uo = fadd double %i.ts, %i.un                ; 3 uses
  %i.up = fcmp une double %i.uo, 0.000000e+00
  %i.uq = fdiv double 1.000000e+00, %i.uo
  %i.ur = select i1 %i.up, double %i.uq, double 1.000000e+00 ; 14 uses
  %i.us = insertelement <2 x double> poison, double %i.ur, i64 0
  %i.ut = shufflevector <2 x double> %i.us, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.uu = fmul <2 x double> %i.ui, %i.ut          ; 17 uses
  %i.uv = extractelement <2 x double> %i.uu, i64 1 ; 15 uses
  %i.uw = fmul double %i.uv, %i.uv
  %i.ux = extractelement <2 x double> %i.uu, i64 0 ; 10 uses
  %i.uy = fmul <2 x double> %i.uu, splat (double 2.000000e+00) ; 13 uses
  %i.uz = extractelement <2 x double> %i.uy, i64 1 ; 3 uses
  %i.va = extractelement <2 x double> %i.uy, i64 0
  %i.vb = fmul double %i.uv, %i.va                ; 3 uses
  %i.vc = load double, ptr %i.rn, align 16, !tbaa !31
  %i.vd = load double, ptr %i.ro, align 8, !tbaa !31
  %i.ve = load <2 x double>, ptr %i.rp, align 16
  %i.vf = load <2 x double>, ptr %i.rq, align 8
  %i.vg = insertelement <2 x double> poison, double %i.vb, i64 0
  %i.vh = shufflevector <2 x double> %i.ve, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vi = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vj = load <4 x double>, ptr %i.rr, align 16, !tbaa !31 ; 2 uses
  %i.vk = shufflevector <4 x double> %i.vj, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.vl = shufflevector <4 x double> %i.vj, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.vm = load <4 x double>, ptr %31, align 8, !tbaa !31, !noalias !195 ; 3 uses
  %i.vn = shufflevector <4 x double> %i.vm, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.vo = load <2 x double>, ptr %i.l, align 8, !tbaa !31, !noalias !195
  %i.vp = shufflevector <2 x double> %i.vo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vq = shufflevector <4 x double> %i.vp, <4 x double> %i.vm, <2 x i32> <i32 0, i32 5>
  %i.vr = shufflevector <4 x double> %i.vp, <4 x double> %i.vm, <2 x i32> <i32 1, i32 6>
  %i.vs = load double, ptr %i.rw, align 8, !tbaa !31, !noalias !195
  %i.vt = load double, ptr %i.rx, align 8, !tbaa !31, !noalias !195
  %i.vu = load double, ptr %i.m, align 8, !tbaa !31, !noalias !195
  %i.vv = load double, ptr %i.rk, align 8, !tbaa !31
  %i.vw = load double, ptr %i.e, align 16, !tbaa !31
  %i.vx = call double @llvm.fmuladd.f64(double %i.ux, double %i.ux, double %i.uw) ; 18 uses
  %i.vy = insertelement <2 x double> poison, double %i.vx, i64 0
  %i.vz = shufflevector <2 x double> %i.vy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uy, <2 x double> %i.uu, <2 x double> %i.vz) ; 5 uses
  %i.wb = call double @llvm.fmuladd.f64(double %i.vw, double %i.vx, double 1.000000e+00)
  %i.wc = load <2 x double>, ptr %i.rl, align 16, !tbaa !31 ; 2 uses
  %i.wd = insertelement <2 x double> %i.wa, double %i.vb, i64 0
  %i.we = fmul <2 x double> %i.wd, %i.vh
  %i.wf = insertelement <2 x double> %i.wa, double %i.vb, i64 1
  %i.wg = fmul double %i.vx, %i.vx                ; 15 uses
  %i.wh = fmul double %i.vx, %i.wg                ; 2 uses
  %i.wi = insertelement <2 x double> %i.wc, double %i.vv, i64 0
  %i.wj = insertelement <2 x double> poison, double %i.wg, i64 0 ; 2 uses
  %i.wk = insertelement <2 x double> %i.wj, double %i.vx, i64 1 ; 6 uses
  %i.wl = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.wb, i64 0
  %i.wm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wi, <2 x double> %i.wk, <2 x double> %i.wl)
  %i.wn = insertelement <2 x double> %i.wc, double %i.vc, i64 1
  %i.wo = insertelement <2 x double> poison, double %i.wh, i64 0 ; 2 uses
  %i.wp = insertelement <2 x double> %i.wo, double %i.wg, i64 1
  %i.wq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wp, <2 x double> %i.wm) ; 8 uses
  %i.wr = extractelement <2 x double> %i.wq, i64 0 ; 6 uses
  %i.ws = extractelement <2 x double> %i.wq, i64 1
  %i.wt = call double @llvm.fmuladd.f64(double %i.vd, double %i.wh, double %i.ws)
  %i.wu = fdiv double 1.000000e+00, %i.wt         ; 35 uses
  %i.wv = shufflevector <2 x double> %i.wq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ww = fmul <2 x double> %i.uu, %i.wv          ; 9 uses
  %i.wx = insertelement <2 x double> poison, double %i.wu, i64 0
  %i.wy = shufflevector <2 x double> %i.wx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.wz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ww, <2 x double> %i.wy, <2 x double> %i.we)
  %i.xa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %i.wf, <2 x double> %i.wz)
  %i.xb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %i.vz, <2 x double> %i.xa)
  %i.xc = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.xd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vl, <2 x double> %i.xc, <2 x double> %i.xb) ; 6 uses
  %i.xe = shufflevector <2 x double> %i.xd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.xf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vn, <2 x double> %i.xe, <2 x double> zeroinitializer)
  %i.xg = shufflevector <2 x double> %i.xd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vq, <2 x double> %i.xg, <2 x double> %i.xf)
  %i.xi = fadd <2 x double> %i.vr, %i.xh          ; 2 uses
  %i.xj = extractelement <2 x double> %i.xd, i64 0
  %i.xk = call double @llvm.fmuladd.f64(double %i.vs, double %i.xj, double 0.000000e+00)
  %i.xl = extractelement <2 x double> %i.xd, i64 1 ; 5 uses
  %i.xm = call double @llvm.fmuladd.f64(double %i.vt, double %i.xl, double %i.xk)
  %i.xn = fadd double %i.vu, %i.xm                ; 3 uses
  %i.xo = fcmp une double %i.xn, 0.000000e+00
  %i.xp = fdiv double 1.000000e+00, %i.xn
  %i.xq = select i1 %i.xo, double %i.xp, double 1.000000e+00 ; 3 uses
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %i.rc, i64 %indvars.iv
  %i.xs = insertelement <2 x double> poison, double %i.xq, i64 0
  %i.xt = shufflevector <2 x double> %i.xs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xu = fmul <2 x double> %i.xi, %i.xt          ; 4 uses
  %i.xv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xu, <2 x double> %i.tl, <2 x double> %i.tn)
  %i.xw = shufflevector <2 x double> %i.xv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.xw, ptr %i.xr, align 8, !tbaa !31
  br i1 %op.rdx1449, label %bb.hj, label %bb.ih

bb.hj:                                            ; preds = %bb.hi
  %i.xx = load ptr, ptr %i.os, align 8, !tbaa !29
  %.not826 = icmp eq ptr %i.xx, null
  br i1 %.not826, label %bb.hp, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.17391273, align 8, !tbaa !31
  %i.xy = getelementptr inbounds [8 x i8], ptr %.17391273, i64 %i.ry
end_hunk_1
