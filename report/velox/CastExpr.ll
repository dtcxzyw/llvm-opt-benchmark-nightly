inline.NumInlined: 87492
inline.NumDeleted: 10545
loop-unroll.NumCompletelyUnrolled: 4850
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 4941
begin_hunk_0_@_ZN5folly6detail15str_to_integralIlEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ConversionError", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.a = load ptr, ptr %0, align 8, !tbaa !1004, !nonnull !153, !align !203 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !344
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !344
  call void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::ConversionError") align 8 %2, i8 noundef zeroext %1, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  invoke void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %2) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ConversionError", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.a = load ptr, ptr %0, align 8, !tbaa !1006, !nonnull !153, !align !203 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !953
  switch i8 %i.c, label %bb.c [
    i8 1, label %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
    i8 2, label %bb.b
  ], !prof !956

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 8, !tbaa !957
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_(i8 noundef zeroext %i.d) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #16
  unreachable

_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit: ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !344
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !344
  call void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::ConversionError") align 8 %2, i8 noundef zeroext %1, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  invoke void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %2) #16
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #23

declare void @_ZN8facebook5velox4exec7EvalCtx35convertElementErrorsToTopLevelNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN8facebook5velox4exec7EvalCtx26addElementErrorsToTopLevelERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERSt10shared_ptrINS1_10EvalErrorsEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #24

declare void @__cxa_bad_cast() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !540  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !538    ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #47
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #50 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !358
  store ptr null, ptr %i.r, align 8, !tbaa !258
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !358
  store ptr null, ptr %2, align 8, !tbaa !52
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.t = sub i64 %i.m, %i.e
  %i.u = add i64 %i.t, -16                        ; 2 uses
  %i.v = lshr i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 304
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.x = add i64 %i.m, -16
  %i.y = sub i64 %i.x, %i.e
  %i.z = and i64 %i.y, -16                        ; 2 uses
  %i.aa = or disjoint i64 %i.z, 8                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.aa
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.aa
  %scevgep36 = getelementptr i8, ptr %i.c, i64 8
  %i.ab = add i64 %i.z, 16                        ; 2 uses
  %scevgep37 = getelementptr i8, ptr %i.c, i64 %i.ab
  %scevgep38 = getelementptr i8, ptr %i.p, i64 8
  %scevgep39 = getelementptr i8, ptr %i.p, i64 %i.ab
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound040 = icmp ult ptr %scevgep36, %scevgep39
  %bound141 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict, %found.conflict42
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 2305843009213693948      ; 3 uses
  %i.ac = shl i64 %n.vec, 4                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep43 = getelementptr i8, ptr %i.c, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %wide.vec = load <8 x ptr>, ptr %next.gep43, align 8, !tbaa !358, !alias.scope !1011, !noalias !1008
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !358, !alias.scope !1008, !noalias !1011
  store <8 x ptr> splat (ptr null), ptr %next.gep43, align 8, !tbaa !358, !alias.scope !1011, !noalias !1008
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1013

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader79

.lr.ph.i.i.i.preheader79:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader79, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader79 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader79 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !358, !alias.scope !1011, !noalias !1008
  store ptr null, ptr %i.ah, align 8, !tbaa !258, !alias.scope !1011, !noalias !1008
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !358, !alias.scope !1008, !noalias !1011
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !52, !alias.scope !1011, !noalias !1008
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !1014

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 4 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.am = sub i64 %i.d, %i.m
  %i.an = add i64 %i.am, -16                      ; 2 uses
  %i.ao = lshr i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.an, 304
  br i1 %min.iters.check61, label %.lr.ph.i.i.i17.preheader78, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -16
  %i.ar = sub i64 %i.aq, %i.m
  %i.as = and i64 %i.ar, -16                      ; 4 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep47 = getelementptr i8, ptr %i.at, i64 24
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep48 = getelementptr i8, ptr %i.au, i64 8
  %scevgep49 = getelementptr i8, ptr %1, i64 8
  %i.av = getelementptr i8, ptr %1, i64 %i.as
  %scevgep50 = getelementptr i8, ptr %i.av, i64 16
  %scevgep51 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.aw = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep52 = getelementptr i8, ptr %i.aw, i64 32
  %bound053 = icmp ult ptr %i.al, %scevgep48
  %bound154 = icmp ult ptr %1, %scevgep47
  %found.conflict55 = and i1 %bound053, %bound154
  %bound056 = icmp ult ptr %scevgep49, %scevgep52
  %bound157 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %found.conflict55, %found.conflict58
  br i1 %conflict.rdx59, label %.lr.ph.i.i.i17.preheader78, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck46
  %n.vec64 = and i64 %i.ap, 2305843009213693948   ; 3 uses
  %i.ax = shl i64 %n.vec64, 4                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.al, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ax
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph62
  %index66 = phi i64 [ 0, %vector.ph62 ], [ %index.next73, %vector.body65 ] ; 2 uses
  %i.ba = shl i64 %index66, 4                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.al, i64 %i.ba
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %wide.vec69 = load <8 x ptr>, ptr %next.gep68, align 8, !tbaa !358, !alias.scope !1018, !noalias !1015
  store <8 x ptr> %wide.vec69, ptr %next.gep67, align 8, !tbaa !358, !alias.scope !1015, !noalias !1018
  store <8 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !358, !alias.scope !1018, !noalias !1015
  %index.next73 = add nuw i64 %index66, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.bb, label %middle.block74, label %vector.body65, !llvm.loop !1020

middle.block74:                                   ; preds = %vector.body65
  %cmp.n75 = icmp eq i64 %i.ap, %n.vec64
  br i1 %cmp.n75, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17.preheader78

.lr.ph.i.i.i17.preheader78:                       ; preds = %vector.memcheck46, %.lr.ph.i.i.i17.preheader, %middle.block74
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck46 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.ay, %middle.block74 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck46 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.az, %middle.block74 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader78, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader78 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader78 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !358, !alias.scope !1018, !noalias !1015
  store ptr null, ptr %i.bc, align 8, !tbaa !258, !alias.scope !1018, !noalias !1015
  store <2 x ptr> %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !358, !alias.scope !1015, !noalias !1018
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !52, !alias.scope !1018, !noalias !1015
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1021

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block74, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ay, %middle.block74 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !539
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #49
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !538
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !540
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !539
  ret void
}

declare void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox16ShortDecimalTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE4EEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE4EEE, i64 192), ptr %i.a, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.c) #39, !inline_history !1022
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(544) %i.b) #39, !inline_history !1022
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 568) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE4nameEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.61
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i64 } @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE10parametersEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(568) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.407", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1023, !range !152, !noundef !153
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1023, !range !152, !noundef !153
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE5scaleEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE5scaleEv.exit: ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !174
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.k = load i64, ptr %i.j, align 8, !tbaa !174
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39, !noalias !1024
  %i.m = and i32 %i.i, 255
  store i32 %i.m, ptr %2, align 16, !tbaa !180, !noalias !1024
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = and i32 %i.l, 255
  store i32 %i.o, ptr %i.n, align 16, !tbaa !180, !noalias !1024
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.62, i64 15, i64 34, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39, !noalias !1024
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE10equivalentERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !55
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1027 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1027 ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.h, align 1, !tbaa !180
  %.not.i = icmp eq i8 %i.l, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread9, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !tbaa !180
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.o) #39
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread9

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1023, !range !152, !noundef !153
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !6879
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !6879
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !6879
  invoke void @_ZN8facebook5velox4util6detail11callFollyToIiSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.1465") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !6879
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !5616
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedIiN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !7071
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !7071
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !7071
  invoke void @_ZN8facebook5velox4util6detail11callFollyToIiSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.1465") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !7071
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !5616
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedIiN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE3ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !9203
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !9203
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !9203
  invoke void @_ZN8facebook5velox4util6detail11callFollyToIaSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.1983") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !9203
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !7951
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedIaN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !9392
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !9392
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !9392
  invoke void @_ZN8facebook5velox4util6detail11callFollyToIaSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.1983") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !9392
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !7951
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedIaN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE1ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !11549
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !11549
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !11549
  invoke void @_ZN8facebook5velox4util6detail11callFollyToIsSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.2482") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !11549
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !10294
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedIsN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !11738
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !11738
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !11738
  invoke void @_ZN8facebook5velox4util6detail11callFollyToIsSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.2482") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !11738
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !10294
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedIsN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE2ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !13363
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !13363
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !13363
  invoke void @_ZN8facebook5velox4util6detail11callFollyToIlSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.1850") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !13363
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !7170
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedIlN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !13552
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !13552
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !13552
  invoke void @_ZN8facebook5velox4util6detail11callFollyToIlSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.1850") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !13552
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !7170
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedIlN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE4ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !15744
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !15744
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !15744
  invoke void @_ZN8facebook5velox4util6detail11callFollyToInSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.3381") align 16 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !15744
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 16, !tbaa !14463
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedInN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 16, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 16 dereferenceable(240) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_7ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc54 unwind label %bb.u

.noexc54:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.noexc54
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i65 = icmp eq ptr %i.ay, null
  br i1 %.not.i65, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.j, !prof !245

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.critedge

bb.k:                                             ; preds = %.noexc54
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

bb.l:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !1940
  %.not.i66 = icmp eq ptr %i.bg, null
  br i1 %.not.i66, label %_ZN8facebook5velox6StatusD2Ev.exit67, label %bb.m, !prof !245

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit67

_ZN8facebook5velox6StatusD2Ev.exit67:             ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i51 = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !178   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !180
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body56

bb.n:                                             ; preds = %.noexc52.thread237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1)
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.n
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.noexc55
  %i.bm = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i72 = icmp eq ptr %i.bm, null
  br i1 %.not.i72, label %_ZN8facebook5velox6StatusD2Ev.exit73, label %bb.p, !prof !245

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit73

_ZN8facebook5velox6StatusD2Ev.exit73:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.critedge

bb.q:                                             ; preds = %.noexc55
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bo = load ptr, ptr %8, align 8, !tbaa !1940
  %.not.i74 = icmp eq ptr %i.bo, null
  br i1 %.not.i74, label %_ZN8facebook5velox6StatusD2Ev.exit75, label %bb.r, !prof !245

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit75

_ZN8facebook5velox6StatusD2Ev.exit75:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %.body56

.critedge:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc53
  %i.bp = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.critedge
  %i.br = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.cl

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.t:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.u:                                             ; preds = %bb.n, %bb.f, %.noexc52.thread, %bb.e, %bb.g
  %.0 = phi i1 [ true, %bb.f ], [ true, %.noexc52.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.e ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body56

.body56:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZN8facebook5velox6StatusD2Ev.exit75, %bb.u
  %.7 = phi i1 [ %.0, %bb.u ], [ false, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit75 ], [ %.pn.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %i.bw = load ptr, ptr %19, align 8, !tbaa !178  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.p
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body56
  %i.by = load i64, ptr %i.p, align 8, !tbaa !180
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ba

bb.v:                                             ; preds = %bb.c
  %i.ca = icmp ult i32 %i.m, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.l    ; 3 uses
  %i.cd = and i64 %i.k, 4294967264                ; 2 uses
  %.not.i279 = icmp samesign ult i64 %i.n, 32
  br i1 %.not.i279, label %.preheader, label %.lr.ph281

bb.w:                                             ; preds = %.lr.ph281
  %i.ce = add nuw nsw i64 %i.cg, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ce, %i.n
  br i1 %.not.i, label %.preheader, label %.lr.ph281, !llvm.loop !6877

.preheader:                                       ; preds = %bb.w, %bb.v
  %i.cf = icmp samesign ult i64 %i.cd, %i.n
  br i1 %i.cf, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit

.lr.ph281:                                        ; preds = %bb.v, %bb.w
  %i.cg = phi i64 [ %i.ce, %bb.w ], [ 32, %bb.v ] ; 2 uses
  %.011.i280 = phi i64 [ %i.cg, %bb.w ], [ 0, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.011.i280
  %i.ci = load <4 x i64>, ptr %i.ch, align 1, !tbaa !180
  %i.cj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ci, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not16.not.i, label %.loopexit, label %bb.w, !llvm.loop !6877

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i64 %.1.i245, 1             ; 2 uses
  %23 = icmp samesign ult i64 %i.ck, %i.n
  br i1 %23, label %.lr.ph, label %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit, !llvm.loop !6878

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.1.i245 = phi i64 [ %i.ck, %bb.x ], [ %i.cd, %.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.1.i245
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !180
  %.not15.i = icmp sgt i8 %i.cm, -1
  br i1 %.not15.i, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %.lr.ph
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.207) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.ba

_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit: ; preds = %bb.x, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !15933
  %i.co = invoke { i64, ptr } @_ZN8facebook5velox4util14trimWhiteSpaceEPKcm(ptr noundef %i.cc, i64 noundef %i.n)
          to label %.noexc82 unwind label %bb.ar  ; 2 uses

.noexc82:                                         ; preds = %_ZN8facebook5velox9functions10stringCoreL7isAsciiEPKcm.exit
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  store i64 %i.cp, ptr %5, align 8, !noalias !15933
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !15933
  invoke void @_ZN8facebook5velox4util6detail11callFollyToInSt17basic_string_viewIcSt11char_traitsIcEEEEN5folly8ExpectedIT_NS0_6StatusEEERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.3381") align 16 %20, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !15933
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 16, !tbaa !14463
  switch i8 %i.ct, label %bb.at [
    i8 2, label %bb.ab
    i8 1, label %_ZNKR5folly8ExpectedInN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !5035

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %20, align 16, !tbaa !1940 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %spec.select.i = select i1 %i.cv, ptr @_ZZNK8facebook5velox6Status7messageB5cxx11EvE10kNoMessageB5cxx11, ptr %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77, !range !152, !noundef !153
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %.noexc43.thread239

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.db = load i8, ptr %i.da, align 8, !tbaa !154, !range !152, !noundef !153
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.noexc43.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc43 unwind label %bb.as, !inline_history !499

.noexc43:                                         ; preds = %bb.ad
  br i1 %i.dh, label %.noexc43.thread, label %.noexc43.thread239

.noexc43.thread:                                  ; preds = %bb.ac, %.noexc43
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !239
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 16 dereferenceable(240) %4, i32 noundef %i.dj, i1 noundef zeroext true)
          to label %.noexc88 unwind label %bb.as

.noexc88:                                         ; preds = %.noexc43.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !238 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !240
  %i.do = and i8 %i.dn, 2
  %.not.i3.i87 = icmp eq i8 %i.do, 0
  br i1 %.not.i3.i87, label %.noexc44, label %bb.ae, !prof !245

bb.ae:                                            ; preds = %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc89 unwind label %bb.as

.noexc89:                                         ; preds = %bb.ae
  unreachable

.noexc44:                                         ; preds = %.noexc88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !246
  %i.dr = zext i32 %1 to i64                      ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !180
  %i.dv = and i64 %i.dr, 7
  %i.dw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !180
  %i.dy = and i8 %i.dx, %i.du
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !180
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

.noexc43.thread239:                               ; preds = %bb.ab, %.noexc43
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !3889, !range !152, !noundef !153
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_116makeErrorMessageERKNS0_10BaseVectorEiRKSt10shared_ptrIKNS0_4TypeEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(94) %3, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i)
          to label %.noexc45 unwind label %bb.as

.noexc45:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  invoke void @_ZN8facebook5velox6Status9UserErrorIJRA3_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::Status") align 8 %10, ptr noundef nonnull align 1 dereferenceable(3) @.str.119, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc45
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i91 = icmp eq ptr %i.ed, null
  br i1 %.not.i91, label %_ZN8facebook5velox6StatusD2Ev.exit92, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

_ZN8facebook5velox6StatusD2Ev.exit92:             ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ee = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !180
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZZN8facebook5velox4exec8CastExpr15applyCastKernelILNS0_8TypeKindE10ELS4_8ENS0_4util16PrestoCastPolicyEEEviRNS1_7EvalCtxEPKNS0_12SimpleVectorINS0_10TypeTraitsIXT0_EE10NativeTypeEEEPNS0_10FlatVectorINSA_IXT_EE10NativeTypeEEEENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESS_.exit49

bb.aj:                                            ; preds = %.noexc45
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.el = load ptr, ptr %10, align 8, !tbaa !1940
  %.not.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i96, label %_ZN8facebook5velox6StatusD2Ev.exit97, label %bb.al, !prof !245

bb.al:                                            ; preds = %bb.ak
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %_ZN8facebook5velox6StatusD2Ev.exit97

_ZN8facebook5velox6StatusD2Ev.exit97:             ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn.i42 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %bb.ak ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.em = load ptr, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !180
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.body47

bb.am:                                            ; preds = %.noexc43.thread239
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 1)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.am
end_hunk_10
