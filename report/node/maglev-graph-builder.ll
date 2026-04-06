begin_hunk_0
inline.NumInlined: 39739
inline.NumDeleted: 11729
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder19VisitSingleBytecodeEv:bb.a
  br label %.thread

bb.ii:                                            ; preds = %bb.ax
  %7 = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder13VisitDebuggerEv(ptr noundef nonnull align 8 dereferenceable(953) %0)
  br label %.thread

bb.ij:                                            ; preds = %bb.ax
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18MaglevGraphBuilder30TryReduceArrayIteratingBuiltinEPKcNS0_8compiler13JSFunctionRefERNS1_13CallArgumentsENS_4base11FunctionRefIFNS2_20EagerDeoptFrameScopeES6_PNS1_9ValueNodeESD_SD_SD_SD_SD_EEENSA_IFNS2_19LazyDeoptFrameScopeES6_SD_SD_SD_SD_SD_SD_EEERKSt8optionalINSA_IFNS1_12ReduceResultESD_EEEERKSJ_INSA_IFvSD_SD_EEEE:bb.a
  store i32 0, ptr %i.kg, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  store ptr %0, ptr %24, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 11 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  br label %bb.n

bb.g:                                             ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load ptr, ptr %i.ay, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %switch.lookup, label %bb.n

switch.lookup:                                    ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %4 = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE, i64 %4
  %switch.load = load i32, ptr %switch.gep, align 4
  store ptr %0, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 -48
  %9 = load ptr, ptr %8, align 8                  ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 3, ptr %10, align 8
  store i32 %switch.load, ptr %5, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr %9, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx.i, align 8
  %11 = load ptr, ptr %i.aw, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 344
  %.sroa.05.08.i.i = load ptr, ptr %12, align 8   ; 2 uses
  %.not9.i.i = icmp eq ptr %.sroa.05.08.i.i, null
  br i1 %.not9.i.i, label %switch.lookup.a, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %switch.lookup, %16
  %.sroa.05.010.i.i = phi ptr [ %.sroa.05.0.i.i, %16 ], [ %.sroa.05.08.i.i, %switch.lookup ] ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 37 ; 2 uses
  %14 = load i8, ptr %13, align 1, !range !10, !noundef !11
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %switch.lookup.a, label %16

16:                                               ; preds = %.lr.ph.i.i
  store i8 1, ptr %13, align 1
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 80
  %.sroa.05.0.i.i = load ptr, ptr %17, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.05.0.i.i, null
  br i1 %.not.i.i, label %switch.lookup.a, label %.lr.ph.i.i

switch.lookup.a:                                  ; preds = %.lr.ph.i.i, %16, %switch.lookup
  tail call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %9)
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 11 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bg = load ptr, ptr %i.bf, align 8
end_hunk_7
begin_hunk_8_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZN2v88internal4Zone11CloneVectorIKPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS9_ISB_EE.exit.i, label %bb.n

_ZN2v88internal4Zone11CloneVectorIKPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS9_ISB_EE.exit.i: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 -48
  %8 = load ptr, ptr %7, align 8                  ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 3, ptr %9, align 8
  store i32 154, ptr %4, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr %8, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx.i, align 8
  %10 = load ptr, ptr %i.bd, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 344
  %.sroa.05.08.i.i = load ptr, ptr %11, align 8   ; 2 uses
  %.not9.i.i = icmp eq ptr %.sroa.05.08.i.i, null
  br i1 %.not9.i.i, label %bb.m, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal4Zone11CloneVectorIKPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS9_ISB_EE.exit.i, %15
  %.sroa.05.010.i.i = phi ptr [ %.sroa.05.0.i.i, %15 ], [ %.sroa.05.08.i.i, %_ZN2v88internal4Zone11CloneVectorIKPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS9_ISB_EE.exit.i ] ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 37 ; 2 uses
  %13 = load i8, ptr %12, align 1, !range !10, !noundef !11
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %bb.m, label %15

15:                                               ; preds = %.lr.ph.i.i
  store i8 1, ptr %12, align 1
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 80
  %.sroa.05.0.i.i = load ptr, ptr %16, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.05.0.i.i, null
  br i1 %.not.i.i, label %bb.m, label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.i.i, %15, %_ZN2v88internal4Zone11CloneVectorIKPNS0_6maglev9ValueNodeEA_S5_EENS_4base6VectorINSt12remove_constIT_E4typeEEENS9_ISB_EE.exit.i
  tail call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %8)
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal6maglev18MaglevGraphBuilder20VisitInvokeIntrinsicEv:bb.a
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit: ; preds = %bb.m, %bb.n
  %i.ah = phi i64 [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  %i.ai = add i64 %i.ah, 120
  store i64 %i.ai, ptr %i.ad, align 8
end_hunk_9
begin_hunk_10_@_ZN2v88internal6maglev18MaglevGraphBuilder28VisitIntrinsicGeneratorCloseENS0_11interpreter12RegisterListE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33VisitIntrinsicGetImportMetaObjectENS0_11interpreter12RegisterListE(ptr noundef nonnull align 8 dereferenceable(953) %0, i64 %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 -48
  %6 = load ptr, ptr %5, align 8                  ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load ptr, ptr %7, align 8                  ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %12 = load i64, ptr %11, align 8                ; 2 uses
  %13 = sub i64 %10, %12
  %14 = icmp ult i64 %13, 120
  br i1 %14, label %15, label %bb.a, !prof !6

15:                                               ; preds = %2
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %8, i64 noundef 120) #34
  %.pre.i.i.i.i.i.i = load i64, ptr %11, align 8
  br label %bb.a

bb.a:                                             ; preds = %2, %15
  %16 = phi i64 [ %.pre.i.i.i.i.i.i, %15 ], [ %12, %2 ] ; 2 uses
  %17 = add i64 %16, 120
  store i64 %17, ptr %11, align 8
  %18 = add i64 %16, 96
  %i.a = inttoptr i64 %18 to ptr                  ; 6 uses
  store ptr null, ptr %i.a, align 8
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 536870977612, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 230, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %23 = load i32, ptr %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  store ptr %6, ptr %i.b, align 8
  %25 = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_11CallRuntimeEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %3, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -64
  store ptr %25, ptr %i.d, align 8
  ret i64 2
}

end_hunk_10
begin_hunk_11_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 7 uses
  %8 = alloca %"class.v8::internal::compiler::SharedFunctionInfoRef", align 8 ; 2 uses
  %9 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 14 uses
  %10 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 5 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %11 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
end_hunk_11
begin_hunk_12_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 2, ptr %i.cs, align 8
  store ptr %i.cm, ptr %i.cl, align 8
end_hunk_12
begin_hunk_13_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.cr, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8
end_hunk_13
begin_hunk_14_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a

_ZN2v88internal6maglev18MaglevGraphBuilder19LazyDeoptFrameScopeC2EPS2_PNS1_9ValueNodeE.exit: ; preds = %.lr.ph.i.i.i, %bb.o, %_ZN2v88internal6maglev13CallArguments12set_receiverEPNS1_9ValueNodeE.exit
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %.0.i.i.i)
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %15, ptr noundef %16)
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
end_hunk_14
begin_hunk_15_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  %.pre.i.i.i.i.i.i = load i64, ptr %i.fz, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit: ; preds = %bb.v, %bb.w
  %i.gd = phi i64 [ %.pre.i.i.i.i.i.i, %bb.w ], [ %i.ga, %bb.v ] ; 2 uses
  %i.ge = add i64 %i.gd, 120
  store i64 %i.ge, ptr %i.fz, align 8
end_hunk_15
begin_hunk_16_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowReferenceErrorIfHoleEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 3) i64 @_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowSuperNotCalledIfHoleEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca i8, align 1                         ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -64
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
end_hunk_16
begin_hunk_17_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowSuperNotCalledIfHoleEv:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ai = load i16, ptr %i.ah, align 4
  %i.aj = icmp eq i16 %i.ai, 1
  br i1 %i.aj, label %2, label %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread7

2:                                                ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit
  %3 = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 -48
  %5 = load ptr, ptr %4, align 8                  ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8                  ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %11 = load i64, ptr %10, align 8                ; 2 uses
  %12 = sub i64 %9, %11
  %13 = icmp ult i64 %12, 120
  br i1 %13, label %14, label %bb.e, !prof !6

14:                                               ; preds = %2
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 120) #34
  %.pre.i.i.i.i.i.i = load i64, ptr %10, align 8
  br label %bb.e

bb.e:                                             ; preds = %2, %14
  %15 = phi i64 [ %.pre.i.i.i.i.i.i, %14 ], [ %11, %2 ] ; 2 uses
  %16 = add i64 %15, 120
  store i64 %16, ptr %10, align 8
  %17 = add i64 %15, 96
  %18 = inttoptr i64 %17 to ptr                   ; 6 uses
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 536870977612, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 45, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %23 = load i32, ptr %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8
  %25 = getelementptr inbounds i8, ptr %18, i64 -8
  store ptr %5, ptr %25, align 8
  %26 = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_11CallRuntimeEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %18) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i8 61, ptr %1, align 1
  %27 = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5AbortEJRNS0_11AbortReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread7

bb.f:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread
end_hunk_17
begin_hunk_18_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowSuperNotCalledIfHoleEv:bb.a
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread7

_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread7: ; preds = %bb.d, %bb.a, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit, %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit, %bb.f, %bb.e
  %.sroa.05.0 = phi i64 [ 2, %bb.f ], [ 1, %bb.e ], [ 2, %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit ], [ 2, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit ], [ 2, %bb.a ], [ 2, %bb.d ]
  ret i64 %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 3) i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37VisitThrowSuperAlreadyCalledIfNotHoleEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca i8, align 1                         ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -64
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_18
begin_hunk_19_@_ZN2v88internal6maglev18MaglevGraphBuilder37VisitThrowSuperAlreadyCalledIfNotHoleEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = and i64 %i.g, 65535
  %i.l = icmp eq i64 %i.k, 225
  br i1 %i.l, label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit, label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread

_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.n = load i16, ptr %i.m, align 4
  %i.o = icmp eq i16 %i.n, 1
  br i1 %i.o, label %bb.d, label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread

_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread: ; preds = %bb.b, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit
  %2 = getelementptr inbounds i8, ptr %i.c, i64 -48
  %3 = load ptr, ptr %2, align 8                  ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load ptr, ptr %4, align 8                  ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %9 = load i64, ptr %8, align 8                  ; 2 uses
  %10 = sub i64 %7, %9
  %11 = icmp ult i64 %10, 120
  br i1 %11, label %12, label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a, !prof !6

12:                                               ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef 120) #34
  %.pre.i.i.i.i.i.i = load i64, ptr %8, align 8
  br label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a

_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a: ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread, %12
  %13 = phi i64 [ %.pre.i.i.i.i.i.i, %12 ], [ %9, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread ] ; 2 uses
  %14 = add i64 %13, 120
  store i64 %14, ptr %8, align 8
  %15 = add i64 %13, 96
  %16 = inttoptr i64 %15 to ptr                   ; 6 uses
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 536870977612, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 44, ptr %19, align 4
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %21 = load i32, ptr %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8
  %23 = getelementptr inbounds i8, ptr %16, i64 -8
  store ptr %3, ptr %23, align 8
  %24 = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_11CallRuntimeEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %16) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i8 61, ptr %1, align 1
  %25 = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5AbortEJRNS0_11AbortReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_19
begin_hunk_20_@_ZN2v88internal6maglev18MaglevGraphBuilder37VisitThrowSuperAlreadyCalledIfNotHoleEv:bb.a
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit, %bb.c, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a
  %.sroa.04.0 = phi i64 [ 2, %bb.c ], [ 1, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a ], [ 2, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit ]
  ret i64 %.sroa.04.0
}

end_hunk_20
begin_hunk_21_@_ZN2v88internal6maglev18MaglevGraphBuilder14GetSecondValueEPNS1_9ValueNodeE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder13VisitDebuggerEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 -48
  %5 = load ptr, ptr %4, align 8                  ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8                  ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %11 = load i64, ptr %10, align 8                ; 2 uses
  %12 = sub i64 %9, %11
  %13 = icmp ult i64 %12, 120
  br i1 %13, label %14, label %bb.a, !prof !6

14:                                               ; preds = %1
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 120) #34
  %.pre.i.i.i.i.i.i = load i64, ptr %10, align 8
  br label %bb.a

bb.a:                                             ; preds = %1, %14
  %15 = phi i64 [ %.pre.i.i.i.i.i.i, %14 ], [ %11, %1 ] ; 2 uses
  %16 = add i64 %15, 120
  store i64 %16, ptr %10, align 8
  %17 = add i64 %15, 96
  %18 = inttoptr i64 %17 to ptr                   ; 6 uses
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 536870977612, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 98, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %23 = load i32, ptr %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8
  %25 = getelementptr inbounds i8, ptr %18, i64 -8
  store ptr %5, ptr %25, align 8
  %26 = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_11CallRuntimeEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %18)
  %27 = ptrtoint ptr %26 to i64
  ret i64 %27
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_21
