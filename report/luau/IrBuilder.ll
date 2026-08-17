inline.NumInlined: 976
inline.NumDeleted: 501
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau7CodeGen21translateInstSetTableERNS0_9IrBuilderEPKji
declare void @_ZN4Luau7CodeGen21translateInstSetTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen23translateInstGetTableKSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen23translateInstSetTableKSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen22translateInstGetTableNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen22translateInstSetTableNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen17translateInstJumpERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpBackERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstJumpIfERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL15isDirectCompareEP5ProtoPKji(i32 %.136.val, ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %1, 3
  %i.b = icmp slt i32 %i.a, %.136.val
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !161
  %.mask = and i32 %i.c, -65536
  %i.d = icmp eq i32 %.mask, 131072
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !161  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !161  ; 3 uses
  %i.i = and i32 %i.f, 255
  %i.j = icmp eq i32 %i.i, 3
  %i.k = and i32 %i.h, 255
  %i.l = icmp eq i32 %i.k, 3
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = xor i32 %i.h, %i.f
  %i.n = and i32 %i.m, 65280
  %i.o = and i32 %i.f, 16711680
  %.mask19 = and i32 %i.f, -16777216
  %i.p = icmp eq i32 %.mask19, 16777216
  %i.q = or disjoint i32 %i.n, %i.o
  %i.r = icmp eq i32 %i.q, 0
  %i.s = and i32 %i.h, -65536
  %i.t = icmp eq i32 %i.s, 65536
  %i.u = and i1 %i.p, %i.r
  %i.v = select i1 %i.u, i1 %i.t, i1 false
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.1 = phi i1 [ %i.v, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

declare void @_ZN4Luau7CodeGen29translateInstJumpIfEqShortcutERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpIfEqERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen23translateInstJumpIfCondERNS0_9IrBuilderEPKjiNS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen18translateInstJumpXERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen31translateInstJumpxEqNilShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen23translateInstJumpxEqNilERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen29translateInstJumpxEqBShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpxEqBERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen29translateInstJumpxEqNShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpxEqNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen29translateInstJumpxEqSShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpxEqSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstBinaryRKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen16translateInstNotERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen18translateInstMinusERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstLengthERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstNewTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstDupTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -8) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #2 align 2 {
bb.a:
  %8 = alloca [6 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 %2, ptr %8, align 4, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !138
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %4, ptr %i.b, align 4, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %5, ptr %i.c, align 4, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %6, ptr %i.d, align 4, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %7, ptr %i.e, align 4, !tbaa !138
  %i.f = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %8, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4Luau7CodeGen9IrBuilder5undefEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0) local_unnamed_addr #5 align 2 {
bb.a:
  ret i32 1
}

declare void @_ZN4Luau7CodeGen21translateInstGetUpvalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstSetUpvalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen24translateInstCloseUpvalsERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder22handleFastcallFallbackENS0_4IrOpEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !161
  %i.b = lshr i32 %i.a, 24
  %i.c = and i32 %1, 15
  %.not = icmp eq i32 %i.c, 1
  %i.d = add i32 %3, 2
  %i.e = add i32 %i.d, %i.b                       ; 3 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.g = zext i32 %i.e to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  %i.j = load i32, ptr %i.i, align 4, !tbaa !161  ; 2 uses
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl i32 %i.j, 4
  %i.l = or disjoint i32 %i.k, 5
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = lshr i32 %i.m, 4
  %i.p = zext nneg i32 %i.o to i64
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !146
  %i.r = getelementptr inbounds nuw [36 x i8], ptr %i.q, i64 %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 %i.e, ptr %i.s, align 4, !tbaa !162
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit

_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit:   ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %.sroa.0.0.i, ptr %4, align 4, !tbaa !138
  %i.t = call range(i32 4, -8) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 88, ptr nonnull %4, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = lshr i32 %1, 4                           ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !146
  %i.y = getelementptr inbounds nuw [36 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i32 %i.v, ptr %i.z, align 8, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !147
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !148
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 6
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !149
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !154
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.al, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %i.am, align 2, !tbaa !115
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.i, ptr %5, align 4, !tbaa !138
  br label %6

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.an, align 8, !tbaa !116
  br label %6

6:                                                ; preds = %bb.e, %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit
  ret void
}

declare i32 @_ZN4Luau7CodeGen18translateFastCallNERNS0_9IrBuilderEPKjibiNS0_4IrOpES5_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 7, -8) i32 @_ZN4Luau7CodeGen9IrBuilder7vmConstEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i32 %1, 4
  %i.b = or disjoint i32 %i.a, 7
  ret i32 %i.b
}

declare void @_ZN4Luau7CodeGen21translateInstForNPrepERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstForNLoopERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen27translateInstForGLoopIpairsERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 5, -8) i32 @_ZN4Luau7CodeGen9IrBuilder13fallbackBlockEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179  ; 9 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !146  ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = sdiv exact i64 %i.g, 36                  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180
  %.not.i.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 4, !tbaa !181
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !138
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !182
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !161
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !161
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !179  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store ptr %i.l, ptr %i.b, align 8, !tbaa !179
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 256204778801521550)
  %i.q = select i1 %i.o, i64 256204778801521550, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = mul nuw nsw i64 %i.q, 36
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #18 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.g ; 5 uses
  store i8 1, ptr %i.t, align 4, !tbaa !181
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 0, ptr %.sroa.5.0..sroa_idx3, align 1, !tbaa !138
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i16 0, ptr %.sroa.6.0..sroa_idx5, align 2, !tbaa !182
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %.sroa.7.0..sroa_idx7, align 4, !tbaa !161
  %.sroa.11.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %.sroa.11.0..sroa_idx15, align 4, !tbaa !161
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0911.i.i.i.i.i.i, i64 36, i1 false), !tbaa.struct !183, !alias.scope !196
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 36 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !188

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 36
  %.not.i23.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !146
  store ptr %i.w, ptr %i.b, align 8, !tbaa !179
  %i.x = getelementptr inbounds nuw [36 x i8], ptr %i.s, i64 %i.q
  store ptr %i.x, ptr %i.i, align 8, !tbaa !180
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %i.k, %bb.b ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.z = trunc i64 %i.h to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 %1, ptr %i.aa, align 4, !tbaa !162
  %i.ab = shl i32 %i.z, 4
  %i.ac = or disjoint i32 %i.ab, 5
  ret i32 %i.ac
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -8) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr null, i64 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %1, i8 noundef zeroext %2, i32 %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %5 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %1, ptr %5, align 4, !tbaa !138
  %i.a = call range(i32 4, -8) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 1, ptr nonnull %5, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.sroa.5.8.insert.ext.i = zext i8 %2 to i64     ; 2 uses
  %i.b = tail call range(i32 2, -12) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 %.sroa.5.8.insert.ext.i, i64 noundef %.sroa.5.8.insert.ext.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %i.a, ptr %4, align 4, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.b, ptr %i.c, align 4, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.d, align 4, !tbaa !138
  %i.e = call range(i32 4, -8) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %4, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -8) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca [4 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 %2, ptr %6, align 4, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !138
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %4, ptr %i.b, align 4, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %5, ptr %i.c, align 4, !tbaa !138
  %i.d = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %6, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i32 %i.d
}

declare void @_ZN4Luau7CodeGen25translateInstForGPrepNextERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen26translateInstForGPrepInextERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen17translateInstAndXERNS0_9IrBuilderEPKjiNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen16translateInstOrXERNS0_9IrBuilderEPKjiNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen22translateInstGetImportERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstConcatERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen20translateInstCaptureERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4Luau7CodeGen21translateInstNamecallERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

declare void @_ZN4Luau7CodeGen23translateInstNewClosureERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 9, 0) i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i32 %1, 4
  %i.b = or disjoint i32 %i.a, 9
  ret i32 %i.b
}
end_hunk_0
