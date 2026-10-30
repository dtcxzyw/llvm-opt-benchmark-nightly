Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemoryPromotion?download=true
inline.NumInlined: 654
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL15insertCopyLoopsRN4mlir20ImplicitLocOpBuilderENS_5ValueES2_:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !29
  store <2 x i64> %broadcast.splat, ptr %i.al, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ai, %middle.block ]
  %.068.i.i.i.i.i.ph = phi i64 [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 %i.ag, ptr %.09.i.i.i.i.i, align 8, !tbaa !29
  %i.an = add i64 %.068.i.i.i.i.i, -1             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !85

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.ap = trunc nuw i64 %i.ab to i32
  %i.aq = add i32 %i.ad, %i.ap
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i
  %.sink.i = phi i32 [ %i.aq, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i ], [ %i.w, %bb.c ]
  store i32 %.sink.i, ptr %i.i, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit: ; preds = %bb.b, %.sink.split.i
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !46  ; 4 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp eq i32 %i.w, %i.ar
  br i1 %i.at, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit55, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit
  %i.au = icmp ult i32 %i.w, %i.ar
  br i1 %i.au, label %.sink.split.i51, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sub nsw i64 %i.x, %i.as                 ; 6 uses
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !47
  %.not.i.i.i.i43 = icmp ugt i32 %i.w, %i.aw
  br i1 %.not.i.i.i.i43, label %bb.h, label %.lr.ph.preheader.i.i.i.i.i44, !prof !93

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.k, i64 noundef %i.x, i64 noundef 8) #12
  %.pre.i.i53 = load i32, ptr %i.l, align 8, !tbaa !46 ; 2 uses
  %.pre.i54 = zext i32 %.pre.i.i53 to i64
  br label %.lr.ph.preheader.i.i.i.i.i44

.lr.ph.preheader.i.i.i.i.i44:                     ; preds = %bb.h, %bb.g
  %.pre-phi.i45 = phi i64 [ %i.as, %bb.g ], [ %.pre.i54, %bb.h ]
  %i.ax = phi i32 [ %i.ar, %bb.g ], [ %.pre.i.i53, %bb.h ]
  %i.ay = load ptr, ptr %8, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi.i45 ; 3 uses
  %i.ba = ptrtoint ptr %i.t to i64                ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check148, label %.lr.ph.i.i.i.i.i46.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i44
  %n.vec150 = and i64 %i.av, -4                   ; 3 uses
  %i.bb = shl nsw i64 %n.vec150, 3
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bd = and i64 %i.av, 3
  %broadcast.splatinsert151 = insertelement <2 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat152 = shufflevector <2 x i64> %broadcast.splatinsert151, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph149
  %index154 = phi i64 [ 0, %vector.ph149 ], [ %index.next156, %vector.body153 ] ; 2 uses
  %i.be = shl i64 %index154, 3
  %next.gep155 = getelementptr i8, ptr %i.az, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep155, i64 16
  store <2 x i64> %broadcast.splat152, ptr %next.gep155, align 8, !tbaa !29
  store <2 x i64> %broadcast.splat152, ptr %i.bf, align 8, !tbaa !29
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.bg, label %middle.block157, label %vector.body153, !llvm.loop !86

middle.block157:                                  ; preds = %vector.body153
  %cmp.n158 = icmp eq i64 %i.av, %n.vec150
  br i1 %cmp.n158, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i50, label %.lr.ph.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i46.preheader:                     ; preds = %.lr.ph.preheader.i.i.i.i.i44, %middle.block157
  %.09.i.i.i.i.i47.ph = phi ptr [ %i.az, %.lr.ph.preheader.i.i.i.i.i44 ], [ %i.bc, %middle.block157 ]
  %.068.i.i.i.i.i48.ph = phi i64 [ %i.av, %.lr.ph.preheader.i.i.i.i.i44 ], [ %i.bd, %middle.block157 ]
  br label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader, %.lr.ph.i.i.i.i.i46
  %.09.i.i.i.i.i47 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i46 ], [ %.09.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i46.preheader ] ; 2 uses
  %.068.i.i.i.i.i48 = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i46 ], [ %.068.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i46.preheader ]
  store i64 %i.ba, ptr %.09.i.i.i.i.i47, align 8, !tbaa !29
  %i.bh = add i64 %.068.i.i.i.i.i48, -1           ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 8
  %.not.i.i.i.i.i49 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i.i49, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i50, label %.lr.ph.i.i.i.i.i46, !llvm.loop !87

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i50: ; preds = %.lr.ph.i.i.i.i.i46, %middle.block157
  %i.bj = trunc nuw i64 %i.av to i32
  %i.bk = add i32 %i.ax, %i.bj
  br label %.sink.split.i51

.sink.split.i51:                                  ; preds = %bb.f, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i50
  %.sink.i52 = phi i32 [ %i.bk, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i50 ], [ %i.w, %bb.f ]
  store i32 %.sink.i52, ptr %i.l, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit55

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit55: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit, %.sink.split.i51
  %i.bl = load i32, ptr %i.o, align 8, !tbaa !46  ; 4 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = icmp eq i32 %i.w, %i.bl
  br i1 %i.bn, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68thread-pre-split, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit55
  %i.bo = icmp ult i32 %i.w, %i.bl
  br i1 %i.bo, label %.sink.split.i64, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = sub nsw i64 %i.x, %i.bm                 ; 6 uses
  %i.bq = load i32, ptr %i.p, align 4, !tbaa !47
  %.not.i.i.i.i56 = icmp ugt i32 %i.w, %i.bq
  br i1 %.not.i.i.i.i56, label %bb.k, label %.lr.ph.preheader.i.i.i.i.i57, !prof !93

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.n, i64 noundef %i.x, i64 noundef 8) #12
  %.pre.i.i66 = load i32, ptr %i.o, align 8, !tbaa !46 ; 2 uses
  %.pre.i67 = zext i32 %.pre.i.i66 to i64
  br label %.lr.ph.preheader.i.i.i.i.i57

.lr.ph.preheader.i.i.i.i.i57:                     ; preds = %bb.k, %bb.j
  %.pre-phi.i58 = phi i64 [ %i.bm, %bb.j ], [ %.pre.i67, %bb.k ]
  %i.br = phi i32 [ %i.bl, %bb.j ], [ %.pre.i.i66, %bb.k ]
  %i.bs = load ptr, ptr %9, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.pre-phi.i58 ; 3 uses
  %i.bu = ptrtoint ptr %i.t to i64                ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check162, label %.lr.ph.i.i.i.i.i59.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i57
  %n.vec164 = and i64 %i.bp, -4                   ; 3 uses
  %i.bv = shl nsw i64 %n.vec164, 3
  %i.bw = getelementptr i8, ptr %i.bt, i64 %i.bv
  %i.bx = and i64 %i.bp, 3
  %broadcast.splatinsert165 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat166 = shufflevector <2 x i64> %broadcast.splatinsert165, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph163
  %index168 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body167 ] ; 2 uses
  %i.by = shl i64 %index168, 3
  %next.gep169 = getelementptr i8, ptr %i.bt, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep169, i64 16
  store <2 x i64> %broadcast.splat166, ptr %next.gep169, align 8, !tbaa !29
  store <2 x i64> %broadcast.splat166, ptr %i.bz, align 8, !tbaa !29
  %index.next170 = add nuw i64 %index168, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.ca, label %middle.block171, label %vector.body167, !llvm.loop !88

middle.block171:                                  ; preds = %vector.body167
  %cmp.n172 = icmp eq i64 %i.bp, %n.vec164
  br i1 %cmp.n172, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i63, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %.lr.ph.preheader.i.i.i.i.i57, %middle.block171
  %.09.i.i.i.i.i60.ph = phi ptr [ %i.bt, %.lr.ph.preheader.i.i.i.i.i57 ], [ %i.bw, %middle.block171 ]
  %.068.i.i.i.i.i61.ph = phi i64 [ %i.bp, %.lr.ph.preheader.i.i.i.i.i57 ], [ %i.bx, %middle.block171 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader, %.lr.ph.i.i.i.i.i59
  %.09.i.i.i.i.i60 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i59 ], [ %.09.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader ] ; 2 uses
  %.068.i.i.i.i.i61 = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i59 ], [ %.068.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader ]
  store i64 %i.bu, ptr %.09.i.i.i.i.i60, align 8, !tbaa !29
  %i.cb = add i64 %.068.i.i.i.i.i61, -1           ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i60, i64 8
  %.not.i.i.i.i.i62 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.i62, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i63, label %.lr.ph.i.i.i.i.i59, !llvm.loop !89

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i63: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block171
  %i.cd = trunc nuw i64 %i.bp to i32
  %i.ce = add i32 %i.br, %i.cd
  br label %.sink.split.i64

.sink.split.i64:                                  ; preds = %bb.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i63
  %.sink.i65 = phi i32 [ %i.ce, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit.i63 ], [ %i.w, %bb.i ]
  store i32 %.sink.i65, ptr %i.o, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68thread-pre-split

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68thread-pre-split: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit55, %.sink.split.i64
  %.pre = load i32, ptr %i.i, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68thread-pre-split, %bb.a
  %i.cf = phi i32 [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68thread-pre-split ], [ %.pre117, %bb.a ] ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add i64 %i.g, %i.cg                     ; 2 uses
  %i.ci = load i32, ptr %i.j, align 4, !tbaa !47
  %i.cj = zext i32 %i.ci to i64
  %.not.i.i.i = icmp ugt i64 %i.ch, %i.cj
  br i1 %.not.i.i.i, label %bb.l, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i, !prof !93

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.h, i64 noundef %i.ch, i64 noundef 8) #12
  %.pre.i70 = load i32, ptr %i.i, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i: ; preds = %bb.l, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68
  %i.ck = phi i32 [ %i.cf, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6resizeEmS2_.exit68 ], [ %.pre.i70, %bb.l ] ; 2 uses
  %.not7.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load ptr, ptr %7, align 8, !tbaa !45
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 3 uses
  %i.co = ptrtoint ptr %i.r to i64                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.g, 4
  br i1 %min.iters.check176, label %.lr.ph.i.i.i.i.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec178 = and i64 %i.g, -4                    ; 3 uses
  %i.cp = shl i64 %n.vec178, 3
  %i.cq = getelementptr i8, ptr %i.cn, i64 %i.cp
  %i.cr = and i64 %i.g, 3
  %broadcast.splatinsert179 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat180 = shufflevector <2 x i64> %broadcast.splatinsert179, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body181 ] ; 2 uses
  %i.cs = shl i64 %index182, 3
  %next.gep183 = getelementptr i8, ptr %i.cn, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep183, i64 16
  store <2 x i64> %broadcast.splat180, ptr %next.gep183, align 8, !tbaa !29
  store <2 x i64> %broadcast.splat180, ptr %i.ct, align 8, !tbaa !29
  %index.next184 = add nuw i64 %index182, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.cu, label %middle.block185, label %vector.body181, !llvm.loop !90

middle.block185:                                  ; preds = %vector.body181
  %cmp.n186 = icmp eq i64 %i.g, %n.vec178
  br i1 %cmp.n186, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block185
  %.09.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.preheader.i.i.i.i ], [ %i.cq, %middle.block185 ]
  %.068.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.preheader.i.i.i.i ], [ %i.cr, %middle.block185 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  store i64 %i.co, ptr %.09.i.i.i.i, align 8, !tbaa !29
  %i.cv = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i69 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i69, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !91

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block185, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE28reserveForParamAndGetAddressERS2_m.exit.i
  %i.cx = trunc i64 %i.g to i32
  %i.cy = add i32 %i.ck, %i.cx                    ; 4 uses
  store i32 %i.cy, ptr %i.i, align 8, !tbaa !46
  %i.cz = load i32, ptr %i.m, align 4, !tbaa !47
  %i.da = icmp ugt i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.m, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

bb.m:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit
  %i.db = zext i32 %i.cy to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.k, i64 noundef %i.db, i64 noundef 8) #12
  %.pre118 = load i32, ptr %i.i, align 8, !tbaa !46
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit, %bb.m
  %i.dc = phi i32 [ %i.cy, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendEmS2_.exit ], [ %.pre118, %bb.m ] ; 2 uses
  %i.dd = load i32, ptr %i.p, align 4, !tbaa !47
  %i.de = icmp ugt i32 %i.dc, %i.dd
  br i1 %i.de, label %bb.n, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit71

bb.n:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  %i.df = zext i32 %i.dc to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.n, i64 noundef %i.df, i64 noundef 8) #12
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit71

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit71: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !48
  %i.dg = icmp sgt i64 %i.g, 0
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit71
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit74, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.dl = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.dm, ptr %10, align 8, !tbaa !45
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 10 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !46
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 4 uses
  store i32 3, ptr %i.do, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.dp, ptr %11, align 8, !tbaa !45
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  store i32 0, ptr %i.dq, align 8, !tbaa !46
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 4 uses
  store i32 3, ptr %i.dr, align 4, !tbaa !47
  %i.ds = call ptr @_ZN4mlir3gpu10ThreadIdOp6createERNS_20ImplicitLocOpBuilderENS_4TypeENS0_9DimensionE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.dl, i32 noundef 0) #12
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -16 ; 2 uses
  %i.du = load i32, ptr %i.dn, align 8, !tbaa !46 ; 2 uses
  %i.dv = load i32, ptr %i.do, align 4, !tbaa !47
  %.not.i78 = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i78, label %bb.y, label %bb.x, !prof !49

bb.o:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit74
  %.sroa.0.0.copyload.i72 = load ptr, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.di, ptr %3, align 8, !tbaa !45
  store i32 0, ptr %i.dj, align 8, !tbaa !46
  store i32 1, ptr %i.dk, align 4, !tbaa !47
  call void @_ZN4mlir9OpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERiEEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.sroa.0.0.copyload.i72, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.dw = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %.sroa.04.0.copyload.i.i = load ptr, ptr %i.dw, align 8, !tbaa !29 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.di
  br i1 %i.dx, label %_ZN4mlir20ImplicitLocOpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERiEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeEDpOT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.dw) #12
  br label %_ZN4mlir20ImplicitLocOpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERiEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeEDpOT0_.exit

_ZN4mlir20ImplicitLocOpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERiEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeEDpOT0_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.dy = load i32, ptr %i.l, align 8, !tbaa !46  ; 2 uses
  %i.dz = load i32, ptr %i.m, align 4, !tbaa !47
  %.not.i = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !49

bb.q:                                             ; preds = %_ZN4mlir20ImplicitLocOpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERiEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeEDpOT0_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.sroa.04.0.copyload.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.r:                                             ; preds = %_ZN4mlir20ImplicitLocOpBuilder12createOrFoldINS_6memref5DimOpEJRNS_5ValueERiEEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeEDpOT0_.exit
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %8, align 8, !tbaa !45
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store ptr %.sroa.04.0.copyload.i.i, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.l, align 8, !tbaa !46
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.l, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.q, %bb.r
  %i.ef = load i32, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %i.eg = load i32, ptr %i.p, align 4, !tbaa !47
  %.not.i73 = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i73, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.t)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit74

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %9, align 8, !tbaa !45
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  store ptr %i.t, ptr %i.ej, align 1
  %i.ek = load i32, ptr %i.o, align 8, !tbaa !46
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.o, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit74

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit74: ; preds = %bb.s, %bb.t
  %i.em = load i32, ptr %i.b, align 4, !tbaa !48
  %i.en = add nsw i32 %i.em, 1                    ; 2 uses
  store i32 %i.en, ptr %i.b, align 4, !tbaa !48
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp sgt i64 %i.g, %i.eo
  br i1 %i.ep, label %bb.o, label %._crit_edge, !llvm.loop !92

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit81.2
  %i.eq = icmp ugt i32 %i.hw, 8
  br i1 %i.eq, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i: ; preds = %bb.u
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull %i.hy, i64 noundef %i.hx, i64 noundef 8) #12
  %.pre.i.i.i = load i32, ptr %i.hz, align 8, !tbaa !46 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.hw, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i75 = load ptr, ptr %12, align 8, !tbaa !45
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.u
  %i.er = phi ptr [ %.pre.i75, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.hy, %bb.u ]
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.u ] ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %.pre-phi.i.i3.i
  %i.et = sub nsw i64 %i.hx, %.pre-phi.i.i3.i
  %i.eu = shl nsw i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.es, i8 0, i64 %i.eu, i1 false), !tbaa !31
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i.i.i
end_hunk_0
