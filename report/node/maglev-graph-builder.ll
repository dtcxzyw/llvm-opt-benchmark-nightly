inline.NumInlined: 39732
inline.NumDeleted: 11729
begin_hunk_0
@_ZN2v88internal6maglev27CheckCacheIndicesNotCleared11kInputTypesE = linkonce_odr hidden local_unnamed_addr constant { [2 x i8] } { [2 x i8] c"\00\01" }, comdat, align 1
@.str.471 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@switch.table._ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE = private unnamed_addr constant [3 x i32] [i32 152, i32 151, i32 153], align 4
@switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation16EEENS1_12ReduceResultEv = private unnamed_addr constant [3 x i32] [i32 3, i32 19, i32 31], comdat($_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation16EEENS1_12ReduceResultEv), align 4
@switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation17EEENS1_12ReduceResultEv = private unnamed_addr constant [3 x i32] [i32 3, i32 19, i32 31], comdat($_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation17EEENS1_12ReduceResultEv), align 4
@switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation18EEENS1_12ReduceResultEv = private unnamed_addr constant [3 x i32] [i32 3, i32 19, i32 31], comdat($_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation18EEENS1_12ReduceResultEv), align 4
@switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation19EEENS1_12ReduceResultEv = private unnamed_addr constant [3 x i32] [i32 3, i32 19, i32 31], comdat($_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation19EEENS1_12ReduceResultEv), align 4
@switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation20EEENS1_12ReduceResultEv = private unnamed_addr constant [3 x i32] [i32 3, i32 19, i32 31], comdat($_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation20EEENS1_12ReduceResultEv), align 4
@switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation21EEENS1_12ReduceResultEv = private unnamed_addr constant [3 x i32] [i32 3, i32 19, i32 31], comdat($_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation21EEENS1_12ReduceResultEv), align 4

@_ZN2v88internal6maglev18MaglevGraphBuilder28LazyDeoptResultLocationScopeC1EPS2_NS0_11interpreter8RegisterEi = hidden unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN2v88internal6maglev18MaglevGraphBuilder28LazyDeoptResultLocationScopeC2EPS2_NS0_11interpreter8RegisterEi
@_ZN2v88internal6maglev18MaglevGraphBuilder28LazyDeoptResultLocationScopeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal6maglev18MaglevGraphBuilder28LazyDeoptResultLocationScopeD2Ev
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation16EEENS1_12ReduceResultEv:bb.a

switch.lookup:                                    ; preds = %_ZZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation16EEENS1_12ReduceResultEvENKUlPNS1_9ValueNodeES7_E0_clES7_S7_.exit51
  %i.ct = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation16EEENS1_12ReduceResultEv, i64 %i.ct
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.cu = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.bb, i32 noundef %switch.load) ; 5 uses
  %i.cv = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bd, i32 noundef %switch.load) ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation17EEENS1_12ReduceResultEv:bb.a

switch.lookup:                                    ; preds = %_ZZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation17EEENS1_12ReduceResultEvENKUlPNS1_9ValueNodeES7_E0_clES7_S7_.exit66
  %i.bx = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation17EEENS1_12ReduceResultEv, i64 %i.bx
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.by = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.bb, i32 noundef %switch.load) ; 5 uses
  %i.bz = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bd, i32 noundef %switch.load) ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation18EEENS1_12ReduceResultEv:bb.a

switch.lookup:                                    ; preds = %.thread
  %i.ej = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation18EEENS1_12ReduceResultEv, i64 %i.ej
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.ek = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.bx, i32 noundef %switch.load) ; 3 uses
  %i.el = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.bz, i32 noundef %switch.load) ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation19EEENS1_12ReduceResultEv:bb.a

switch.lookup:                                    ; preds = %_ZZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation19EEENS1_12ReduceResultEvENKUlPNS1_9ValueNodeES7_E0_clES7_S7_.exit55
  %i.cj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation19EEENS1_12ReduceResultEv, i64 %i.cj
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.ck = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.au, i32 noundef %switch.load) ; 3 uses
  %i.cl = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.aw, i32 noundef %switch.load) ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation20EEENS1_12ReduceResultEv:bb.a

switch.lookup:                                    ; preds = %_ZZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation20EEENS1_12ReduceResultEvENKUlPNS1_9ValueNodeES7_E0_clES7_S7_.exit55
  %i.cj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2v88internal6maglev18MaglevGraphBuilder21VisitCompareOperationIL9Operation20EEENS1_12ReduceResultEv, i64 %i.cj
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.ck = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.au, i32 noundef %switch.load) ; 3 uses
  %i.cl = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.aw, i32 noundef %switch.load) ; 3 uses
end_hunk_5
