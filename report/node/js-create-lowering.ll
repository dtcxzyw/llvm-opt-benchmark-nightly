inline.NumInlined: 2156
inline.NumDeleted: 620
begin_hunk_0
@.str.40 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"IsSharedFunctionInfo()\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@switch.table._ZN2v88internal8compiler16JSCreateLowering22TryAllocateFastLiteralEPNS1_4NodeES4_NS1_11JSObjectRefENS0_14AllocationTypeEiPi = private unnamed_addr constant [5 x i64] [i64 0, i64 0, i64 32768, i64 0, i64 0], align 8
@switch.table._ZNK2v88internal14Representation8MnemonicEv = private unnamed_addr constant [6 x ptr] [ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.24, ptr @.str.28], align 8

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler16JSCreateLowering27ReduceJSCreateBoundFunctionEPNS1_4NodeE:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !19

bb.v:                                             ; preds = %._crit_edge, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  %.032.a = phi ptr [ %i.ds, %._crit_edge ], [ %i.ao, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit ]
  %.0 = phi ptr [ %i.ds, %._crit_edge ], [ %i.br, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.ep = load <2 x ptr>, ptr %i.bp, align 8
  %i.eq = load ptr, ptr %i.bp, align 8            ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler16JSCreateLowering27ReduceJSCreateBoundFunctionEPNS1_4NodeE:bb.a
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder11BeginRegionENS1_19RegionObservabilityE(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i8 noundef zeroext 1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %.032.a, ptr %10, align 8
  %i.ey = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.eu, ptr noundef %i.ex, i32 noundef 1, ptr noundef nonnull %10, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ez = load ptr, ptr %i.eq, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler16JSCreateLowering27ReduceJSCreateBoundFunctionEPNS1_4NodeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.he, ptr %4, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hh = load <2 x ptr>, ptr %i.es, align 8
  store <2 x ptr> %i.hh, ptr %i.hg, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler16JSCreateLowering22TryAllocateFastLiteralEPNS1_4NodeES4_NS1_11JSObjectRefENS0_14AllocationTypeEiPi:bb.a
  %i.ci = and i32 %i.ch, 1023                     ; 3 uses
  %i.cj = lshr i32 %i.by, 6
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = and i8 %i.ck, 7                         ; 4 uses
  %i.cm = add i64 %i.cg, 7
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i8, ptr %i.cn monotonic, align 1
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler16JSCreateLowering22TryAllocateFastLiteralEPNS1_4NodeES4_NS1_11JSObjectRefENS0_14AllocationTypeEiPi:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.013.i.i = phi i64 [ %i.cy, %bb.u ], [ 2147483648, %bb.v ]
  %.013.i.i.a = phi i32 [ %i.dc, %bb.u ], [ %i.df, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i8 %i.cl, ptr %8, align 1
  %37 = icmp samesign ult i8 %i.cl, 5
  br i1 %37, label %_ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler16JSCreateLowering22TryAllocateFastLiteralEPNS1_4NodeES4_NS1_11JSObjectRefENS0_14AllocationTypeEiPi:bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #19
  unreachable

_ZN2v88internal10FieldIndex10ForDetailsENS0_6TaggedINS0_3MapEEENS0_15PropertyDetailsE.exit: ; preds = %bb.w
  %38 = zext nneg i8 %i.cl to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8compiler16JSCreateLowering22TryAllocateFastLiteralEPNS1_4NodeES4_NS1_11JSObjectRefENS0_14AllocationTypeEiPi, i64 %38
  %switch.load = load i64, ptr %switch.gep, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.dh = select i1 %i.cv, i64 16384, i64 0
  %i.di = sext i32 %.013.i.i.a to i64
  %i.dj = sext i32 %i.cu to i64
  %i.dk = shl nsw i64 %i.dj, 17
  %39 = or disjoint i64 %i.dk, %i.dh
  %i.dl = or i64 %.013.i.i, %39
  %i.dm = or i64 %i.dl, %i.di
  %i.dn = or i64 %i.dm, %switch.load
  %.sroa.049.0.copyload = load ptr, ptr %14, align 8 ; 2 uses
  %i.do = and i32 %.013.i.i.a, 16383
  %i.dp = call ptr @_ZNK2v88internal8compiler7NameRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #18
end_hunk_6
