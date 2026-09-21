Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/CostModel?download=true
inline.NumInlined: 211
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4Luau7Compile9modelCostEPNS_7AstNodeEPKPNS_8AstLocalEm:bb.a
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01216.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01216.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_8AstLocalEmNS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = shl nuw nsw i64 %.01216.i, 3
  %i.j = shl nuw i64 65280, %i.i
  store i64 %i.j, ptr %i.h, align 8, !tbaa !22
  %i.k = add nuw nsw i64 %.01216.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %invariant.umin.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge.i
  %i.m = load i64, ptr %i.d, align 8, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau7Compile11CostVisitorE, i64 16), ptr %3, align 8, !tbaa !15
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.n) #13, !inline_history !35
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.o, %bb.f ]
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau7Compile11CostVisitorE, i64 16), ptr %3, align 8, !tbaa !15
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i14.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i14.i, label %_ZN4Luau7Compile11CostVisitorD2Ev.exit15.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.p) #13, !inline_history !35
  br label %_ZN4Luau7Compile11CostVisitorD2Ev.exit15.i

_ZN4Luau7Compile11CostVisitorD2Ev.exit15.i:       ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.q = load ptr, ptr %5, align 8, !tbaa !45     ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.q, null
  br i1 %.not.i.i7, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit8, label %bb.l

bb.i:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.r = load ptr, ptr %5, align 8, !tbaa !45     ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #13
  br label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.s = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i.i6, label %_ZN4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.s) #13
  br label %_ZN4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i64 %i.m

bb.l:                                             ; preds = %_ZN4Luau7Compile11CostVisitorD2Ev.exit15.i
  call void @_ZdlPv(ptr noundef nonnull %i.q) #13
  br label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit8

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit8: ; preds = %bb.l, %_ZN4Luau7Compile11CostVisitorD2Ev.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.t = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.t, null
  br i1 %.not.i.i9, label %_ZN4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit8
  call void @_ZdlPv(ptr noundef nonnull %i.t) #13
  br label %_ZN4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit10

_ZN4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit10: ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit8, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN4Luau7Compile11computeCostEmPKbm(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = and i32 %i.a, 127                        ; 3 uses
  %i.c = icmp eq i32 %i.b, 127
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = trunc i64 %0 to i32
  %i.e = lshr i32 %i.d, 8
  %i.f = and i32 %i.e, 127
  %i.g = load i8, ptr %1, align 1, !tbaa !93, !range !52, !noundef !53
  %i.h = zext nneg i8 %i.g to i32
  %i.i = mul nuw nsw i32 %i.f, %i.h
  %i.j = sub nsw i32 %i.b, %i.i                   ; 2 uses
  %exitcond.not = icmp eq i64 %2, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.k = trunc i64 %0 to i32
  %i.l = lshr i32 %i.k, 16
  %i.m = and i32 %i.l, 127
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !93, !range !52, !noundef !53
  %i.p = zext nneg i8 %i.o to i32
  %i.q = mul nuw nsw i32 %i.m, %i.p
  %i.r = sub nsw i32 %i.j, %i.q                   ; 2 uses
  %exitcond.not.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.s = trunc i64 %0 to i32
  %i.t = lshr i32 %i.s, 24
  %i.u = and i32 %i.t, 127
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !93, !range !52, !noundef !53
  %i.x = zext nneg i8 %i.w to i32
  %i.y = mul nuw nsw i32 %i.u, %i.x
  %i.z = sub nsw i32 %i.r, %i.y                   ; 2 uses
  %exitcond.not.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.aa = lshr i64 %0, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 127
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !93, !range !52, !noundef !53
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = mul nuw nsw i32 %i.ac, %i.af
  %i.ah = sub nsw i32 %i.z, %i.ag                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.ai = lshr i64 %0, 40
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 127
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !93, !range !52, !noundef !53
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.ak, %i.an
  %i.ap = sub nsw i32 %i.ah, %i.ao                ; 2 uses
  %exitcond.not.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.4, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.aq = lshr i64 %0, 48
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 127
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !93, !range !52, !noundef !53
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = mul nuw nsw i32 %i.as, %i.av
  %i.ax = sub nsw i32 %i.ap, %i.aw                ; 2 uses
  %exitcond.not.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.5, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.ay = lshr i64 %0, 56
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 127
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !93, !range !52, !noundef !53
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.ba, %i.bd
  %i.bf = sub nsw i32 %i.ax, %i.be
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.preheader, %bb.a
  %.014 = phi i32 [ 127, %bb.a ], [ %i.b, %.preheader ], [ %i.j, %.lr.ph ], [ %i.r, %.lr.ph.1 ], [ %i.z, %.lr.ph.2 ], [ %i.ah, %.lr.ph.3 ], [ %i.ap, %.lr.ph.4 ], [ %i.ax, %.lr.ph.5 ], [ %i.bf, %.lr.ph.6 ]
  ret i32 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZN4Luau7Compile12getTripCountEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = tail call double @llvm.fabs.f64(double %0)
  %or.cond = fcmp ugt double %3, 3.276700e+04
  %4 = fptosi double %0 to i32                    ; 2 uses
  %5 = sitofp i32 %4 to double
  %6 = fcmp une double %0, %5
  %7 = select i1 %or.cond, i1 true, i1 %6
  %8 = select i1 %7, i32 -2147483648, i32 %4      ; 4 uses
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %or.cond3 = fcmp ugt double %i.a, 3.276700e+04
  %i.b = fptosi double %1 to i32                  ; 2 uses
  %i.c = sitofp i32 %i.b to double
  %i.d = fcmp une double %1, %i.c
  %i.e = select i1 %or.cond3, i1 true, i1 %i.d
  %i.f = select i1 %i.e, i32 -2147483648, i32 %i.b ; 4 uses
  %9 = tail call double @llvm.fabs.f64(double %2)
  %or.cond5 = fcmp ugt double %9, 3.276700e+04
  %10 = fptosi double %2 to i32                   ; 2 uses
  %11 = sitofp i32 %10 to double
  %12 = fcmp une double %2, %11
  %13 = select i1 %or.cond5, i1 true, i1 %12
  %14 = select i1 %13, i32 -2147483648, i32 %10   ; 4 uses
  %15 = icmp eq i32 %8, -2147483648
  %16 = icmp eq i32 %i.f, -2147483648
  %or.cond7 = or i1 %15, %16
  %i.g = and i32 %14, 2147483647
  %i.h = icmp eq i32 %i.g, 0
  %or.cond11 = or i1 %or.cond7, %i.h
  br i1 %or.cond11, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %14, 0
  %i.j = icmp sgt i32 %i.f, %8
  %or.cond47 = and i1 %i.j, %i.i
  br i1 %or.cond47, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp sgt i32 %14, 0
  %i.l = icmp slt i32 %i.f, %8
  %or.cond48 = and i1 %i.l, %i.k
  br i1 %or.cond48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sub nsw i32 %i.f, %8
  %i.n = sdiv i32 %i.m, %14
  %i.o = add nsw i32 %i.n, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7Compile11CostVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau7Compile11CostVisitorE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4Luau7Compile11CostVisitorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #13, !inline_history !35
  br label %_ZN4Luau7Compile11CostVisitorD2Ev.exit

_ZN4Luau7Compile11CostVisitorD2Ev.exit:           ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_7AstAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_14AstGenericTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_18AstGenericTypePackE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZN4Luau7Compile11CostVisitor5modelEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1)
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  %i.e = add i64 %i.b, %i.d                       ; 2 uses
  %i.f = and i64 %i.e, -9187201950435737472       ; 2 uses
  %i.g = and i64 %i.e, 9187201950435737471
  %i.h = lshr exact i64 %i.f, 7
  %i.i = sub nuw i64 %i.f, %i.h
  %i.j = or i64 %i.i, %i.g
  store i64 %i.j, ptr %i.c, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.k, align 8, !tbaa !55
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_12AstExprGroupE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_18AstExprConstantNilE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_19AstExprConstantBoolE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_21AstExprConstantNumberE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_22AstExprConstantIntegerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_21AstExprConstantStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_12AstExprLocalE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_13AstExprGlobalE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_14AstExprVarargsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_11AstExprCallE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_16AstExprIndexNameE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_16AstExprIndexExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}
end_hunk_0
begin_hunk_1_@_ZN4Luau7Compile11CostVisitor5visitEPNS_12AstStatBreakE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_15AstStatContinueE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = and i64 %i.c, -9187201950435737472       ; 2 uses
  %i.e = and i64 %i.c, 9187201950435737471
  %i.f = lshr exact i64 %i.d, 7
  %i.g = sub nuw i64 %i.d, %i.f
  %i.h = or i64 %i.g, %i.e
  store i64 %i.h, ptr %i.a, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.i, align 8, !tbaa !55
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_13AstStatReturnE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_11AstStatExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_12AstStatLocalE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !103
  %.not11 = icmp eq i64 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret i1 false

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.e ] ; 4 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.010
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = tail call { i64, i64 } @_ZN4Luau7Compile11CostVisitor5modelEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.d, align 8, !tbaa !105
  %i.p = icmp ult i64 %.010, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.010
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_8AstLocalEmNS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  store i64 %i.n, ptr %i.s, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.t = load i64, ptr %i.g, align 8, !tbaa !54
  %i.u = add i64 %i.t, %i.m                       ; 2 uses
  %i.v = and i64 %i.u, -9187201950435737472       ; 2 uses
  %i.w = and i64 %i.u, 9187201950435737471
  %i.x = lshr exact i64 %i.v, 7
  %i.y = sub nuw i64 %i.v, %i.x
  %i.z = or i64 %i.y, %i.w
  store i64 %i.z, ptr %i.g, align 8, !tbaa !54
  store i64 0, ptr %i.h, align 8, !tbaa !55
  %i.aa = add nuw i64 %.010, 1                    ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !103
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_10AstStatForE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = tail call { i64, i64 } @_ZN4Luau7Compile11CostVisitor5modelEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.b)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = add i64 %i.d, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, -9187201950435737472       ; 2 uses
  %i.i = and i64 %i.g, 9187201950435737471
  %i.j = lshr exact i64 %i.h, 7
  %i.k = sub nuw i64 %i.h, %i.j
  %i.l = or i64 %i.k, %i.i
  store i64 %i.l, ptr %i.e, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i64 0, ptr %i.m, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  %i.p = tail call { i64, i64 } @_ZN4Luau7Compile11CostVisitor5modelEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.o)
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = load i64, ptr %i.e, align 8, !tbaa !54
  %i.s = add i64 %i.q, %i.r                       ; 2 uses
  %i.t = and i64 %i.s, -9187201950435737472       ; 2 uses
  %i.u = and i64 %i.s, 9187201950435737471
  %i.v = lshr exact i64 %i.t, 7
  %i.w = sub nuw i64 %i.t, %i.v
  %i.x = or i64 %i.w, %i.u                        ; 2 uses
  store i64 %i.x, ptr %i.e, align 8, !tbaa !54
  store i64 0, ptr %i.m, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call { i64, i64 } @_ZN4Luau7Compile11CostVisitor5modelEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.z)
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !54
  %i.ad = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = and i64 %i.ad, -9187201950435737472     ; 2 uses
  %i.af = and i64 %i.ad, 9187201950435737471
  %i.ag = lshr exact i64 %i.ae, 7
  %i.ah = sub nuw i64 %i.ae, %i.ag
  %i.ai = or i64 %i.ah, %i.af                     ; 2 uses
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !54
  store i64 0, ptr %i.m, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.010.0.copyload.i = phi i64 [ %i.ai, %bb.b ], [ %i.x, %bb.a ]
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68, !nonnull !53, !align !69 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !77
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !78 ; 6 uses
  %i.ar = icmp eq ptr %i.aj, %i.aq
  br i1 %i.ar, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79
  %i.au = add i64 %i.at, -1                       ; 6 uses
  %i.av = ptrtoint ptr %i.aj to i64
  %i.aw = mul i64 %i.av, -4658895280553007687     ; 2 uses
  %i.ax = lshr i64 %i.aw, 31
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !45 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i.i = phi i64 [ %i.ay, %bb.e ], [ %i.bf, %bb.h ]
  %.01828.i.i.i = phi i64 [ 0, %bb.e ], [ %i.be, %bb.h ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.au       ; 2 uses
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %.01929.i.i.i ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !78 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aj
  br i1 %i.bc, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bd, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.bf = add i64 %i.be, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.be, %i.au
  br i1 %.not.i.i.i, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.f, !llvm.loop !2

bb.i:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !82
  %i.bi = icmp eq i32 %i.bh, 3
  br i1 %i.bi, label %bb.j, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !83 ; 3 uses
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !109 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.aq
  br i1 %i.bm, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = mul i64 %i.bn, -4658895280553007687     ; 2 uses
  %i.bp = lshr i64 %i.bo, 31
  %i.bq = xor i64 %i.bp, %i.bo
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.pn.i.i.i13 = phi i64 [ %i.bq, %bb.k ], [ %i.bw, %bb.n ]
  %.01828.i.i.i14 = phi i64 [ 0, %bb.k ], [ %i.bv, %bb.n ]
  %.01929.i.i.i15 = and i64 %.pn.i.i.i13, %i.au   ; 2 uses
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %.01929.i.i.i15 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !78 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bl
  br i1 %i.bt, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = icmp eq ptr %i.bs, %i.aq
  br i1 %i.bu, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = add i64 %.01828.i.i.i14, 1              ; 3 uses
  %i.bw = add i64 %i.bv, %.01929.i.i.i15
  %.not.i.i.i16 = icmp ugt i64 %i.bv, %i.au
  br i1 %.not.i.i.i16, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.l, !llvm.loop !2

bb.o:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !82
  %i.bz = icmp eq i32 %i.by, 3
  br i1 %i.bz, label %bb.p, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !83 ; 3 uses
  %i.cc = load ptr, ptr %i.y, align 8, !tbaa !110 ; 4 uses
  %.not12 = icmp eq ptr %i.cc, null
  br i1 %.not12, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = icmp eq ptr %i.cc, %i.aq
  br i1 %i.cd, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = mul i64 %i.ce, -4658895280553007687     ; 2 uses
  %i.cg = lshr i64 %i.cf, 31
  %i.ch = xor i64 %i.cg, %i.cf
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.pn.i.i.i19 = phi i64 [ %i.ch, %bb.r ], [ %i.cn, %bb.u ]
  %.01828.i.i.i20 = phi i64 [ 0, %bb.r ], [ %i.cm, %bb.u ]
  %.01929.i.i.i21 = and i64 %.pn.i.i.i19, %i.au   ; 2 uses
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %.01929.i.i.i21 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !78 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cc
  br i1 %i.ck, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = icmp eq ptr %i.cj, %i.aq
  br i1 %i.cl, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = add i64 %.01828.i.i.i20, 1              ; 3 uses
  %i.cn = add i64 %i.cm, %.01929.i.i.i21
  %.not.i.i.i22 = icmp ugt i64 %i.cm, %i.au
  br i1 %.not.i.i.i22, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.s, !llvm.loop !2

bb.v:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !82
  %i.cq = icmp eq i32 %i.cp, 3
  br i1 %i.cq, label %_ZN4Luau7Compile11CostVisitor9getNumberEPNS_7AstExprERd.exit24, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread

_ZN4Luau7Compile11CostVisitor9getNumberEPNS_7AstExprERd.exit24: ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !83
  br label %bb.w

bb.w:                                             ; preds = %_ZN4Luau7Compile11CostVisitor9getNumberEPNS_7AstExprERd.exit24, %bb.p
  %.035 = phi double [ 1.000000e+00, %bb.p ], [ %i.cs, %_ZN4Luau7Compile11CostVisitor9getNumberEPNS_7AstExprERd.exit24 ] ; 3 uses
  %2 = tail call double @llvm.fabs.f64(double %i.bk)
  %or.cond.i = fcmp ugt double %2, 3.276700e+04
  %3 = fptosi double %i.bk to i32                 ; 2 uses
  %4 = sitofp i32 %3 to double
  %5 = fcmp une double %i.bk, %4
  %6 = select i1 %or.cond.i, i1 true, i1 %5
  %7 = select i1 %6, i32 -2147483648, i32 %3      ; 4 uses
  %i.ct = tail call double @llvm.fabs.f64(double %i.cb)
  %or.cond3.i = fcmp ugt double %i.ct, 3.276700e+04
  %i.cu = fptosi double %i.cb to i32              ; 2 uses
  %i.cv = sitofp i32 %i.cu to double
  %i.cw = fcmp une double %i.cb, %i.cv
  %i.cx = select i1 %or.cond3.i, i1 true, i1 %i.cw
  %i.cy = select i1 %i.cx, i32 -2147483648, i32 %i.cu ; 4 uses
  %8 = tail call double @llvm.fabs.f64(double %.035)
  %or.cond5.i = fcmp ugt double %8, 3.276700e+04
  %9 = fptosi double %.035 to i32                 ; 2 uses
  %10 = sitofp i32 %9 to double
  %11 = fcmp une double %.035, %10
  %12 = select i1 %or.cond5.i, i1 true, i1 %11
  %13 = select i1 %12, i32 -2147483648, i32 %9    ; 4 uses
  %14 = icmp eq i32 %7, -2147483648
  %15 = icmp eq i32 %i.cy, -2147483648
  %or.cond7.i = or i1 %14, %15
  %i.cz = and i32 %13, 2147483647
  %i.da = icmp eq i32 %i.cz, 0
  %or.cond11.i = or i1 %or.cond7.i, %i.da
  br i1 %or.cond11.i, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = icmp slt i32 %13, 0
  %i.dc = icmp sgt i32 %i.cy, %7
  %or.cond47.i = and i1 %i.dc, %i.db
  br i1 %or.cond47.i, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = icmp sgt i32 %13, 0
  %i.de = icmp slt i32 %i.cy, %7
  %or.cond48.i = and i1 %i.de, %i.dd
  br i1 %or.cond48.i, label %_ZN4Luau7Compile12getTripCountEddd.exit.thread, label %_ZN4Luau7Compile12getTripCountEddd.exit

_ZN4Luau7Compile12getTripCountEddd.exit:          ; preds = %bb.y
  %i.df = sub nsw i32 %i.cy, %7
  %i.dg = sdiv i32 %i.df, %13
  %.fr = freeze i32 %i.dg                         ; 2 uses
  %i.dh = icmp slt i32 %.fr, -1
  %i.di = tail call i32 @llvm.smin.i32(i32 %.fr, i32 126)
  %i.dj = add nsw i32 %i.di, 1
  %i.dk = select i1 %i.dh, i32 3, i32 %i.dj
  %i.dl = sext i32 %i.dk to i64
  br label %_ZN4Luau7Compile12getTripCountEddd.exit.thread

_ZN4Luau7Compile12getTripCountEddd.exit.thread:   ; preds = %bb.g, %bb.h, %bb.m, %bb.n, %bb.t, %bb.u, %bb.y, %bb.x, %bb.q, %bb.v, %bb.j, %bb.o, %bb.c, %bb.d, %bb.i, %bb.w, %_ZN4Luau7Compile12getTripCountEddd.exit
  %i.dm = phi i64 [ 0, %bb.x ], [ %i.dl, %_ZN4Luau7Compile12getTripCountEddd.exit ], [ 3, %bb.w ], [ 3, %bb.i ], [ 3, %bb.d ], [ 3, %bb.c ], [ 3, %bb.q ], [ 3, %bb.t ], [ 3, %bb.o ], [ 3, %bb.j ], [ 0, %bb.y ], [ 3, %bb.m ], [ 3, %bb.v ], [ 3, %bb.u ], [ 3, %bb.n ], [ 3, %bb.h ], [ 3, %bb.g ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dn = load ptr, ptr %.in, align 8, !tbaa !111 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !15
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(49) %i.dn, ptr noundef nonnull align 8 dereferenceable(80) %0), !inline_history !3
  %i.dq = load i64, ptr %i.e, align 8, !tbaa !54
  %i.dr = add i64 %i.dq, 1                        ; 2 uses
  %i.ds = and i64 %i.dr, -9187201950435737472     ; 2 uses
  %i.dt = lshr exact i64 %i.ds, 7
  %i.du = sub nuw i64 %i.ds, %i.dt
  %i.dv = or i64 %i.du, %i.dr                     ; 2 uses
  %i.dw = and i64 %i.dv, 35747867511423103
  %i.dx = mul i64 %i.dw, %i.dm                    ; 2 uses
  %i.dy = lshr i64 %i.dv, 8
  %i.dz = and i64 %i.dy, 35747867511423103
  %i.ea = mul i64 %i.dz, %i.dm                    ; 2 uses
  %i.eb = add i64 %i.dx, 9187483429707480960
  %i.ec = add i64 %i.ea, 9187483429707480960
  %i.ed = and i64 %i.ec, -9223231297218904064
  %i.ee = lshr i64 %i.eb, 8
  %i.ef = and i64 %i.ee, 36029346783166592
  %i.eg = or disjoint i64 %i.ef, %i.ed            ; 2 uses
  %i.eh = shl i64 %i.ea, 8
  %i.ei = and i64 %i.eh, 9151454082924314368
  %i.ej = and i64 %i.dx, 35747867511423103
  %i.ek = or disjoint i64 %i.ei, %i.ej
  %i.el = lshr exact i64 %i.eg, 7
  %i.em = sub nuw i64 %i.eg, %i.el
  %i.en = or i64 %i.ek, %i.em
  %i.eo = add i64 %i.en, %.sroa.010.0.copyload.i  ; 2 uses
  %i.ep = and i64 %i.eo, -9187201950435737472     ; 2 uses
  %i.eq = and i64 %i.eo, 9187201950435737471
  %i.er = lshr exact i64 %i.ep, 7
  %i.es = sub nuw i64 %i.ep, %i.er
  %i.et = or i64 %i.es, %i.eq
  store i64 %i.et, ptr %i.e, align 8, !tbaa !22
  store i64 0, ptr %i.m, align 8, !tbaa !22
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_12AstStatForInE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !114
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.010.0.copyload.i.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.sroa.010.0.copyload.i = phi i64 [ %.sroa.010.0.copyload.i.pre, %.._crit_edge_crit_edge ], [ %i.az, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %0), !inline_history !3
  %i.k = load i64, ptr %i.h, align 8, !tbaa !54
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %i.m = and i64 %i.l, -9187201950435737472       ; 2 uses
  %i.n = lshr exact i64 %i.m, 7
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %i.l                        ; 2 uses
  %i.q = and i64 %i.p, 35747867511423103
  %i.r = mul nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = lshr i64 %i.p, 8
  %i.t = and i64 %i.s, 35747867511423103          ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 3
  %i.v = add nuw i64 %i.r, 9187483429707480960
  %i.w = add nuw i64 %i.u, 9187483429707480960
  %i.x = and i64 %i.w, -9223231297218904064
  %i.y = lshr i64 %i.v, 8
  %i.z = and i64 %i.y, 36029346783166592
  %i.aa = or disjoint i64 %i.z, %i.x              ; 2 uses
  %i.ab = mul i64 %i.t, 768
  %i.ac = and i64 %i.ab, 9151454082924314368
  %i.ad = and i64 %i.r, 35747867511423103
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.aa, 7
  %i.ag = sub nuw i64 %i.aa, %i.af
  %i.ah = or i64 %i.ae, %i.ag
  %i.ai = add i64 %i.ah, %.sroa.010.0.copyload.i  ; 2 uses
  %i.aj = and i64 %i.ai, -9187201950435737472     ; 2 uses
  %i.ak = and i64 %i.ai, 9187201950435737471
  %i.al = lshr exact i64 %i.aj, 7
  %i.am = sub nuw i64 %i.aj, %i.al
  %i.an = or i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.h, align 8, !tbaa !22
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !tbaa !22
  ret i1 false

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !78
  %i.ar = tail call { i64, i64 } @_ZN4Luau7Compile11CostVisitor5modelEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.aq)
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = load i64, ptr %i.d, align 8, !tbaa !54
  %i.au = add i64 %i.as, %i.at                    ; 2 uses
  %i.av = and i64 %i.au, -9187201950435737472     ; 2 uses
  %i.aw = and i64 %i.au, 9187201950435737471
  %i.ax = lshr exact i64 %i.av, 7
  %i.ay = sub nuw i64 %i.av, %i.ax
  %i.az = or i64 %i.ay, %i.aw                     ; 2 uses
  store i64 %i.az, ptr %i.d, align 8, !tbaa !54
  store i64 0, ptr %i.e, align 8, !tbaa !55
  %i.ba = add nuw i64 %.07, 1                     ; 2 uses
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !114
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !112
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_13AstStatAssignE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.e = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.f, align 8
  br label %bb.b

.preheader:                                       ; preds = %_ZN4Luau7Compile11CostVisitor6assignEPNS_7AstExprE.exit, %bb.a
  %i.l = phi i64 [ 0, %bb.a ], [ %i.ao, %_ZN4Luau7Compile11CostVisitor6assignEPNS_7AstExprE.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau7Compile11CostVisitor6assignEPNS_7AstExprE.exit
  %i.q = phi i64 [ %i.c, %.lr.ph ], [ %i.ao, %_ZN4Luau7Compile11CostVisitor6assignEPNS_7AstExprE.exit ] ; 5 uses
  %.01829 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %_ZN4Luau7Compile11CostVisitor6assignEPNS_7AstExprE.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01829
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !86
  %i.v = icmp ne i32 %i.u, %i.e
  %.not10.i = icmp eq ptr %i.s, null
  %.not.i = or i1 %.not10.i, %i.v
  br i1 %.not.i, label %_ZN4Luau7Compile11CostVisitor6assignEPNS_7AstExprE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.g, align 8, !tbaa !36
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN4Luau7Compile11CostVisitor6assignEPNS_7AstExprE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 3 uses
  %i.aa = icmp eq ptr %i.z, %i.i
  br i1 %i.aa, label %_ZN4Luau7Compile11CostVisitor6assignEPNS_7AstExprE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !37
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = mul i64 %i.ad, -4658895280553007687     ; 2 uses
  %i.af = lshr i64 %i.ae, 31
  %i.ag = xor i64 %i.af, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.am, %bb.h ]
  %.01828.i.i.i = phi i64 [ 0, %bb.e ], [ %i.al, %bb.h ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.ac       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_:bb.a

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !83, !range !52, !noundef !53
  %i.y = icmp eq i8 %i.x, 0
  br label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit:    ; preds = %bb.g
  br label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.a, %bb.b, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  %i.z = phi i1 [ false, %bb.g ], [ %i.y, %bb.h ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #15 ; 6 uses
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !38 ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.i = icmp ult i64 %spec.select, 4
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.u, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %.pre.i.i, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.pre.i.i, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.pre.i.i, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %.pre.i.i, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.u = add nuw i64 %.07.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !175

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.u, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %.pre.i.i, ptr %i.v, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !22
  %i.x = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !176

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !37
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit, %bb.a
  %i.y = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.y, 0
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !179 ; 3 uses
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit
  %i.z = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.c

._crit_edge27:                                    ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS6_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !179
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !22
  %.not.i11 = icmp eq ptr %.pre32, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge27.thread, %._crit_edge27
  tail call void @_ZdlPv(ptr noundef nonnull %.pre32) #13
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge27, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph26, %bb.e
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.pre32, i64 %.025 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 6 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = mul i64 %i.ae, -4658895280553007687     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %.02131.i21 = and i64 %i.ah, %i.z               ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i21 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.al = icmp eq ptr %i.aj, %i.ab
  br i1 %i.al, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS6_.exit, label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %bb.d
  %.lcssa = phi ptr [ %i.ai, %bb.d ], [ %i.ap, %.lr.ph47 ] ; 2 uses
  store ptr %i.ab, ptr %.lcssa, align 8, !tbaa !40
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS6_.exit

.lr.ph:                                           ; preds = %.lr.ph47
  %i.am = icmp eq ptr %i.aq, %i.ab
  br i1 %i.am, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS6_.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2246 = phi i64 [ %i.an, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2345 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i21, %.lr.ph.preheader ]
  %i.an = add i64 %.02030.i2246, 1                ; 3 uses
  %i.ao = add i64 %i.an, %.02131.i2345
  %.not.i12 = icmp ule i64 %i.an, %i.z
  tail call void @llvm.assume(i1 %.not.i12)
  %.02131.i = and i64 %i.ao, %i.z                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS6_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.as = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ai, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !180
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS6_.exit, %bb.c
  %i.aw = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.y
  br i1 %exitcond.not, label %._crit_edge27.thread, label %bb.c, !llvm.loop !177

._crit_edge27.thread:                             ; preds = %bb.e
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !179
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !22
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = distinct !{!2, !23}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 _ZTSN4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EEE", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTSN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EEE", !16, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"_ZTSN4Luau10AstVisitorE"}
!25 = !{!"p1 _ZTSSt4pairIPN4Luau8AstLocalEmE", !16, i64 0}
!26 = !{!"p1 _ZTSN4Luau8AstLocalE", !16, i64 0}
!27 = !{!"_ZTSN4Luau16DenseHashPointerE"}
!28 = !{!"_ZTSSt8equal_toIPN4Luau8AstLocalEE"}
!29 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_mES4_IKS3_mENS0_16ItemInterfaceMapIS3_mEENS_16DenseHashPointerESt8equal_toIS3_EEE", !25, i64 0, !21, i64 8, !21, i64 16, !26, i64 24, !27, i64 32, !28, i64 33}
!30 = !{!"_ZTSN4Luau12DenseHashMapIPNS_8AstLocalEmNS_16DenseHashPointerESt8equal_toIS2_EEE", !29, i64 0}
!31 = !{!"_ZTSN4Luau7Compile4CostE", !21, i64 0, !21, i64 8}
!32 = !{!"_ZTSN4Luau7Compile11CostVisitorE", !24, i64 0, !17, i64 8, !19, i64 16, !30, i64 24, !31, i64 64}
!33 = !{!32, !21, i64 64}
!34 = !{!29, !25, i64 0}
!35 = !{ptr @_ZN4Luau7Compile11CostVisitorD2Ev}
!36 = !{!29, !21, i64 16}
!37 = !{!29, !21, i64 8}
!38 = !{!26, !26, i64 0}
!39 = !{!"_ZTSSt4pairIPN4Luau8AstLocalEmE", !26, i64 0, !21, i64 8}
!40 = !{!39, !26, i64 0}
!41 = !{!"p1 _ZTSSt4pairIPN4Luau7AstExprENS0_7Compile8ConstantEE", !16, i64 0}
!42 = !{!"p1 _ZTSN4Luau7AstExprE", !16, i64 0}
!43 = !{!"_ZTSSt8equal_toIPN4Luau7AstExprEE"}
!44 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEE", !41, i64 0, !21, i64 8, !21, i64 16, !42, i64 24, !27, i64 32, !43, i64 33}
!45 = !{!44, !41, i64 0}
!46 = !{!"p1 _ZTSSt4pairIPN4Luau11AstExprCallEiE", !16, i64 0}
!47 = !{!"p1 _ZTSN4Luau11AstExprCallE", !16, i64 0}
!48 = !{!"_ZTSSt8equal_toIPN4Luau11AstExprCallEE"}
!49 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_11AstExprCallESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS_16DenseHashPointerESt8equal_toIS3_EEE", !46, i64 0, !21, i64 8, !21, i64 16, !47, i64 24, !27, i64 32, !48, i64 33}
!50 = !{!49, !46, i64 0}
!51 = !{!"bool", !9, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!31, !21, i64 0}
!55 = !{!31, !21, i64 8}
!56 = !{!"_ZTSN4Luau8PositionE", !10, i64 0, !10, i64 4}
!57 = !{!"_ZTSN4Luau8LocationE", !56, i64 0, !56, i64 8}
!58 = !{!"_ZTSN4Luau7AstNodeE", !10, i64 8, !57, i64 12}
!59 = !{!"_ZTSN4Luau7AstStatE", !58, i64 0, !51, i64 28}
!60 = !{!"any p2 pointer", !16, i64 0}
!61 = !{!"p2 _ZTSN4Luau7AstStatE", !60, i64 0}
!62 = !{!"_ZTSN4Luau8AstArrayIPNS_7AstStatEEE", !61, i64 0, !21, i64 8}
!63 = !{!"_ZTSN4Luau12AstStatBlockE", !59, i64 0, !62, i64 32, !51, i64 48}
!64 = !{!63, !21, i64 40}
!65 = !{!63, !61, i64 32}
!66 = !{!"p1 _ZTSN4Luau7AstStatE", !16, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!32, !19, i64 16}
!69 = !{i64 8}
!70 = !{!"p1 _ZTSN4Luau12AstStatBlockE", !16, i64 0}
!71 = !{!"_ZTSSt22_Optional_payload_baseIN4Luau8LocationEE", !9, i64 0, !51, i64 16}
!72 = !{!"_ZTSSt17_Optional_payloadIN4Luau8LocationELb1ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt14_Optional_baseIN4Luau8LocationELb1ELb1EE", !72, i64 0}
!74 = !{!"_ZTSSt8optionalIN4Luau8LocationEE", !73, i64 0}
!75 = !{!"_ZTSN4Luau9AstStatIfE", !59, i64 0, !42, i64 32, !70, i64 40, !66, i64 48, !74, i64 56, !74, i64 76}
!76 = !{!75, !42, i64 32}
!77 = !{!44, !21, i64 16}
!78 = !{!42, !42, i64 0}
!79 = !{!44, !21, i64 8}
!80 = !{!"_ZTSN4Luau7Compile8Constant4TypeE", !9, i64 0}
!81 = !{!"_ZTSN4Luau7Compile8ConstantE", !80, i64 0, !10, i64 4, !9, i64 8}
!82 = !{!81, !80, i64 0}
!83 = !{!9, !9, i64 0}
!84 = !{!75, !66, i64 48}
!85 = !{!75, !70, i64 40}
!86 = !{!58, !10, i64 8}
!87 = !{!"p2 _ZTSN4Luau8AstLocalE", !60, i64 0}
!88 = !{!"_ZTSN4Luau8AstArrayIPNS_8AstLocalEEE", !87, i64 0, !21, i64 8}
!89 = !{!"p2 _ZTSN4Luau7AstExprE", !60, i64 0}
!90 = !{!"_ZTSN4Luau8AstArrayIPNS_7AstExprEEE", !89, i64 0, !21, i64 8}
!91 = !{!"_ZTSN4Luau13AstExprBinary2OpE", !9, i64 0}
!92 = !{!47, !47, i64 0}
!93 = !{!51, !51, i64 0}
!94 = distinct !{!94, !23}
!95 = !{!"_ZTSN4Luau12AstStatWhileE", !59, i64 0, !42, i64 32, !70, i64 40, !51, i64 48, !57, i64 52}
!96 = !{!95, !42, i64 32}
!97 = !{!95, !70, i64 40}
!98 = !{!"_ZTSN4Luau13AstStatRepeatE", !59, i64 0, !42, i64 32, !70, i64 40, !51, i64 48}
!99 = !{!98, !42, i64 32}
!100 = !{!98, !70, i64 40}
!101 = distinct !{!101, !23}
!102 = !{!"_ZTSN4Luau12AstStatLocalE", !59, i64 0, !88, i64 32, !90, i64 48, !51, i64 64, !51, i64 65, !74, i64 68, !74, i64 88}
!103 = !{!102, !21, i64 56}
!104 = !{!102, !89, i64 48}
!105 = !{!102, !21, i64 40}
!106 = !{!102, !87, i64 32}
!107 = !{!"_ZTSN4Luau10AstStatForE", !59, i64 0, !26, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !70, i64 64, !51, i64 72, !57, i64 76}
!108 = !{!107, !42, i64 40}
!109 = !{!107, !42, i64 48}
!110 = !{!107, !42, i64 56}
!111 = !{!107, !70, i64 64}
!112 = distinct !{!112, !23}
!113 = !{!"_ZTSN4Luau12AstStatForInE", !59, i64 0, !88, i64 32, !90, i64 48, !70, i64 64, !51, i64 72, !57, i64 76, !51, i64 92, !57, i64 96}
!114 = !{!113, !21, i64 56}
!115 = !{!113, !70, i64 64}
!116 = !{!113, !89, i64 48}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
!119 = !{!"_ZTSN4Luau13AstStatAssignE", !59, i64 0, !90, i64 32, !90, i64 48}
!120 = !{!119, !21, i64 40}
!121 = !{!119, !89, i64 32}
!122 = !{!119, !21, i64 56}
!123 = !{!119, !89, i64 48}
!124 = !{!"_ZTSN4Luau21AstStatCompoundAssignE", !59, i64 0, !91, i64 32, !42, i64 40, !42, i64 48}
!125 = !{!124, !42, i64 40}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
!128 = !{!"_ZTSN4Luau7AstExprE", !58, i64 0}
!129 = !{!"_ZTSN4Luau12AstExprGroupE", !128, i64 0, !42, i64 32}
!130 = !{!129, !42, i64 32}
!131 = !{!32, !17, i64 8}
!132 = !{!"p1 _ZTSN4Luau13AstTypeOrPackE", !16, i64 0}
!133 = !{!"_ZTSN4Luau8AstArrayINS_13AstTypeOrPackEEE", !132, i64 0, !21, i64 8}
!134 = !{!"_ZTSN4Luau11AstExprCallE", !128, i64 0, !42, i64 32, !133, i64 40, !90, i64 56, !51, i64 72, !57, i64 76}
!135 = !{!134, !21, i64 64}
!136 = !{!134, !42, i64 32}
!137 = !{!134, !89, i64 56}
!138 = !{!"p1 omnipotent char", !16, i64 0}
!139 = !{!"_ZTSN4Luau7AstNameE", !138, i64 0}
!140 = !{!"_ZTSN4Luau16AstExprIndexNameE", !128, i64 0, !42, i64 32, !139, i64 40, !57, i64 48, !56, i64 64, !9, i64 72}
!141 = !{!140, !42, i64 32}
!142 = !{!"_ZTSN4Luau16AstExprIndexExprE", !128, i64 0, !42, i64 32, !42, i64 40}
!143 = !{!142, !42, i64 32}
!144 = !{!142, !42, i64 40}
!145 = !{!"p1 _ZTSN4Luau12AstExprTable4ItemE", !16, i64 0}
!146 = !{!"_ZTSN4Luau8AstArrayINS_12AstExprTable4ItemEEE", !145, i64 0, !21, i64 8}
!147 = !{!"_ZTSN4Luau12AstExprTableE", !128, i64 0, !146, i64 32}
!148 = !{!147, !21, i64 40}
!149 = !{!147, !145, i64 32}
!150 = !{!"_ZTSN4Luau12AstExprTable4Item4KindE", !9, i64 0}
!151 = !{!"_ZTSN4Luau12AstExprTable4ItemE", !150, i64 0, !42, i64 8, !42, i64 16}
!152 = !{!151, !42, i64 8}
!153 = !{!151, !42, i64 16}
!154 = !{!"_ZTSN4Luau12AstExprUnary2OpE", !9, i64 0}
!155 = !{!"_ZTSN4Luau12AstExprUnaryE", !128, i64 0, !154, i64 28, !42, i64 32}
!156 = !{!155, !42, i64 32}
!157 = !{!"_ZTSN4Luau13AstExprBinaryE", !128, i64 0, !91, i64 28, !42, i64 32, !42, i64 40}
!158 = !{!157, !42, i64 32}
!159 = !{!157, !42, i64 40}
!160 = !{!"p1 _ZTSN4Luau7AstTypeE", !16, i64 0}
!161 = !{!"_ZTSN4Luau20AstExprTypeAssertionE", !128, i64 0, !42, i64 32, !160, i64 40}
!162 = !{!161, !42, i64 32}
!163 = !{!"_ZTSN4Luau13AstExprIfElseE", !128, i64 0, !42, i64 32, !51, i64 40, !42, i64 48, !51, i64 56, !42, i64 64}
!164 = !{!163, !42, i64 32}
!165 = !{!163, !42, i64 48}
!166 = !{!163, !42, i64 64}
!167 = !{!90, !89, i64 0}
!168 = !{!90, !21, i64 8}
!169 = !{!"_ZTSN4Luau18AstExprInstantiateE", !128, i64 0, !42, i64 32, !133, i64 40}
!170 = !{!169, !42, i64 32}
!171 = distinct !{!171, !23}
!172 = !{!49, !21, i64 16}
!173 = !{!49, !21, i64 8}
!174 = distinct !{!174, !23}
!175 = distinct !{!175, !23}
!176 = distinct !{!176, !178}
!177 = distinct !{!177, !23}
!178 = !{!"llvm.loop.unroll.disable"}
end_hunk_2
