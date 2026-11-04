Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/CostModel?download=true
inline.NumInlined: 211
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4Luau10AstVisitor5visitEPNS_16AstExprIndexExprE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_15AstExprFunctionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_12AstExprTableE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_12AstExprUnaryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_13AstExprBinaryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_20AstExprTypeAssertionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_13AstExprIfElseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_19AstExprInterpStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_18AstExprInstantiateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_12AstExprErrorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_12AstStatBlockE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = add nuw i64 %.089, 1                     ; 2 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !64
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %._crit_edge, !llvm.loop !94

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.089 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.089
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef nonnull %0)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !68, !nonnull !53, !align !69
  %i.n = tail call noundef zeroext i1 @_ZN4Luau7Compile16alwaysTerminatesERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull %i.j)
  br i1 %i.n, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_9AstStatIfE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68, !nonnull !53, !align !69 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 3 uses
  %i.j = icmp eq ptr %i.d, %i.i
  br i1 %i.j, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !79
  %i.m = add i64 %i.l, -1                         ; 2 uses
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i.i = phi i64 [ %i.q, %bb.c ], [ %i.x, %bb.f ]
  %.01828.i.i.i = phi i64 [ 0, %bb.c ], [ %i.w, %bb.f ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.m        ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.01929.i.i.i ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq ptr %i.t, %i.i
  br i1 %i.v, label %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread.thread19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add i64 %.01828.i.i.i, 1                 ; 3 uses
  %i.x = add i64 %i.w, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.w, %i.m
  br i1 %.not.i.i.i, label %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread.thread19, label %bb.d, !llvm.loop !2

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !82
  switch i32 %i.z, label %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread.thread19 [
    i32 2, label %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
    i32 1, label %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread17
  ]

_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !83, !range !52, !noundef !53
  %2 = trunc nuw i8 %i.ab to i1
  br i1 %2, label %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread.thread19, label %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread17

_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread17: ; preds = %bb.g, %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 3 uses
  %.not11 = icmp eq ptr %i.ad, null
  br i1 %.not11, label %bb.o, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread17
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, ptr noundef nonnull %0)
  br label %bb.o

_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread.thread19: ; preds = %bb.e, %bb.f, %bb.g, %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !79
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  %i.aj = ptrtoint ptr %i.d to i64
  %i.ak = mul i64 %i.aj, -4658895280553007687     ; 2 uses
  %i.al = lshr i64 %i.ak, 31
  %i.am = xor i64 %i.al, %i.ak
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread.thread19
  %.pn.i.i.i12 = phi i64 [ %i.am, %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread.thread19 ], [ %i.at, %bb.k ]
  %.01828.i.i.i13 = phi i64 [ 0, %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread.thread19 ], [ %i.as, %bb.k ]
  %.01929.i.i.i14 = and i64 %.pn.i.i.i12, %i.ai   ; 2 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %.01929.i.i.i14 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq ptr %i.ap, %i.i
  br i1 %i.ar, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add i64 %.01828.i.i.i13, 1              ; 3 uses
  %i.at = add i64 %i.as, %.01929.i.i.i14
  %.not.i.i.i15 = icmp ugt i64 %i.as, %i.ai
  br i1 %.not.i.i.i15, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread, label %bb.i, !llvm.loop !2

bb.l:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !82
  switch i32 %i.av, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread18 [
    i32 0, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread
    i32 1, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread
    i32 2, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
  ]

_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit: ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !83, !range !52, !noundef !53
  %3 = trunc nuw i8 %i.ax to i1
  br i1 %3, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread18, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread

_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread18: ; preds = %bb.l, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !85 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(49) %i.az, ptr noundef nonnull %0)
  br label %bb.o

_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread: ; preds = %bb.j, %bb.k, %bb.b, %bb.a, %bb.l, %bb.l, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !84 ; 2 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !86
  %i.bg = load i32, ptr @_ZN4Luau7AstRttiINS_9AstStatIfEE5valueE, align 4, !tbaa !13
  %i.bh = icmp eq i32 %i.bf, %i.bg
  %i.bi = select i1 %i.bh, i64 1, i64 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread
  %i.bj = phi i64 [ 1, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread ], [ %i.bi, %bb.m ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !54
  %i.bm = add i64 %i.bl, %i.bj                    ; 2 uses
  %i.bn = and i64 %i.bm, -9187201950435737472     ; 2 uses
  %i.bo = and i64 %i.bm, 9187201950435737471
  %i.bp = lshr exact i64 %i.bn, 7
  %i.bq = sub nuw i64 %i.bn, %i.bp
  %i.br = or i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.bk, align 8, !tbaa !54
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.bs, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread17, %bb.h, %bb.n, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread18
  %.0 = phi i1 [ true, %bb.n ], [ false, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread18 ], [ false, %bb.h ], [ false, %_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread17 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_12AstStatWhileE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = tail call { i64, i64 } @_ZN4Luau7Compile11CostVisitor5modelEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.b)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !22
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %0), !inline_history !3
  %i.j = load i64, ptr %i.g, align 8, !tbaa !54
  %i.k = add i64 %i.j, %i.d                       ; 2 uses
  %i.l = and i64 %i.k, -9187201950435737472       ; 2 uses
  %i.m = lshr exact i64 %i.l, 7
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = or i64 %i.n, %i.k                        ; 2 uses
  %i.p = and i64 %i.o, 35747867511423103
  %i.q = mul nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.r = lshr i64 %i.o, 8
  %i.s = and i64 %i.r, 35747867511423103          ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 3
  %i.u = add nuw i64 %i.q, 9187483429707480960
  %i.v = add nuw i64 %i.t, 9187483429707480960
  %i.w = and i64 %i.v, -9223231297218904064
  %i.x = lshr i64 %i.u, 8
  %i.y = and i64 %i.x, 36029346783166592
  %i.z = or disjoint i64 %i.y, %i.w               ; 2 uses
  %i.aa = mul i64 %i.s, 768
  %i.ab = and i64 %i.aa, 9151454082924314368
  %i.ac = and i64 %i.q, 35747867511423103
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.z, 7
  %i.af = sub nuw i64 %i.z, %i.ae
  %i.ag = or i64 %i.ad, %i.af
  %i.ah = add i64 %i.ag, %.sroa.010.0.copyload.i  ; 2 uses
  %i.ai = and i64 %i.ah, -9187201950435737472     ; 2 uses
  %i.aj = and i64 %i.ah, 9187201950435737471
  %i.ak = lshr exact i64 %i.ai, 7
  %i.al = sub nuw i64 %i.ai, %i.ak
  %i.am = or i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.g, align 8, !tbaa !22
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !tbaa !22
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_13AstStatRepeatE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = tail call { i64, i64 } @_ZN4Luau7Compile11CostVisitor5modelEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.b)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !22
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %0), !inline_history !3
  %i.j = load i64, ptr %i.g, align 8, !tbaa !54
  %i.k = add i64 %i.j, %i.d                       ; 2 uses
  %i.l = and i64 %i.k, -9187201950435737472       ; 2 uses
  %i.m = lshr exact i64 %i.l, 7
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = or i64 %i.n, %i.k                        ; 2 uses
  %i.p = and i64 %i.o, 35747867511423103
  %i.q = mul nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.r = lshr i64 %i.o, 8
  %i.s = and i64 %i.r, 35747867511423103          ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 3
  %i.u = add nuw i64 %i.q, 9187483429707480960
  %i.v = add nuw i64 %i.t, 9187483429707480960
  %i.w = and i64 %i.v, -9223231297218904064
  %i.x = lshr i64 %i.u, 8
  %i.y = and i64 %i.x, 36029346783166592
  %i.z = or disjoint i64 %i.y, %i.w               ; 2 uses
  %i.aa = mul i64 %i.s, 768
  %i.ab = and i64 %i.aa, 9151454082924314368
  %i.ac = and i64 %i.q, 35747867511423103
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.z, 7
  %i.af = sub nuw i64 %i.z, %i.ae
  %i.ag = or i64 %i.ad, %i.af
  %i.ah = add i64 %i.ag, %.sroa.010.0.copyload.i  ; 2 uses
  %i.ai = and i64 %i.ah, -9187201950435737472     ; 2 uses
  %i.aj = and i64 %i.ah, 9187201950435737471
  %i.ak = lshr exact i64 %i.ai, 7
  %i.al = sub nuw i64 %i.ai, %i.ak
  %i.am = or i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.g, align 8, !tbaa !22
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !tbaa !22
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile11CostVisitor5visitEPNS_12AstStatBreakE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
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
end_hunk_0
begin_hunk_1_@_ZN4Luau12DenseHashMapIPNS_8AstLocalEmNS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_:bb.a
  %i.w = select i1 %.not, ptr null, ptr %i.v
  ret ptr %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !172
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK4Luau6detail14DenseHashTableIPNS_11AstExprCallESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS_16DenseHashPointerESt8equal_toIS3_EE4findERS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK4Luau6detail14DenseHashTableIPNS_11AstExprCallESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS_16DenseHashPointerESt8equal_toIS3_EE4findERS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !173
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = load ptr, ptr %0, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i = phi i64 [ %i.n, %bb.c ], [ %i.u, %bb.f ]
  %.01828.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.f ]
  %.01929.i = and i64 %.pn.i, %i.j                ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.01929.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNK4Luau6detail14DenseHashTableIPNS_11AstExprCallESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS_16DenseHashPointerESt8equal_toIS3_EE4findERS6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq ptr %i.q, %i.f
  br i1 %i.s, label %_ZNK4Luau6detail14DenseHashTableIPNS_11AstExprCallESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS_16DenseHashPointerESt8equal_toIS3_EE4findERS6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.01828.i, 1                     ; 3 uses
  %i.u = add i64 %i.t, %.01929.i
  %.not.i = icmp ugt i64 %i.t, %i.j
  br i1 %.not.i, label %_ZNK4Luau6detail14DenseHashTableIPNS_11AstExprCallESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS_16DenseHashPointerESt8equal_toIS3_EE4findERS6_.exit, label %bb.d, !llvm.loop !171

_ZNK4Luau6detail14DenseHashTableIPNS_11AstExprCallESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS_16DenseHashPointerESt8equal_toIS3_EE4findERS6_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.a, %bb.b
  %.4.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.f ], [ null, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.4.i, null
  %i.v = getelementptr inbounds nuw i8, ptr %.4.i, i64 8
  %i.w = select i1 %.not, ptr null, ptr %i.v
  ret ptr %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4Luau7Compile4Cost4foldERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !54
  %i.b = load i64, ptr %1, align 8, !tbaa !54
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = and i64 %i.c, -9187201950435737472       ; 2 uses
  %i.e = and i64 %i.c, 9187201950435737471
  %i.f = lshr exact i64 %i.d, 7
  %i.g = sub nuw i64 %i.d, %i.f
  %i.h = or i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55
  %i.m = and i64 %i.l, %i.j                       ; 3 uses
  %i.n = icmp eq i64 %i.m, -1
  %i.o = and i64 %i.m, 72340172838076672
  %i.p = or disjoint i64 %i.o, 1
  %i.q = select i1 %i.n, i64 0, i64 %i.p
  %i.r = add i64 %i.q, %i.h                       ; 2 uses
  %i.s = and i64 %i.r, -9187201950435737472       ; 2 uses
  %i.t = and i64 %i.r, 9187201950435737471
  %i.u = lshr exact i64 %i.s, 7
  %i.v = sub nuw i64 %i.s, %i.u
  %i.w = or i64 %i.v, %i.t
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.w, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.m, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile16alwaysTerminatesERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %.thread65.sink.split, %bb.a
  %.tr73 = phi ptr [ %1, %bb.a ], [ %.sink, %.thread65.sink.split ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr73, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86   ; 5 uses
  %i.c = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatBlockEE5valueE, align 4, !tbaa !13
  %i.d = icmp ne i32 %i.b, %i.c
  %.not.not49 = icmp eq ptr %.tr73, null          ; 2 uses
  %.not.not = or i1 %.not.not49, %i.d
  br i1 %.not.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr73, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64
  %.not3753.not = icmp eq i64 %i.f, 0
  br i1 %.not3753.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.tr73, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = add nuw i64 %.03054, 1                   ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !64
  %.not37 = icmp ult i64 %i.h, %i.i
  br i1 %.not37, label %bb.c, label %.loopexit, !llvm.loop !174

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.03054 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.03054
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = tail call noundef zeroext i1 @_ZN4Luau7Compile16alwaysTerminatesERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.l) ; 3 uses
  br i1 %i.m, label %.loopexit, label %bb.b

.thread:                                          ; preds = %tailrecurse
  %i.n = load i32, ptr @_ZN4Luau7AstRttiINS_13AstStatReturnEE5valueE, align 4, !tbaa !13
  %i.o = icmp eq i32 %i.b, %i.n
  %i.p = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatBreakEE5valueE, align 4
  %i.q = icmp eq i32 %i.b, %i.p
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load i32, ptr @_ZN4Luau7AstRttiINS_15AstStatContinueEE5valueE, align 4
  %i.s = icmp eq i32 %i.b, %i.r
  %or.cond48 = select i1 %or.cond, i1 true, i1 %i.s
  br i1 %or.cond48, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.t = load i32, ptr @_ZN4Luau7AstRttiINS_9AstStatIfEE5valueE, align 4, !tbaa !13
  %i.u = icmp ne i32 %i.b, %i.t
  %.not38.not.not.not = or i1 %i.u, %.not.not49
  br i1 %.not38.not.not.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.tr73, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !77
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78 ; 2 uses
  %i.ac = icmp eq ptr %i.w, %i.ab
  br i1 %i.ac, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !79
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = mul i64 %i.ag, -4658895280553007687     ; 2 uses
  %i.ai = lshr i64 %i.ah, 31
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.aq, %bb.j ]
  %.01828.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ap, %bb.j ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.af       ; 2 uses
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %.01929.i.i.i ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !78 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.w
  br i1 %i.an, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq ptr %i.am, %i.ab
  br i1 %i.ao, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.aq = add i64 %i.ap, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ap, %i.af
  br i1 %.not.i.i.i, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread, label %bb.h, !llvm.loop !2

bb.k:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !82
  switch i32 %i.as, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread45 [
    i32 0, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread
    i32 1, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread
    i32 2, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
  ]

_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !83, !range !52, !noundef !53
  %2 = trunc nuw i8 %i.au to i1
  br i1 %2, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread45, label %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread

_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread45: ; preds = %bb.k, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.tr73, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85
  br label %.thread65.sink.split

_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread: ; preds = %bb.i, %bb.j, %bb.e, %bb.f, %bb.k, %bb.k, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit
  %i.ax = tail call noundef zeroext i1 @_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.w)
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr73, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !84 ; 2 uses
  %.not39 = icmp eq ptr %i.az, null               ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread
  br i1 %.not39, label %.loopexit, label %.thread65.sink.split

bb.m:                                             ; preds = %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr73, i64 48
  br i1 %.not39, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr73, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !85
  %i.bd = tail call noundef zeroext i1 @_ZN4Luau7Compile16alwaysTerminatesERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.bc)
  br i1 %i.bd, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !84
  br label %.thread65.sink.split

.thread65.sink.split:                             ; preds = %bb.l, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread45, %bb.o
  %.sink = phi ptr [ %i.be, %bb.o ], [ %i.aw, %_ZN4Luau7Compile14isConstantTrueERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_.exit.thread45 ], [ %i.az, %bb.l ]
  br label %tailrecurse

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.n, %bb.m, %bb.d, %bb.l, %.preheader, %.thread
  %.3 = phi i1 [ false, %bb.n ], [ true, %.thread ], [ false, %.preheader ], [ false, %bb.m ], [ false, %bb.d ], [ false, %bb.l ], [ %i.m, %bb.c ], [ %i.m, %bb.b ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau7Compile15isConstantFalseERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEES3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = add i64 %i.h, -1                         ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.m, %bb.c ], [ %i.t, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.s, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.i            ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.01929.i.i ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78   ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq ptr %i.p, %i.e
  br i1 %i.r, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.t = add i64 %i.s, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.s, %i.i
  br i1 %.not.i.i, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.d, !llvm.loop !2

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !82
  switch i32 %i.v, label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread [
    i32 2, label %bb.h
    i32 1, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !83, !range !52, !noundef !53
  %2 = trunc nuw i8 %i.x to i1
  %3 = xor i1 %2, true
  br label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit:    ; preds = %bb.g
  br label %_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZNK4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.a, %bb.b, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  %i.y = phi i1 [ false, %bb.g ], [ %3, %bb.h ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.y
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
