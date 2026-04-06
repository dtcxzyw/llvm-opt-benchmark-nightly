begin_hunk_0
inline.NumInlined: 39732
inline.NumDeleted: 11729
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder19VisitSingleBytecodeEv:bb.a
  br label %.thread

bb.ii:                                            ; preds = %bb.ax
  %7 = call noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 98, ptr null, i64 0)
  br label %.thread

bb.ij:                                            ; preds = %bb.ax
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18MaglevGraphBuilder30TryReduceArrayIteratingBuiltinEPKcNS0_8compiler13JSFunctionRefERNS1_13CallArgumentsENS_4base11FunctionRefIFNS2_20EagerDeoptFrameScopeES6_PNS1_9ValueNodeESD_SD_SD_SD_SD_EEENSA_IFNS2_19LazyDeoptFrameScopeES6_SD_SD_SD_SD_SD_SD_EEERKSt8optionalINSA_IFNS1_12ReduceResultESD_EEEERKSJ_INSA_IFvSD_SD_EEEE:bb.a
  store i32 0, ptr %i.kg, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  store ptr %0, ptr %24, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 6 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  br label %bb.n

bb.g:                                             ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load ptr, ptr %i.ay, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %switch.lookup.a, label %bb.n

switch.lookup.a:                                  ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %4 = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE, i64 %4
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull %0, i32 noundef %switch.load, ptr null, ptr null, i64 0)
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 6 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bg = load ptr, ptr %i.bf, align 8
end_hunk_7
begin_hunk_8_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull %0, i32 noundef 154, ptr null, ptr null, i64 0)
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal6maglev18MaglevGraphBuilder20VisitInvokeIntrinsicEv:bb.a
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit: ; preds = %bb.n, %bb.m
  %i.ah = phi i64 [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  %i.ai = add i64 %i.ah, 120
  store i64 %i.ai, ptr %i.ad, align 8
end_hunk_9
begin_hunk_10_@_ZN2v88internal6maglev18MaglevGraphBuilder28VisitIntrinsicGeneratorCloseENS0_11interpreter12RegisterListE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33VisitIntrinsicGetImportMetaObjectENS0_11interpreter12RegisterListE(ptr noundef nonnull align 8 dereferenceable(953) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = tail call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 230, ptr null, i64 0)
  %i.a = inttoptr i64 %2 to ptr
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -64
  store ptr %i.a, ptr %i.d, align 8
  ret i64 2
}

end_hunk_10
begin_hunk_11_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 7 uses
  %8 = alloca %"class.v8::internal::compiler::SharedFunctionInfoRef", align 8 ; 2 uses
  %9 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 13 uses
  %10 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 5 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %11 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
end_hunk_11
begin_hunk_12_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -48
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 2, ptr %i.cs, align 8
  store ptr %i.cm, ptr %i.cl, align 8
end_hunk_12
begin_hunk_13_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.cr, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8
end_hunk_13
begin_hunk_14_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a

_ZN2v88internal6maglev18MaglevGraphBuilder19LazyDeoptFrameScopeC2EPS2_PNS1_9ValueNodeE.exit: ; preds = %.lr.ph.i.i.i, %bb.o, %_ZN2v88internal6maglev13CallArguments12set_receiverEPNS1_9ValueNodeE.exit
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %.0.i.i.i)
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.cr)
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
end_hunk_14
begin_hunk_15_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  %.pre.i.i.i.i.i.i = load i64, ptr %i.fz, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit: ; preds = %bb.w, %bb.v
  %i.gd = phi i64 [ %.pre.i.i.i.i.i.i, %bb.w ], [ %i.ga, %bb.v ] ; 2 uses
  %i.ge = add i64 %i.gd, 120
  store i64 %i.ge, ptr %i.fz, align 8
end_hunk_15
begin_hunk_16_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowReferenceErrorIfHoleEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowSuperNotCalledIfHoleEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -64
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
end_hunk_16
begin_hunk_17_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowSuperNotCalledIfHoleEv:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ai = load i16, ptr %i.ah, align 4
  %i.aj = icmp eq i16 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread7

bb.e:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit
  %1 = tail call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 45, ptr null, i64 0)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread7

bb.f:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread
end_hunk_17
begin_hunk_18_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowSuperNotCalledIfHoleEv:bb.a
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread7

_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread7: ; preds = %bb.d, %bb.a, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit, %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit, %bb.f, %bb.e
  %.sroa.05.0 = phi i64 [ 2, %bb.f ], [ %1, %bb.e ], [ 2, %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit ], [ 2, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit ], [ 2, %bb.a ], [ 2, %bb.d ]
  ret i64 %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37VisitThrowSuperAlreadyCalledIfNotHoleEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -64
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_18
begin_hunk_19_@_ZN2v88internal6maglev18MaglevGraphBuilder37VisitThrowSuperAlreadyCalledIfNotHoleEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = and i64 %i.g, 65535
  %i.l = icmp eq i64 %i.k, 225
  br i1 %i.l, label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit, label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a

_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.n = load i16, ptr %i.m, align 4
  %i.o = icmp eq i16 %i.n, 1
  br i1 %i.o, label %bb.d, label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a

_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a: ; preds = %bb.b, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit
  %1 = tail call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 44, ptr null, i64 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_19
begin_hunk_20_@_ZN2v88internal6maglev18MaglevGraphBuilder37VisitThrowSuperAlreadyCalledIfNotHoleEv:bb.a
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit, %bb.c, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a
  %.sroa.04.0 = phi i64 [ 2, %bb.c ], [ %1, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a ], [ 2, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit ]
  ret i64 %.sroa.04.0
}

end_hunk_20
begin_hunk_21_@_ZN2v88internal6maglev18MaglevGraphBuilder14GetSecondValueEPNS1_9ValueNodeE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder13VisitDebuggerEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = tail call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 98, ptr null, i64 0)
  ret i64 %1
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_21
