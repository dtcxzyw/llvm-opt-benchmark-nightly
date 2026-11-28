Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/quaternion?download=true
inline.NumInlined: 860
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc17
  unreachable

bb.s:                                             ; preds = %.noexc17
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.body

_ZN2cv8MatShapeixEm.exit.i.i:                     ; preds = %.noexc16
  %i.an = zext nneg i32 %i.ae to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 84 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !47
  %i.ar = sext i32 %i.aq to i64
  %i.as = udiv i64 %i.aa, %i.ar
  %i.at = icmp ult i64 %i.as, 2147483648
  br i1 %i.at, label %bb.y, label %bb.t

bb.t:                                             ; preds = %_ZN2cv8MatShapeixEm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @"__func__._ZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_", ptr noundef nonnull @.str.23, i32 noundef 723) #16
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

bb.x:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.x
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i, %bb.w
  %.pn.i.i = phi { ptr, i32 } [ %i.au, %bb.w ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i ], [ %i.av, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.body

bb.y:                                             ; preds = %_ZN2cv8MatShapeixEm.exit.i.i
  %i.bb = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %.noexc18 unwind label %bb.ae

.noexc18:                                         ; preds = %bb.y
  %i.bc = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  %i.be = load i32, ptr %i.ab, align 8, !tbaa !46
  %narrow.i14.i.i = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %i.bf = icmp ult i32 %i.bd, %narrow.i14.i.i
  br i1 %i.bf, label %_ZN2cv8MatShapeixEm.exit19.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc19 unwind label %bb.ae

.noexc19:                                         ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #16
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc19
  unreachable

bb.ab:                                            ; preds = %.noexc19
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i: ; preds = %bb.ab
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !16
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body

_ZN2cv8MatShapeixEm.exit19.i.i:                   ; preds = %.noexc18
  %i.bm = zext nneg i32 %i.bd to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !47
  %i.bp = sext i32 %i.bo to i64
  %i.bq = udiv i64 %i.bb, %i.bp
  %i.br = trunc i64 %i.bq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store i32 0, ptr %10, align 4, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_E21PixelOperationWrapper", i64 16), ptr %11, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %14, ptr %i.bt, align 8, !tbaa !55
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef -1.000000e+00)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN2cv8MatShapeixEm.exit19.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.body

bb.ad:                                            ; preds = %_ZN2cv8MatShapeixEm.exit19.i.i
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  ret void

bb.ae:                                            ; preds = %bb.z, %bb.y, %bb.q, %bb.p, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17.i.i, %bb.ac, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.ae ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17.i.i ], [ %.pn8.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bu, %bb.ac ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.af

bb.af:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn14
}

declare void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8ximgproc4qdftERKNS_11_InputArrayERKNS_12_OutputArrayEib(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::vector", align 8       ; 16 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %20 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %21 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %22 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %23 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %24 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %25 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %26 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %27 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %28 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %29 = alloca %"class.std::vector", align 8      ; 18 uses
  %30 = alloca [2 x %"class.cv::Mat"], align 8    ; 11 uses
  %31 = alloca %"class.std::vector", align 8      ; 19 uses
  %32 = alloca [2 x %"class.cv::Mat"], align 8    ; 11 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %37 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %40 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %41 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %42 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %44 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %45 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %46 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %47 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %48 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %50 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %51 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %52 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %53 = alloca %"class.std::vector", align 8      ; 14 uses
  %54 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %55 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %56 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %57 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %58 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %59 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %60 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %61 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %62 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %63 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %64 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %65 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %66 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %67 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %68 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %69 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %70 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %71 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %72 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %73 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv8ximgproc4qdftERKNS_11_InputArrayERKNS_12_OutputArrayEibE24__cv_trace_location_fn55)
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %i.a, 31
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i32 %i.d, 2
  %i.f = and i32 %i.a, 4064
  %i.g = icmp eq i32 %i.f, 96
  %or.cond = and i1 %i.g, %i.e
  br i1 %or.cond, label %bb.k, label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.f:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8ximgproc4qdftERKNS_11_InputArrayERKNS_12_OutputArrayEib, ptr noundef nonnull @.str.1, i32 noundef 58) #16
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.i, %bb.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.fu

bb.k:                                             ; preds = %bb.d
  %. = select i1 %3, float 1.000000e+00, float -1.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.r, !noalias !70

.noexc:                                           ; preds = %bb.k
  %i.q = icmp eq i32 %i.p, 65536
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25, !noalias !70
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.r

bb.m:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.r

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.l, %bb.m
  %i.t = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.n unwind label %bb.s       ; 0 uses

bb.n:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !56
  %i.w = invoke noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef %i.v)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.x = load i32, ptr %i.u, align 8, !tbaa !56
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ab = invoke noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef %i.aa)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.aa, label %bb.v

bb.r:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn87 = phi { ptr, i32 } [ %i.af, %bb.s ], [ %i.ae, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ft

bb.u:                                             ; preds = %bb.p, %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.v:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8ximgproc4qdftERKNS_11_InputArrayERKNS_12_OutputArrayEib, ptr noundef nonnull @.str.1, i32 noundef 69) #16
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.z:                                             ; preds = %bb.w
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc4qdftERKNS_11_InputArrayERKNS_12_OutputArrayEib:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %8, ptr %i.aq, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.as, align 8
  store i32 33882112, ptr %13, align 8, !tbaa !24
  store ptr %7, ptr %i.ar, align 8, !tbaa !25
  invoke void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ab unwind label %bb.bh

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.at = load ptr, ptr %7, align 8, !tbaa !19
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(208) %i.at)
          to label %bb.ac unwind label %bb.bi

bb.ac:                                            ; preds = %bb.ab
  %i.au = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.ad unwind label %bb.bj     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.av = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 416
  invoke void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(208) %i.aw, ptr noundef nonnull align 8 dereferenceable(208) %i.ax)
          to label %bb.ae unwind label %bb.bl

bb.ae:                                            ; preds = %bb.ad
  %i.ay = load ptr, ptr %7, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 624
  invoke void @_ZN2cvplERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.az)
          to label %bb.af unwind label %bb.bm

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cvdvERKNS_7MatExprEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(688) %20, double noundef f0x3FFBB67AE8584CAA)
          to label %bb.ag unwind label %bb.bn

bb.ag:                                            ; preds = %bb.af
  %i.ba = load ptr, ptr %19, align 8, !tbaa !38   ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(688) %19, ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.bo, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.ag
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.be) #17
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bf) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bg) #17
  %i.bh = getelementptr inbounds nuw i8, ptr %20, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #17
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bi) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bj) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %21, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bk) #17
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bl) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.bn = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 416
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 624
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %i.bo, ptr noundef nonnull align 8 dereferenceable(208) %i.bp)
          to label %bb.ah unwind label %bb.bs

bb.ah:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  invoke void @_ZN2cvdvERKNS_7MatExprEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %22, ptr noundef nonnull align 8 dereferenceable(688) %23, double noundef f0x3FF6A09E667F3BCD)
          to label %bb.ai unwind label %bb.bt

bb.ai:                                            ; preds = %bb.ah
  %i.bq = load ptr, ptr %22, align 8, !tbaa !38   ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(688) %22, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit179 unwind label %bb.bu, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit179:              ; preds = %bb.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %22, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bu) #17
  %i.bv = getelementptr inbounds nuw i8, ptr %22, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bv) #17
  %i.bw = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bw) #17
  %i.bx = getelementptr inbounds nuw i8, ptr %23, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bx) #17
  %i.by = getelementptr inbounds nuw i8, ptr %23, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.by) #17
  %i.bz = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bz) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.ca = fpext float %. to double                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  %i.cb = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 624
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 416
  invoke void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %27, ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull align 8 dereferenceable(208) %i.cd)
          to label %bb.aj unwind label %bb.bx

bb.aj:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  %i.ce = load ptr, ptr %7, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 208
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %28, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(208) %i.cf)
          to label %bb.ak unwind label %bb.by

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cvmiERKNS_7MatExprES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %26, ptr noundef nonnull align 8 dereferenceable(688) %27, ptr noundef nonnull align 8 dereferenceable(688) %28)
          to label %bb.al unwind label %bb.bz

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cvmlEdRKNS_7MatExprE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %25, double noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(688) %26)
          to label %bb.am unwind label %bb.ca

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cvdvERKNS_7MatExprEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %24, ptr noundef nonnull align 8 dereferenceable(688) %25, double noundef f0x4003988E1409212E)
          to label %bb.an unwind label %bb.cb

bb.an:                                            ; preds = %bb.am
  %i.cg = load ptr, ptr %24, align 8, !tbaa !38   ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(688) %24, ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit181 unwind label %bb.cc, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit181:              ; preds = %bb.an
  %i.ck = getelementptr inbounds nuw i8, ptr %24, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ck) #17
  %i.cl = getelementptr inbounds nuw i8, ptr %24, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cl) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cm) #17
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cn) #17
  %i.co = getelementptr inbounds nuw i8, ptr %25, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.co) #17
  %i.cp = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cp) #17
  %i.cq = getelementptr inbounds nuw i8, ptr %26, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cq) #17
  %i.cr = getelementptr inbounds nuw i8, ptr %26, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cr) #17
  %i.cs = getelementptr inbounds nuw i8, ptr %26, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cs) #17
  %i.ct = getelementptr inbounds nuw i8, ptr %28, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ct) #17
  %i.cu = getelementptr inbounds nuw i8, ptr %28, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cu) #17
  %i.cv = getelementptr inbounds nuw i8, ptr %28, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cv) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  %i.cw = getelementptr inbounds nuw i8, ptr %27, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cw) #17
  %i.cx = getelementptr inbounds nuw i8, ptr %27, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cx) #17
  %i.cy = getelementptr inbounds nuw i8, ptr %27, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cy) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.ao unwind label %.thread

.thread:                                          ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit181
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit251.a

bb.ao:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit181
  %i.da = getelementptr inbounds nuw i8, ptr %30, i64 208 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.da, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.ap unwind label %.loopexit251.loopexit258

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.db = invoke noalias noundef nonnull dereferenceable(416) ptr @_Znwm(i64 noundef 416) #19
          to label %.noexc228 unwind label %bb.at ; 6 uses

.noexc228:                                        ; preds = %bb.ap
  store ptr %i.db, ptr %29, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 416
  %i.dd = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !20
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.db, ptr noundef nonnull align 8 dereferenceable(208) %30)
          to label %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread285

.thread285:                                       ; preds = %.noexc228
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  %i.dg = call ptr @__cxa_begin_catch(ptr %i.df) #17 ; 0 uses
  br label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc228
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dh, ptr noundef nonnull align 8 dereferenceable(208) %i.da)
          to label %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 416
  %i.dj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %30, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dk) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.av unwind label %.thread248

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  %i.dn = call ptr @__cxa_begin_catch(ptr %i.dm) #17 ; 0 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.db) #17
  br label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread285
  invoke void @__cxa_rethrow() #16
          to label %bb.as unwind label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body229 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #20
  unreachable

bb.as:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  unreachable

bb.at:                                            ; preds = %bb.ap
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body229

.body229:                                         ; preds = %bb.aq, %bb.at
  %eh.lpad-body230 = phi { ptr, i32 } [ %i.dr, %bb.at ], [ %i.do, %bb.aq ]
  %i.ds = load ptr, ptr %29, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i, label %.body, label %bb.au

bb.au:                                            ; preds = %.body229
  %i.dt = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !20
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #18
  br label %.body

.thread248:                                       ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.av:                                            ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.dz = getelementptr inbounds nuw i8, ptr %32, i64 208 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dz, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.aw unwind label %.loopexit.loopexit257.a

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.ea = invoke noalias noundef nonnull dereferenceable(416) ptr @_Znwm(i64 noundef 416) #19
          to label %.noexc241 unwind label %bb.ba ; 6 uses

.noexc241:                                        ; preds = %bb.aw
  store ptr %i.ea, ptr %31, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 416
  %i.ec = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !20
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ea, ptr noundef nonnull align 8 dereferenceable(208) %32)
          to label %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i239 unwind label %.thread288

.thread288:                                       ; preds = %.noexc241
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %i.ee) #17 ; 0 uses
  br label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i238

_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i239: ; preds = %.noexc241
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.eg, ptr noundef nonnull align 8 dereferenceable(208) %i.dz)
          to label %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i239.1 unwind label %.lr.ph.i.i.i.i.i.i.i235.preheader

_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i239.1: ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i239
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 416
  %i.ei = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !21
  %i.ej = getelementptr inbounds nuw i8, ptr %32, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ej) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %33) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %34) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %35) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %36) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #17
  %i.ek = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i32 0, ptr %i.ek, align 8, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %37, i64 20
  store i32 0, ptr %i.el, align 4, !tbaa !42
  store i32 17104896, ptr %37, align 8, !tbaa !24
  %i.em = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %29, ptr %i.em, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #17
  %i.en = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %38, i64 16
  store i64 0, ptr %i.eo, align 8
  store i32 33619968, ptr %38, align 8, !tbaa !24
  store ptr %33, ptr %i.en, align 8, !tbaa !25
  invoke void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.bc unwind label %bb.ci

.lr.ph.i.i.i.i.i.i.i235.preheader:                ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i239
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #17 ; 0 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ea) #17
  br label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i238

_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i238: ; preds = %.lr.ph.i.i.i.i.i.i.i235.preheader, %.thread288
  invoke void @__cxa_rethrow() #16
          to label %bb.az unwind label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i238
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body242 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #20
  unreachable

bb.az:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i238
  unreachable

bb.ba:                                            ; preds = %bb.aw
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body242

.body242:                                         ; preds = %bb.ax, %bb.ba
  %eh.lpad-body243 = phi { ptr, i32 } [ %i.ev, %bb.ba ], [ %i.es, %bb.ax ]
  %i.ew = load ptr, ptr %31, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i182, label %.body184, label %bb.bb

bb.bb:                                            ; preds = %.body242
  %i.ex = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !20
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #18
  br label %.body184

bb.bc:                                            ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i239.1
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #17
  %i.fc = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i32 0, ptr %i.fc, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %39, i64 20
  store i32 0, ptr %i.fd, align 4, !tbaa !42
  store i32 17104896, ptr %39, align 8, !tbaa !24
  %i.fe = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %31, ptr %i.fe, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #17
  %i.ff = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 0, ptr %i.fg, align 8
  store i32 33619968, ptr %40, align 8, !tbaa !24
  store ptr %34, ptr %i.ff, align 8, !tbaa !25
  invoke void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.bd unwind label %bb.cj

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  %i.fh = and i32 %2, 1
  %.not = icmp eq i32 %i.fh, 0
  br i1 %.not, label %bb.cm, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #17
  %i.fi = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 0, ptr %i.fi, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %41, i64 20
  store i32 0, ptr %i.fj, align 4, !tbaa !42
  store i32 16842752, ptr %41, align 8, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %33, ptr %i.fk, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  %i.fl = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 0, ptr %i.fm, align 8
  store i32 33619968, ptr %42, align 8, !tbaa !24
  store ptr %35, ptr %i.fl, align 8, !tbaa !25
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %42, i32 noundef 19, i32 noundef 0)
          to label %bb.bf unwind label %bb.ck

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #17
  %i.fn = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i32 0, ptr %i.fn, align 8, !tbaa !41
  %i.fo = getelementptr inbounds nuw i8, ptr %43, i64 20
  store i32 0, ptr %i.fo, align 4, !tbaa !42
  store i32 16842752, ptr %43, align 8, !tbaa !24
  %i.fp = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %34, ptr %i.fp, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #17
  %i.fq = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 0, ptr %i.fr, align 8
  store i32 33619968, ptr %44, align 8, !tbaa !24
  store ptr %36, ptr %i.fq, align 8, !tbaa !25
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef 19, i32 noundef 0)
          to label %bb.bg unwind label %bb.cl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #17
  br label %bb.cr

bb.bh:                                            ; preds = %bb.aa
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.ft

bb.bi:                                            ; preds = %bb.ab
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ac
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #17
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn94 = phi { ptr, i32 } [ %i.fu, %bb.bj ], [ %i.ft, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.fs

bb.bl:                                            ; preds = %bb.ad
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bm:                                            ; preds = %bb.ae
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %bb.af
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.ag
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #17
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn96 = phi { ptr, i32 } [ %i.fy, %bb.bo ], [ %i.fx, %bb.bn ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %20) #17
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %bb.bp ], [ %i.fw, %bb.bm ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #17
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.pn96.pn.pn = phi { ptr, i32 } [ %.pn96.pn, %bb.bq ], [ %i.fv, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %bb.fs

bb.bs:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bt:                                            ; preds = %bb.ah
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.ai
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %22) #17
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn100 = phi { ptr, i32 } [ %i.gb, %bb.bu ], [ %i.ga, %bb.bt ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %23) #17
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.bv ], [ %i.fz, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.fs

bb.bx:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit179
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.by:                                            ; preds = %bb.aj
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bz:                                            ; preds = %bb.ak
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ca:                                            ; preds = %bb.al
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cb:                                            ; preds = %bb.am
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.an
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %24) #17
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn103 = phi { ptr, i32 } [ %i.gh, %bb.cc ], [ %i.gg, %bb.cb ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %25) #17
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %bb.cd ], [ %i.gf, %bb.ca ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %26) #17
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bz
  %.pn103.pn.pn = phi { ptr, i32 } [ %.pn103.pn, %bb.ce ], [ %i.ge, %bb.bz ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %28) #17
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.by
  %.pn103.pn.pn.pn = phi { ptr, i32 } [ %.pn103.pn.pn, %bb.cf ], [ %i.gd, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %27) #17
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.bx
  %.pn103.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn103.pn.pn.pn, %bb.cg ], [ %i.gc, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %bb.fs

.loopexit251.loopexit258:                         ; preds = %bb.ao
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #17
  br label %.loopexit251.a

.body:                                            ; preds = %.body229, %bb.au
  %i.gj = getelementptr inbounds nuw i8, ptr %30, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gj) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #17
  br label %.loopexit251.a

.loopexit251.a:                                   ; preds = %.loopexit251.loopexit258, %.body, %.thread
  %.pn109 = phi { ptr, i32 } [ %eh.lpad-body230, %.body ], [ %i.cz, %.thread ], [ %i.gi, %.loopexit251.loopexit258 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  br label %bb.fr

.loopexit.loopexit257.a:                          ; preds = %bb.av
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #17
  br label %.loopexit

.body184:                                         ; preds = %.body242, %bb.bb
  %i.gk = getelementptr inbounds nuw i8, ptr %32, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gk) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit257.a, %.body184, %.thread248
  %.pn111 = phi { ptr, i32 } [ %eh.lpad-body243, %.body184 ], [ %i.dy, %.thread248 ], [ %74, %.loopexit.loopexit257.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  br label %bb.fq

bb.ci:                                            ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i239.1
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  br label %bb.fp

bb.cj:                                            ; preds = %bb.bc
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  br label %bb.fp

bb.ck:                                            ; preds = %bb.be
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  br label %bb.fp

bb.cl:                                            ; preds = %bb.bf
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #17
  br label %bb.fp

bb.cm:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  %i.gp = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i32 0, ptr %i.gp, align 8, !tbaa !41
  %i.gq = getelementptr inbounds nuw i8, ptr %45, i64 20
  store i32 0, ptr %i.gq, align 4, !tbaa !42
  store i32 16842752, ptr %45, align 8, !tbaa !24
  %i.gr = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %33, ptr %i.gr, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #17
  %i.gs = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i64 0, ptr %i.gt, align 8
  store i32 33619968, ptr %46, align 8, !tbaa !24
  store ptr %35, ptr %i.gs, align 8, !tbaa !25
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46, i32 noundef 16, i32 noundef 0)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #17
  %i.gu = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i32 0, ptr %i.gu, align 8, !tbaa !41
  %i.gv = getelementptr inbounds nuw i8, ptr %47, i64 20
  store i32 0, ptr %i.gv, align 4, !tbaa !42
  store i32 16842752, ptr %47, align 8, !tbaa !24
  %i.gw = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %34, ptr %i.gw, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #17
  %i.gx = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i64 0, ptr %i.gy, align 8
  store i32 33619968, ptr %48, align 8, !tbaa !24
  store ptr %36, ptr %i.gx, align 8, !tbaa !25
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %48, i32 noundef 16, i32 noundef 0)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #17
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cm
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  br label %bb.fp

bb.cq:                                            ; preds = %bb.cn
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #17
  br label %bb.fp

bb.cr:                                            ; preds = %bb.co, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #17
  %i.hb = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i32 0, ptr %i.hb, align 8, !tbaa !41
  %i.hc = getelementptr inbounds nuw i8, ptr %49, i64 20
  store i32 0, ptr %i.hc, align 4, !tbaa !42
  store i32 16842752, ptr %49, align 8, !tbaa !24
  %i.hd = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %35, ptr %i.hd, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #17
  %i.he = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i64 0, ptr %i.hf, align 8
  store i32 33882112, ptr %50, align 8, !tbaa !24
  store ptr %29, ptr %i.he, align 8, !tbaa !25
  invoke void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.cs unwind label %bb.dv

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #17
  %i.hg = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i32 0, ptr %i.hg, align 8, !tbaa !41
  %i.hh = getelementptr inbounds nuw i8, ptr %51, i64 20
  store i32 0, ptr %i.hh, align 4, !tbaa !42
  store i32 16842752, ptr %51, align 8, !tbaa !24
  %i.hi = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %36, ptr %i.hi, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #17
  %i.hj = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i64 0, ptr %i.hk, align 8
  store i32 33882112, ptr %52, align 8, !tbaa !24
  store ptr %31, ptr %i.hj, align 8, !tbaa !25
  invoke void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(24) %52)
          to label %bb.ct unwind label %bb.dw

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #17
  %i.hl = invoke noalias noundef nonnull dereferenceable(832) ptr @_Znwm(i64 noundef 832) #19
          to label %.noexc187 unwind label %bb.dx ; 7 uses

.noexc187:                                        ; preds = %bb.ct
  store ptr %i.hl, ptr %53, align 8, !tbaa !19
  %i.hm = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 832
  %i.ho = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.hl) #17
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.hp) #17
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.hq) #17
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 624
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.hr) #17
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 832
  store ptr %i.hs, ptr %i.hm, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #17
  %i.ht = load ptr, ptr %29, align 8, !tbaa !19
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %54, ptr noundef nonnull align 8 dereferenceable(208) %i.ht)
          to label %bb.cu unwind label %bb.dy

bb.cu:                                            ; preds = %.noexc187
  %i.hu = load ptr, ptr %53, align 8, !tbaa !19
  %i.hv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.hu, ptr noundef nonnull align 8 dereferenceable(208) %54)
          to label %bb.cv unwind label %bb.dz     ; 0 uses

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #17
  %i.hw = load ptr, ptr %29, align 8, !tbaa !19
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 208
  invoke void @_ZN2cvdvERKNS_3MatEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %56, ptr noundef nonnull align 8 dereferenceable(208) %i.hx, double noundef f0x3FFBB67AE8584CAA)
          to label %bb.cw unwind label %bb.eb

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #17
  %i.hy = fmul nnan float %., 2.000000e+00
  %i.hz = fpext float %i.hy to double
  %i.ia = load ptr, ptr %31, align 8, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 208
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %58, double noundef %i.hz, ptr noundef nonnull align 8 dereferenceable(208) %i.ib)
          to label %bb.cx unwind label %bb.ec

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN2cvdvERKNS_7MatExprEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %57, ptr noundef nonnull align 8 dereferenceable(688) %58, double noundef f0x4003988E1409212E)
          to label %bb.cy unwind label %bb.ed

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN2cvmiERKNS_7MatExprES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %55, ptr noundef nonnull align 8 dereferenceable(688) %56, ptr noundef nonnull align 8 dereferenceable(688) %57)
          to label %bb.cz unwind label %bb.ee

bb.cz:                                            ; preds = %bb.cy
  %i.ic = load ptr, ptr %53, align 8, !tbaa !19
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 208
  %i.ie = load ptr, ptr %55, align 8, !tbaa !38   ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !40
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull align 8 dereferenceable(688) %55, ptr noundef nonnull align 8 dereferenceable(208) %i.id, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit189 unwind label %bb.ef, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit189:              ; preds = %bb.cz
  %i.ii = getelementptr inbounds nuw i8, ptr %55, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ii) #17
  %i.ij = getelementptr inbounds nuw i8, ptr %55, i64 224
end_hunk_1
begin_hunk_2_@_ZN2cv8ximgproc4qdftERKNS_11_InputArrayERKNS_12_OutputArrayEib:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %56) #17
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eb
  %.pn139.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn, %bb.ei ], [ %i.mw, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  br label %bb.fn

bb.ek:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit189
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.el:                                            ; preds = %bb.da
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.em:                                            ; preds = %bb.db
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.en:                                            ; preds = %bb.dc
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.eo:                                            ; preds = %bb.dd
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ep:                                            ; preds = %bb.de
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eq:                                            ; preds = %bb.df
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %59) #17
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn144 = phi { ptr, i32 } [ %i.nh, %bb.eq ], [ %i.ng, %bb.ep ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %63) #17
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eo
  %.pn144.pn = phi { ptr, i32 } [ %.pn144, %bb.er ], [ %i.nf, %bb.eo ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %64) #17
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.en
  %.pn144.pn.pn = phi { ptr, i32 } [ %.pn144.pn, %bb.es ], [ %i.ne, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %60) #17
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.em
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn, %bb.et ], [ %i.nd, %bb.em ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %62) #17
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.el
  %.pn144.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn.pn, %bb.eu ], [ %i.nc, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %61) #17
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.ek
  %.pn144.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn.pn.pn, %bb.ev ], [ %i.nb, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
  br label %bb.fn

bb.ex:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit191
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ey:                                            ; preds = %bb.dg
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ez:                                            ; preds = %bb.dh
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fa:                                            ; preds = %bb.di
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fb:                                            ; preds = %bb.dj
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fc:                                            ; preds = %bb.dk
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fd:                                            ; preds = %bb.dl
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %65) #17
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.pn151 = phi { ptr, i32 } [ %i.no, %bb.fd ], [ %i.nn, %bb.fc ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %69) #17
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fb
  %.pn151.pn = phi { ptr, i32 } [ %.pn151, %bb.fe ], [ %i.nm, %bb.fb ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %70) #17
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fa
  %.pn151.pn.pn = phi { ptr, i32 } [ %.pn151.pn, %bb.ff ], [ %i.nl, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %66) #17
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ez
  %.pn151.pn.pn.pn = phi { ptr, i32 } [ %.pn151.pn.pn, %bb.fg ], [ %i.nk, %bb.ez ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %68) #17
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.ey
  %.pn151.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn151.pn.pn.pn, %bb.fh ], [ %i.nj, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %67) #17
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.ex
  %.pn151.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn151.pn.pn.pn.pn, %bb.fi ], [ %i.ni, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  br label %bb.fn

bb.fk:                                            ; preds = %bb.dm
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #17
  br label %bb.fm

bb.fl:                                            ; preds = %bb.dn
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.pn161 = phi { ptr, i32 } [ %i.nq, %bb.fl ], [ %i.np, %bb.fk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #17
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fj, %bb.ew, %bb.ej, %bb.ea
  %.pn161.pn = phi { ptr, i32 } [ %.pn161, %bb.fm ], [ %.pn151.pn.pn.pn.pn.pn, %bb.fj ], [ %.pn144.pn.pn.pn.pn.pn, %bb.ew ], [ %.pn139.pn.pn.pn, %bb.ej ], [ %.pn137, %bb.ea ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %53) #17
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.dx
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %bb.fn ], [ %i.mt, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #17
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.dw, %bb.dv, %bb.cq, %bb.cp, %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn, %bb.fo ], [ %i.ms, %bb.dw ], [ %i.mr, %bb.dv ], [ %i.go, %bb.cl ], [ %i.gn, %bb.ck ], [ %i.ha, %bb.cq ], [ %i.gz, %bb.cp ], [ %i.gm, %bb.cj ], [ %i.gl, %bb.ci ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #17
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.loopexit
  %.pn161.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn, %bb.fp ], [ %.pn111, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #17
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.loopexit251.a
  %.pn161.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn, %bb.fq ], [ %.pn109, %.loopexit251.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.ch, %bb.bw, %bb.br, %bb.bk
  %.pn161.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn.pn, %bb.fr ], [ %.pn103.pn.pn.pn.pn, %bb.ch ], [ %.pn100.pn, %bb.bw ], [ %.pn96.pn.pn, %bb.br ], [ %.pn94, %bb.bk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.u, %bb.t
  %.pn161.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn.pn.pn, %bb.fs ], [ %i.fs, %bb.bh ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.ag, %bb.u ], [ %.pn87, %bb.t ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.fu

bb.fu:                                            ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ft
  %.pn161.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %.pn161.pn.pn.pn.pn.pn.pn.pn, %bb.ft ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn161.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cvdvERKNS_7MatExprEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), double noundef) local_unnamed_addr #2

declare void @_ZN2cvplERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cvmlEdRKNS_7MatExprE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, double noundef, ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZN2cvmiERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, double noundef, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cvdvERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #2

declare void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8ximgproc9qmultiplyERKNS_11_InputArrayES3_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::vector", align 8       ; 22 uses
  %8 = alloca %"class.std::vector", align 8       ; 26 uses
  %9 = alloca %"class.std::vector", align 8       ; 26 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %24 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %25 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %26 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %35 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %36 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %37 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %39 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %41 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %43 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %45 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %46 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %47 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %48 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %50 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %51 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %52 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %53 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %54 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %55 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %56 = alloca %"class.std::vector", align 8      ; 26 uses
  %57 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %58 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %59 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %60 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %61 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %62 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %63 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %64 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %65 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %66 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %67 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %68 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %69 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %70 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %71 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %72 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %73 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %74 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %75 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %76 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %77 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %78 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %79 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %80 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %81 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %82 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %83 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %84 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %85 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %86 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %87 = alloca %"class.std::vector", align 8      ; 26 uses
  %88 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %89 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %90 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %91 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %92 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %93 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %94 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %95 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %96 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %97 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %98 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %99 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %100 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %101 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %102 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %103 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %104 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %105 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %106 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %107 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %108 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %109 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %110 = alloca %"class.cv::MatExpr", align 8     ; 9 uses
  %111 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
end_hunk_2
