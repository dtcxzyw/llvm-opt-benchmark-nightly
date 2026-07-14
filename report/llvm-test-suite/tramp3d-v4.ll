inline.NumInlined: 28156
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_:bb.a
bb.h:                                             ; preds = %bb.f
  %i.bn = getelementptr i8, ptr %i.c, i64 %i.ao   ; 7 uses
  %i.bo = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i27.preheader, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.h
  %i.bq = and i64 %i.ao, 16
  %lcmp.mod83.not = icmp eq i64 %i.bq, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.i27.prol.loopexit, label %.lr.ph.i.i.i.i.i27.prol

.lr.ph.i.i.i.i.i27.prol:                          ; preds = %.lr.ph.i.i.i.i.i27.preheader
  %.not.i.i.i.i.i.i31.prol = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i.i31.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol: ; preds = %.lr.ph.i.i.i.i.i27.prol
  %i.br = load double, ptr %i.c, align 8, !tbaa !247
  store double %i.br, ptr %i.j, align 8, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !247
  store double %i.bu, ptr %i.bs, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i27.prol
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bx = add nsw i64 %i.bo, -1
  br label %.lr.ph.i.i.i.i.i27.prol.loopexit

.lr.ph.i.i.i.i.i27.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i27.preheader
  %.012.i.i.i.i.i28.unr = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bx, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %.0811.i.i.i.i.i29.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bw, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %.0910.i.i.i.i.i30.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bv, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %i.by = icmp eq i64 %i.ao, 16
  br i1 %i.by, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1
  %.012.i.i.i.i.i28 = phi i64 [ %i.cl, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.012.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.ck, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.0811.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.cj, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.0910.i.i.i.i.i30.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %.0811.i.i.i.i.i29, %.0910.i.i.i.i.i30
  br i1 %.not.i.i.i.i.i.i31, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i27
  %i.bz = load double, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !247
  store double %i.bz, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !247
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !247
  store double %i.cc, ptr %i.ca, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i27
  %.not.i.i.i.i.i.i31.1 = icmp eq ptr %.0811.i.i.i.i.i29, %.0910.i.i.i.i.i30
  br i1 %.not.i.i.i.i.i.i31.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !247
  store double %i.cf, ptr %i.cd, align 8, !tbaa !247
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !247
  store double %i.ci, ptr %i.cg, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 32
  %i.cl = add nsw i64 %.012.i.i.i.i.i28, -2
  %i.cm = icmp sgt i64 %.012.i.i.i.i.i28, 2
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !676

_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i27.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bn, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit
  %i.cn = add i64 %i.l, %i.d
  %i.co = add i64 %i.e, %i.an
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = add i64 %i.cp, -16                      ; 2 uses
  %i.cr = lshr i64 %i.cq, 4
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ct = add i64 %i.l, %i.d
  %i.cu = add i64 %i.ct, -16
  %i.cv = add i64 %i.e, %i.an
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = and i64 %i.cw, -16                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.am, i64 %i.cx
  %scevgep = getelementptr i8, ptr %i.cy, i64 16
  %i.cz = add i64 %i.cx, %i.an
  %i.da = add i64 %i.cz, 16
  %i.db = sub i64 %i.da, %i.l
  %scevgep49 = getelementptr i8, ptr %i.c, i64 %i.db
  %bound0 = icmp ult ptr %i.am, %scevgep49
  %bound1 = icmp ult ptr %i.bn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, 2305843009213693950     ; 3 uses
  %i.dc = shl i64 %n.vec, 4                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.am, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.bn, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 4                       ; 3 uses
  %i.dg = or disjoint i64 %i.df, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.df
  %next.gep50 = getelementptr i8, ptr %i.am, i64 %i.dg
  %next.gep51 = getelementptr i8, ptr %i.bn, i64 %i.df
  %next.gep52 = getelementptr i8, ptr %i.bn, i64 %i.dg
  %wide.load = load <2 x double>, ptr %next.gep51, align 8, !tbaa !247, !alias.scope !677
  %wide.load53 = load <2 x double>, ptr %next.gep52, align 8, !tbaa !247, !alias.scope !677
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !680, !noalias !677
  store <2 x double> %wide.load53, ptr %next.gep50, align 8, !tbaa !247, !alias.scope !680, !noalias !677
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !682

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader80

.lr.ph.i.i.i.i.preheader80:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.preheader ], [ %i.dd, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader80, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader80 ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader80 ] ; 3 uses
  %i.di = load double, ptr %.0810.i.i.i.i, align 8, !tbaa !247
  store double %i.di, ptr %.011.i.i.i.i, align 8, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !247
  store double %i.dl, ptr %i.dj, align 8, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.dm, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !683

_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i, %middle.block, %bb.g, %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.do = phi ptr [ %i.j, %middle.block ], [ %i.p, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %i.j, %.lr.ph.i.i.i.i.i25.prol.loopexit ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.f
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !276
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !361
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !462
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264  ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !267    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #45
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 11 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !267
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !264
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !268
  %i.o = load ptr, ptr %3, align 8, !tbaa !449    ; 9 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !449  ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i
  %5 = add i64 %i.r, -8
  %i.s = sub i64 %5, %i.p                         ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.v = add i64 %i.r, -8
  %i.w = sub i64 %i.v, %i.p
  %i.x = and i64 %i.w, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.y
  %scevgep20 = getelementptr i8, ptr %i.o, i64 %i.y
  %bound0 = icmp ult ptr %i.k, %scevgep20
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %i.ad
  %next.gep22 = getelementptr i8, ptr %i.o, i64 %i.ac
  %next.gep23 = getelementptr i8, ptr %i.o, i64 %i.ad
  %wide.vec = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !236, !alias.scope !684
  %wide.vec25 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !236, !alias.scope !684
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !687, !noalias !684
  store <4 x i32> %wide.vec25, ptr %next.gep21, align 4, !tbaa !4, !alias.scope !687, !noalias !684
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader54 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader54 ] ; 3 uses
  %i.af = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.af, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !236
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !690

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit:     ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i ], [ %i.aa, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !264
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !276 ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !279   ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i4, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit
  %i.as = icmp ugt i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %bb.e, label %_ZNSt15__new_allocatorI6VectorILi2Ed4FullEE8allocateEmPKv.exit.i.i.i.i, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI6VectorILi2Ed4FullEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #45
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorI6VectorILi2Ed4FullEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit
  %i.au = phi ptr [ %i.at, %_ZNSt15__new_allocatorI6VectorILi2Ed4FullEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit ] ; 11 uses
  store ptr %i.au, ptr %i.al, align 8, !tbaa !279
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !276
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !280
  %i.ay = load ptr, ptr %4, align 8, !tbaa !461   ; 9 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !461 ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %.not7.i.i.i.i.i5 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not7.i.i.i.i.i5, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i6.preheader

.lr.ph.i.i.i.i.i6.preheader:                      ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i
  %6 = add i64 %i.bb, -16
  %i.bc = sub i64 %6, %i.az                       ; 2 uses
  %i.bd = lshr i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check37 = icmp ult i64 %i.bc, 240
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i6.preheader53, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph.i.i.i.i.i6.preheader
  %i.bf = add i64 %i.bb, -16
  %i.bg = sub i64 %i.bf, %i.az
  %i.bh = and i64 %i.bg, -16
  %i.bi = add i64 %i.bh, 16                       ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.au, i64 %i.bi
  %scevgep32 = getelementptr i8, ptr %i.ay, i64 %i.bi
  %bound033 = icmp ult ptr %i.au, %scevgep32
  %bound134 = icmp ult ptr %i.ay, %scevgep31
  %found.conflict35 = and i1 %bound033, %bound134
  br i1 %found.conflict35, label %.lr.ph.i.i.i.i.i6.preheader53, label %vector.ph38

vector.ph38:                                      ; preds = %vector.memcheck30
  %n.vec40 = and i64 %i.be, 2305843009213693950   ; 3 uses
  %i.bj = shl i64 %n.vec40, 4                     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ay, i64 %i.bj
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph38
  %index42 = phi i64 [ 0, %vector.ph38 ], [ %index.next48, %vector.body41 ] ; 2 uses
  %i.bm = shl i64 %index42, 4                     ; 3 uses
  %i.bn = or disjoint i64 %i.bm, 16               ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.au, i64 %i.bm
  %next.gep44 = getelementptr i8, ptr %i.au, i64 %i.bn
  %next.gep45 = getelementptr i8, ptr %i.ay, i64 %i.bm
  %next.gep46 = getelementptr i8, ptr %i.ay, i64 %i.bn
  %wide.load = load <2 x double>, ptr %next.gep45, align 8, !tbaa !247, !alias.scope !691
  %wide.load47 = load <2 x double>, ptr %next.gep46, align 8, !tbaa !247, !alias.scope !691
  store <2 x double> %wide.load, ptr %next.gep43, align 8, !tbaa !247, !alias.scope !694, !noalias !691
  store <2 x double> %wide.load47, ptr %next.gep44, align 8, !tbaa !247, !alias.scope !694, !noalias !691
  %index.next48 = add nuw i64 %index42, 2         ; 2 uses
  %i.bo = icmp eq i64 %index.next48, %n.vec40
  br i1 %i.bo, label %middle.block49, label %vector.body41, !llvm.loop !696

middle.block49:                                   ; preds = %vector.body41
  %cmp.n50 = icmp eq i64 %i.be, %n.vec40
  br i1 %cmp.n50, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i6.preheader53

.lr.ph.i.i.i.i.i6.preheader53:                    ; preds = %vector.memcheck30, %.lr.ph.i.i.i.i.i6.preheader, %middle.block49
  %.09.i.i.i.i.i7.ph = phi ptr [ %i.au, %vector.memcheck30 ], [ %i.au, %.lr.ph.i.i.i.i.i6.preheader ], [ %i.bk, %middle.block49 ]
  %.sroa.04.08.i.i.i.i.i8.ph = phi ptr [ %i.ay, %vector.memcheck30 ], [ %i.ay, %.lr.ph.i.i.i.i.i6.preheader ], [ %i.bl, %middle.block49 ]
  br label %.lr.ph.i.i.i.i.i6

.lr.ph.i.i.i.i.i6:                                ; preds = %.lr.ph.i.i.i.i.i6.preheader53, %.lr.ph.i.i.i.i.i6
  %.09.i.i.i.i.i7 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i6 ], [ %.09.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i6.preheader53 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i6 ], [ %.sroa.04.08.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i6.preheader53 ] ; 3 uses
  %i.bp = load double, ptr %.sroa.04.08.i.i.i.i.i8, align 8, !tbaa !247
  store double %i.bp, ptr %.09.i.i.i.i.i7, align 8, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !247
  store double %i.bs, ptr %i.bq, align 8, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7, i64 16 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bt, %i.ba
  br i1 %.not.i.i.i.i.i9, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i6, !llvm.loop !697

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i6, %middle.block49, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i
  %.0.lcssa.i.i.i.i.i10 = phi ptr [ %i.au, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i ], [ %i.bk, %middle.block49 ], [ %i.bu, %.lr.ph.i.i.i.i.i6 ]
  store ptr %.0.lcssa.i.i.i.i.i10, ptr %i.av, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi2EED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat($_ZN18CanonicalCenteringILi2EED5Ev) align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN18CanonicalCenteringILi2EE13class_count_mE, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr @_ZN18CanonicalCenteringILi2EE13class_count_mE, align 4, !tbaa !4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader12.preheader, label %bb.l

.preheader12.preheader:                           ; preds = %bb.a
  %.pre18 = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %bb.j
  %i.d = phi ptr [ %.pre18, %.preheader12.preheader ], [ %i.bh, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.preheader12.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !260  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !262  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.c

bb.b:                                             ; preds = %bb.j
  %i.i = icmp eq ptr %i.bh, null
  br i1 %i.i, label %bb.l, label %bb.k

bb.c:                                             ; preds = %.preheader12
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx = mul i64 %i.k, 56                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN9CenteringILi2EED2Ev.exit
  %i.n = phi ptr [ %i.o, %_ZN9CenteringILi2EED2Ev.exit ], [ %i.m, %.preheader.preheader ] ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -56 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !280
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %.preheader
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 -48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !267  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i, label %_ZN9CenteringILi2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !268
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #48
  br label %_ZN9CenteringILi2EED2Ev.exit

_ZN9CenteringILi2EED2Ev.exit:                     ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i, %bb.e
  %i.ad = icmp eq ptr %i.o, %i.g
  br i1 %i.ad, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN9CenteringILi2EED2Ev.exit, %bb.c
  %i.ae = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #48
  %.pre19 = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre19, i64 %indvars.iv
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !260
  br label %bb.f

bb.f:                                             ; preds = %.preheader12, %.loopexit
  %i.af = phi ptr [ %i.f, %.preheader12 ], [ %.pre20, %.loopexit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !262 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %.idx.1 = mul i64 %i.ak, 56                     ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit33, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.1
  br label %.preheader.1

.preheader.1:                                     ; preds = %_ZN9CenteringILi2EED2Ev.exit.1, %.preheader.preheader.1
  %i.an = phi ptr [ %i.ao, %_ZN9CenteringILi2EED2Ev.exit.1 ], [ %i.am, %.preheader.preheader.1 ] ; 5 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -56 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1, label %bb.h

bb.h:                                             ; preds = %.preheader.1
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !280
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1: ; preds = %bb.h, %.preheader.1
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 -48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i.1 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i1.i.1, label %_ZN9CenteringILi2EED2Ev.exit.1, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1
  %i.ay = getelementptr inbounds i8, ptr %i.an, i64 -32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !268
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #48
  br label %_ZN9CenteringILi2EED2Ev.exit.1

_ZN9CenteringILi2EED2Ev.exit.1:                   ; preds = %bb.i, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1
  %i.bd = icmp eq ptr %i.ao, %i.ah
  br i1 %i.bd, label %.loopexit33, label %.preheader.1
end_hunk_0
begin_hunk_1_@_ZN12DataBlockPtrIiLb0EED2Ev:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13ObserverEvent, i64 16), ptr %1, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !2254
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12 ; 2 uses
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr @_ZN6Unique6next_sE, align 8, !tbaa !12
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !2256
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1) #47, !inline_history !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  br label %_ZN16SingleObservableIiED2Ev.exit.i.i.i.i

_ZN16SingleObservableIiED2Ev.exit.i.i.i.i:        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.af = getelementptr inbounds nuw i8, ptr %.pr9, i64 32
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !1680, !range !58, !noundef !59
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i

bb.j:                                             ; preds = %_ZN16SingleObservableIiED2Ev.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr9, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1676 ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #48
  br label %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i

_ZN19DataBlockControllerIiED2Ev.exit.i.i.i:       ; preds = %bb.k, %bb.j, %_ZN16SingleObservableIiED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr9, i64 noundef 72) #48
  br label %_ZN18RefCountedBlockPtrIiLb0E19DataBlockControllerIiEED2Ev.exit

_ZN18RefCountedBlockPtrIiLb0E19DataBlockControllerIiEED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiP12InformStreamESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2264
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiP12InformStreamESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2265 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #48
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2266

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #34

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #31

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #31

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #30

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #31

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #30

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #31

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #35

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #32

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #35

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #31

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_emplace_uniqueIJRS2_EEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %1, align 4                ; 2 uses
  store i64 %i.c, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.d, align 8, !tbaa !69 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  %i.f = trunc i64 %i.c to i32                    ; 3 uses
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = icmp sgt i32 %i.h, %i.f                  ; 2 uses
  %.in.v.i = select i1 %i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2267

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = icmp eq ptr %.019.lcssa29.i, %i.k
  br i1 %i.l, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #50 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.h, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.m, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.o = icmp slt i32 %i.n, %i.f
  br i1 %i.o, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.e
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = icmp sgt i32 %i.r, %i.f
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.t = phi i1 [ %i.s, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #47
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !76
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !76
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #48
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %.not88 = icmp eq ptr %2, %3
  br i1 %.not88, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 10 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c                       ; 7 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264  ; 35 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 5 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 10 uses
  %i.r = sub i64 %i.b, %i.c
  %i.s = add i64 %i.r, -8                         ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check212 = icmp ult i64 %i.s, 520
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %bb.d
  %i.v = add i64 %i.b, -8
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -8                         ; 4 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep187 = getelementptr i8, ptr %i.y, i64 4 ; 3 uses
  %scevgep188 = getelementptr i8, ptr %i.i, i64 4 ; 3 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep189 = getelementptr i8, ptr %i.z, i64 8 ; 3 uses
  %i.aa = add i64 %i.x, %i.c
  %i.ab = add i64 %i.aa, 4
  %i.ac = sub i64 %i.ab, %i.b
  %scevgep190 = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %i.ad = add i64 %i.c, 4
  %i.ae = sub i64 %i.ad, %i.b
  %scevgep191 = getelementptr i8, ptr %i.i, i64 %i.ae ; 2 uses
  %i.af = add i64 %i.x, %i.c
  %i.ag = add i64 %i.af, 8
  %i.ah = sub i64 %i.ag, %i.b
  %scevgep192 = getelementptr i8, ptr %i.i, i64 %i.ah ; 2 uses
  %bound0193 = icmp ult ptr %i.i, %scevgep189
  %bound1194 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0196 = icmp ult ptr %i.i, %scevgep190
  %bound1197 = icmp ult ptr %i.q, %scevgep187
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx = or i1 %found.conflict195, %found.conflict198
  %bound0199 = icmp ult ptr %i.i, %scevgep192
  %bound1200 = icmp ult ptr %scevgep191, %scevgep187
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep188, %scevgep190
  %bound1204 = icmp ult ptr %i.q, %scevgep189
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %scevgep188, %scevgep192
  %bound1208 = icmp ult ptr %scevgep191, %scevgep189
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  br i1 %conflict.rdx210, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck186
  %n.vec215 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.ai = shl i64 %n.vec215, 3                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ai
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph213
  %index217 = phi i64 [ 0, %vector.ph213 ], [ %index.next230, %vector.body216 ] ; 2 uses
  %i.al = shl i64 %index217, 3                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.i, i64 %i.al
  %next.gep219 = getelementptr i8, ptr %i.i, i64 %i.am
  %next.gep220 = getelementptr i8, ptr %i.q, i64 %i.al
  %next.gep221 = getelementptr i8, ptr %i.q, i64 %i.am
  %wide.vec222 = load <4 x i32>, ptr %next.gep220, align 4, !tbaa !236
  %wide.vec225 = load <4 x i32>, ptr %next.gep221, align 4, !tbaa !236
  store <4 x i32> %wide.vec222, ptr %next.gep218, align 4, !tbaa !4
  store <4 x i32> %wide.vec225, ptr %next.gep219, align 4, !tbaa !4
  %index.next230 = add nuw i64 %index217, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next230, %n.vec215
  br i1 %i.an, label %middle.block231, label %vector.body216, !llvm.loop !2268

middle.block231:                                  ; preds = %vector.body216
  %cmp.n232 = icmp eq i64 %i.u, %n.vec215
  br i1 %cmp.n232, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck186, %bb.d, %middle.block231
  %.09.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck186 ], [ %i.i, %bb.d ], [ %i.aj, %middle.block231 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck186 ], [ %i.q, %bb.d ], [ %i.ak, %middle.block231 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ao = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ao, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !236
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2269

_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block231
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.au, ptr %i.h, align 8, !tbaa !264
  %i.av = ptrtoint ptr %i.q to i64
  %i.aw = sub i64 %i.av, %i.m
  %i.ax = ashr exact i64 %i.aw, 3                 ; 5 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i43.prol:                          ; preds = %.lr.ph.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i43.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i43.prol ], [ %i.ax, %.lr.ph.i.i.i.i.i43.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i43.prol ], [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i43.prol ], [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i43.prol ], [ 0, %.lr.ph.i.i.i.i.i43.preheader ]
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !236
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  %i.bd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !236
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !4
  %i.bf = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol, !llvm.loop !2270

.lr.ph.i.i.i.i.i43.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i43.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i43.prol ]
  %i.bg = icmp ult i64 %i.ax, 4
  br i1 %i.bg, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i43
  %.010.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i43 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i43 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i43 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %i.bh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !236
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !4
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !236
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !4
  %i.bn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !236
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !4
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  %i.br = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !236
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !4
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !236
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !4
  %i.bw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !236
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !4
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !236
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !4
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  %i.cd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !236
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !4
  %i.cf = add nsw i64 %.010.i.i.i.i.i, -4
  %i.cg = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, !llvm.loop !2271
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader364

.lr.ph.i.i.i.i.preheader364:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader364, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader364 ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader364 ] ; 3 uses
  %i.dt = load i32, ptr %.sroa.04.08.i.i.i.i, align 4, !tbaa !236
  store i32 %i.dt, ptr %.09.i.i.i.i, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !236
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.dx, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2285

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dz = sub nsw i64 %i.e, %i.o
  %i.ea = getelementptr [8 x i8], ptr %i.i, i64 %i.dz ; 6 uses
  %.not7.i.i.i.i.i45 = icmp eq ptr %1, %i.i
  br i1 %.not7.i.i.i.i.i45, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i46.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.eb = sub i64 %i.k, %i.m
  %i.ec = add i64 %i.eb, -8                       ; 2 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.ec, 168
  br i1 %min.iters.check132, label %.lr.ph.i.i.i.i.i46.preheader363, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader
  %i.ef = add i64 %i.k, -8
  %i.eg = sub i64 %i.ef, %i.m
  %i.eh = and i64 %i.eg, -8                       ; 2 uses
  %i.ei = add i64 %i.d, %i.eh
  %i.ej = add i64 %i.ei, 8
  %i.ek = sub i64 %i.ej, %i.n
  %scevgep126 = getelementptr i8, ptr %i.i, i64 %i.ek
  %i.el = getelementptr i8, ptr %1, i64 %i.eh
  %scevgep127 = getelementptr i8, ptr %i.el, i64 8
  %bound0128 = icmp ult ptr %i.ea, %scevgep127
  %bound1129 = icmp ult ptr %1, %scevgep126
  %found.conflict130 = and i1 %bound0128, %bound1129
  br i1 %found.conflict130, label %.lr.ph.i.i.i.i.i46.preheader363, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck125
  %n.vec135 = and i64 %i.ee, 4611686018427387900  ; 3 uses
  %i.em = shl i64 %n.vec135, 3                    ; 2 uses
  %i.en = getelementptr i8, ptr %i.ea, i64 %i.em
  %i.eo = getelementptr i8, ptr %1, i64 %i.em
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph133
  %index137 = phi i64 [ 0, %vector.ph133 ], [ %index.next150, %vector.body136 ] ; 2 uses
  %i.ep = shl i64 %index137, 3                    ; 3 uses
  %i.eq = or disjoint i64 %i.ep, 16               ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.ea, i64 %i.ep
  %next.gep139 = getelementptr i8, ptr %i.ea, i64 %i.eq
  %next.gep140 = getelementptr i8, ptr %1, i64 %i.ep
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.eq
  %wide.vec142 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !236, !alias.scope !2286
  %wide.vec145 = load <4 x i32>, ptr %next.gep141, align 4, !tbaa !236, !alias.scope !2286
  store <4 x i32> %wide.vec142, ptr %next.gep138, align 4, !tbaa !4, !alias.scope !2289, !noalias !2286
  store <4 x i32> %wide.vec145, ptr %next.gep139, align 4, !tbaa !4, !alias.scope !2289, !noalias !2286
  %index.next150 = add nuw i64 %index137, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next150, %n.vec135
  br i1 %i.er, label %middle.block151, label %vector.body136, !llvm.loop !2291

middle.block151:                                  ; preds = %vector.body136
  %cmp.n152 = icmp eq i64 %i.ee, %n.vec135
  br i1 %cmp.n152, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46.preheader363

.lr.ph.i.i.i.i.i46.preheader363:                  ; preds = %vector.memcheck125, %.lr.ph.i.i.i.i.i46.preheader, %middle.block151
  %.09.i.i.i.i.i47.ph = phi ptr [ %i.ea, %vector.memcheck125 ], [ %i.ea, %.lr.ph.i.i.i.i.i46.preheader ], [ %i.en, %middle.block151 ]
  %.sroa.04.08.i.i.i.i.i48.ph = phi ptr [ %1, %vector.memcheck125 ], [ %1, %.lr.ph.i.i.i.i.i46.preheader ], [ %i.eo, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader363, %.lr.ph.i.i.i.i.i46
  %.09.i.i.i.i.i47 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i46 ], [ %.09.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i46.preheader363 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i48 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i46 ], [ %.sroa.04.08.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i46.preheader363 ] ; 3 uses
  %i.es = load i32, ptr %.sroa.04.08.i.i.i.i.i48, align 4, !tbaa !236
  store i32 %i.es, ptr %.09.i.i.i.i.i47, align 4, !tbaa !4
  %i.et = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i48, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !236
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i48, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 8
  %.not.i.i.i.i.i49 = icmp eq ptr %i.ew, %i.i
  br i1 %.not.i.i.i.i.i49, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46, !llvm.loop !2292

_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51: ; preds = %.lr.ph.i.i.i.i.i46, %middle.block151, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ey, ptr %i.h, align 8, !tbaa !264
  %i.ez = ashr exact i64 %i.n, 3                  ; 7 uses
  %i.fa = icmp sgt i64 %i.ez, 0
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i53.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51
  %min.iters.check162 = icmp ult i64 %i.ez, 6
  br i1 %min.iters.check162, label %.lr.ph.i.i.i.i.i53.preheader361, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader
  %scevgep157 = getelementptr i8, ptr %2, i64 %i.n
  %bound0158 = icmp ult ptr %1, %scevgep157
  %bound1159 = icmp ult ptr %2, %i.i
  %found.conflict160 = and i1 %bound0158, %bound1159
  br i1 %found.conflict160, label %.lr.ph.i.i.i.i.i53.preheader361, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck155
  %n.vec165 = and i64 %i.ez, 9223372036854775804  ; 3 uses
  %i.fb = and i64 %i.ez, 3
  %i.fc = shl i64 %n.vec165, 3                    ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 %i.fc
  %i.fe = getelementptr i8, ptr %2, i64 %i.fc
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next180, %vector.body166 ] ; 2 uses
  %i.ff = shl i64 %index167, 3                    ; 3 uses
  %i.fg = or disjoint i64 %i.ff, 16               ; 2 uses
  %next.gep168 = getelementptr i8, ptr %1, i64 %i.ff
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.fg
  %next.gep170 = getelementptr i8, ptr %2, i64 %i.ff
  %next.gep171 = getelementptr i8, ptr %2, i64 %i.fg
  %wide.vec172 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !236, !alias.scope !2293
  %wide.vec175 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !236, !alias.scope !2293
  store <4 x i32> %wide.vec172, ptr %next.gep168, align 4, !tbaa !4, !alias.scope !2296, !noalias !2293
  store <4 x i32> %wide.vec175, ptr %next.gep169, align 4, !tbaa !4, !alias.scope !2296, !noalias !2293
  %index.next180 = add nuw i64 %index167, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next180, %n.vec165
  br i1 %i.fh, label %middle.block181, label %vector.body166, !llvm.loop !2298

middle.block181:                                  ; preds = %vector.body166
  %cmp.n182 = icmp eq i64 %i.ez, %n.vec165
  br i1 %cmp.n182, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i53.preheader361

.lr.ph.i.i.i.i.i53.preheader361:                  ; preds = %vector.memcheck155, %.lr.ph.i.i.i.i.i53.preheader, %middle.block181
  %.012.i.i.i.i.i54.ph = phi i64 [ %i.ez, %vector.memcheck155 ], [ %i.ez, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.fb, %middle.block181 ]
  %.0811.i.i.i.i.i55.ph = phi ptr [ %1, %vector.memcheck155 ], [ %1, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.fd, %middle.block181 ]
  %.0910.i.i.i.i.i56.ph = phi ptr [ %2, %vector.memcheck155 ], [ %2, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.fe, %middle.block181 ]
  br label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader361, %.lr.ph.i.i.i.i.i53
  %.012.i.i.i.i.i54 = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i53 ], [ %.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 2 uses
  %.0811.i.i.i.i.i55 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i53 ], [ %.0811.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 3 uses
  %.0910.i.i.i.i.i56 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i53 ], [ %.0910.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 3 uses
  %i.fi = load i32, ptr %.0910.i.i.i.i.i56, align 4, !tbaa !236
  store i32 %i.fi, ptr %.0811.i.i.i.i.i55, align 4, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !236
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 8
  %i.fo = add nsw i64 %.012.i.i.i.i.i54, -1
  %i.fp = icmp samesign ugt i64 %.012.i.i.i.i.i54, 1
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !2299

bb.e:                                             ; preds = %bb.b
  %i.fq = load ptr, ptr %0, align 8, !tbaa !267   ; 11 uses
  %i.fr = ptrtoint ptr %i.fq to i64               ; 4 uses
  %i.fs = sub i64 %i.k, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3                 ; 4 uses
  %i.fu = sub nsw i64 1152921504606846975, %i.ft
  %i.fv = icmp ult i64 %i.fu, %i.e
  br i1 %i.fv, label %bb.f, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ft, i64 %i.e)
  %i.fw = add nsw i64 %.sroa.speculated.i, %i.ft  ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.ft
  %i.fy = tail call i64 @llvm.umin.i64(i64 %i.fw, i64 1152921504606846975)
  %i.fz = select i1 %i.fx, i64 1152921504606846975, i64 %i.fy ; 3 uses
  %.not.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #45
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.gc = phi ptr [ %i.gb, %bb.g ], [ null, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fq, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i58.preheader:                     ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit
  %4 = add i64 %i.a, -8
  %i.gd = sub i64 %4, %i.fr                       ; 2 uses
  %i.ge = lshr i64 %i.gd, 3
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check273 = icmp ult i64 %i.gd, 120
  br i1 %min.iters.check273, label %.lr.ph.i.i.i.i.i58.preheader358, label %vector.memcheck266

vector.memcheck266:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader
  %i.gg = add i64 %i.a, -8
  %i.gh = sub i64 %i.gg, %i.fr
  %i.gi = and i64 %i.gh, -8
  %i.gj = add i64 %i.gi, 8                        ; 2 uses
  %scevgep267 = getelementptr i8, ptr %i.gc, i64 %i.gj
  %scevgep268 = getelementptr i8, ptr %i.fq, i64 %i.gj
  %bound0269 = icmp ult ptr %i.gc, %scevgep268
  %bound1270 = icmp ult ptr %i.fq, %scevgep267
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %.lr.ph.i.i.i.i.i58.preheader358, label %vector.ph274

vector.ph274:                                     ; preds = %vector.memcheck266
  %n.vec276 = and i64 %i.gf, 4611686018427387900  ; 3 uses
  %i.gk = shl i64 %n.vec276, 3                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gc, i64 %i.gk  ; 2 uses
  %i.gm = getelementptr i8, ptr %i.fq, i64 %i.gk
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph274
  %index278 = phi i64 [ 0, %vector.ph274 ], [ %index.next291, %vector.body277 ] ; 2 uses
  %i.gn = shl i64 %index278, 3                    ; 3 uses
  %i.go = or disjoint i64 %i.gn, 16               ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.gc, i64 %i.gn
  %next.gep280 = getelementptr i8, ptr %i.gc, i64 %i.go
  %next.gep281 = getelementptr i8, ptr %i.fq, i64 %i.gn
  %next.gep282 = getelementptr i8, ptr %i.fq, i64 %i.go
  %wide.vec283 = load <4 x i32>, ptr %next.gep281, align 4, !tbaa !236, !alias.scope !2300
  %wide.vec286 = load <4 x i32>, ptr %next.gep282, align 4, !tbaa !236, !alias.scope !2300
  store <4 x i32> %wide.vec283, ptr %next.gep279, align 4, !tbaa !4, !alias.scope !2303, !noalias !2300
  store <4 x i32> %wide.vec286, ptr %next.gep280, align 4, !tbaa !4, !alias.scope !2303, !noalias !2300
  %index.next291 = add nuw i64 %index278, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next291, %n.vec276
  br i1 %i.gp, label %middle.block292, label %vector.body277, !llvm.loop !2305

middle.block292:                                  ; preds = %vector.body277
  %cmp.n293 = icmp eq i64 %i.gf, %n.vec276
  br i1 %cmp.n293, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58.preheader358

.lr.ph.i.i.i.i.i58.preheader358:                  ; preds = %vector.memcheck266, %.lr.ph.i.i.i.i.i58.preheader, %middle.block292
  %.011.i.i.i.i.i.ph = phi ptr [ %i.gc, %vector.memcheck266 ], [ %i.gc, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.gl, %middle.block292 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fq, %vector.memcheck266 ], [ %i.fq, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.gm, %middle.block292 ]
  br label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader358, %.lr.ph.i.i.i.i.i58
  %.011.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i58 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i58.preheader358 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i58 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i58.preheader358 ] ; 3 uses
  %i.gq = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.gq, ptr %.011.i.i.i.i.i, align 4, !tbaa !4
  %i.gr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !236
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !4
  %i.gu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gu, %1
  br i1 %.not.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58, !llvm.loop !2306

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i58, %middle.block292, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i60 = phi ptr [ %i.gc, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit ], [ %i.gl, %middle.block292 ], [ %i.gv, %.lr.ph.i.i.i.i.i58 ] ; 7 uses
  %i.gw = sub i64 %i.b, %i.c
  %i.gx = add i64 %i.gw, -8                       ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.gx, 120
  br i1 %min.iters.check303, label %.lr.ph.i.i.i.i62.preheader, label %vector.memcheck296

vector.memcheck296:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ha = add i64 %i.b, -8
  %i.hb = sub i64 %i.ha, %i.c
  %i.hc = and i64 %i.hb, -8
  %i.hd = add i64 %i.hc, 8                        ; 2 uses
  %scevgep297 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hd
  %scevgep298 = getelementptr i8, ptr %2, i64 %i.hd
  %bound0299 = icmp ult ptr %.0.lcssa.i.i.i.i.i60, %scevgep298
  %bound1300 = icmp ult ptr %2, %scevgep297
  %found.conflict301 = and i1 %bound0299, %bound1300
  br i1 %found.conflict301, label %.lr.ph.i.i.i.i62.preheader, label %vector.ph304

vector.ph304:                                     ; preds = %vector.memcheck296
  %n.vec306 = and i64 %i.gz, 4611686018427387900  ; 3 uses
  %i.he = shl i64 %n.vec306, 3                    ; 2 uses
  %i.hf = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.he ; 2 uses
  %i.hg = getelementptr i8, ptr %2, i64 %i.he
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph304
  %index308 = phi i64 [ 0, %vector.ph304 ], [ %index.next321, %vector.body307 ] ; 2 uses
  %i.hh = shl i64 %index308, 3                    ; 3 uses
  %i.hi = or disjoint i64 %i.hh, 16               ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hh
  %next.gep310 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hi
  %next.gep311 = getelementptr i8, ptr %2, i64 %i.hh
  %next.gep312 = getelementptr i8, ptr %2, i64 %i.hi
  %wide.vec313 = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !236, !alias.scope !2307
  %wide.vec316 = load <4 x i32>, ptr %next.gep312, align 4, !tbaa !236, !alias.scope !2307
  store <4 x i32> %wide.vec313, ptr %next.gep309, align 4, !tbaa !4, !alias.scope !2310, !noalias !2307
  store <4 x i32> %wide.vec316, ptr %next.gep310, align 4, !tbaa !4, !alias.scope !2310, !noalias !2307
  %index.next321 = add nuw i64 %index308, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next321, %n.vec306
  br i1 %i.hj, label %middle.block322, label %vector.body307, !llvm.loop !2312

middle.block322:                                  ; preds = %vector.body307
  %cmp.n323 = icmp eq i64 %i.gz, %n.vec306
  br i1 %cmp.n323, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67, label %.lr.ph.i.i.i.i62.preheader

.lr.ph.i.i.i.i62.preheader:                       ; preds = %vector.memcheck296, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %middle.block322
  %.09.i.i.i.i63.ph = phi ptr [ %.0.lcssa.i.i.i.i.i60, %vector.memcheck296 ], [ %.0.lcssa.i.i.i.i.i60, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.hf, %middle.block322 ]
  %.sroa.04.08.i.i.i.i64.ph = phi ptr [ %2, %vector.memcheck296 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.hg, %middle.block322 ]
  br label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %.09.i.i.i.i63 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i62 ], [ %.09.i.i.i.i63.ph, %.lr.ph.i.i.i.i62.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i64 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i62 ], [ %.sroa.04.08.i.i.i.i64.ph, %.lr.ph.i.i.i.i62.preheader ] ; 3 uses
  %i.hk = load i32, ptr %.sroa.04.08.i.i.i.i64, align 4, !tbaa !236
  store i32 %i.hk, ptr %.09.i.i.i.i63, align 4, !tbaa !4
  %i.hl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i63, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i64, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !236
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i64, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.ho, %3
  br i1 %.not.i.i.i.i65, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67, label %.lr.ph.i.i.i.i62, !llvm.loop !2313

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i62, %middle.block322
  %.lcssa113 = phi ptr [ %i.hf, %middle.block322 ], [ %i.hp, %.lr.ph.i.i.i.i62 ] ; 8 uses
  %.not9.i.i.i.i.i68 = icmp eq ptr %1, %i.i
  br i1 %.not9.i.i.i.i.i68, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67
  %5 = add i64 %i.k, -8
  %i.hq = sub i64 %5, %i.a                        ; 2 uses
  %i.hr = lshr i64 %i.hq, 3
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.hq, 120
  br i1 %min.iters.check333, label %.lr.ph.i.i.i.i.i69.preheader356, label %vector.memcheck326

vector.memcheck326:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader
  %i.ht = add i64 %i.k, -8
  %i.hu = sub i64 %i.ht, %i.a
  %i.hv = and i64 %i.hu, -8
  %i.hw = add i64 %i.hv, 8                        ; 2 uses
  %scevgep327 = getelementptr i8, ptr %.lcssa113, i64 %i.hw
  %scevgep328 = getelementptr i8, ptr %1, i64 %i.hw
  %bound0329 = icmp ult ptr %.lcssa113, %scevgep328
  %bound1330 = icmp ult ptr %1, %scevgep327
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i.i.i.i69.preheader356, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck326
  %n.vec336 = and i64 %i.hs, 4611686018427387900  ; 3 uses
  %i.hx = shl i64 %n.vec336, 3                    ; 2 uses
  %i.hy = getelementptr i8, ptr %.lcssa113, i64 %i.hx ; 2 uses
  %i.hz = getelementptr i8, ptr %1, i64 %i.hx
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph334
  %index338 = phi i64 [ 0, %vector.ph334 ], [ %index.next351, %vector.body337 ] ; 2 uses
  %i.ia = shl i64 %index338, 3                    ; 3 uses
  %i.ib = or disjoint i64 %i.ia, 16               ; 2 uses
  %next.gep339 = getelementptr i8, ptr %.lcssa113, i64 %i.ia
  %next.gep340 = getelementptr i8, ptr %.lcssa113, i64 %i.ib
  %next.gep341 = getelementptr i8, ptr %1, i64 %i.ia
  %next.gep342 = getelementptr i8, ptr %1, i64 %i.ib
  %wide.vec343 = load <4 x i32>, ptr %next.gep341, align 4, !tbaa !236, !alias.scope !2314
  %wide.vec346 = load <4 x i32>, ptr %next.gep342, align 4, !tbaa !236, !alias.scope !2314
  store <4 x i32> %wide.vec343, ptr %next.gep339, align 4, !tbaa !4, !alias.scope !2317, !noalias !2314
  store <4 x i32> %wide.vec346, ptr %next.gep340, align 4, !tbaa !4, !alias.scope !2317, !noalias !2314
  %index.next351 = add nuw i64 %index338, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next351, %n.vec336
  br i1 %i.ic, label %middle.block352, label %vector.body337, !llvm.loop !2319

middle.block352:                                  ; preds = %vector.body337
  %cmp.n353 = icmp eq i64 %i.hs, %n.vec336
  br i1 %cmp.n353, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69.preheader356

.lr.ph.i.i.i.i.i69.preheader356:                  ; preds = %vector.memcheck326, %.lr.ph.i.i.i.i.i69.preheader, %middle.block352
  %.011.i.i.i.i.i70.ph = phi ptr [ %.lcssa113, %vector.memcheck326 ], [ %.lcssa113, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.hy, %middle.block352 ]
  %.0810.i.i.i.i.i71.ph = phi ptr [ %1, %vector.memcheck326 ], [ %1, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.hz, %middle.block352 ]
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader356, %.lr.ph.i.i.i.i.i69
  %.011.i.i.i.i.i70 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i69 ], [ %.011.i.i.i.i.i70.ph, %.lr.ph.i.i.i.i.i69.preheader356 ] ; 3 uses
  %.0810.i.i.i.i.i71 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i69 ], [ %.0810.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i69.preheader356 ] ; 3 uses
  %i.id = load i32, ptr %.0810.i.i.i.i.i71, align 4, !tbaa !236
  store i32 %i.id, ptr %.011.i.i.i.i.i70, align 4, !tbaa !4
  %i.ie = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i70, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i71, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !236
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !4
  %i.ih = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i71, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.ih, %i.i
  br i1 %.not.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69, !llvm.loop !2320

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i69, %middle.block352, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa113, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67 ], [ %i.hy, %middle.block352 ], [ %i.ii, %.lr.ph.i.i.i.i.i69 ]
  %.not.i75 = icmp eq ptr %i.fq, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74
  %i.ij = sub i64 %i.j, %i.fr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.ij) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, %bb.h
  store ptr %i.gc, ptr %0, align 8, !tbaa !267
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.h, align 8, !tbaa !264
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fz
  store ptr %i.ik, ptr %i.f, align 8, !tbaa !268
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i44, %middle.block181, %middle.block261, %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 10 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !276  ; 35 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 6 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 11 uses
  %i.r = sub i64 %i.b, %i.c
  %i.s = add i64 %i.r, -16                        ; 2 uses
  %i.t = lshr i64 %i.s, 4
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.s, 1040
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck151

vector.memcheck151:                               ; preds = %bb.d
  %i.v = add i64 %i.b, -16
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -16                        ; 4 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep152 = getelementptr i8, ptr %i.y, i64 8 ; 3 uses
  %scevgep153 = getelementptr i8, ptr %i.i, i64 8 ; 3 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep154 = getelementptr i8, ptr %i.z, i64 16 ; 3 uses
  %i.aa = add i64 %i.x, %i.c
  %i.ab = add i64 %i.aa, 8
  %i.ac = sub i64 %i.ab, %i.b
  %scevgep155 = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %i.ad = add i64 %i.c, 8
  %i.ae = sub i64 %i.ad, %i.b
  %scevgep156 = getelementptr i8, ptr %i.i, i64 %i.ae ; 2 uses
  %i.af = add i64 %i.x, %i.c
  %i.ag = add i64 %i.af, 16
  %i.ah = sub i64 %i.ag, %i.b
  %scevgep157 = getelementptr i8, ptr %i.i, i64 %i.ah ; 2 uses
  %bound0158 = icmp ult ptr %i.i, %scevgep154
  %bound1159 = icmp ult ptr %scevgep153, %scevgep152
  %found.conflict160 = and i1 %bound0158, %bound1159
  %bound0161 = icmp ult ptr %i.i, %scevgep155
  %bound1162 = icmp ult ptr %i.q, %scevgep152
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict160, %found.conflict163
  %bound0164 = icmp ult ptr %i.i, %scevgep157
  %bound1165 = icmp ult ptr %scevgep156, %scevgep152
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep153, %scevgep155
  %bound1169 = icmp ult ptr %i.q, %scevgep154
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep153, %scevgep157
  %bound1173 = icmp ult ptr %scevgep156, %scevgep154
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  br i1 %conflict.rdx175, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck151
  %n.vec180 = and i64 %i.u, 2305843009213693950   ; 3 uses
  %i.ai = shl i64 %n.vec180, 4                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ai
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next189, %vector.body181 ] ; 2 uses
  %i.al = shl i64 %index182, 4                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.i, i64 %i.al
  %next.gep184 = getelementptr i8, ptr %i.i, i64 %i.am
  %next.gep185 = getelementptr i8, ptr %i.q, i64 %i.al
  %next.gep186 = getelementptr i8, ptr %i.q, i64 %i.am
  %wide.load187 = load <2 x double>, ptr %next.gep185, align 8, !tbaa !247
  %wide.load188 = load <2 x double>, ptr %next.gep186, align 8, !tbaa !247
  store <2 x double> %wide.load187, ptr %next.gep183, align 8, !tbaa !247
  store <2 x double> %wide.load188, ptr %next.gep184, align 8, !tbaa !247
  %index.next189 = add nuw i64 %index182, 2       ; 2 uses
  %i.an = icmp eq i64 %index.next189, %n.vec180
  br i1 %i.an, label %middle.block190, label %vector.body181, !llvm.loop !2321

middle.block190:                                  ; preds = %vector.body181
  %cmp.n191 = icmp eq i64 %i.u, %n.vec180
  br i1 %cmp.n191, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck151, %bb.d, %middle.block190
  %.09.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck151 ], [ %i.i, %bb.d ], [ %i.aj, %middle.block190 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck151 ], [ %i.q, %bb.d ], [ %i.ak, %middle.block190 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ao = load double, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !247
  store double %i.ao, ptr %.09.i.i.i.i.i, align 8, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !247
  store double %i.ar, ptr %i.ap, align 8, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2322

_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block190
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.au, ptr %i.h, align 8, !tbaa !276
  %i.av = ptrtoint ptr %i.q to i64
  %i.aw = sub i64 %i.av, %i.m                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.az = and i64 %i.aw, 16
  %lcmp.mod274.not = icmp eq i64 %i.az, 0
  br i1 %lcmp.mod274.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i43.prol:                          ; preds = %.lr.ph.i.i.i.i.i43.preheader
  %i.ba = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !247
  store double %i.bc, ptr %i.bb, align 8, !tbaa !247
  %i.bd = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.be = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !247
  store double %i.bf, ptr %i.bd, align 8, !tbaa !247
  %i.bg = add nsw i64 %i.ax, -1
  br label %.lr.ph.i.i.i.i.i43.prol.loopexit

.lr.ph.i.i.i.i.i43.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i43.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i43.prol ]
  %i.bh = icmp eq i64 %i.aw, 16
  br i1 %i.bh, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.010.i.i.i.i.i = phi i64 [ %i.bu, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bp, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bo, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.069.i.i.i.i.i, %.078.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i43
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !247
  store double %i.bk, ptr %i.bj, align 8, !tbaa !247
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !247
  store double %i.bn, ptr %i.bl, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i43
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.069.i.i.i.i.i, %.078.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !247
  store double %i.bq, ptr %i.bp, align 8, !tbaa !247
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !247
  store double %i.bt, ptr %i.br, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bu = add nsw i64 %.010.i.i.i.i.i, -2
  %i.bv = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !2323

_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.bw = icmp sgt i64 %i.e, 0
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit
  %i.bx = and i64 %i.d, 16
  %lcmp.mod276.not = icmp eq i64 %i.bx, 0
end_hunk_2
begin_hunk_3_@_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag:bb.a
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader272, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader272 ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader272 ] ; 3 uses
  %i.dq = load double, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !247
  store double %i.dq, ptr %.09.i.i.i.i, align 8, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !247
  store double %i.dt, ptr %i.dr, align 8, !tbaa !247
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.du, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2330

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dw = sub nsw i64 %i.e, %i.o
  %i.dx = getelementptr [16 x i8], ptr %i.i, i64 %i.dw ; 6 uses
  %.not7.i.i.i.i.i48 = icmp eq ptr %1, %i.i
  br i1 %.not7.i.i.i.i.i48, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.dy = sub i64 %i.k, %i.m
  %i.dz = add i64 %i.dy, -16                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.dz, 336
  br i1 %min.iters.check134, label %.lr.ph.i.i.i.i.i49.preheader271, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %i.ec = add i64 %i.k, -16
  %i.ed = sub i64 %i.ec, %i.m
  %i.ee = and i64 %i.ed, -16                      ; 2 uses
  %i.ef = add i64 %i.d, %i.ee
  %i.eg = add i64 %i.ef, 16
  %i.eh = sub i64 %i.eg, %i.n
  %scevgep128 = getelementptr i8, ptr %i.i, i64 %i.eh
  %i.ei = getelementptr i8, ptr %1, i64 %i.ee
  %scevgep129 = getelementptr i8, ptr %i.ei, i64 16
  %bound0130 = icmp ult ptr %i.dx, %scevgep129
  %bound1131 = icmp ult ptr %1, %scevgep128
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %.lr.ph.i.i.i.i.i49.preheader271, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck127
  %n.vec137 = and i64 %i.eb, 2305843009213693950  ; 3 uses
  %i.ej = shl i64 %n.vec137, 4                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dx, i64 %i.ej
  %i.el = getelementptr i8, ptr %1, i64 %i.ej
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph135
  %index139 = phi i64 [ 0, %vector.ph135 ], [ %index.next146, %vector.body138 ] ; 2 uses
  %i.em = shl i64 %index139, 4                    ; 3 uses
  %i.en = or disjoint i64 %i.em, 16               ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.dx, i64 %i.em
  %next.gep141 = getelementptr i8, ptr %i.dx, i64 %i.en
  %next.gep142 = getelementptr i8, ptr %1, i64 %i.em
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.en
  %wide.load144 = load <2 x double>, ptr %next.gep142, align 8, !tbaa !247, !alias.scope !2331
  %wide.load145 = load <2 x double>, ptr %next.gep143, align 8, !tbaa !247, !alias.scope !2331
  store <2 x double> %wide.load144, ptr %next.gep140, align 8, !tbaa !247, !alias.scope !2334, !noalias !2331
  store <2 x double> %wide.load145, ptr %next.gep141, align 8, !tbaa !247, !alias.scope !2334, !noalias !2331
  %index.next146 = add nuw i64 %index139, 2       ; 2 uses
  %i.eo = icmp eq i64 %index.next146, %n.vec137
  br i1 %i.eo, label %middle.block147, label %vector.body138, !llvm.loop !2336

middle.block147:                                  ; preds = %vector.body138
  %cmp.n148 = icmp eq i64 %i.eb, %n.vec137
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader271

.lr.ph.i.i.i.i.i49.preheader271:                  ; preds = %vector.memcheck127, %.lr.ph.i.i.i.i.i49.preheader, %middle.block147
  %.09.i.i.i.i.i50.ph = phi ptr [ %i.dx, %vector.memcheck127 ], [ %i.dx, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.ek, %middle.block147 ]
  %.sroa.04.08.i.i.i.i.i51.ph = phi ptr [ %1, %vector.memcheck127 ], [ %1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.el, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader271, %.lr.ph.i.i.i.i.i49
  %.09.i.i.i.i.i50 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i49 ], [ %.09.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader271 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i51 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i49 ], [ %.sroa.04.08.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader271 ] ; 3 uses
  %i.ep = load double, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !247
  store double %i.ep, ptr %.09.i.i.i.i.i50, align 8, !tbaa !247
  %i.eq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !247
  store double %i.es, ptr %i.eq, align 8, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 16
  %.not.i.i.i.i.i52 = icmp eq ptr %i.et, %i.i
  br i1 %.not.i.i.i.i.i52, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49, !llvm.loop !2337

_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54: ; preds = %.lr.ph.i.i.i.i.i49, %middle.block147, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ev, ptr %i.h, align 8, !tbaa !276
  %i.ew = ashr exact i64 %i.n, 4                  ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i56.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54
  %i.ey = and i64 %i.n, 16
  %lcmp.mod.not = icmp eq i64 %i.ey, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i56.prol.loopexit, label %.lr.ph.i.i.i.i.i56.prol

.lr.ph.i.i.i.i.i56.prol:                          ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %.not.i.i.i.i.i.i60.prol = icmp eq ptr %1, %2
  br i1 %.not.i.i.i.i.i.i60.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol: ; preds = %.lr.ph.i.i.i.i.i56.prol
  %i.ez = load double, ptr %2, align 8, !tbaa !247
  store double %i.ez, ptr %1, align 8, !tbaa !247
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !247
  store double %i.fc, ptr %i.fa, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol, %.lr.ph.i.i.i.i.i56.prol
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i.i.i.i56.prol.loopexit

.lr.ph.i.i.i.i.i56.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol, %.lr.ph.i.i.i.i.i56.preheader
  %.012.i.i.i.i.i57.unr = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ff, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %.0811.i.i.i.i.i58.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.fe, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %.0910.i.i.i.i.i59.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.fd, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %i.fg = icmp eq i64 %i.n, 16
  br i1 %i.fg, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1
  %.012.i.i.i.i.i57 = phi i64 [ %i.ft, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.012.i.i.i.i.i57.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i58 = phi ptr [ %i.fs, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.0811.i.i.i.i.i58.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i59 = phi ptr [ %i.fr, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.0910.i.i.i.i.i59.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i60 = icmp eq ptr %.0811.i.i.i.i.i58, %.0910.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i60, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i56
  %i.fh = load double, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !247
  store double %i.fh, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !247
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 8
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !247
  store double %i.fk, ptr %i.fi, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61, %.lr.ph.i.i.i.i.i56
  %.not.i.i.i.i.i.i60.1 = icmp eq ptr %.0811.i.i.i.i.i58, %.0910.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i60.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !247
  store double %i.fn, ptr %i.fl, align 8, !tbaa !247
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !247
  store double %i.fq, ptr %i.fo, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 32
  %i.ft = add nsw i64 %.012.i.i.i.i.i57, -2
  %i.fu = icmp sgt i64 %.012.i.i.i.i.i57, 2
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, !llvm.loop !675

bb.e:                                             ; preds = %bb.b
  %i.fv = load ptr, ptr %0, align 8, !tbaa !279   ; 11 uses
  %i.fw = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.fx = sub i64 %i.k, %i.fw
  %i.fy = ashr exact i64 %i.fx, 4                 ; 4 uses
  %i.fz = sub nsw i64 576460752303423487, %i.fy
  %i.ga = icmp ult i64 %i.fz, %i.e
  br i1 %i.ga, label %bb.f, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.e)
  %i.gb = add nsw i64 %.sroa.speculated.i, %i.fy  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fy
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 576460752303423487)
  %i.ge = select i1 %i.gc, i64 576460752303423487, i64 %i.gd ; 3 uses
  %.not.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %i.gf = shl nuw nsw i64 %i.ge, 4
  %i.gg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #45
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.gh = phi ptr [ %i.gg, %bb.g ], [ null, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fv, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit
  %4 = add i64 %i.a, -16
  %i.gi = sub i64 %4, %i.fw                       ; 2 uses
  %i.gj = lshr i64 %i.gi, 4
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.gi, 240
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.i.i64.preheader268, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %i.gl = add i64 %i.a, -16
  %i.gm = sub i64 %i.gl, %i.fw
  %i.gn = and i64 %i.gm, -16
  %i.go = add i64 %i.gn, 16                       ; 2 uses
  %scevgep195 = getelementptr i8, ptr %i.gh, i64 %i.go
  %scevgep196 = getelementptr i8, ptr %i.fv, i64 %i.go
  %bound0197 = icmp ult ptr %i.gh, %scevgep196
  %bound1198 = icmp ult ptr %i.fv, %scevgep195
  %found.conflict199 = and i1 %bound0197, %bound1198
  br i1 %found.conflict199, label %.lr.ph.i.i.i.i.i64.preheader268, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck194
  %n.vec204 = and i64 %i.gk, 2305843009213693950  ; 3 uses
  %i.gp = shl i64 %n.vec204, 4                    ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gh, i64 %i.gp  ; 2 uses
  %i.gr = getelementptr i8, ptr %i.fv, i64 %i.gp
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph202
  %index206 = phi i64 [ 0, %vector.ph202 ], [ %index.next213, %vector.body205 ] ; 2 uses
  %i.gs = shl i64 %index206, 4                    ; 3 uses
  %i.gt = or disjoint i64 %i.gs, 16               ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.gh, i64 %i.gs
  %next.gep208 = getelementptr i8, ptr %i.gh, i64 %i.gt
  %next.gep209 = getelementptr i8, ptr %i.fv, i64 %i.gs
  %next.gep210 = getelementptr i8, ptr %i.fv, i64 %i.gt
  %wide.load211 = load <2 x double>, ptr %next.gep209, align 8, !tbaa !247, !alias.scope !2338
  %wide.load212 = load <2 x double>, ptr %next.gep210, align 8, !tbaa !247, !alias.scope !2338
  store <2 x double> %wide.load211, ptr %next.gep207, align 8, !tbaa !247, !alias.scope !2341, !noalias !2338
  store <2 x double> %wide.load212, ptr %next.gep208, align 8, !tbaa !247, !alias.scope !2341, !noalias !2338
  %index.next213 = add nuw i64 %index206, 2       ; 2 uses
  %i.gu = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.gu, label %middle.block214, label %vector.body205, !llvm.loop !2343

middle.block214:                                  ; preds = %vector.body205
  %cmp.n215 = icmp eq i64 %i.gk, %n.vec204
  br i1 %cmp.n215, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64.preheader268

.lr.ph.i.i.i.i.i64.preheader268:                  ; preds = %vector.memcheck194, %.lr.ph.i.i.i.i.i64.preheader, %middle.block214
  %.011.i.i.i.i.i.ph = phi ptr [ %i.gh, %vector.memcheck194 ], [ %i.gh, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.gq, %middle.block214 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fv, %vector.memcheck194 ], [ %i.fv, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.gr, %middle.block214 ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader268, %.lr.ph.i.i.i.i.i64
  %.011.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i64 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader268 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i64 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader268 ] ; 3 uses
  %i.gv = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !247
  store double %i.gv, ptr %.011.i.i.i.i.i, align 8, !tbaa !247
  %i.gw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !247
  store double %i.gy, ptr %i.gw, align 8, !tbaa !247
  %i.gz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.gz, %1
  br i1 %.not.i.i.i.i.i65, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64, !llvm.loop !2344

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i64, %middle.block214, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i66 = phi ptr [ %i.gh, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit ], [ %i.gq, %middle.block214 ], [ %i.ha, %.lr.ph.i.i.i.i.i64 ] ; 7 uses
  %i.hb = sub i64 %i.b, %i.c
  %i.hc = add i64 %i.hb, -16                      ; 2 uses
  %i.hd = lshr i64 %i.hc, 4
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.hc, 240
  br i1 %min.iters.check225, label %.lr.ph.i.i.i.i68.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.hf = add i64 %i.b, -16
  %i.hg = sub i64 %i.hf, %i.c
  %i.hh = and i64 %i.hg, -16
  %i.hi = add i64 %i.hh, 16                       ; 2 uses
  %scevgep219 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hi
  %scevgep220 = getelementptr i8, ptr %2, i64 %i.hi
  %bound0221 = icmp ult ptr %.0.lcssa.i.i.i.i.i66, %scevgep220
  %bound1222 = icmp ult ptr %2, %scevgep219
  %found.conflict223 = and i1 %bound0221, %bound1222
  br i1 %found.conflict223, label %.lr.ph.i.i.i.i68.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck218
  %n.vec228 = and i64 %i.he, 2305843009213693950  ; 3 uses
  %i.hj = shl i64 %n.vec228, 4                    ; 2 uses
  %i.hk = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hj ; 2 uses
  %i.hl = getelementptr i8, ptr %2, i64 %i.hj
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph226
  %index230 = phi i64 [ 0, %vector.ph226 ], [ %index.next237, %vector.body229 ] ; 2 uses
  %i.hm = shl i64 %index230, 4                    ; 3 uses
  %i.hn = or disjoint i64 %i.hm, 16               ; 2 uses
  %next.gep231 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hm
  %next.gep232 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hn
  %next.gep233 = getelementptr i8, ptr %2, i64 %i.hm
  %next.gep234 = getelementptr i8, ptr %2, i64 %i.hn
  %wide.load235 = load <2 x double>, ptr %next.gep233, align 8, !tbaa !247, !alias.scope !2345
  %wide.load236 = load <2 x double>, ptr %next.gep234, align 8, !tbaa !247, !alias.scope !2345
  store <2 x double> %wide.load235, ptr %next.gep231, align 8, !tbaa !247, !alias.scope !2348, !noalias !2345
  store <2 x double> %wide.load236, ptr %next.gep232, align 8, !tbaa !247, !alias.scope !2348, !noalias !2345
  %index.next237 = add nuw i64 %index230, 2       ; 2 uses
  %i.ho = icmp eq i64 %index.next237, %n.vec228
  br i1 %i.ho, label %middle.block238, label %vector.body229, !llvm.loop !2350

middle.block238:                                  ; preds = %vector.body229
  %cmp.n239 = icmp eq i64 %i.he, %n.vec228
  br i1 %cmp.n239, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i68.preheader

.lr.ph.i.i.i.i68.preheader:                       ; preds = %vector.memcheck218, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %middle.block238
  %.09.i.i.i.i69.ph = phi ptr [ %.0.lcssa.i.i.i.i.i66, %vector.memcheck218 ], [ %.0.lcssa.i.i.i.i.i66, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.hk, %middle.block238 ]
  %.sroa.04.08.i.i.i.i70.ph = phi ptr [ %2, %vector.memcheck218 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.hl, %middle.block238 ]
  br label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph.i.i.i.i68.preheader, %.lr.ph.i.i.i.i68
  %.09.i.i.i.i69 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i68 ], [ %.09.i.i.i.i69.ph, %.lr.ph.i.i.i.i68.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i70 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i68 ], [ %.sroa.04.08.i.i.i.i70.ph, %.lr.ph.i.i.i.i68.preheader ] ; 3 uses
  %i.hp = load double, ptr %.sroa.04.08.i.i.i.i70, align 8, !tbaa !247
  store double %i.hp, ptr %.09.i.i.i.i69, align 8, !tbaa !247
  %i.hq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i69, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i70, i64 8
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !247
  store double %i.hs, ptr %i.hq, align 8, !tbaa !247
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i70, i64 16 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i69, i64 16 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.ht, %3
  br i1 %.not.i.i.i.i71, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i68, !llvm.loop !2351

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73: ; preds = %.lr.ph.i.i.i.i68, %middle.block238
  %.lcssa119 = phi ptr [ %i.hk, %middle.block238 ], [ %i.hu, %.lr.ph.i.i.i.i68 ] ; 8 uses
  %.not9.i.i.i.i.i74 = icmp eq ptr %1, %i.i
  br i1 %.not9.i.i.i.i.i74, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75.preheader

.lr.ph.i.i.i.i.i75.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %5 = add i64 %i.k, -16
  %i.hv = sub i64 %5, %i.a                        ; 2 uses
  %i.hw = lshr i64 %i.hv, 4
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.hv, 240
  br i1 %min.iters.check249, label %.lr.ph.i.i.i.i.i75.preheader266, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader
  %i.hy = add i64 %i.k, -16
  %i.hz = sub i64 %i.hy, %i.a
  %i.ia = and i64 %i.hz, -16
  %i.ib = add i64 %i.ia, 16                       ; 2 uses
  %scevgep243 = getelementptr i8, ptr %.lcssa119, i64 %i.ib
  %scevgep244 = getelementptr i8, ptr %1, i64 %i.ib
  %bound0245 = icmp ult ptr %.lcssa119, %scevgep244
  %bound1246 = icmp ult ptr %1, %scevgep243
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i.i.i75.preheader266, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck242
  %n.vec252 = and i64 %i.hx, 2305843009213693950  ; 3 uses
  %i.ic = shl i64 %n.vec252, 4                    ; 2 uses
  %i.id = getelementptr i8, ptr %.lcssa119, i64 %i.ic ; 2 uses
  %i.ie = getelementptr i8, ptr %1, i64 %i.ic
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph250
  %index254 = phi i64 [ 0, %vector.ph250 ], [ %index.next261, %vector.body253 ] ; 2 uses
  %i.if = shl i64 %index254, 4                    ; 3 uses
  %i.ig = or disjoint i64 %i.if, 16               ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.lcssa119, i64 %i.if
  %next.gep256 = getelementptr i8, ptr %.lcssa119, i64 %i.ig
  %next.gep257 = getelementptr i8, ptr %1, i64 %i.if
  %next.gep258 = getelementptr i8, ptr %1, i64 %i.ig
  %wide.load259 = load <2 x double>, ptr %next.gep257, align 8, !tbaa !247, !alias.scope !2352
  %wide.load260 = load <2 x double>, ptr %next.gep258, align 8, !tbaa !247, !alias.scope !2352
  store <2 x double> %wide.load259, ptr %next.gep255, align 8, !tbaa !247, !alias.scope !2355, !noalias !2352
  store <2 x double> %wide.load260, ptr %next.gep256, align 8, !tbaa !247, !alias.scope !2355, !noalias !2352
  %index.next261 = add nuw i64 %index254, 2       ; 2 uses
  %i.ih = icmp eq i64 %index.next261, %n.vec252
  br i1 %i.ih, label %middle.block262, label %vector.body253, !llvm.loop !2357

middle.block262:                                  ; preds = %vector.body253
  %cmp.n263 = icmp eq i64 %i.hx, %n.vec252
  br i1 %cmp.n263, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75.preheader266

.lr.ph.i.i.i.i.i75.preheader266:                  ; preds = %vector.memcheck242, %.lr.ph.i.i.i.i.i75.preheader, %middle.block262
  %.011.i.i.i.i.i76.ph = phi ptr [ %.lcssa119, %vector.memcheck242 ], [ %.lcssa119, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.id, %middle.block262 ]
  %.0810.i.i.i.i.i77.ph = phi ptr [ %1, %vector.memcheck242 ], [ %1, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.ie, %middle.block262 ]
  br label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader266, %.lr.ph.i.i.i.i.i75
  %.011.i.i.i.i.i76 = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i75 ], [ %.011.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader266 ] ; 3 uses
  %.0810.i.i.i.i.i77 = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i75 ], [ %.0810.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader266 ] ; 3 uses
  %i.ii = load double, ptr %.0810.i.i.i.i.i77, align 8, !tbaa !247
  store double %i.ii, ptr %.011.i.i.i.i.i76, align 8, !tbaa !247
  %i.ij = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i76, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i77, i64 8
  %i.il = load double, ptr %i.ik, align 8, !tbaa !247
  store double %i.il, ptr %i.ij, align 8, !tbaa !247
  %i.im = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i77, i64 16 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i76, i64 16 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.im, %i.i
  br i1 %.not.i.i.i.i.i78, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !2358

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80: ; preds = %.lr.ph.i.i.i.i.i75, %middle.block262, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %.lcssa119, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73 ], [ %i.id, %middle.block262 ], [ %i.in, %.lr.ph.i.i.i.i.i75 ]
  %.not.i81 = icmp eq ptr %i.fv, null
  br i1 %.not.i81, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80
  %i.io = sub i64 %i.j, %i.fw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.io) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, %bb.h
  store ptr %i.gh, ptr %0, align 8, !tbaa !279
  store ptr %.0.lcssa.i.i.i.i.i79, ptr %i.h, align 8, !tbaa !276
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ge
  store ptr %i.ip, ptr %i.f, align 8, !tbaa !280
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1, %.lr.ph.i.i.i.i.i44.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1, %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !267    ; 11 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #45 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load <2 x i32>, ptr %2, align 4, !tbaa !236
  store <2 x i32> %i.s, ptr %i.r, align 4, !tbaa !4
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.a, -8
  %i.t = sub i64 %3, %i.f                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.a, -8
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep37 = getelementptr i8, ptr %i.d, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep37
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad
  %next.gep38 = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep39 = getelementptr i8, ptr %i.d, i64 %i.ad
  %next.gep40 = getelementptr i8, ptr %i.d, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !236, !alias.scope !2359
  %wide.vec42 = load <4 x i32>, ptr %next.gep40, align 4, !tbaa !236, !alias.scope !2359
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !2362, !noalias !2359
  store <4 x i32> %wide.vec42, ptr %next.gep38, align 4, !tbaa !4, !alias.scope !2362, !noalias !2359
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.preheader78:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader78 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader78 ] ; 3 uses
  %i.ag = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ag, ptr %.011.i.i.i.i.i, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !236
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2365

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 7 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.c
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %4 = add i64 %i.e, -8
  %i.an = sub i64 %4, %i.a                        ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check54 = icmp ult i64 %i.an, 136
  br i1 %min.iters.check54, label %.lr.ph.i.i.i.i.i19.preheader77, label %vector.memcheck47

vector.memcheck47:                                ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.aq = add i64 %i.e, -8
  %i.ar = sub i64 %i.aq, %i.a
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.as
  %scevgep48 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep49 = getelementptr i8, ptr %i.au, i64 8
  %bound050 = icmp ult ptr %i.am, %scevgep49
  %bound151 = icmp ult ptr %1, %scevgep48
  %found.conflict52 = and i1 %bound050, %bound151
  br i1 %found.conflict52, label %.lr.ph.i.i.i.i.i19.preheader77, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck47
  %n.vec57 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec57, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next72, %vector.body58 ] ; 2 uses
  %i.ay = shl i64 %index59, 3                     ; 3 uses
  %i.az = or disjoint i64 %i.ay, 16               ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.am, i64 %i.ay
  %next.gep61 = getelementptr i8, ptr %i.am, i64 %i.az
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.ay
  %next.gep63 = getelementptr i8, ptr %1, i64 %i.az
  %wide.vec64 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !236, !alias.scope !2366
  %wide.vec67 = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !236, !alias.scope !2366
  store <4 x i32> %wide.vec64, ptr %next.gep60, align 4, !tbaa !4, !alias.scope !2369, !noalias !2366
  store <4 x i32> %wide.vec67, ptr %next.gep61, align 4, !tbaa !4, !alias.scope !2369, !noalias !2366
  %index.next72 = add nuw i64 %index59, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next72, %n.vec57
  br i1 %i.ba, label %middle.block73, label %vector.body58, !llvm.loop !2371

middle.block73:                                   ; preds = %vector.body58
  %cmp.n74 = icmp eq i64 %i.ap, %n.vec57
  br i1 %cmp.n74, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader77

.lr.ph.i.i.i.i.i19.preheader77:                   ; preds = %vector.memcheck47, %.lr.ph.i.i.i.i.i19.preheader, %middle.block73
  %.011.i.i.i.i.i20.ph = phi ptr [ %i.am, %vector.memcheck47 ], [ %i.am, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.aw, %middle.block73 ]
  %.0810.i.i.i.i.i21.ph = phi ptr [ %1, %vector.memcheck47 ], [ %1, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.ax, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader77, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i19 ], [ %.011.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader77 ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i19 ], [ %.0810.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader77 ] ; 2 uses
  %i.bb = load <2 x i32>, ptr %.0810.i.i.i.i.i21, align 4, !tbaa !236
  store <2 x i32> %i.bb, ptr %.011.i.i.i.i.i20, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bc, %i.c
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !2372

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %middle.block73, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.am, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.aw, %middle.block73 ], [ %i.bd, %.lr.ph.i.i.i.i.i19 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.d, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !268
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bh) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !267
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.b, align 8, !tbaa !264
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !276  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !279    ; 11 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775792
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 576460752303423487)
  %i.m = select i1 %i.k, i64 576460752303423487, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 4
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #45 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load <2 x double>, ptr %2, align 8, !tbaa !247
  store <2 x double> %i.s, ptr %i.r, align 8, !tbaa !247
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.a, -16
  %i.t = sub i64 %3, %i.f                         ; 2 uses
  %i.u = lshr i64 %i.t, 4
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 240
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.a, -16
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -16
  %i.z = add i64 %i.y, 16                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep37 = getelementptr i8, ptr %i.d, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep37
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 2305843009213693950      ; 3 uses
  %i.aa = shl i64 %n.vec, 4                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 4                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad
  %next.gep38 = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep39 = getelementptr i8, ptr %i.d, i64 %i.ad
  %next.gep40 = getelementptr i8, ptr %i.d, i64 %i.ae
  %wide.load = load <2 x double>, ptr %next.gep39, align 8, !tbaa !247, !alias.scope !2373
  %wide.load41 = load <2 x double>, ptr %next.gep40, align 8, !tbaa !247, !alias.scope !2373
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !2376, !noalias !2373
  store <2 x double> %wide.load41, ptr %next.gep38, align 8, !tbaa !247, !alias.scope !2376, !noalias !2373
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader68

.lr.ph.i.i.i.i.i.preheader68:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader68, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader68 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader68 ] ; 3 uses
  %i.ag = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !247
  store double %i.ag, ptr %.011.i.i.i.i.i, align 8, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !247
  store double %i.aj, ptr %i.ah, align 8, !tbaa !247
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2379

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 7 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.c
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %4 = add i64 %i.e, -16
  %i.an = sub i64 %4, %i.a                        ; 2 uses
  %i.ao = lshr i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check50 = icmp ult i64 %i.an, 272
  br i1 %min.iters.check50, label %.lr.ph.i.i.i.i.i19.preheader67, label %vector.memcheck43

vector.memcheck43:                                ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.aq = add i64 %i.e, -16
  %i.ar = sub i64 %i.aq, %i.a
  %i.as = and i64 %i.ar, -16                      ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.as
  %scevgep44 = getelementptr i8, ptr %i.at, i64 32
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep45 = getelementptr i8, ptr %i.au, i64 16
  %bound046 = icmp ult ptr %i.am, %scevgep45
  %bound147 = icmp ult ptr %1, %scevgep44
  %found.conflict48 = and i1 %bound046, %bound147
  br i1 %found.conflict48, label %.lr.ph.i.i.i.i.i19.preheader67, label %vector.ph51

vector.ph51:                                      ; preds = %vector.memcheck43
  %n.vec53 = and i64 %i.ap, 2305843009213693950   ; 3 uses
  %i.av = shl i64 %n.vec53, 4                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next62, %vector.body54 ] ; 2 uses
  %i.ay = shl i64 %index55, 4                     ; 3 uses
  %i.az = or disjoint i64 %i.ay, 16               ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.am, i64 %i.ay
  %next.gep57 = getelementptr i8, ptr %i.am, i64 %i.az
  %next.gep58 = getelementptr i8, ptr %1, i64 %i.ay
  %next.gep59 = getelementptr i8, ptr %1, i64 %i.az
  %wide.load60 = load <2 x double>, ptr %next.gep58, align 8, !tbaa !247, !alias.scope !2380
  %wide.load61 = load <2 x double>, ptr %next.gep59, align 8, !tbaa !247, !alias.scope !2380
  store <2 x double> %wide.load60, ptr %next.gep56, align 8, !tbaa !247, !alias.scope !2383, !noalias !2380
  store <2 x double> %wide.load61, ptr %next.gep57, align 8, !tbaa !247, !alias.scope !2383, !noalias !2380
  %index.next62 = add nuw i64 %index55, 2         ; 2 uses
  %i.ba = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.ba, label %middle.block63, label %vector.body54, !llvm.loop !2385

middle.block63:                                   ; preds = %vector.body54
  %cmp.n64 = icmp eq i64 %i.ap, %n.vec53
  br i1 %cmp.n64, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader67

.lr.ph.i.i.i.i.i19.preheader67:                   ; preds = %vector.memcheck43, %.lr.ph.i.i.i.i.i19.preheader, %middle.block63
  %.011.i.i.i.i.i20.ph = phi ptr [ %i.am, %vector.memcheck43 ], [ %i.am, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.aw, %middle.block63 ]
  %.0810.i.i.i.i.i21.ph = phi ptr [ %1, %vector.memcheck43 ], [ %1, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.ax, %middle.block63 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader67, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i19 ], [ %.011.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader67 ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i19 ], [ %.0810.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader67 ] ; 2 uses
  %i.bb = load <2 x double>, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !247
  store <2 x double> %i.bb, ptr %.011.i.i.i.i.i20, align 8, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bc, %i.c
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !2386

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %middle.block63, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.am, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.aw, %middle.block63 ], [ %i.bd, %.lr.ph.i.i.i.i.i19 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.d, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !280
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bh) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !279
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.b, align 8, !tbaa !276
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi3EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not90 = icmp eq ptr %2, %3
  br i1 %.not90, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = sdiv exact i64 %i.c, 12                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !714
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !715  ; 13 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 4 uses
  %i.q = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.q, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !236
  store i32 %i.t, ptr %i.r, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !236
  store i32 %i.w, ptr %i.u, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP3LocILi3EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2387

_ZSt22__uninitialized_move_aIP3LocILi3EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.z, ptr %i.g, align 8, !tbaa !715
  %i.aa = ptrtoint ptr %i.p to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIP3LocILi3EES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIP3LocILi3EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ad = udiv exact i64 %i.ab, 12
  br label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i43 ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i43 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i43 ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !236
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !236
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !4
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !236
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !4
  %i.an = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ao = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP3LocILi3EES2_ET0_T_S4_S3_.exit, !llvm.loop !2388

_ZSt13move_backwardIP3LocILi3EES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i43, %_ZSt22__uninitialized_move_aIP3LocILi3EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ap = icmp sgt i64 %i.c, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.preheader.i.i.i.i.i44:                     ; preds = %_ZSt13move_backwardIP3LocILi3EES2_ET0_T_S4_S3_.exit
  %i.aq = udiv exact i64 %i.c, 12
  br label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %.lr.ph.i.i.i.i.i45, %.lr.ph.preheader.i.i.i.i.i44
  %.012.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i45 ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i44 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i45 ], [ %1, %.lr.ph.preheader.i.i.i.i.i44 ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i45 ], [ %2, %.lr.ph.preheader.i.i.i.i.i44 ] ; 4 uses
  %i.ar = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ar, ptr %.0811.i.i.i.i.i, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !236
  store i32 %i.au, ptr %i.as, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !236
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  %i.ba = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i45, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !784

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.bc, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bc, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %i.bd = load i32, ptr %.sroa.04.08.i.i.i.i, align 4, !tbaa !236
  store i32 %i.bd, ptr %.09.i.i.i.i, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
end_hunk_3
