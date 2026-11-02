Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fuzzy_F0_math?download=true
inline.NumInlined: 545
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Mat, std::allocator<cv::Mat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Range" = type { i32, i32 }
%"class.cv::MatExpr" = type { ptr, i32, %"class.cv::Mat", %"class.cv::Mat", %"class.cv::Mat", double, double, %"class.cv::Scalar_" }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev = comdat any

$_ZN2cv7MatExprD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [23 x i8] c"matrix.channels() == 3\00", align 1
@__func__._ZN2cv2ft16FT02D_FL_processERKNS_11_InputArrayEiRKNS_12_OutputArrayE = private unnamed_addr constant [17 x i8] c"FT02D_FL_process\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/fuzzy/src/fuzzy_F0_math.cpp\00", align 1
@__func__._ZN2cv2ft22FT02D_FL_process_floatERKNS_11_InputArrayEiRKNS_12_OutputArrayE = private unnamed_addr constant [23 x i8] c"FT02D_FL_process_float\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"matrix.channels() == kernel.channels()\00", align 1
@__func__._ZN2cv2ft16FT02D_componentsERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_ = private unnamed_addr constant [17 x i8] c"FT02D_components\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mask.channels() == 1\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"components.channels() == 1 && kernel.channels() == 1\00", align 1
@__func__._ZN2cv2ft15FT02D_inverseFTERKNS_11_InputArrayES3_RKNS_12_OutputArrayEii = private unnamed_addr constant [16 x i8] c"FT02D_inverseFT\00", align 1
@__func__._ZN2cv2ft13FT02D_processERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_ = private unnamed_addr constant [14 x i8] c"FT02D_process\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"matrix.channels() == kernel.channels() && mask.channels() == 1\00", align 1
@__func__._ZN2cv2ft15FT02D_iterationERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_S6_b = private unnamed_addr constant [16 x i8] c"FT02D_iteration\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv2ft16FT02D_FL_processERKNS_11_InputArrayEiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %8 = alloca [3 x %"class.cv::Mat"], align 16    ; 16 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.std::vector.8", align 8    ; 13 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv2ft16FT02D_FL_processERKNS_11_InputArrayEiRKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 48) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.be

bb.g:                                             ; preds = %bb.a
  %i.j = shl nsw i32 %1, 1
  %i.k = or disjoint i32 %i.j, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !19
  store ptr %5, ptr %i.l, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %1, i32 noundef %i.k, i32 noundef %1, i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #18
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #18
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %8, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2) #18
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull %8)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 440
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = sdiv i32 %i.u, %1                        ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  %i.z = sdiv i32 %i.w, %1
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 7 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.j, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc228 unwind label %bb.v  ; 7 uses

.noexc228:                                        ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 4 uses
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  %i.ag = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 0                    ; 3 uses
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.ag, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %.noexc228, %bb.l
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc234 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit268.thread ; 6 uses

.noexc234:                                        ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ac  ; 3 uses
  store i8 0, ptr %i.aj, align 1, !tbaa !16
  br i1 %i.ah, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc234
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 0, i64 %i.ag, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %.noexc234, %bb.n
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc241 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit266.thread ; 5 uses

.noexc241:                                        ; preds = %bb.o
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ac  ; 2 uses
  store i8 0, ptr %i.am, align 1, !tbaa !16
  br i1 %i.ah, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242, label %bb.p

bb.p:                                             ; preds = %.noexc241
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242:            ; preds = %bb.p, %.noexc241, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14295.0358 = phi ptr [ %i.ak, %bb.p ], [ %i.ak, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0287.0348 = phi ptr [ %i.aj, %bb.p ], [ %i.aj, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.14306.0319338 = phi ptr [ %i.af, %bb.p ], [ %i.af, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.0298.0330336 = phi ptr [ %i.ae, %bb.p ], [ %i.ae, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.0278.0 = phi ptr [ %i.am, %bb.p ], [ %i.am, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.sroa.14.0 = phi ptr [ %i.an, %bb.p ], [ %i.an, %.noexc241 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.ap = add i32 %1, 1                           ; 4 uses
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %i.ar = icmp slt i32 %1, -1
  br i1 %i.ar, label %bb.q, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc245 unwind label %bb.w

.noexc245:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit242
  %.not.i.i.i.i243 = icmp eq i32 %i.ap, 0         ; 2 uses
  br i1 %.not.i.i.i.i243, label %.preheader382, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.as = shl nuw nsw i64 %i.aq, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #21
          to label %.noexc246 unwind label %bb.w  ; 6 uses

.noexc246:                                        ; preds = %bb.r
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aq
  store i32 0, ptr %i.at, align 4, !tbaa !30
  %i.av = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc246
  %i.ax = getelementptr i8, ptr %i.at, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.av, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc246
  %wide.trip.count = zext i32 %i.ap to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ap, 8
  br i1 %min.iters.check, label %.lr.ph.preheader544, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.az = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.ba = sub <4 x i32> %broadcast.splat, %step.add
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.az, ptr %i.ay, align 4, !tbaa !30
  store <4 x i32> %i.ba, ptr %i.bb, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader382.loopexit, label %.lr.ph.preheader544

.lr.ph.preheader544:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader382.loopexit:                           ; preds = %.lr.ph, %middle.block
  %i.bd = ptrtoint ptr %i.au to i64
  br label %.preheader382

.preheader382:                                    ; preds = %.preheader382.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0506 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bd, %.preheader382.loopexit ] ; 2 uses
  %.sroa.0271.0499 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.at, %.preheader382.loopexit ] ; 8 uses
  %i.be = sub nsw i32 %i.w, %1                    ; 2 uses
  %i.bf = icmp slt i32 %1, %i.be
  br i1 %i.bf, label %.preheader.lr.ph, label %._crit_edge420

.preheader.lr.ph:                                 ; preds = %.preheader382
  %i.bg = sub nsw i32 %i.u, %1                    ; 5 uses
  %i.bh = icmp slt i32 %1, %i.bg
  br i1 %i.bh, label %.preheader.us.preheader, label %._crit_edge420

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bi = sext i32 %i.u to i64
  %i.bj = sext i32 %1 to i64                      ; 4 uses
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = sext i32 %i.x to i64
  %i.bm = add nsw i64 %i.bl, 1
  %i.bn = zext nneg i32 %i.be to i64
  %14 = shl i32 %1, 1                             ; 3 uses
  %15 = call i32 @llvm.smax.i32(i32 %14, i32 %i.bg)
  %16 = icmp slt i32 %14, %i.bg
  %17 = zext i1 %16 to i32                        ; 2 uses
  %18 = or disjoint i32 %14, %17
  %19 = sub i32 %15, %18
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge415.us
  %indvars.iv465 = phi i64 [ %i.bj, %.preheader.us.preheader ], [ %indvars.iv.next466, %._crit_edge415.us ] ; 2 uses
  %indvars.iv455 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next456, %._crit_edge415.us ] ; 7 uses
  %indvars.iv448 = phi i32 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next449, %._crit_edge415.us ] ; 2 uses
  %i.bo = sext i32 %indvars.iv448 to i64
  %indvars.iv.next466 = add nsw i64 %indvars.iv465, %i.bj ; 3 uses
  br i1 %.not.i.i.i.i243, label %iter.check, label %.lr.ph391.us.preheader

.lr.ph391.us.preheader:                           ; preds = %.preheader.us, %._crit_edge403.us
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %._crit_edge403.us ], [ %indvars.iv455, %.preheader.us ] ; 4 uses
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %._crit_edge403.us ], [ %i.bj, %.preheader.us ] ; 2 uses
  %indvars.iv443 = phi i32 [ %indvars.iv.next444, %._crit_edge403.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.bp = sext i32 %indvars.iv443 to i64
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, %i.bj ; 3 uses
  br label %.lr.ph391.us

.lr.ph391.us:                                     ; preds = %.lr.ph391.us.preheader, %._crit_edge.us
  %indvars.iv450 = phi i64 [ %i.bo, %.lr.ph391.us.preheader ], [ %indvars.iv.next451, %._crit_edge.us ] ; 4 uses
  %.0176399.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.cu, %._crit_edge.us ]
  %.0177398.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.ct, %._crit_edge.us ]
  %.0179397.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.co, %._crit_edge.us ]
  %.0181396.us = phi i32 [ 0, %.lr.ph391.us.preheader ], [ %i.cj, %._crit_edge.us ]
  %i.bq = mul nsw i64 %indvars.iv450, %i.bi
  %i.br = sub nsw i64 %indvars.iv450, %indvars.iv465
  %i.bs = trunc nsw i64 %i.br to i32
  %i.bt = call i32 @llvm.abs.i32(i32 %i.bs, i1 true)
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0271.0499, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph391.us
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %bb.s ], [ %i.bp, %.lr.ph391.us ] ; 4 uses
  %.1389.us = phi i32 [ %i.cu, %bb.s ], [ %.0176399.us, %.lr.ph391.us ]
  %.1178388.us = phi i32 [ %i.ct, %bb.s ], [ %.0177398.us, %.lr.ph391.us ]
  %.1180387.us = phi i32 [ %i.co, %bb.s ], [ %.0179397.us, %.lr.ph391.us ]
  %.1182386.us = phi i32 [ %i.cj, %bb.s ], [ %.0181396.us, %.lr.ph391.us ]
  %i.bx = sub nsw i64 %indvars.iv445, %indvars.iv453
  %i.by = trunc nsw i64 %i.bx to i32
  %i.bz = call i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0271.0499, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30
  %i.cd = mul nsw i32 %i.cc, %i.bw                ; 4 uses
  %i.ce = add nsw i64 %indvars.iv445, %i.bq       ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %i.o, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = zext i8 %i.cg to i32
  %i.ci = mul nsw i32 %i.cd, %i.ch
  %i.cj = add nsw i32 %i.ci, %.1182386.us         ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %i.q, i64 %i.ce
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul nsw i32 %i.cd, %i.cm
  %i.co = add nsw i32 %i.cn, %.1180387.us         ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %i.s, i64 %i.ce
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16
  %i.cr = zext i8 %i.cq to i32
  %i.cs = mul nsw i32 %i.cd, %i.cr
  %i.ct = add nsw i32 %i.cs, %.1178388.us         ; 3 uses
  %i.cu = add nsw i32 %i.cd, %.1389.us            ; 3 uses
  %indvars.iv.next446 = add nsw i64 %indvars.iv445, 1
  %.not227.us.not = icmp slt i64 %indvars.iv445, %indvars.iv.next454
  br i1 %.not227.us.not, label %bb.s, label %._crit_edge.us, !llvm.loop !59

._crit_edge.us:                                   ; preds = %bb.s
  %indvars.iv.next451 = add nsw i64 %indvars.iv450, 1
  %.not217.us426.not = icmp slt i64 %indvars.iv450, %indvars.iv.next466
  br i1 %.not217.us426.not, label %.lr.ph391.us, label %._crit_edge403.us, !llvm.loop !60

._crit_edge403.us:                                ; preds = %._crit_edge.us
  %i.cv = sitofp i32 %i.cu to float
  %i.cw = fdiv float 1.000000e+00, %i.cv          ; 3 uses
  %i.cx = sitofp i32 %i.cj to float
  %i.cy = fmul float %i.cw, %i.cx
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cz)
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %indvars.iv457
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !16
  %i.dd = sitofp i32 %i.co to float
  %i.de = fmul float %i.cw, %i.dd
  %i.df = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.df)
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %indvars.iv457
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !16
  %i.dj = sitofp i32 %i.ct to float
  %i.dk = fmul float %i.cw, %i.dj
  %i.dl = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dm = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dl)
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %indvars.iv457
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !16
  %indvars.iv.next458 = add nsw i64 %indvars.iv457, 1
  %i.dp = icmp slt i64 %indvars.iv.next454, %i.bk
  %indvars.iv.next444 = add i32 %indvars.iv443, %1
  br i1 %i.dp, label %.lr.ph391.us.preheader, label %._crit_edge415.us, !llvm.loop !61

iter.check:                                       ; preds = %.preheader.us
  %i.dq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> <float +qnan, float poison, float poison, float poison>)
  %i.dr = trunc i32 %i.dq to i8                   ; 4 uses
  %20 = udiv i32 %19, %1
  %21 = add i32 %20, %17                          ; 2 uses
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1                    ; 3 uses
  %min.iters.check523 = icmp eq i32 %21, 0
  br i1 %min.iters.check523, label %scalar.ph522.preheader, label %vector.body528

vector.body528:                                   ; preds = %iter.check
  %broadcast.splatinsert526 = insertelement <2 x i8> poison, i8 %i.dr, i64 0
  %broadcast.splat527 = shufflevector <2 x i8> %broadcast.splatinsert526, <2 x i8> poison, <2 x i32> zeroinitializer ; 3 uses
  %24 = trunc i64 %23 to i32
  %25 = or i32 %24, 1
  %26 = mul i32 %1, %25
  %n.vec525 = and i64 %23, 8589934590             ; 2 uses
  %27 = add i64 %indvars.iv455, %n.vec525
  %28 = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %indvars.iv455
  store <2 x i8> %broadcast.splat527, ptr %28, align 1, !tbaa !16
  %29 = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %indvars.iv455
  store <2 x i8> %broadcast.splat527, ptr %29, align 1, !tbaa !16
  %30 = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %indvars.iv455
  store <2 x i8> %broadcast.splat527, ptr %30, align 1, !tbaa !16
  %cmp.n532 = icmp eq i64 %23, %n.vec525
  br i1 %cmp.n532, label %._crit_edge415.us, label %scalar.ph522.preheader

scalar.ph522.preheader:                           ; preds = %iter.check, %vector.body528
  %indvars.iv462.ph = phi i64 [ %indvars.iv455, %iter.check ], [ %27, %vector.body528 ]
  %.0171412.us.us.ph = phi i32 [ %1, %iter.check ], [ %26, %vector.body528 ]
  br label %bb.t

bb.t:                                             ; preds = %scalar.ph522.preheader, %bb.t
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %bb.t ], [ %indvars.iv462.ph, %scalar.ph522.preheader ] ; 4 uses
  %.0171412.us.us = phi i32 [ %i.dv, %bb.t ], [ %.0171412.us.us.ph, %scalar.ph522.preheader ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %indvars.iv462
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %indvars.iv462
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !16
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %indvars.iv462
  store i8 %i.dr, ptr %i.du, align 1, !tbaa !16
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, 1
  %i.dv = add nsw i32 %.0171412.us.us, %1         ; 2 uses
  %i.dw = icmp slt i32 %i.dv, %i.bg
  br i1 %i.dw, label %bb.t, label %._crit_edge415.us, !llvm.loop !62

._crit_edge415.us:                                ; preds = %._crit_edge403.us, %bb.t, %vector.body528
  %indvars.iv.next456 = add i64 %indvars.iv455, %i.bm
  %i.dx = icmp slt i64 %indvars.iv.next466, %i.bn
  %indvars.iv.next449 = add i32 %indvars.iv448, %1
  br i1 %i.dx, label %.preheader.us, label %._crit_edge420, !llvm.loop !63

bb.u:                                             ; preds = %bb.g
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bd

bb.v:                                             ; preds = %bb.h, %bb.k, %bb.j
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit270

_ZNSt6vectorIhSaIhEED2Ev.exit268.thread:          ; preds = %bb.m
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSt6vectorIhSaIhEED2Ev.exit266.thread:          ; preds = %bb.o
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.w:                                             ; preds = %bb.r, %bb.q
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

.lr.ph:                                           ; preds = %.lr.ph.preheader544, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader544 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.ee = trunc i64 %indvars.iv to i32
  %i.ef = sub i32 %1, %i.ee
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader382.loopexit, label %.lr.ph, !llvm.loop !64

._crit_edge420:                                   ; preds = %._crit_edge415.us, %.preheader.lr.ph, %.preheader382
  %i.eg = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.x unwind label %bb.ac      ; 5 uses

bb.x:                                             ; preds = %._crit_edge420
  %i.eh = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.y unwind label %bb.ac      ; 6 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.eg, i32 noundef %i.eh, i32 noundef 0)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef %i.eg, i32 noundef %i.eh, i32 noundef 0)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %i.eg, i32 noundef %i.eh, i32 noundef 0)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !27
  %i.eo = icmp sgt i32 %i.eg, 0
  %i.ep = icmp sgt i32 %i.eh, 0
  %or.cond = and i1 %i.eo, %i.ep
  br i1 %or.cond, label %.lr.ph431, label %._crit_edge435.split

._crit_edge435.split:                             ; preds = %._crit_edge, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr null, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.as

bb.ac:                                            ; preds = %._crit_edge420, %bb.x
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ad:                                            ; preds = %bb.y
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ae:                                            ; preds = %bb.z
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.af:                                            ; preds = %bb.aa
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph431:                                        ; preds = %bb.ab, %._crit_edge
  %indvars.iv470 = phi i32 [ %indvars.iv.next471, %._crit_edge ], [ 0, %bb.ab ] ; 2 uses
  %.0167432 = phi i32 [ %i.fc, %._crit_edge ], [ 0, %bb.ab ] ; 3 uses
  %i.ew = zext i32 %indvars.iv470 to i64
  %i.ex = srem i32 %.0167432, %1                  ; 3 uses
  %i.ey = sub nsw i32 %1, %i.ex                   ; 3 uses
  %i.ez = sdiv i32 %.0167432, %1
  %i.fa = mul nsw i32 %i.ez, %i.y
  %i.fb = mul i32 %i.ey, %1
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ag
  %i.fc = add nuw nsw i32 %.0167432, 1            ; 2 uses
  %indvars.iv.next471 = add i32 %indvars.iv470, %i.eh
  %exitcond476.not = icmp eq i32 %i.fc, %i.eg
  br i1 %exitcond476.not, label %._crit_edge435.split, label %.lr.ph431, !llvm.loop !65

bb.ag:                                            ; preds = %.lr.ph431, %bb.ag
  %indvars.iv472 = phi i64 [ %i.ew, %.lr.ph431 ], [ %indvars.iv.next473, %bb.ag ] ; 4 uses
  %.0430 = phi i32 [ 0, %.lr.ph431 ], [ %i.in, %bb.ag ] ; 3 uses
  %i.fd = srem i32 %.0430, %1                     ; 3 uses
  %i.fe = sub nsw i32 %1, %i.fd                   ; 2 uses
  %i.ff = sdiv i32 %.0430, %1
  %i.fg = add nsw i32 %i.ff, %i.fa                ; 3 uses
  %i.fh = add nsw i32 %i.fg, 1
  %i.fi = add nsw i32 %i.fg, %i.y                 ; 2 uses
  %i.fj = add nsw i32 %i.fi, 1
  %i.fk = mul nsw i32 %i.fe, %i.ey                ; 3 uses
  %i.fl = mul nsw i32 %i.fd, %i.ey                ; 3 uses
  %i.fm = mul nsw i32 %i.fe, %i.ex                ; 4 uses
  %i.fn = mul nuw nsw i32 %i.fd, %i.ex            ; 4 uses
  %i.fo = add i32 %i.fn, %i.fb
  %i.fp = add i32 %i.fo, %i.fm
  %i.fq = sitofp i32 %i.fp to float
  %i.fr = fdiv float 1.000000e+00, %i.fq          ; 3 uses
  %i.fs = sext i32 %i.fg to i64                   ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !16
  %i.fv = zext i8 %i.fu to i32
  %i.fw = mul nsw i32 %i.fk, %i.fv
  %i.fx = sext i32 %i.fh to i64                   ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !16
  %i.ga = zext i8 %i.fz to i32
  %i.gb = mul nsw i32 %i.fl, %i.ga
  %i.gc = add nsw i32 %i.gb, %i.fw
  %i.gd = sext i32 %i.fi to i64                   ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !16
  %i.gg = zext i8 %i.gf to i32
  %i.gh = mul nsw i32 %i.fm, %i.gg
  %i.gi = add nsw i32 %i.gc, %i.gh
  %i.gj = sext i32 %i.fj to i64                   ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0298.0330336, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !16
  %i.gm = zext i8 %i.gl to i32
  %i.gn = mul nuw nsw i32 %i.fn, %i.gm
  %i.go = add nsw i32 %i.gi, %i.gn
  %i.gp = sitofp i32 %i.go to float
  %i.gq = fmul float %i.fr, %i.gp
  %i.gr = fptoui float %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv472
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !16
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %i.fs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !16
  %i.gv = zext i8 %i.gu to i32
  %i.gw = mul nsw i32 %i.fk, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %i.fx
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !16
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nsw i32 %i.fl, %i.gz
  %i.hb = add nsw i32 %i.ha, %i.gw
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %i.gd
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !16
  %i.he = zext i8 %i.hd to i32
  %i.hf = mul nsw i32 %i.fm, %i.he
  %i.hg = add nsw i32 %i.hb, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0287.0348, i64 %i.gj
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !16
  %i.hj = zext i8 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.fn, %i.hj
  %i.hl = add nsw i32 %i.hg, %i.hk
  %i.hm = sitofp i32 %i.hl to float
  %i.hn = fmul float %i.fr, %i.hm
  %i.ho = fptoui float %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.el, i64 %indvars.iv472
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !16
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %i.fs
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !16
  %i.hs = zext i8 %i.hr to i32
  %i.ht = mul nsw i32 %i.fk, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 %i.fx
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !16
  %i.hw = zext i8 %i.hv to i32
  %i.hx = mul nsw i32 %i.fl, %i.hw
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev:bb.a
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #18
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN2cv2ft22FT02D_FL_process_floatERKNS_11_InputArrayEiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %8 = alloca [3 x %"class.cv::Mat"], align 16    ; 16 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.std::vector.8", align 8    ; 13 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv2ft22FT02D_FL_process_floatERKNS_11_InputArrayEiRKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 176) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ba

bb.g:                                             ; preds = %bb.a
  %i.j = shl nsw i32 %1, 1
  %i.k = or disjoint i32 %i.j, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !19
  store ptr %5, ptr %i.l, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %1, i32 noundef %i.k, i32 noundef %1, i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #18
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #18
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %8, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2) #18
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull %8)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 440
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = sdiv i32 %i.u, %1                        ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  %i.z = sdiv i32 %i.w, %1
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = mul nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 5 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.j, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = shl nuw nsw i64 %i.ac, 2                ; 3 uses
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc225 unwind label %bb.r  ; 7 uses

.noexc225:                                        ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ac ; 4 uses
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !42
  %i.ah = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 0                    ; 3 uses
  br i1 %i.ai, label %bb.l, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc225
  %i.aj = getelementptr i8, ptr %i.af, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %.noexc225, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc233 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit270.thread ; 6 uses

.noexc233:                                        ; preds = %bb.l
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ac ; 3 uses
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !42
  br i1 %i.ai, label %bb.m, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228: ; preds = %.noexc233
  %i.am = getelementptr i8, ptr %i.ak, i64 4
  %.idx.i.i.i.i.i.i.i229 = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %.idx.i.i.i.i.i.i.i229, i1 false), !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %.noexc233, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc242 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread ; 5 uses

.noexc242:                                        ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ac ; 2 uses
  store float 0.000000e+00, ptr %i.an, align 4, !tbaa !42
  br i1 %i.ai, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237: ; preds = %.noexc242
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %.idx.i.i.i.i.i.i.i238 = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %.idx.i.i.i.i.i.i.i238, i1 false), !tbaa !42
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237, %.noexc242, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14297.0360 = phi ptr [ %i.al, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.al, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0289.0350 = phi ptr [ %i.ak, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ak, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.14308.0321340 = phi ptr [ %i.ag, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ag, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.0300.0332338 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.af, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.0280.0 = phi ptr [ %i.an, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.an, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %.sroa.14.0 = phi ptr [ %i.ao, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i237 ], [ %i.ao, %.noexc242 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.aq = add i32 %1, 1                           ; 4 uses
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = icmp slt i32 %1, -1
  br i1 %i.as, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc247 unwind label %bb.s

.noexc247:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit243
  %.not.i.i.i.i244 = icmp eq i32 %i.aq, 0         ; 2 uses
  br i1 %.not.i.i.i.i244, label %.preheader384, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.at = shl nuw nsw i64 %i.ar, 2
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #21
          to label %.noexc248 unwind label %bb.s  ; 6 uses

.noexc248:                                        ; preds = %bb.o
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar
  store i32 0, ptr %i.au, align 4, !tbaa !30
  %i.aw = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc248
  %i.ay = getelementptr i8, ptr %i.au, i64 4
  %.idx.i.i.i.i.i.i.i245 = shl nuw nsw i64 %i.aw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ay, i8 0, i64 %.idx.i.i.i.i.i.i.i245, i1 false), !tbaa !30
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc248
  %wide.trip.count = zext i32 %i.aq to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check, label %.lr.ph.preheader528, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ba = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.bb = sub <4 x i32> %broadcast.splat, %step.add
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %i.ba, ptr %i.az, align 4, !tbaa !30
  store <4 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader384.loopexit, label %.lr.ph.preheader528

.lr.ph.preheader528:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader384.loopexit:                           ; preds = %.lr.ph, %middle.block
  %i.be = ptrtoint ptr %i.av to i64
  br label %.preheader384

.preheader384:                                    ; preds = %.preheader384.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0508 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.be, %.preheader384.loopexit ] ; 2 uses
  %.sroa.0273.0501 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.au, %.preheader384.loopexit ] ; 8 uses
  %i.bf = sub nsw i32 %i.w, %1                    ; 2 uses
  %i.bg = icmp slt i32 %1, %i.bf
  br i1 %i.bg, label %.preheader.lr.ph, label %._crit_edge422

.preheader.lr.ph:                                 ; preds = %.preheader384
  %i.bh = sub nsw i32 %i.u, %1                    ; 5 uses
  %i.bi = icmp slt i32 %1, %i.bh
  br i1 %i.bi, label %.preheader.us.preheader, label %._crit_edge422

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bj = sext i32 %i.u to i64
  %i.bk = sext i32 %1 to i64                      ; 4 uses
  %i.bl = zext nneg i32 %i.bh to i64
  %i.bm = sext i32 %i.x to i64
  %i.bn = add nsw i64 %i.bm, 1
  %i.bo = zext nneg i32 %i.bf to i64
  %14 = shl i32 %1, 1                             ; 3 uses
  %15 = call i32 @llvm.smax.i32(i32 %14, i32 %i.bh)
  %16 = icmp slt i32 %14, %i.bh
  %17 = zext i1 %16 to i32                        ; 2 uses
  %18 = or disjoint i32 %14, %17
  %19 = sub i32 %15, %18
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge417.us
  %indvars.iv467 = phi i64 [ %i.bk, %.preheader.us.preheader ], [ %indvars.iv.next468, %._crit_edge417.us ] ; 2 uses
  %indvars.iv457 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next458, %._crit_edge417.us ] ; 7 uses
  %indvars.iv450 = phi i32 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next451, %._crit_edge417.us ] ; 2 uses
  %i.bp = sext i32 %indvars.iv450 to i64
  %indvars.iv.next468 = add nsw i64 %indvars.iv467, %i.bk ; 3 uses
  br i1 %.not.i.i.i.i244, label %.lr.ph416.split.us.us.preheader, label %.lr.ph393.us.preheader

.lr.ph416.split.us.us.preheader:                  ; preds = %.preheader.us
  %20 = udiv i32 %19, %1
  %21 = add i32 %20, %17                          ; 2 uses
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1                    ; 3 uses
  %min.iters.check525 = icmp eq i32 %21, 0
  br i1 %min.iters.check525, label %.lr.ph416.split.us.us.preheader535, label %vector.body528

vector.body528:                                   ; preds = %.lr.ph416.split.us.us.preheader
  %24 = trunc i64 %23 to i32
  %25 = or i32 %24, 1
  %26 = mul i32 %1, %25
  %n.vec527 = and i64 %23, 8589934590             ; 2 uses
  %27 = add i64 %indvars.iv457, %n.vec527
  %28 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %indvars.iv457
  store <2 x float> splat (float +qnan), ptr %28, align 4, !tbaa !42
  %29 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %indvars.iv457
  store <2 x float> splat (float +qnan), ptr %29, align 4, !tbaa !42
  %30 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %indvars.iv457
  store <2 x float> splat (float +qnan), ptr %30, align 4, !tbaa !42
  %cmp.n532 = icmp eq i64 %23, %n.vec527
  br i1 %cmp.n532, label %._crit_edge417.us, label %.lr.ph416.split.us.us.preheader535

.lr.ph416.split.us.us.preheader535:               ; preds = %.lr.ph416.split.us.us.preheader, %vector.body528
  %indvars.iv464.ph = phi i64 [ %indvars.iv457, %.lr.ph416.split.us.us.preheader ], [ %27, %vector.body528 ]
  %.0171414.us.us.ph = phi i32 [ %1, %.lr.ph416.split.us.us.preheader ], [ %26, %vector.body528 ]
  br label %.lr.ph416.split.us.us

.lr.ph393.us.preheader:                           ; preds = %.preheader.us, %._crit_edge405.us
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %._crit_edge405.us ], [ %indvars.iv457, %.preheader.us ] ; 4 uses
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %._crit_edge405.us ], [ %i.bk, %.preheader.us ] ; 2 uses
  %indvars.iv445 = phi i32 [ %indvars.iv.next446, %._crit_edge405.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.bq = sext i32 %indvars.iv445 to i64
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, %i.bk ; 3 uses
  br label %.lr.ph393.us

.lr.ph393.us:                                     ; preds = %.lr.ph393.us.preheader, %._crit_edge.us
  %indvars.iv452 = phi i64 [ %i.bp, %.lr.ph393.us.preheader ], [ %indvars.iv.next453, %._crit_edge.us ] ; 4 uses
  %.0176401.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.cv, %._crit_edge.us ]
  %.0177400.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.cu, %._crit_edge.us ]
  %.0179399.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.cp, %._crit_edge.us ]
  %.0181398.us = phi i32 [ 0, %.lr.ph393.us.preheader ], [ %i.ck, %._crit_edge.us ]
  %i.br = mul nsw i64 %indvars.iv452, %i.bj
  %i.bs = sub nsw i64 %indvars.iv452, %indvars.iv467
  %i.bt = trunc nsw i64 %i.bs to i32
  %i.bu = call i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0501, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph393.us
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %bb.p ], [ %i.bq, %.lr.ph393.us ] ; 4 uses
  %.1391.us = phi i32 [ %i.cv, %bb.p ], [ %.0176401.us, %.lr.ph393.us ]
  %.1178390.us = phi i32 [ %i.cu, %bb.p ], [ %.0177400.us, %.lr.ph393.us ]
  %.1180389.us = phi i32 [ %i.cp, %bb.p ], [ %.0179399.us, %.lr.ph393.us ]
  %.1182388.us = phi i32 [ %i.ck, %bb.p ], [ %.0181398.us, %.lr.ph393.us ]
  %i.by = sub nsw i64 %indvars.iv447, %indvars.iv455
  %i.bz = trunc nsw i64 %i.by to i32
  %i.ca = call i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0501, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !30
  %i.ce = mul nsw i32 %i.cd, %i.bx                ; 4 uses
  %i.cf = add nsw i64 %indvars.iv447, %i.br       ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %i.o, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = zext i8 %i.ch to i32
  %i.cj = mul nsw i32 %i.ce, %i.ci
  %i.ck = add nsw i32 %i.cj, %.1182388.us         ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %i.cf
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  %i.cn = zext i8 %i.cm to i32
  %i.co = mul nsw i32 %i.ce, %i.cn
  %i.cp = add nsw i32 %i.co, %.1180389.us         ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.s, i64 %i.cf
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !16
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.ce, %i.cs
  %i.cu = add nsw i32 %i.ct, %.1178390.us         ; 3 uses
  %i.cv = add nsw i32 %i.ce, %.1391.us            ; 3 uses
  %indvars.iv.next448 = add nsw i64 %indvars.iv447, 1
  %.not224.us.not = icmp slt i64 %indvars.iv447, %indvars.iv.next456
  br i1 %.not224.us.not, label %bb.p, label %._crit_edge.us, !llvm.loop !71

._crit_edge.us:                                   ; preds = %bb.p
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, 1
  %.not223.us428.not = icmp slt i64 %indvars.iv452, %indvars.iv.next468
  br i1 %.not223.us428.not, label %.lr.ph393.us, label %._crit_edge405.us, !llvm.loop !72

._crit_edge405.us:                                ; preds = %._crit_edge.us
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = fdiv float 1.000000e+00, %i.cw          ; 3 uses
  %i.cy = sitofp i32 %i.ck to float
  %i.cz = fmul float %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %indvars.iv459
  store float %i.cz, ptr %i.da, align 4, !tbaa !42
  %i.db = sitofp i32 %i.cp to float
  %i.dc = fmul float %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %indvars.iv459
  store float %i.dc, ptr %i.dd, align 4, !tbaa !42
  %i.de = sitofp i32 %i.cu to float
  %i.df = fmul float %i.cx, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %indvars.iv459
  store float %i.df, ptr %i.dg, align 4, !tbaa !42
  %indvars.iv.next460 = add nsw i64 %indvars.iv459, 1
  %i.dh = icmp slt i64 %indvars.iv.next456, %i.bl
  %indvars.iv.next446 = add i32 %indvars.iv445, %1
  br i1 %i.dh, label %.lr.ph393.us.preheader, label %._crit_edge417.us, !llvm.loop !73

.lr.ph416.split.us.us:                            ; preds = %.lr.ph416.split.us.us.preheader535, %.lr.ph416.split.us.us
  %indvars.iv464 = phi i64 [ %indvars.iv.next465, %.lr.ph416.split.us.us ], [ %indvars.iv464.ph, %.lr.ph416.split.us.us.preheader535 ] ; 4 uses
  %.0171414.us.us = phi i32 [ %i.dl, %.lr.ph416.split.us.us ], [ %.0171414.us.us.ph, %.lr.ph416.split.us.us.preheader535 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %indvars.iv464
  store float +qnan, ptr %i.di, align 4, !tbaa !42
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %indvars.iv464
  store float +qnan, ptr %i.dj, align 4, !tbaa !42
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %indvars.iv464
  store float +qnan, ptr %i.dk, align 4, !tbaa !42
  %indvars.iv.next465 = add nsw i64 %indvars.iv464, 1
  %i.dl = add nsw i32 %.0171414.us.us, %1         ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.bh
  br i1 %i.dm, label %.lr.ph416.split.us.us, label %._crit_edge417.us, !llvm.loop !74

._crit_edge417.us:                                ; preds = %._crit_edge405.us, %.lr.ph416.split.us.us, %vector.body528
  %indvars.iv.next458 = add i64 %indvars.iv457, %i.bn
  %i.dn = icmp slt i64 %indvars.iv.next468, %i.bo
  %indvars.iv.next451 = add i32 %indvars.iv450, %1
  br i1 %i.dn, label %.preheader.us, label %._crit_edge422, !llvm.loop !75

bb.q:                                             ; preds = %bb.g
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.az

bb.r:                                             ; preds = %bb.h, %bb.k, %bb.j
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit272

_ZNSt6vectorIfSaIfEED2Ev.exit270.thread:          ; preds = %bb.l
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZNSt6vectorIfSaIfEED2Ev.exit268.thread:          ; preds = %bb.m
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit266

.lr.ph:                                           ; preds = %.lr.ph.preheader528, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader528 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.du = trunc i64 %indvars.iv to i32
  %i.dv = sub i32 %1, %i.du
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader384.loopexit, label %.lr.ph, !llvm.loop !76

._crit_edge422:                                   ; preds = %._crit_edge417.us, %.preheader.lr.ph, %.preheader384
  %i.dw = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.t unwind label %bb.y       ; 5 uses

bb.t:                                             ; preds = %._crit_edge422
  %i.dx = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.u unwind label %bb.y       ; 6 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.dw, i32 noundef %i.dx, i32 noundef 5)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef %i.dw, i32 noundef %i.dx, i32 noundef 5)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %i.dw, i32 noundef %i.dx, i32 noundef 5)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !27
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !27
  %i.ee = icmp sgt i32 %i.dw, 0
  %i.ef = icmp sgt i32 %i.dx, 0
  %or.cond = and i1 %i.ee, %i.ef
  br i1 %or.cond, label %.lr.ph433, label %._crit_edge437.split

._crit_edge437.split:                             ; preds = %._crit_edge, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr null, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.ao

bb.y:                                             ; preds = %._crit_edge422, %bb.t
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.z:                                             ; preds = %bb.u
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aa:                                            ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ab:                                            ; preds = %bb.w
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph433:                                        ; preds = %bb.x, %._crit_edge
  %indvars.iv472 = phi i32 [ %indvars.iv.next473, %._crit_edge ], [ 0, %bb.x ] ; 2 uses
  %.0167434 = phi i32 [ %i.es, %._crit_edge ], [ 0, %bb.x ] ; 3 uses
  %i.em = zext i32 %indvars.iv472 to i64
  %i.en = srem i32 %.0167434, %1                  ; 3 uses
  %i.eo = sub nsw i32 %1, %i.en                   ; 3 uses
  %i.ep = sdiv i32 %.0167434, %1
  %i.eq = mul nsw i32 %i.ep, %i.y
  %i.er = mul i32 %i.eo, %1
  br label %bb.ac

._crit_edge:                                      ; preds = %bb.ac
  %i.es = add nuw nsw i32 %.0167434, 1            ; 2 uses
  %indvars.iv.next473 = add i32 %indvars.iv472, %i.dx
  %exitcond478.not = icmp eq i32 %i.es, %i.dw
  br i1 %exitcond478.not, label %._crit_edge437.split, label %.lr.ph433, !llvm.loop !77

bb.ac:                                            ; preds = %.lr.ph433, %bb.ac
  %indvars.iv474 = phi i64 [ %i.em, %.lr.ph433 ], [ %indvars.iv.next475, %bb.ac ] ; 4 uses
  %.0432 = phi i32 [ 0, %.lr.ph433 ], [ %i.hg, %bb.ac ] ; 3 uses
  %i.et = srem i32 %.0432, %1                     ; 3 uses
  %i.eu = sub nsw i32 %1, %i.et                   ; 2 uses
  %i.ev = sdiv i32 %.0432, %1
  %i.ew = add nsw i32 %i.ev, %i.eq                ; 3 uses
  %i.ex = add nsw i32 %i.ew, 1
  %i.ey = add nsw i32 %i.ew, %i.y                 ; 2 uses
  %i.ez = add nsw i32 %i.ey, 1
  %i.fa = mul nsw i32 %i.eu, %i.eo
  %i.fb = mul nsw i32 %i.et, %i.eo
  %i.fc = mul nsw i32 %i.eu, %i.en                ; 2 uses
  %i.fd = mul nuw nsw i32 %i.et, %i.en            ; 2 uses
  %i.fe = add i32 %i.fd, %i.er
  %i.ff = add i32 %i.fe, %i.fc
  %i.fg = sitofp i32 %i.ff to float
  %i.fh = fdiv float 1.000000e+00, %i.fg          ; 3 uses
  %i.fi = sext i32 %i.ew to i64                   ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !42
  %i.fl = sitofp i32 %i.fa to float               ; 3 uses
  %i.fm = sext i32 %i.ex to i64                   ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !42
  %i.fp = sitofp i32 %i.fb to float               ; 3 uses
  %i.fq = fmul float %i.fo, %i.fp
  %i.fr = call float @llvm.fmuladd.f32(float %i.fk, float %i.fl, float %i.fq)
  %i.fs = sext i32 %i.ey to i64                   ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !42
  %i.fv = sitofp i32 %i.fc to float               ; 3 uses
  %i.fw = call float @llvm.fmuladd.f32(float %i.fu, float %i.fv, float %i.fr)
  %i.fx = sext i32 %i.ez to i64                   ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0332338, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !42
  %i.ga = uitofp nneg i32 %i.fd to float          ; 3 uses
  %i.gb = call float @llvm.fmuladd.f32(float %i.fz, float %i.ga, float %i.fw)
  %i.gc = fmul float %i.fh, %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv474
  store float %i.gc, ptr %i.gd, align 4, !tbaa !42
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %i.fi
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !42
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %i.fm
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !42
  %i.gi = fmul float %i.gh, %i.fp
  %i.gj = call float @llvm.fmuladd.f32(float %i.gf, float %i.fl, float %i.gi)
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %i.fs
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !42
  %i.gm = call float @llvm.fmuladd.f32(float %i.gl, float %i.fv, float %i.gj)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0350, i64 %i.fx
  %i.go = load float, ptr %i.gn, align 4, !tbaa !42
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ga, float %i.gm)
  %i.gq = fmul float %i.fh, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv474
  store float %i.gq, ptr %i.gr, align 4, !tbaa !42
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %i.fi
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !42
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %i.fm
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !42
  %i.gw = fmul float %i.gv, %i.fp
  %i.gx = call float @llvm.fmuladd.f32(float %i.gt, float %i.fl, float %i.gw)
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %i.fs
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !42
  %i.ha = call float @llvm.fmuladd.f32(float %i.gz, float %i.fv, float %i.gx)
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0280.0, i64 %i.fx
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !42
  %i.hd = call float @llvm.fmuladd.f32(float %i.hc, float %i.ga, float %i.ha)
  %i.he = fmul float %i.fh, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv474
  store float %i.he, ptr %i.hf, align 4, !tbaa !42
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1
  %i.hg = add nuw nsw i32 %.0432, 1               ; 2 uses
  %exitcond477.not = icmp eq i32 %i.hg, %i.dx
  br i1 %exitcond477.not, label %._crit_edge, label %bb.ac, !llvm.loop !78

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %._crit_edge437.split
  %i.hh = load ptr, ptr %i.eg, align 8, !tbaa !36 ; 3 uses
  %i.hi = load ptr, ptr %i.eh, align 8, !tbaa !37
  %.not.i251 = icmp eq ptr %i.hh, %i.hi
  br i1 %.not.i251, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.hh, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %.noexc252 unwind label %bb.ao

.noexc252:                                        ; preds = %bb.ad
  %i.hj = load ptr, ptr %i.eg, align 8, !tbaa !36
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 208 ; 2 uses
  store ptr %i.hk, ptr %i.eg, align 8, !tbaa !36
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254

bb.ae:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.hh, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %._ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254_crit_edge unwind label %bb.ao

._ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254_crit_edge: ; preds = %bb.ae
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !36
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254: ; preds = %._ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254_crit_edge, %.noexc252
  %i.hl = phi ptr [ %.pre, %._ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254_crit_edge ], [ %i.hk, %.noexc252 ] ; 3 uses
  %i.hm = load ptr, ptr %i.eh, align 8, !tbaa !37
  %.not.i255 = icmp eq ptr %i.hl, %i.hm
  br i1 %.not.i255, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.hl, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %.noexc256 unwind label %bb.ao

.noexc256:                                        ; preds = %bb.af
  %i.hn = load ptr, ptr %i.eg, align 8, !tbaa !36
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 208
  store ptr %i.ho, ptr %i.eg, align 8, !tbaa !36
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit254
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.hl, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag, %.noexc256
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.hp, align 8, !tbaa !38
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.hq, align 4, !tbaa !39
  store i32 17104896, ptr %13, align 8, !tbaa !19
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %12, ptr %i.hr, align 8, !tbaa !20
  invoke void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.hs = load ptr, ptr %12, align 8, !tbaa !40   ; 3 uses
  %i.ht = load ptr, ptr %i.eg, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hs, %i.ht
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ai, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.hu, %.lr.ph.i.i.i ], [ %i.hs, %bb.ai ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #18
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hu, %i.ht
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ai
  %i.hv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hs, %bb.ai ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.hw = load ptr, ptr %i.eh, align 8, !tbaa !37
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.hz) #20
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %.not.i.i.i259 = icmp eq ptr %.sroa.0273.0501, null
  br i1 %.not.i.i.i259, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.ia = ptrtoint ptr %.sroa.0273.0501 to i64
  %i.ib = sub i64 %.sroa.12.0508, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0273.0501, i64 noundef %i.ib) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %bb.ak
  %.not.i.i.i260 = icmp eq ptr %.sroa.0280.0, null
  br i1 %.not.i.i.i260, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ic = ptrtoint ptr %.sroa.14.0 to i64
  %i.id = ptrtoint ptr %.sroa.0280.0 to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.0, i64 noundef %i.ie) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.al
  %.not.i.i.i261 = icmp eq ptr %.sroa.0289.0350, null
  br i1 %.not.i.i.i261, label %_ZNSt6vectorIfSaIfEED2Ev.exit262, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.if = ptrtoint ptr %.sroa.14297.0360 to i64
  %i.ig = ptrtoint ptr %.sroa.0289.0350 to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0289.0350, i64 noundef %i.ih) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit262

_ZNSt6vectorIfSaIfEED2Ev.exit262:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.am
  %.not.i.i.i263 = icmp eq ptr %.sroa.0300.0332338, null
  br i1 %.not.i.i.i263, label %_ZNSt6vectorIfSaIfEED2Ev.exit264, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit262
  %i.ii = ptrtoint ptr %.sroa.14308.0321340 to i64
  %i.ij = ptrtoint ptr %.sroa.0300.0332338 to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0300.0332338, i64 noundef %i.ik) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit264

_ZNSt6vectorIfSaIfEED2Ev.exit264:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit262, %bb.an
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.il) #18
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.im) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.ao:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %._crit_edge437.split
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ah
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn208.pn = phi { ptr, i32 } [ %i.io, %bb.ap ], [ %i.in, %bb.ao ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ab
  %.pn208.pn.pn = phi { ptr, i32 } [ %.pn208.pn, %bb.aq ], [ %i.el, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aa
  %.pn208.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn, %bb.ar ], [ %i.ek, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.z
  %.pn208.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn, %bb.as ], [ %i.ej, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.y, %bb.at
  %.pn208.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.y ], [ %.pn208.pn.pn.pn.pn, %bb.at ] ; 2 uses
  %.not.i.i.i265 = icmp eq ptr %.sroa.0273.0501, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorIiSaIiEED2Ev.exit266, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ip = ptrtoint ptr %.sroa.0273.0501 to i64
  %i.iq = sub i64 %.sroa.12.0508, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0273.0501, i64 noundef %i.iq) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit266

_ZNSt6vectorIiSaIiEED2Ev.exit266:                 ; preds = %bb.av, %bb.au, %bb.s
  %.pn208.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.s ], [ %.pn208.pn.pn.pn.pn.pn.pn, %bb.au ], [ %.pn208.pn.pn.pn.pn.pn.pn, %bb.av ] ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %.sroa.0280.0, null
  br i1 %.not.i.i.i267, label %_ZNSt6vectorIfSaIfEED2Ev.exit268, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit266
  %i.ir = ptrtoint ptr %.sroa.14.0 to i64
  %i.is = ptrtoint ptr %.sroa.0280.0 to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.0, i64 noundef %i.it) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit268

_ZNSt6vectorIfSaIfEED2Ev.exit268:                 ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEED2Ev.exit266
  %.not.i.i.i269 = icmp eq ptr %.sroa.0289.0350, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorIfSaIfEED2Ev.exit270, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit268
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn374 = phi { ptr, i32 } [ %i.dr, %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit268 ]
  %.sroa.14308.0313372 = phi ptr [ %i.ag, %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread ], [ %.sroa.14308.0321340, %_ZNSt6vectorIfSaIfEED2Ev.exit268 ]
  %.sroa.0300.0324370 = phi ptr [ %i.af, %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread ], [ %.sroa.0300.0332338, %_ZNSt6vectorIfSaIfEED2Ev.exit268 ]
  %.sroa.0289.0342369 = phi ptr [ %i.ak, %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread ], [ %.sroa.0289.0350, %_ZNSt6vectorIfSaIfEED2Ev.exit268 ] ; 2 uses
  %.sroa.14297.0352368 = phi ptr [ %i.al, %_ZNSt6vectorIfSaIfEED2Ev.exit268.thread ], [ %.sroa.14297.0360, %_ZNSt6vectorIfSaIfEED2Ev.exit268 ]
  %i.iu = ptrtoint ptr %.sroa.14297.0352368 to i64
  %i.iv = ptrtoint ptr %.sroa.0289.0342369 to i64
  %i.iw = sub i64 %i.iu, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0289.0342369, i64 noundef %i.iw) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit270

_ZNSt6vectorIfSaIfEED2Ev.exit270:                 ; preds = %bb.ax, %_ZNSt6vectorIfSaIfEED2Ev.exit268
  %.sroa.0300.0323 = phi ptr [ %.sroa.0300.0324370, %bb.ax ], [ %.sroa.0300.0332338, %_ZNSt6vectorIfSaIfEED2Ev.exit268 ] ; 2 uses
  %.sroa.14308.0312 = phi ptr [ %.sroa.14308.0313372, %bb.ax ], [ %.sroa.14308.0321340, %_ZNSt6vectorIfSaIfEED2Ev.exit268 ]
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn374, %bb.ax ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit268 ] ; 2 uses
  %.not.i.i.i271 = icmp eq ptr %.sroa.0300.0323, null
  br i1 %.not.i.i.i271, label %_ZNSt6vectorIfSaIfEED2Ev.exit272, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit270.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit270
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn382 = phi { ptr, i32 } [ %i.dq, %_ZNSt6vectorIfSaIfEED2Ev.exit270.thread ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit270 ]
  %.sroa.14308.0312381 = phi ptr [ %i.ag, %_ZNSt6vectorIfSaIfEED2Ev.exit270.thread ], [ %.sroa.14308.0312, %_ZNSt6vectorIfSaIfEED2Ev.exit270 ]
  %.sroa.0300.0323380 = phi ptr [ %i.af, %_ZNSt6vectorIfSaIfEED2Ev.exit270.thread ], [ %.sroa.0300.0323, %_ZNSt6vectorIfSaIfEED2Ev.exit270 ] ; 2 uses
  %i.ix = ptrtoint ptr %.sroa.14308.0312381 to i64
  %i.iy = ptrtoint ptr %.sroa.0300.0323380 to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0300.0323380, i64 noundef %i.iz) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit272

_ZNSt6vectorIfSaIfEED2Ev.exit272:                 ; preds = %bb.r, %_ZNSt6vectorIfSaIfEED2Ev.exit270, %bb.ay
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn382, %bb.ay ], [ %i.dp, %bb.r ], [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit270 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %8, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ja) #18
  %i.jb = getelementptr inbounds nuw i8, ptr %8, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jb) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit272, %bb.q
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit272 ], [ %i.do, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.az ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn208.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define void @_ZN2cv2ft16FT02D_componentsERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Range", align 8         ; 4 uses
  %5 = alloca %"class.cv::Range", align 4         ; 5 uses
  %6 = alloca %"class.cv::Range", align 4         ; 5 uses
  %7 = alloca %"class.cv::Range", align 8         ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %24 = alloca %"class.cv::Rect_", align 4        ; 9 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %34 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %36 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %37 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %39 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %41 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %43 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv2ft16FT02D_componentsERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_, ptr noundef nonnull @.str.1, i32 noundef 304) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %8, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.cr

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.k = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.g
  %i.l = icmp eq i32 %i.k, 65536
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20, !noalias !91
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.n

bb.i:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.n

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  %i.o = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %i.o, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.p = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv3Mat4onesENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, i64 %i.p, i32 noundef 0)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.q = load ptr, ptr %12, align 8, !tbaa !49    ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.r, !inline_history !1

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #18
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #18
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ah

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn88 = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.x, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.cq

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn94 = phi { ptr, i32 } [ %i.aa, %bb.r ], [ %i.z, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cq

bb.t:                                             ; preds = %bb.j
  %i.ab = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.u unwind label %bb.aw

bb.u:                                             ; preds = %bb.t
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv2ft16FT02D_componentsERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_, ptr noundef nonnull @.str.1, i32 noundef 314) #19
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.z:                                             ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.z
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.y
  %.pn90 = phi { ptr, i32 } [ %i.ad, %bb.y ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.ae, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.cq

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.ak = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc141 unwind label %bb.ae

.noexc141:                                        ; preds = %bb.aa
  %i.al = icmp eq i32 %i.ak, 65536
  br i1 %i.al, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc141
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20, !noalias !92
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %i.an)
          to label %_ZNK2cv11_InputArray6getMatEi.exit144 unwind label %bb.ae

bb.ac:                                            ; preds = %.noexc141
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit144 unwind label %bb.ae

_ZNK2cv11_InputArray6getMatEi.exit144:            ; preds = %bb.ab, %bb.ac
  %i.ao = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit144
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit144
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn92 = phi { ptr, i32 } [ %i.aq, %bb.af ], [ %i.ap, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cq

bb.ah:                                            ; preds = %bb.ad, %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.ar = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ai unwind label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %i.as = add nsw i32 %i.ar, -1
  %i.at = sdiv i32 %i.as, 2                       ; 4 uses
  %i.au = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.av = add nsw i32 %i.au, -1
  %i.aw = sdiv i32 %i.av, 2                       ; 4 uses
  %i.ax = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.ak unwind label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.ay = sdiv i32 %i.ax, %i.at                   ; 3 uses
  %i.az = add i32 %i.ay, 1
  %i.ba = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.al unwind label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.bb = sdiv i32 %i.ba, %i.aw                   ; 3 uses
  %i.bc = add i32 %i.bb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.be, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !19
  store ptr %16, ptr %i.bd, align 8, !tbaa !20
  %i.bf = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.am unwind label %bb.ax

bb.am:                                            ; preds = %bb.al
  %i.bg = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.an unwind label %bb.ax

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %i.aw, i32 noundef %i.bf, i32 noundef %i.at, i32 noundef %i.bg, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ao unwind label %bb.ay

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.bh, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 0, ptr %i.bi, align 4, !tbaa !39
  store i32 16842752, ptr %20, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %10, ptr %i.bj, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.bl, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !19
  store ptr %17, ptr %i.bk, align 8, !tbaa !20
  %i.bm = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  %i.bn = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.aq unwind label %bb.ba

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef %i.aw, i32 noundef %i.bm, i32 noundef %i.at, i32 noundef %i.bn, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ar unwind label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.bo = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.as unwind label %bb.bd

bb.as:                                            ; preds = %bb.ar
  %i.bp = shl i32 %i.bo, 5
  %i.bq = add i32 %i.bp, -27
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.bc, i32 noundef %i.az, i32 noundef %i.bq, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.br = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc145 unwind label %bb.be

.noexc145:                                        ; preds = %bb.at
  %i.bs = icmp eq i32 %i.br, 65536
  br i1 %i.bs, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.noexc145
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20, !noalias !93
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %i.bu)
          to label %_ZNK2cv11_InputArray6getMatEi.exit148 unwind label %bb.be

bb.av:                                            ; preds = %.noexc145
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit148 unwind label %bb.be

_ZNK2cv11_InputArray6getMatEi.exit148:            ; preds = %bb.av, %bb.au
  %.not153 = icmp slt i32 %i.ay, 0
  br i1 %.not153, label %._crit_edge155, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNK2cv11_InputArray6getMatEi.exit148
  %.not103151 = icmp slt i32 %i.bb, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %32, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %37, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %40, i64 20
  %i.cs = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %44, i64 8
  br i1 %.not103151, label %._crit_edge155, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.048154 = phi i32 [ %i.dc, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.db = mul nsw i32 %.048154, %i.at
  %i.dc = add nuw i32 %.048154, 1                 ; 2 uses
  br label %bb.bf

._crit_edge155:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNK2cv11_InputArray6getMatEi.exit148
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  ret void

bb.aw:                                            ; preds = %bb.aj, %bb.t, %bb.ah, %bb.ai, %bb.ak
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ax:                                            ; preds = %bb.am, %bb.al
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.an
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.pn96.pn = phi { ptr, i32 } [ %i.de, %bb.ax ], [ %i.df, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.cp

bb.ba:                                            ; preds = %bb.ap, %bb.ao
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aq
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.pn99.pn = phi { ptr, i32 } [ %i.dg, %bb.ba ], [ %i.dh, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.cp

bb.bd:                                            ; preds = %bb.as, %bb.ar
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

._crit_edge:                                      ; preds = %bb.bs
  %exitcond157.not = icmp eq i32 %.048154, %i.ay
  br i1 %exitcond157.not, label %._crit_edge155, label %.preheader, !llvm.loop !85

bb.bf:                                            ; preds = %.preheader, %bb.bs
  %.0152 = phi i32 [ 0, %.preheader ], [ %i.dn, %bb.bs ] ; 4 uses
  %i.dk = mul nsw i32 %.0152, %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.dl = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.bg unwind label %bb.bt

bb.bg:                                            ; preds = %bb.bf
  %i.dm = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.bh unwind label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.db, ptr %24, align 4, !tbaa !53
  store i32 %i.dk, ptr %i.bv, align 4, !tbaa !54
  store i32 %i.dl, ptr %i.bw, align 4, !tbaa !55
  store i32 %i.dm, ptr %i.bx, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 4 dereferenceable(16) %24)
          to label %bb.bi unwind label %bb.bu

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 4 dereferenceable(16) %24)
          to label %bb.bj unwind label %bb.bv

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  store i64 0, ptr %i.bz, align 8
  store i32 33619968, ptr %28, align 8, !tbaa !19
  store ptr %27, ptr %i.by, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  store i32 0, ptr %i.ca, align 8, !tbaa !38
  store i32 0, ptr %i.cb, align 4, !tbaa !39
  store i32 16842752, ptr %29, align 8, !tbaa !19
  store ptr %26, ptr %i.cc, align 8, !tbaa !20
  invoke void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.bk unwind label %bb.bw

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %30) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  store i32 0, ptr %i.cd, align 8, !tbaa !38
  store i32 0, ptr %i.ce, align 4, !tbaa !39
  store i32 16842752, ptr %31, align 8, !tbaa !19
  store ptr %25, ptr %i.cf, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  store i32 0, ptr %i.cg, align 8, !tbaa !38
  store i32 0, ptr %i.ch, align 4, !tbaa !39
  store i32 16842752, ptr %32, align 8, !tbaa !19
  store ptr %27, ptr %i.ci, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  store i64 0, ptr %i.ck, align 8
  store i32 33619968, ptr %33, align 8, !tbaa !19
  store ptr %30, ptr %i.cj, align 8, !tbaa !20
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, double noundef 1.000000e+00, i32 noundef 5)
          to label %bb.bl unwind label %bb.bx

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  store i32 0, ptr %i.cl, align 8, !tbaa !38
  store i32 0, ptr %i.cm, align 4, !tbaa !39
  store i32 16842752, ptr %37, align 8, !tbaa !19
  store ptr %30, ptr %i.cn, align 8, !tbaa !20
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.bm unwind label %bb.by

bb.bm:                                            ; preds = %bb.bl
  store i32 -1056833530, ptr %35, align 8, !tbaa !19
  store ptr %36, ptr %i.cp, align 8, !tbaa !20
  store i64 17179869185, ptr %i.co, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  store i32 0, ptr %i.cq, align 8, !tbaa !38
  store i32 0, ptr %i.cr, align 4, !tbaa !39
  store i32 16842752, ptr %40, align 8, !tbaa !19
  store ptr %27, ptr %i.cs, align 8, !tbaa !20
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.bn unwind label %bb.bz

bb.bn:                                            ; preds = %bb.bm
  store i32 -1056833530, ptr %38, align 8, !tbaa !19
  store ptr %39, ptr %i.cu, align 8, !tbaa !20
  store i64 17179869185, ptr %i.ct, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  store i32 -1040056314, ptr %41, align 8, !tbaa !19
  store ptr %34, ptr %i.cv, align 8, !tbaa !20
  store i64 17179869185, ptr %i.cw, align 8, !tbaa !30
  invoke void @_ZN2cv6divideERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %41, double noundef 1.000000e+00, i32 noundef 5)
          to label %bb.bo unwind label %bb.ca

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !94
  %i.dn = add nuw i32 %.0152, 1                   ; 2 uses
  store i32 %.0152, ptr %6, align 4, !tbaa !96, !noalias !94
  store i32 %i.dn, ptr %i.cx, align 4, !tbaa !97, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !94
  store i64 9223372034707292160, ptr %7, align 8, !noalias !94
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.bp unwind label %bb.cd

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !98
  store i64 9223372034707292160, ptr %4, align 8, !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !98
  store i32 %.048154, ptr %5, align 4, !tbaa !96, !noalias !98
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !97, !noalias !98
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.bq unwind label %bb.ce

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !98
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  store i32 -1056833530, ptr %44, align 8, !tbaa !19
  store ptr %34, ptr %i.da, align 8, !tbaa !20
  store i64 17179869185, ptr %i.cz, align 8, !tbaa !30
  %i.do = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.br unwind label %bb.cf

bb.br:                                            ; preds = %bb.bq
  %i.dp = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.bs unwind label %bb.cf     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %exitcond.not = icmp eq i32 %.0152, %i.bb
  br i1 %exitcond.not, label %._crit_edge, label %bb.bf, !llvm.loop !90

bb.bt:                                            ; preds = %bb.bg, %bb.bf
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bu:                                            ; preds = %bb.bh
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bv:                                            ; preds = %bb.bi
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bw:                                            ; preds = %bb.bj
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.ck

bb.bx:                                            ; preds = %bb.bk
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.cj

bb.by:                                            ; preds = %bb.bl
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bm
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bn
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %.pn111.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.bz ], [ %i.dx, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.cc

bb.cc:                                            ; preds = %bb.by, %bb.cb
  %.pn111.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.by ], [ %.pn111.pn.pn, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.ci

bb.cd:                                            ; preds = %bb.bo
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ce:                                            ; preds = %bb.bp
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.br, %bb.bq
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #18
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn117.pn = phi { ptr, i32 } [ %i.ea, %bb.cf ], [ %i.dz, %bb.ce ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #18
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cd
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %bb.cg ], [ %i.dy, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cc
  %.pn117.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn, %bb.ch ], [ %.pn111.pn.pn.pn.pn, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bx
  %.pn117.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn, %bb.ci ], [ %i.du, %bb.bx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bw
  %.pn117.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn, %bb.cj ], [ %i.dt, %bb.bw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #18
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.bv
  %.pn117.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn, %bb.ck ], [ %i.ds, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #18
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.bu
  %.pn117.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn.pn, %bb.cl ], [ %i.dr, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.bt
  %.pn117.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn.pn.pn, %bb.cm ], [ %i.dq, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #18
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.be
  %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cn ], [ %i.dj, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bd, %bb.bc, %bb.az
  %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.co ], [ %i.di, %bb.bd ], [ %.pn99.pn, %bb.bc ], [ %.pn96.pn, %bb.az ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.aw, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.s, %bb.p
  %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88, %bb.p ], [ %.pn94, %bb.s ], [ %.pn92, %bb.ag ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %i.dd, %bb.aw ], [ %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cq ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare void @_ZN2cv3Mat4onesENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #1

declare i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv6divideERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::Scalar_") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv2ft15FT02D_inverseFTERKNS_11_InputArrayES3_RKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %9 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %10 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv2ft15FT02D_inverseFTERKNS_11_InputArrayES3_RKNS_12_OutputArrayEii, ptr noundef nonnull @.str.1, i32 noundef 361) #19
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !16
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.an

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.m = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !103
  %i.n = icmp eq i32 %i.m, 65536
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20, !noalias !103
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.p)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.i, %bb.j
  %i.q = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.r = add nsw i32 %i.q, -1
  %i.s = sdiv i32 %i.r, 2                         ; 3 uses
  %i.t = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.u = add nsw i32 %i.t, -1
  %i.v = sdiv i32 %i.u, 2                         ; 3 uses
  %i.w = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.x = add nsw i32 %i.s, %3
  %i.y = add nsw i32 %i.x, %i.w
  %i.z = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %4, i32 noundef %3, i32 noundef 5, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aa = add nsw i32 %i.v, %4
  %i.ab = add nsw i32 %i.aa, %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef %i.ab, i32 noundef %i.y, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader.lr.ph, label %._crit_edge85

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ay = load i32, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader, label %._crit_edge85

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ba = phi i32 [ %i.bk, %._crit_edge ], [ %i.ad, %.preheader.lr.ph ]
  %i.bb = phi i32 [ %i.bl, %._crit_edge ], [ %i.ay, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bd = trunc i64 %indvars.iv88 to i32
  %i.be = mul i32 %i.s, %i.bd
  br label %bb.s

._crit_edge85:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store i32 %i.s, ptr %19, align 4, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %i.v, ptr %i.bf, align 4, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %3, ptr %i.bg, align 4, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %4, ptr %i.bh, align 4, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.ah

bb.q:                                             ; preds = %bb.l, %bb.k, %_ZNK2cv11_InputArray6getMatEi.exit, %bb.n, %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.r:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.al

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bk = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ba, %.preheader ] ; 2 uses
  %i.bl = phi i32 [ %i.cb, %._crit_edge.loopexit ], [ %i.bb, %.preheader ]
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.bm = sext i32 %i.bk to i64
  %i.bn = icmp slt i64 %indvars.iv.next89, %i.bm
  br i1 %i.bn, label %.preheader, label %._crit_edge85, !llvm.loop !101

bb.s:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.bo = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.bp = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  store i32 %i.be, ptr %10, align 4, !tbaa !53
  %i.bq = trunc i64 %indvars.iv to i32
  %i.br = mul i32 %i.v, %i.bq
  store i32 %i.br, ptr %i.ag, align 4, !tbaa !54
  store i32 %i.bo, ptr %i.ah, align 4, !tbaa !55
  store i32 %i.bp, ptr %i.ai, align 4, !tbaa !56
  %i.bs = load i32, ptr %i.aj, align 4, !tbaa !105
  %i.bt = icmp slt i32 %i.bs, 2
  %i.bu = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.bv = load i64, ptr %i.al, align 8
  %i.bw = mul i64 %i.bv, %indvars.iv
  %.sink.idx.i = select i1 %i.bt, i64 0, i64 %i.bw
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sink.idx.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv88
  %i.by = load float, ptr %i.bx, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bz = fpext float %i.by to double
  store double %i.bz, ptr %i.a, align 8, !tbaa !57
  store i32 -1056833530, ptr %12, align 8, !tbaa !19
  store ptr %i.a, ptr %i.an, align 8, !tbaa !20
  store i64 4294967297, ptr %i.am, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i64 0, ptr %i.ap, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !19
  store ptr %11, ptr %i.ao, align 8, !tbaa !20
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, double noundef 1.000000e+00, i32 noundef 5)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store i32 0, ptr %i.aq, align 8, !tbaa !38
  store i32 0, ptr %i.ar, align 4, !tbaa !39
  store i32 16842752, ptr %15, align 8, !tbaa !19
  store ptr %14, ptr %i.as, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store i32 0, ptr %i.at, align 8, !tbaa !38
  store i32 0, ptr %i.au, align 4, !tbaa !39
  store i32 16842752, ptr %16, align 8, !tbaa !19
  store ptr %11, ptr %i.av, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store i64 0, ptr %i.ax, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !19
  store ptr %14, ptr %i.aw, align 8, !tbaa !20
  %i.ca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i32 noundef -1)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load i32, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.s, label %._crit_edge.loopexit, !llvm.loop !102

bb.z:                                             ; preds = %bb.s, %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.aa:                                            ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ae

bb.ab:                                            ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x, %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.ac ], [ %i.cg, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn, %bb.ad ], [ %i.cf, %bb.aa ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %bb.ae
  %.pn68.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.z ], [ %.pn68.pn.pn.pn.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ak

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %._crit_edge85
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void

bb.ah:                                            ; preds = %._crit_edge85
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn63 = phi { ptr, i32 } [ %i.cj, %bb.ai ], [ %i.ci, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pn68.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn.pn, %bb.af ], [ %.pn63, %bb.aj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.r
  %.pn68.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn.pn.pn, %bb.ak ], [ %i.bj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.q, %bb.al
  %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn, %bb.al ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.am ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv2ft13FT02D_processERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %15 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %21 = alloca %"class.cv::Rect_", align 4        ; 10 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %31 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %33 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %36 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %37 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %41 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %45 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %46 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %47 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv2ft13FT02D_processERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_, ptr noundef nonnull @.str.1, i32 noundef 397) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.de

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.k = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.g
  %i.l = icmp eq i32 %i.k, 65536
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20, !noalias !112
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.n

bb.i:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.n

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  %i.o = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.o, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.p = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv3Mat4onesENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, i64 %i.p, i32 noundef 0)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.q = load ptr, ptr %8, align 8, !tbaa !49     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(688) %8, ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.r, !inline_history !1

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #18
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #18
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ah

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn108 = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.x, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.dd

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn114 = phi { ptr, i32 } [ %i.aa, %bb.r ], [ %i.z, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.dd

bb.t:                                             ; preds = %bb.j
  %i.ab = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.u unwind label %bb.bb

bb.u:                                             ; preds = %bb.t
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv2ft13FT02D_processERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_, ptr noundef nonnull @.str.1, i32 noundef 407) #19
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.z:                                             ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.z
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.y
  %.pn110 = phi { ptr, i32 } [ %i.ad, %bb.y ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %i.ae, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.dd

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ak = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc171 unwind label %bb.ae

.noexc171:                                        ; preds = %bb.aa
  %i.al = icmp eq i32 %i.ak, 65536
  br i1 %i.al, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc171
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20, !noalias !113
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.an)
          to label %_ZNK2cv11_InputArray6getMatEi.exit174 unwind label %bb.ae

bb.ac:                                            ; preds = %.noexc171
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit174 unwind label %bb.ae

_ZNK2cv11_InputArray6getMatEi.exit174:            ; preds = %bb.ab, %bb.ac
  %i.ao = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit174
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit174
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn112 = phi { ptr, i32 } [ %i.aq, %bb.af ], [ %i.ap, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.dd

bb.ah:                                            ; preds = %bb.ad, %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.ar = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ai unwind label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.as = add nsw i32 %i.ar, -1
  %i.at = sdiv i32 %i.as, 2                       ; 6 uses
  %i.au = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.aj unwind label %bb.bb

bb.aj:                                            ; preds = %bb.ai
  %i.av = add nsw i32 %i.au, -1
  %i.aw = sdiv i32 %i.av, 2                       ; 6 uses
  %i.ax = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.ak unwind label %bb.bb

bb.ak:                                            ; preds = %bb.aj
  %i.ay = sdiv i32 %i.ax, %i.at                   ; 2 uses
  %i.az = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.al unwind label %bb.bb

bb.al:                                            ; preds = %bb.ak
  %i.ba = sdiv i32 %i.az, %i.aw                   ; 2 uses
  %i.bb = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.am unwind label %bb.bb

bb.am:                                            ; preds = %bb.al
  %i.bc = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.an unwind label %bb.bb

bb.an:                                            ; preds = %bb.am
  %i.bd = add nsw i32 %i.bb, %i.at
  %i.be = add nsw i32 %i.bd, %i.bc
  %i.bf = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.ao unwind label %bb.bb

bb.ao:                                            ; preds = %bb.an
  %i.bg = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ap unwind label %bb.bb

bb.ap:                                            ; preds = %bb.ao
  %i.bh = add nsw i32 %i.bf, %i.aw
  %i.bi = add nsw i32 %i.bh, %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #18
  %i.bj = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.aq unwind label %bb.bc

bb.aq:                                            ; preds = %bb.ap
  %i.bk = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.ar unwind label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %i.bl = shl i32 %i.bk, 5
  %i.bm = add i32 %i.bl, -27
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.bj, i32 noundef %i.bm, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.as unwind label %bb.bc

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.bn = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef %i.bi, i32 noundef %i.be, i32 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.au unwind label %bb.be

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.bp, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !19
  store ptr %12, ptr %i.bo, align 8, !tbaa !20
  %i.bq = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.av unwind label %bb.bf

bb.av:                                            ; preds = %bb.au
  %i.br = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.aw unwind label %bb.bf

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %i.aw, i32 noundef %i.bq, i32 noundef %i.at, i32 noundef %i.br, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.bt, align 4, !tbaa !39
  store i32 16842752, ptr %18, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %6, ptr %i.bu, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.bw, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !19
  store ptr %13, ptr %i.bv, align 8, !tbaa !20
  %i.bx = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ay unwind label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  %i.by = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.az unwind label %bb.bi

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %i.aw, i32 noundef %i.bx, i32 noundef %i.at, i32 noundef %i.by, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.ba unwind label %bb.bj

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %.not178 = icmp slt i32 %i.ay, 0
  br i1 %.not178, label %._crit_edge180, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.ba
  %.not125176 = icmp slt i32 %i.ba, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.cg = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.cm = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %34, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %37, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %43, i64 20
  %i.dh = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %44, i64 20
  %i.dk = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %45, i64 16
  br i1 %.not125176, label %._crit_edge180, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.060179 = phi i32 [ %i.dx, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.dn = mul nsw i32 %.060179, %i.at
  br label %bb.bl

._crit_edge180:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  %i.do = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.cu unwind label %bb.cx

bb.bb:                                            ; preds = %bb.al, %bb.am, %bb.ai, %bb.ah, %bb.t, %bb.aj, %bb.ak, %bb.ao, %bb.an
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bc:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.bd:                                            ; preds = %bb.as
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.be:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.db

bb.bf:                                            ; preds = %bb.av, %bb.au
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.aw
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.pn116.pn = phi { ptr, i32 } [ %i.dt, %bb.bf ], [ %i.du, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.da

bb.bi:                                            ; preds = %bb.ay, %bb.ax
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.az
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %.pn119.pn = phi { ptr, i32 } [ %i.dv, %bb.bi ], [ %i.dw, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.da

._crit_edge:                                      ; preds = %bb.by
  %i.dx = add nuw i32 %.060179, 1
  %exitcond182.not = icmp eq i32 %.060179, %i.ay
  br i1 %exitcond182.not, label %._crit_edge180, label %.preheader, !llvm.loop !110

bb.bl:                                            ; preds = %.preheader, %bb.by
  %.0177 = phi i32 [ 0, %.preheader ], [ %i.ec, %bb.by ] ; 3 uses
  %i.dy = mul nsw i32 %.0177, %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.dz = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.bm unwind label %bb.bz

bb.bm:                                            ; preds = %bb.bl
  %i.ea = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.bn unwind label %bb.bz

bb.bn:                                            ; preds = %bb.bm
  store i32 %i.dn, ptr %21, align 4, !tbaa !53
  store i32 %i.dy, ptr %i.bz, align 4, !tbaa !54
  store i32 %i.dz, ptr %i.ca, align 4, !tbaa !55
  store i32 %i.ea, ptr %i.cb, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %bb.bo unwind label %bb.ca

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %bb.bp unwind label %bb.cb

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %24) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  store i64 0, ptr %i.cd, align 8
  store i32 33619968, ptr %25, align 8, !tbaa !19
  store ptr %24, ptr %i.cc, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  store i32 0, ptr %i.ce, align 8, !tbaa !38
  store i32 0, ptr %i.cf, align 4, !tbaa !39
  store i32 16842752, ptr %26, align 8, !tbaa !19
  store ptr %23, ptr %i.cg, align 8, !tbaa !20
  invoke void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.bq unwind label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  store i32 0, ptr %i.ch, align 8, !tbaa !38
  store i32 0, ptr %i.ci, align 4, !tbaa !39
  store i32 16842752, ptr %28, align 8, !tbaa !19
  store ptr %22, ptr %i.cj, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  store i32 0, ptr %i.ck, align 8, !tbaa !38
  store i32 0, ptr %i.cl, align 4, !tbaa !39
  store i32 16842752, ptr %29, align 8, !tbaa !19
  store ptr %24, ptr %i.cm, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  store i64 0, ptr %i.co, align 8
  store i32 33619968, ptr %30, align 8, !tbaa !19
  store ptr %27, ptr %i.cn, align 8, !tbaa !20
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %30, double noundef 1.000000e+00, i32 noundef 5)
          to label %bb.br unwind label %bb.cd

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  store i32 0, ptr %i.cp, align 8, !tbaa !38
  store i32 0, ptr %i.cq, align 4, !tbaa !39
  store i32 16842752, ptr %34, align 8, !tbaa !19
  store ptr %27, ptr %i.cr, align 8, !tbaa !20
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.bs unwind label %bb.ce

bb.bs:                                            ; preds = %bb.br
  store i32 -1056833530, ptr %32, align 8, !tbaa !19
  store ptr %33, ptr %i.ct, align 8, !tbaa !20
  store i64 17179869185, ptr %i.cs, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  store i32 0, ptr %i.cu, align 8, !tbaa !38
  store i32 0, ptr %i.cv, align 4, !tbaa !39
  store i32 16842752, ptr %37, align 8, !tbaa !19
  store ptr %24, ptr %i.cw, align 8, !tbaa !20
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.bt unwind label %bb.cf

bb.bt:                                            ; preds = %bb.bs
  store i32 -1056833530, ptr %35, align 8, !tbaa !19
  store ptr %36, ptr %i.cy, align 8, !tbaa !20
  store i64 17179869185, ptr %i.cx, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  store i32 -1040056314, ptr %38, align 8, !tbaa !19
  store ptr %31, ptr %i.cz, align 8, !tbaa !20
  store i64 17179869185, ptr %i.da, align 8, !tbaa !30
  invoke void @_ZN2cv6divideERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %38, double noundef 1.000000e+00, i32 noundef 5)
          to label %bb.bu unwind label %bb.cg

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %39) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  store i32 -1056833530, ptr %40, align 8, !tbaa !19
  store ptr %31, ptr %i.dc, align 8, !tbaa !20
  store i64 17179869185, ptr %i.db, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  store i64 0, ptr %i.de, align 8
  store i32 33619968, ptr %41, align 8, !tbaa !19
  store ptr %39, ptr %i.dd, align 8, !tbaa !20
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, double noundef 1.000000e+00, i32 noundef 5)
          to label %bb.bv unwind label %bb.cj

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %bb.bw unwind label %bb.ck

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  store i32 0, ptr %i.df, align 8, !tbaa !38
  store i32 0, ptr %i.dg, align 4, !tbaa !39
  store i32 16842752, ptr %43, align 8, !tbaa !19
  store ptr %42, ptr %i.dh, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  store i32 0, ptr %i.di, align 8, !tbaa !38
  store i32 0, ptr %i.dj, align 4, !tbaa !39
  store i32 16842752, ptr %44, align 8, !tbaa !19
  store ptr %39, ptr %i.dk, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  store i64 0, ptr %i.dm, align 8
  store i32 33619968, ptr %45, align 8, !tbaa !19
  store ptr %42, ptr %i.dl, align 8, !tbaa !20
  %i.eb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bx unwind label %bb.cl

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i32 noundef -1)
          to label %bb.by unwind label %bb.cl

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  %i.ec = add nuw i32 %.0177, 1
  %exitcond.not = icmp eq i32 %.0177, %i.ba
  br i1 %exitcond.not, label %._crit_edge, label %bb.bl, !llvm.loop !111

bb.bz:                                            ; preds = %bb.bm, %bb.bl
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ca:                                            ; preds = %bb.bn
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cb:                                            ; preds = %bb.bo
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cc:                                            ; preds = %bb.bp
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.cq

bb.cd:                                            ; preds = %bb.bq
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.cp

bb.ce:                                            ; preds = %bb.br
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.cf:                                            ; preds = %bb.bs
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bt
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %.pn133.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.cf ], [ %i.ek, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ce, %bb.ch
  %.pn133.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.ce ], [ %.pn133.pn.pn, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.co

bb.cj:                                            ; preds = %bb.bu
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %bb.cn

bb.ck:                                            ; preds = %bb.bv
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bx, %bb.bw
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #18
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn142.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.cl ], [ %i.em, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cj
  %.pn142.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn, %bb.cm ], [ %i.el, %bb.cj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ci
  %.pn142.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn, %bb.cn ], [ %.pn133.pn.pn.pn.pn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cd
  %.pn142.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn, %bb.co ], [ %i.eh, %bb.cd ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cc
  %.pn142.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn, %bb.cp ], [ %i.eg, %bb.cc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #18
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cb
  %.pn142.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn.pn, %bb.cq ], [ %i.ef, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #18
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ca
  %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cr ], [ %i.ee, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.bz
  %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cs ], [ %i.ed, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.da

bb.cu:                                            ; preds = %._crit_edge180
  %i.eo = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  store i32 %i.at, ptr %47, align 4, !tbaa !53
  %i.ep = getelementptr inbounds nuw i8, ptr %47, i64 4
  store i32 %i.aw, ptr %i.ep, align 4, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %i.do, ptr %i.eq, align 4, !tbaa !55
  %i.er = getelementptr inbounds nuw i8, ptr %47, i64 12
  store i32 %i.eo, ptr %i.er, align 4, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 4 dereferenceable(16) %47)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.cx

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.cv
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.cx:                                            ; preds = %bb.cv, %bb.cu, %._crit_edge180
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #18
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn123 = phi { ptr, i32 } [ %i.et, %bb.cy ], [ %i.es, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.ct, %bb.bk, %bb.bh
  %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ct ], [ %.pn123, %bb.cz ], [ %.pn119.pn, %bb.bk ], [ %.pn116.pn, %bb.bh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #18
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.be, %bb.bd
  %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.da ], [ %i.ds, %bb.be ], [ %i.dr, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.bc
  %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.db ], [ %i.dq, %bb.bc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.bb, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %bb.s, %bb.p
  %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn108, %bb.p ], [ %.pn114, %bb.s ], [ %.pn112, %bb.ag ], [ %.pn110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.dp, %bb.bb ], [ %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dd ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn142.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN2cv2ft15FT02D_iterationERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_S6_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 5 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %22 = alloca %"class.cv::Rect_", align 4        ; 11 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::Scalar_", align 8      ; 7 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %35 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %37 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %39 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %41 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %43 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %45 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %46 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %47 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %48 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %49 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %51 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %52 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %53 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %54 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %55 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %56 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %57 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %i.d = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.e = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv2ft15FT02D_iterationERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_S6_b, ptr noundef nonnull @.str.1, i32 noundef 462) #19
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.da

bb.h:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.q = add nsw i32 %i.p, -1
  %i.r = sdiv i32 %i.q, 2                         ; 9 uses
  %i.s = tail call noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.t = add nsw i32 %i.s, -1
  %i.u = sdiv i32 %i.t, 2                         ; 9 uses
  %i.v = tail call noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.w = sdiv i32 %i.v, %i.r                      ; 2 uses
  %i.x = tail call noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.y = sdiv i32 %i.x, %i.u                      ; 2 uses
  %i.z = tail call noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.aa = add nsw i32 %i.z, %i.r
  %i.ab = tail call noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.ac = add nsw i32 %i.aa, %i.ab                ; 2 uses
  %i.ad = tail call noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.ae = add nsw i32 %i.ad, %i.u
  %i.af = tail call noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.ag = add nsw i32 %i.ae, %i.af                ; 2 uses
  %i.ah = tail call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.ai = tail call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.aj = shl i32 %i.ai, 5
  %i.ak = add i32 %i.aj, -27
  tail call void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.ah, i32 noundef %i.ak, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 -1056833530, ptr %8, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.am, align 8, !tbaa !20
  store i64 4294967297, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i32 0, ptr %9, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  call void @_ZNK2cv12_OutputArray5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ao = call noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = call noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  %i.aq = call noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.b, ptr %i.as, align 8, !tbaa !20
  store i64 4294967297, ptr %i.ar, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i32 0, ptr %11, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  call void @_ZNK2cv12_OutputArray5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.au = call noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.av = shl i32 %i.au, 5
  %i.aw = add i32 %i.av, -27
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, i32 noundef %i.ag, i32 noundef %i.ac, i32 noundef %i.aw)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #18
  %i.ax = load ptr, ptr %13, align 8, !tbaa !49, !noalias !120 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(688) %13, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.cz

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bc) #18
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bd) #18
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.be) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, i32 noundef %i.ag, i32 noundef %i.ac, i32 noundef 0)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #18
  %i.bf = load ptr, ptr %15, align 8, !tbaa !49, !noalias !121 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef -1)
          to label %bb.l unwind label %.body212

.body212:                                         ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #18
  br label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bk) #18
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bl) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.bo, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !19
  store ptr %16, ptr %i.bn, align 8, !tbaa !20
  %i.bp = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %i.u, i32 noundef %i.bp, i32 noundef %i.r, i32 noundef %i.bq, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.bs, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !19
  store ptr %17, ptr %i.br, align 8, !tbaa !20
  %i.bt = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bu = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef %i.u, i32 noundef %i.bt, i32 noundef %i.r, i32 noundef %i.bu, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.not262 = icmp slt i32 %i.w, 0
  br i1 %.not262, label %.thread220, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.r
  %.not165259 = icmp slt i32 %i.y, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %44, i64 20
  %i.cq = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %51, i64 20
  %i.dd = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %52, i64 20
  %i.dg = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %39, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %39, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %35, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %35, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %37, i64 12
  br i1 %.not165259, label %.thread220, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.094264 = phi i32 [ %i.fn, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.098263 = phi i32 [ %.2100.jt9, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %i.du = mul nsw i32 %.094264, %i.r              ; 2 uses
  %i.dv = add nsw i32 %i.du, 1
  br label %bb.aa

bb.s:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.body212, %bb.s
  %.pn157 = phi { ptr, i32 } [ %i.bj, %.body212 ], [ %i.dw, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cy

bb.u:                                             ; preds = %bb.m, %bb.l
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.n
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.pn159.pn = phi { ptr, i32 } [ %i.dx, %bb.u ], [ %i.dy, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.cx

bb.x:                                             ; preds = %bb.p, %bb.o
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.q
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pn162.pn = phi { ptr, i32 } [ %i.dz, %bb.x ], [ %i.ea, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.cx

bb.aa:                                            ; preds = %.preheader, %bb.br
  %.0261 = phi i32 [ 0, %.preheader ], [ %i.fh, %bb.br ] ; 3 uses
  %.199260 = phi i32 [ %.098263, %.preheader ], [ %.2100.jt9, %bb.br ] ; 2 uses
  %i.eb = mul nsw i32 %.0261, %i.u                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.ec = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ab unwind label %bb.ap

bb.ab:                                            ; preds = %bb.aa
  %i.ed = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ac unwind label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.du, ptr %22, align 4, !tbaa !53
  store i32 %i.eb, ptr %i.bv, align 4, !tbaa !54
  store i32 %i.ec, ptr %i.bw, align 4, !tbaa !55
  store i32 %i.ed, ptr %i.bx, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 4 dereferenceable(16) %22)
          to label %bb.ad unwind label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 4 dereferenceable(16) %22)
end_hunk_1
begin_hunk_2_@_ZN2cv2ft15FT02D_iterationERKNS_11_InputArrayES3_RKNS_12_OutputArrayES3_S6_b:bb.a
  br label %bb.cc

bb.av:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn193 = phi { ptr, i32 } [ %i.et, %bb.aw ], [ %i.es, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %bb.cc

bb.ay:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit215
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn195 = phi { ptr, i32 } [ %i.ev, %bb.az ], [ %i.eu, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.cc

bb.bb:                                            ; preds = %bb.ai
  %i.ew = add nsw i32 %.199260, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  %i.ex = add nsw i32 %i.eb, 1
  %i.ey = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.ez = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.fa = add nsw i32 %i.ey, -2
  %i.fb = add nsw i32 %i.ez, -2
  store i32 %i.dv, ptr %39, align 4, !tbaa !53
  store i32 %i.ex, ptr %i.dj, align 4, !tbaa !54
  store i32 %i.fa, ptr %i.dk, align 4, !tbaa !55
  store i32 %i.fb, ptr %i.dl, align 4, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %38, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 4 dereferenceable(16) %39)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !57
  store i32 -1056833530, ptr %40, align 8, !tbaa !19
  store ptr %i.c, ptr %i.dn, align 8, !tbaa !20
  store i64 4294967297, ptr %i.dm, align 8, !tbaa !30
  %i.fc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.fd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %38, ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %bb.bg unwind label %bb.bi     ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.br

bb.bh:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #18
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn190.pn = phi { ptr, i32 } [ %i.ff, %bb.bi ], [ %i.fe, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.cc

bb.bk:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  store i32 0, ptr %i.co, align 8, !tbaa !38
  store i32 0, ptr %i.cp, align 4, !tbaa !39
  store i32 16842752, ptr %44, align 8, !tbaa !19
  store ptr %28, ptr %i.cq, align 8, !tbaa !20
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %43, ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.bl unwind label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  store i32 -1056833530, ptr %42, align 8, !tbaa !19
  store ptr %43, ptr %i.cs, align 8, !tbaa !20
  store i64 17179869185, ptr %i.cr, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  store i32 -1056833530, ptr %45, align 8, !tbaa !19
  store ptr %32, ptr %i.cu, align 8, !tbaa !20
  store i64 17179869185, ptr %i.ct, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  store i32 -1040056314, ptr %46, align 8, !tbaa !19
  store ptr %41, ptr %i.cv, align 8, !tbaa !20
  store i64 17179869185, ptr %i.cw, align 8, !tbaa !30
  invoke void @_ZN2cv6divideERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46, double noundef 1.000000e+00, i32 noundef 5)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %47) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  store i32 -1056833530, ptr %48, align 8, !tbaa !19
  store ptr %41, ptr %i.cy, align 8, !tbaa !20
  store i64 17179869185, ptr %i.cx, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  store i64 0, ptr %i.da, align 8
  store i32 33619968, ptr %49, align 8, !tbaa !19
  store ptr %47, ptr %i.cz, align 8, !tbaa !20
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %49, double noundef 1.000000e+00, i32 noundef 5)
          to label %bb.bn unwind label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 4 dereferenceable(16) %22)
          to label %bb.bo unwind label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  store i32 0, ptr %i.db, align 8, !tbaa !38
  store i32 0, ptr %i.dc, align 4, !tbaa !39
  store i32 16842752, ptr %51, align 8, !tbaa !19
  store ptr %50, ptr %i.dd, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  store i32 0, ptr %i.de, align 8, !tbaa !38
  store i32 0, ptr %i.df, align 4, !tbaa !39
  store i32 16842752, ptr %52, align 8, !tbaa !19
  store ptr %47, ptr %i.dg, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  store i64 0, ptr %i.di, align 8
  store i32 33619968, ptr %53, align 8, !tbaa !19
  store ptr %50, ptr %i.dh, align 8, !tbaa !20
  %i.fg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bp unwind label %bb.by

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i32 noundef -1)
          to label %bb.bq unwind label %bb.by

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bg
  %.2100.jt9 = phi i32 [ %.199260, %bb.bq ], [ %i.ew, %bb.bg ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.fh = add nuw i32 %.0261, 1
  %exitcond.not = icmp eq i32 %.0261, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !118

bb.bs:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit215
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %.loopexit

bb.bt:                                            ; preds = %bb.bk
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bl
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.pn175.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.bt ], [ %i.fj, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.cb

bb.bw:                                            ; preds = %bb.bm
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bn
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.bp, %bb.bo
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn183.pn.pn.pn = phi { ptr, i32 } [ %i.fm, %bb.by ], [ %i.fl, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw
  %.pn183.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn, %bb.bz ], [ %i.fk, %bb.bw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bv
  %.pn183.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn, %bb.ca ], [ %.pn175.pn.pn.pn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bj, %bb.ba, %bb.ax, %bb.au
  %.pn195.pn = phi { ptr, i32 } [ %.pn195, %bb.ba ], [ %.pn193, %bb.ax ], [ %.pn190.pn, %bb.bj ], [ %.pn183.pn.pn.pn.pn.pn, %bb.cb ], [ %i.er, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.at
  %.pn195.pn.pn = phi { ptr, i32 } [ %.pn195.pn, %bb.cc ], [ %i.eq, %bb.at ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.as
  %.pn195.pn.pn.pn = phi { ptr, i32 } [ %.pn195.pn.pn, %bb.cd ], [ %i.ep, %bb.as ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #18
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ar
  %.pn195.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn195.pn.pn.pn, %bb.ce ], [ %i.eo, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #18
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.aq
  %.pn195.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn195.pn.pn.pn.pn, %bb.cf ], [ %i.en, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ap
  %.pn195.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn195.pn.pn.pn.pn.pn, %bb.cg ], [ %i.em, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.cx

._crit_edge:                                      ; preds = %bb.br
  %i.fn = add nuw i32 %.094264, 1
  %exitcond268.not = icmp eq i32 %.094264, %i.w
  br i1 %exitcond268.not, label %.thread220, label %.preheader, !llvm.loop !119

.thread220:                                       ; preds = %._crit_edge, %.preheader.lr.ph, %bb.r
  %.098.lcssa = phi i32 [ 0, %bb.r ], [ 0, %.preheader.lr.ph ], [ %.2100.jt9, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  %i.fo = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.ci unwind label %bb.cq

bb.ci:                                            ; preds = %.thread220
  %i.fp = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.cj unwind label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  store i32 %i.r, ptr %55, align 4, !tbaa !53
  %i.fq = getelementptr inbounds nuw i8, ptr %55, i64 4
  store i32 %i.u, ptr %i.fq, align 4, !tbaa !54
  %i.fr = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i32 %i.fo, ptr %i.fr, align 4, !tbaa !55
  %i.fs = getelementptr inbounds nuw i8, ptr %55, i64 12
  store i32 %i.fp, ptr %i.fs, align 4, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 4 dereferenceable(16) %55)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit216 unwind label %bb.cq

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit216:            ; preds = %bb.cj
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ck unwind label %bb.cr

bb.ck:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit216
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  %i.ft = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cl unwind label %bb.ct

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ft, label %bb.cm, label %.loopexit

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18
  %i.fu = invoke noundef i32 @_ZNK2cv11_InputArray4colsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.cn unwind label %bb.cu

bb.cn:                                            ; preds = %bb.cm
  %i.fv = invoke noundef i32 @_ZNK2cv11_InputArray4rowsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.co unwind label %bb.cu

bb.co:                                            ; preds = %bb.cn
  store i32 %i.r, ptr %57, align 4, !tbaa !53
  %i.fw = getelementptr inbounds nuw i8, ptr %57, i64 4
  store i32 %i.u, ptr %i.fw, align 4, !tbaa !54
  %i.fx = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i32 %i.fu, ptr %i.fx, align 4, !tbaa !55
  %i.fy = getelementptr inbounds nuw i8, ptr %57, i64 12
  store i32 %i.fv, ptr %i.fy, align 4, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %56, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 4 dereferenceable(16) %57)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit217 unwind label %bb.cu

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit217:            ; preds = %bb.co
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %56, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cp unwind label %bb.cv

bb.cp:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit217
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  br label %.loopexit

bb.cq:                                            ; preds = %bb.cj, %bb.ci, %.thread220
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit216
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #18
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn203 = phi { ptr, i32 } [ %i.ga, %bb.cr ], [ %i.fz, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  br label %bb.cx

bb.ct:                                            ; preds = %bb.ck
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cu:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit217
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #18
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn205 = phi { ptr, i32 } [ %i.gd, %bb.cv ], [ %i.gc, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  br label %bb.cx

.loopexit:                                        ; preds = %bb.bs, %bb.cl, %bb.cp
  %.5 = phi i32 [ %.098.lcssa, %bb.cl ], [ %.098.lcssa, %bb.cp ], [ -1, %bb.bs ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  ret i32 %.5

bb.cx:                                            ; preds = %bb.cw, %bb.ct, %bb.cs, %bb.ch, %bb.z, %bb.w
  %.pn205.pn = phi { ptr, i32 } [ %.pn205, %bb.cw ], [ %i.gb, %bb.ct ], [ %.pn203, %bb.cs ], [ %.pn195.pn.pn.pn.pn.pn.pn, %bb.ch ], [ %.pn162.pn, %bb.z ], [ %.pn159.pn, %bb.w ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #18
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.t
  %.pn205.pn.pn = phi { ptr, i32 } [ %.pn205.pn, %bb.cx ], [ %.pn157, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.body
  %.pn205.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn, %bb.cy ], [ %i.bb, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn205.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn205.pn.pn.pn, %bb.cz ]
  resume { ptr, i32 } %.pn205.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #10

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 208                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #18
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #18
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !122

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i29) #18
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i29) #18
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 208 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !122

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #20
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !40
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !37
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #18 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #20
  invoke void @__cxa_rethrow() #19
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #22
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !31}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !6, i64 16}
!15 = !{!14, !11, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!18 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !17, i64 16}
!19 = !{!18, !7, i64 0}
!20 = !{!18, !10, i64 8}
!21 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!22 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!23 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!24 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !23, i64 4, !7, i64 8, !6, i64 12}
!25 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!26 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !21, i64 56, !22, i64 64, !24, i64 72, !25, i64 128}
!27 = !{!26, !11, i64 24}
!28 = !{!26, !7, i64 12}
!29 = !{!26, !7, i64 8}
!30 = !{!7, !7, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = !{!"p1 _ZTSN2cv3MatE", !10, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !34, i64 16}
!38 = !{!17, !7, i64 0}
!39 = !{!17, !7, i64 4}
!40 = !{!35, !34, i64 0}
!41 = !{!"float", !6, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSN2cv5MatOpE", !10, i64 0}
!44 = !{!"double", !6, i64 0}
!45 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!46 = !{!"_ZTSN2cv3VecIdLi4EEE", !45, i64 0}
!47 = !{!"_ZTSN2cv7Scalar_IdEE", !46, i64 0}
!48 = !{!"_ZTSN2cv7MatExprE", !43, i64 0, !7, i64 8, !26, i64 16, !26, i64 224, !26, i64 432, !44, i64 640, !44, i64 648, !47, i64 656}
!49 = !{!48, !43, i64 0}
!50 = !{!"vtable pointer", !5, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSN2cv5Rect_IiEE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!53 = !{!52, !7, i64 0}
!54 = !{!52, !7, i64 4}
!55 = !{!52, !7, i64 8}
!56 = !{!52, !7, i64 12}
!57 = !{!44, !44, i64 0}
!58 = distinct !{!58, !31, !32, !33}
!59 = distinct !{!59, !31}
!60 = distinct !{!60, !31}
!61 = distinct !{!61, !31}
!62 = distinct !{!62, !31, !33, !32}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31, !33, !32}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !31}
!67 = !{!12, !11, i64 0}
!68 = !{!13, !13, i64 0}
!69 = !{!14, !13, i64 8}
!70 = distinct !{!70, !31, !32, !33}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31, !33, !32}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31, !33, !32}
!77 = distinct !{!77, !31}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!80 = distinct !{!80, !79, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!82 = distinct !{!82, !81, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!84 = distinct !{!84, !83, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, i1 true, !"_ZNK2cv3Mat3rowEi"}
!87 = distinct !{!87, !86, !"_ZNK2cv3Mat3rowEi: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZNK2cv3Mat3colEi"}
!89 = distinct !{!89, !88, !"_ZNK2cv3Mat3colEi: argument 0"}
!90 = distinct !{!90, !31}
!91 = !{!80}
!92 = !{!82}
!93 = !{!84}
!94 = !{!87}
!95 = !{!"_ZTSN2cv5RangeE", !7, i64 0, !7, i64 4}
!96 = !{!95, !7, i64 0}
!97 = !{!95, !7, i64 4}
!98 = !{!89}
!99 = distinct !{!99, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!100 = distinct !{!100, !99, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!101 = distinct !{!101, !31, !104}
!102 = distinct !{!102, !31}
!103 = !{!100}
!104 = !{!"llvm.loop.unswitch.partial.disable"}
!105 = !{!26, !7, i64 4}
!106 = distinct !{!106, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!107 = distinct !{!107, !106, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!109 = distinct !{!109, !108, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = !{!107}
!113 = !{!109}
!114 = distinct !{!114, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!115 = distinct !{!115, !114, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!116 = distinct !{!116, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!117 = distinct !{!117, !116, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31}
!120 = !{!115}
!121 = !{!117}
!122 = distinct !{!122, !31}
end_hunk_2
