inline.NumInlined: 39739
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder19VisitSingleBytecodeEv:bb.a
  br label %.thread

bb.ii:                                            ; preds = %bb.ax
  %7 = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder13VisitDebuggerEv(ptr noundef nonnull align 8 dereferenceable(953) %0)
  br label %.thread

bb.ij:                                            ; preds = %bb.ax
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder47TryReduceFunctionPrototypeApplyCallWithReceiverENS0_8compiler11OptionalRefINS3_13HeapObjectRefEEERNS1_13CallArgumentsERKNS3_14FeedbackSourceE:bb.a
  store ptr %i.ae, ptr %i.d, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder24SaveCallSpeculationScopeC2EPS2_NS0_8compiler14FeedbackSourceE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder24SaveCallSpeculationScopeC2EPS2_NS0_8compiler14FeedbackSourceE.exit: ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit23, %_ZN2v88internal6maglev18MaglevGraphBuilder19GetValueOrUndefinedEPNS1_9ValueNodeE.exit
  %i.af = phi ptr [ %i.ae, %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit23 ], [ %.0.i21, %_ZN2v88internal6maglev18MaglevGraphBuilder19GetValueOrUndefinedEPNS1_9ValueNodeE.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 11 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  br label %bb.n

bb.g:                                             ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load ptr, ptr %i.ay, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %switch.lookup, label %bb.n

switch.lookup:                                    ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
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
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 11 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bg = load ptr, ptr %i.bf, align 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal6maglev18MaglevGraphBuilder18TryReduceMathClz32ENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %4, label %bb.n

4:                                                ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %0, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 -48
  %9 = load ptr, ptr %8, align 8                  ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 3, ptr %10, align 8
  store i32 154, ptr %5, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr %9, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx.i, align 8
  %11 = load ptr, ptr %i.bd, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 344
  %.sroa.05.08.i.i = load ptr, ptr %12, align 8   ; 2 uses
  %.not9.i.i = icmp eq ptr %.sroa.05.08.i.i, null
  br i1 %.not9.i.i, label %bb.m, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %4, %16
  %.sroa.05.010.i.i = phi ptr [ %.sroa.05.0.i.i, %16 ], [ %.sroa.05.08.i.i, %4 ] ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 37 ; 2 uses
  %14 = load i8, ptr %13, align 1, !range !10, !noundef !11
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %bb.m, label %16

16:                                               ; preds = %.lr.ph.i.i
  store i8 1, ptr %13, align 1
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 80
  %.sroa.05.0.i.i = load ptr, ptr %17, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.05.0.i.i, null
  br i1 %.not.i.i, label %bb.m, label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.i.i, %16, %4
  tail call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %9)
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
end_hunk_7
begin_hunk_8_@_ZN2v88internal6maglev18MaglevGraphBuilder20VisitInvokeIntrinsicEv:bb.a
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCallRuntimeENS0_7Runtime10FunctionIdESt16initializer_listIPNS1_9ValueNodeEE.exit: ; preds = %bb.m, %bb.n
  %i.ah = phi i64 [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  %i.ai = add i64 %i.ah, 120
  store i64 %i.ai, ptr %i.ad, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal6maglev18MaglevGraphBuilder28VisitIntrinsicGeneratorCloseENS0_11interpreter12RegisterListE:bb.a

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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %8, i64 noundef 120) #33
  %.pre.i.i.i.i.i.i = load i64, ptr %11, align 8
  br label %bb.a

bb.a:                                             ; preds = %15, %2
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

end_hunk_9
begin_hunk_10_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 7 uses
  %8 = alloca %"class.v8::internal::compiler::SharedFunctionInfoRef", align 8 ; 2 uses
  %9 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::LazyDeoptFrameScope", align 8 ; 14 uses
  %10 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 5 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %11 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
end_hunk_10
begin_hunk_11_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 2, ptr %i.cs, align 8
  store ptr %i.cm, ptr %i.cl, align 8
end_hunk_11
begin_hunk_12_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.cr, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8
end_hunk_12
begin_hunk_13_@_ZN2v88internal6maglev18MaglevGraphBuilder25TryReduceConstructGenericENS0_8compiler13JSFunctionRefENS3_21SharedFunctionInfoRefEPNS1_9ValueNodeES7_RNS1_13CallArgumentsERNS3_14FeedbackSourceE:bb.a

_ZN2v88internal6maglev18MaglevGraphBuilder19LazyDeoptFrameScopeC2EPS2_PNS1_9ValueNodeE.exit: ; preds = %.lr.ph.i.i.i, %bb.o, %_ZN2v88internal6maglev13CallArguments12set_receiverEPNS1_9ValueNodeE.exit
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %.0.i.i.i)
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %15, ptr noundef %16)
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
end_hunk_13
begin_hunk_14_@_ZN2v88internal6maglev18MaglevGraphBuilder22TryBuildFastInstanceOfEPNS1_9ValueNodeENS0_8compiler11JSObjectRefES4_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %_ZNK2v88internal8compiler11OptionalRefINS1_9ObjectRefEEptEv.exit75.a

_ZNK2v88internal8compiler11OptionalRefINS1_9ObjectRefEEptEv.exit75.a: ; preds = %bb.t, %_ZNK2v88internal8compiler11OptionalRefINS1_9ObjectRefEEptEv.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  store i32 1, ptr %16, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowReferenceErrorIfHoleEv:bb.a
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
end_hunk_15
begin_hunk_16_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowSuperNotCalledIfHoleEv:bb.a
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 120) #33
  %.pre.i.i.i.i.i.i = load i64, ptr %10, align 8
  br label %bb.e

bb.e:                                             ; preds = %14, %2
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
end_hunk_16
begin_hunk_17_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitThrowSuperNotCalledIfHoleEv:bb.a
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
end_hunk_17
begin_hunk_18_@_ZN2v88internal6maglev18MaglevGraphBuilder37VisitThrowSuperAlreadyCalledIfNotHoleEv:bb.a
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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef 120) #33
  %.pre.i.i.i.i.i.i = load i64, ptr %8, align 8
  br label %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a

_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a: ; preds = %12, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread
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
end_hunk_18
begin_hunk_19_@_ZN2v88internal6maglev18MaglevGraphBuilder37VisitThrowSuperAlreadyCalledIfNotHoleEv:bb.a
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit, %bb.c, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a
  %.sroa.04.0 = phi i64 [ 2, %bb.c ], [ 1, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit.thread.a ], [ 2, %_ZNK2v88internal6maglev18MaglevGraphBuilder14IsTheHoleValueEPNS1_9ValueNodeE.exit ]
  ret i64 %.sroa.04.0
}

end_hunk_19
begin_hunk_20_@_ZN2v88internal6maglev18MaglevGraphBuilder14GetSecondValueEPNS1_9ValueNodeE:bb.a

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
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 120) #33
  %.pre.i.i.i.i.i.i = load i64, ptr %10, align 8
  br label %bb.a

bb.a:                                             ; preds = %14, %1
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
end_hunk_20
begin_hunk_21_@"_ZN4absl19functional_internal12InvokeObjectIZN2v88internal6maglev18MaglevGraphBuilder20TryReduceGetIteratorEPNS4_9ValueNodeEiiE3$_0NS4_12ReduceResultEJEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE":bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit.i.i.i.i
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %i.e, ptr noundef %i.az), !inline_history !931
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.bj = load ptr, ptr %i.as, align 8
  store ptr %i.bj, ptr %i.bi, align 8
end_hunk_21
begin_hunk_22_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_11GetIteratorEEEPT_S8_:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.c = load ptr, ptr %i.b, align 8, !noalias !932 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 8, !noalias !932
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.f = load i32, ptr %i.e, align 4, !noalias !932
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19AttachLazyDeoptInfoINS1_11GetIteratorEEEvPT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @_ZNK2v88internal6maglev18MaglevGraphBuilder24GetResultLocationAndSizeEv(ptr noundef nonnull align 8 dereferenceable(953) %i.a), !noalias !932 ; 2 uses
  %.sroa.02.0.extract.trunc.i.i = trunc i64 %i.g to i32
  %.sroa.43.0.extract.shift.i.i = lshr i64 %i.g, 32
  %.sroa.43.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.43.0.extract.shift.i.i to i32
end_hunk_22
begin_hunk_23_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_11GetIteratorEEEPT_S8_:bb.a
  %.0.i.i = phi i32 [ %.sroa.43.0.extract.trunc.i.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.02.0.extract.trunc.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  %i.i = load ptr, ptr %i.h, align 8, !noalias !932
  %i.j = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31GetDeoptFrameForLazyDeoptHelperENS0_11interpreter8RegisterEiPNS2_19LazyDeoptFrameScopeEb(ptr noundef nonnull align 8 dereferenceable(953) %i.a, i32 %.sroa.0.0.i.i, i32 noundef %.0.i.i, ptr noundef %i.i, i1 noundef zeroext false), !noalias !932
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = lshr i64 %i.l, 32
end_hunk_23
begin_hunk_24_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br i1 %.not.i1.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal6maglev3Phi17RecordUseReprHintENS_4base7EnumSetINS1_17UseRepresentationEaEE(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 16) #33, !inline_history !935
  %.pre.i.i.i15 = load i64, ptr %i.z, align 8
  br label %bb.h

end_hunk_24
begin_hunk_25_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_26CheckedHoleyFloat64ToInt32EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br label %_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i

_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i: ; preds = %bb.i, %bb.h
  %i.aj = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.y, i32 noundef 3), !inline_history !936
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i
end_hunk_25
begin_hunk_26_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_20CheckedNumberToInt32EJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol, !llvm.loop !937

.lr.ph52.prol.loopexit:                           ; preds = %.lr.ph37.prol, %.lr.ph52.preheader
  %.lcssa65.unr = phi ptr [ poison, %.lr.ph52.preheader ], [ %i.t, %.lr.ph37.prol ]
end_hunk_26
begin_hunk_27_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE29BuildNumberOrOddballToFloat64EPNS1_9ValueNodeENS1_8NodeTypeE:bb.a
bb.n:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %1, ptr %i.a, align 8
  %i.bt = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_14UnsafeSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.a, i64 1), !inline_history !938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13BuildSmiUntagEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16: ; preds = %bb.m, %bb.l, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE7GetTypeEPNS1_9ValueNodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %1, ptr %i.b, align 8
  %i.bu = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15CheckedSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.b, i64 1), !inline_history !938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13BuildSmiUntagEPNS1_9ValueNodeE.exit

end_hunk_27
begin_hunk_28_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_20ChangeInt32ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br i1 %i.ab, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE8GetInt32EPNS1_9ValueNodeEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.x, i1 noundef zeroext false), !inline_history !939
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %bb.f
end_hunk_28
begin_hunk_29_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_21ChangeUint32ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br i1 %i.ab, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32, !inline_history !940
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e
end_hunk_29
begin_hunk_30_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_28CheckedHoleyFloat64ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br i1 %.not.i1.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal6maglev3Phi17RecordUseReprHintENS_4base7EnumSetINS1_17UseRepresentationEaEE(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 16) #33, !inline_history !941
  %.pre.i.i.i15 = load i64, ptr %i.z, align 8
  br label %bb.h

end_hunk_30
begin_hunk_31_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_28CheckedHoleyFloat64ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br label %_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i

_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i: ; preds = %bb.i, %bb.h
  %i.aj = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.y, i32 noundef 3), !inline_history !942
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %_ZN2v88internal6maglev9ValueNode22MaybeRecordUseReprHintENS1_17UseRepresentationE.exit.i
end_hunk_31
begin_hunk_32_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_21ChangeIntPtrToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br i1 %i.ab, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32, !inline_history !943
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e
end_hunk_32
begin_hunk_33_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_31CheckedNumberOrOddballToFloat64EJRNS1_29TaggedToFloat64ConversionTypeEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br i1 %i.ah, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.ad, i32 noundef 0), !inline_history !944
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %bb.f
end_hunk_33
begin_hunk_34_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_33UncheckedNumberOrOddballToFloat64EJRNS1_29TaggedToFloat64ConversionTypeEEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph55.prol.loopexit, label %.lr.ph55.prol, !llvm.loop !945

.lr.ph55.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph55.preheader
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph55.preheader ], [ %i.t, %.lr.ph40.prol ]
end_hunk_34
begin_hunk_35_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_31CheckedNumberOrOddballToFloat64EJRNS1_29TaggedToFloat64ConversionTypeEEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph55.prol.loopexit, label %.lr.ph55.prol, !llvm.loop !946

.lr.ph55.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph55.preheader
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph55.preheader ], [ %i.t, %.lr.ph40.prol ]
end_hunk_35
begin_hunk_36_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_14CallCPPBuiltinEEEPT_S8_:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.c = load ptr, ptr %i.b, align 8, !noalias !947 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 8, !noalias !947
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.f = load i32, ptr %i.e, align 4, !noalias !947
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19AttachLazyDeoptInfoINS1_14CallCPPBuiltinEEEvPT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @_ZNK2v88internal6maglev18MaglevGraphBuilder24GetResultLocationAndSizeEv(ptr noundef nonnull align 8 dereferenceable(953) %i.a), !noalias !947 ; 2 uses
  %.sroa.02.0.extract.trunc.i.i = trunc i64 %i.g to i32
  %.sroa.43.0.extract.shift.i.i = lshr i64 %i.g, 32
  %.sroa.43.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.43.0.extract.shift.i.i to i32
end_hunk_36
begin_hunk_37_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_14CallCPPBuiltinEEEPT_S8_:bb.a
  %.0.i.i = phi i32 [ %.sroa.43.0.extract.trunc.i.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.02.0.extract.trunc.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  %i.i = load ptr, ptr %i.h, align 8, !noalias !947
  %i.j = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31GetDeoptFrameForLazyDeoptHelperENS0_11interpreter8RegisterEiPNS2_19LazyDeoptFrameScopeEb(ptr noundef nonnull align 8 dereferenceable(953) %i.a, i32 %.sroa.0.0.i.i, i32 noundef %.0.i.i, ptr noundef %i.i, i1 noundef zeroext false), !noalias !947
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = lshr i64 %i.l, 32
end_hunk_37
begin_hunk_38_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15CheckedSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  br i1 %i.ac, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.y, i32 noundef 0), !inline_history !950
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %bb.f
end_hunk_38
begin_hunk_39_@llvm.smin.i32
!929 = distinct !{!929, !930, !"_ZNK2v88internal6maglev11AssertInt327optionsEv: argument 0"}
!930 = distinct !{!930, !"_ZNK2v88internal6maglev11AssertInt327optionsEv"}
!931 = distinct !{null, null, null, null}
!932 = !{!933}
!933 = distinct !{!933, !934, !"_ZN2v88internal6maglev18MaglevGraphBuilder25GetDeoptFrameForLazyDeoptEv: argument 0"}
!934 = distinct !{!934, !"_ZN2v88internal6maglev18MaglevGraphBuilder25GetDeoptFrameForLazyDeoptEv"}
!935 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null}
!936 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null, ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10GetFloat64EPNS1_9ValueNodeE}
!937 = distinct !{!937, !27}
!938 = !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE13BuildSmiUntagEPNS1_9ValueNodeE}
!939 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null}
!940 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null}
!941 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null}
!942 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null, ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10GetFloat64EPNS1_9ValueNodeE}
!943 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null}
!944 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null}
!945 = distinct !{!945, !27}
!946 = distinct !{!946, !27}
!947 = !{!948}
!948 = distinct !{!948, !949, !"_ZN2v88internal6maglev18MaglevGraphBuilder25GetDeoptFrameForLazyDeoptEv: argument 0"}
!949 = distinct !{!949, !"_ZN2v88internal6maglev18MaglevGraphBuilder25GetDeoptFrameForLazyDeoptEv"}
!950 = distinct !{ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE, null}
end_hunk_39
