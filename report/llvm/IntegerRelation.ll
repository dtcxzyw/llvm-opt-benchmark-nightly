Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IntegerRelation?download=true
inline.NumInlined: 4457
inline.NumDeleted: 1288
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir10presburger15IntegerRelation23fourierMotzkinEliminateEjbPb:bb.a
  %61 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %62 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %63 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %64 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %65 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 6 uses
  %66 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %67 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %68 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 9 uses
  %69 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %70 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %71 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %72 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %73 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %74 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %75 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 6 uses
  %76 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %77 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %78 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 9 uses
  %79 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %80 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %81 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 6 uses
  %82 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %83 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %84 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 9 uses
  %85 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %86 = alloca %"class.llvm::DynamicAPInt", align 8 ; 13 uses
  %87 = alloca %"class.llvm::DynamicAPInt", align 8 ; 10 uses
  %88 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %89 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %90 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %91 = alloca %"class.llvm::DynamicAPInt", align 8 ; 10 uses
  %92 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 7 uses
  %93 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %94 = alloca %"class.llvm::detail::SlowDynamicAPInt", align 8 ; 8 uses
  %95 = alloca %"class.llvm::SmallVector.113", align 8 ; 10 uses
  %96 = alloca %"class.llvm::SmallVector.113", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %97 = alloca %"class.mlir::presburger::PresburgerSpace", align 16 ; 13 uses
  %98 = alloca %"class.mlir::presburger::IntegerRelation", align 8 ; 18 uses
  %99 = alloca %"class.llvm::SmallVector.50", align 8 ; 17 uses
  %100 = alloca %"class.llvm::DynamicAPInt", align 8 ; 29 uses
  %101 = alloca %"class.llvm::DynamicAPInt", align 8 ; 34 uses
  %102 = alloca %"class.llvm::DynamicAPInt", align 8 ; 21 uses
  %103 = alloca %"class.llvm::DynamicAPInt", align 8 ; 13 uses
  %104 = alloca %"class.llvm::DynamicAPInt", align 8 ; 13 uses
  %105 = alloca %"class.llvm::DynamicAPInt", align 8 ; 16 uses
  %106 = alloca %"class.llvm::DynamicAPInt", align 8 ; 16 uses
  %107 = alloca %"class.llvm::DynamicAPInt", align 8 ; 16 uses
  %108 = alloca %"class.llvm::DynamicAPInt", align 8 ; 16 uses
  %109 = alloca %"class.llvm::DynamicAPInt", align 8 ; 12 uses
  %110 = alloca %"class.llvm::DynamicAPInt", align 8 ; 13 uses
  %111 = alloca %"class.llvm::DynamicAPInt", align 8 ; 13 uses
  %112 = alloca %"class.llvm::SmallVector.50", align 8 ; 12 uses
  %113 = alloca %"class.llvm::SmallVector.50", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %.not563 = icmp eq i32 %i.d, 0
  br i1 %.not563, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.085516 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
  %i.h = mul i32 %i.g, %.085516
  %i.i = add i32 %i.h, %1
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !72
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.split, label %_ZN4llvmneERKNS_12DynamicAPIntEl.exit103, !prof !73

.split:                                           ; preds = %bb.b
  %i.p = load i64, ptr %i.l, align 8, !tbaa !72
  %.not512 = icmp eq i64 %i.p, 0
  br i1 %.not512, label %bb.c, label %bb.d

_ZN4llvmneERKNS_12DynamicAPIntEl.exit103:         ; preds = %bb.b
  %i.q = tail call noundef zeroext i1 @_ZN4llvm6detailneERKNS0_16SlowDynamicAPIntEl(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 noundef 0) #17
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split, %_ZN4llvmneERKNS_12DynamicAPIntEl.exit103
  %i.r = add nuw i32 %.085516, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !520

bb.d:                                             ; preds = %_ZN4llvmneERKNS_12DynamicAPIntEl.exit103, %.split
  %i.s = add i32 %1, 1
  %i.t = tail call noundef i32 @_ZN4mlir10presburger15IntegerRelation21gaussianEliminateVarsEjj(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i32 noundef %i.s) ; 0 uses
  br label %bb.tw

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @_ZN4mlir10presburger15IntegerRelation22gcdTightenInequalitiesEv(ptr noundef nonnull align 8 dereferenceable(624) %0)
  %i.u = tail call i64 @_ZNK4mlir10presburger15IntegerRelation27findConstraintWithNonZeroAtEjb(ptr noundef nonnull readonly align 8 dereferenceable(624) %0, i32 noundef %1, i1 noundef zeroext false)
  %.not.i160 = icmp samesign ult i64 %i.u, 4294967296
  br i1 %.not.i160, label %_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit, label %_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit.thread

_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit: ; preds = %._crit_edge
  %i.v = tail call i64 @_ZNK4mlir10presburger15IntegerRelation27findConstraintWithNonZeroAtEjb(ptr noundef nonnull readonly align 8 dereferenceable(624) %0, i32 noundef %1, i1 noundef zeroext true)
  %.not7.i = icmp samesign ult i64 %i.v, 4294967296
  br i1 %.not7.i, label %bb.e, label %_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit.thread

bb.e:                                             ; preds = %_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit
  %i.w = add i32 %1, 1
  tail call void @_ZN4mlir10presburger15IntegerRelation14removeVarRangeEjj(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i32 noundef %i.w)
  br label %bb.tw

_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit.thread: ; preds = %._crit_edge, %_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #17
  %i.x = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  store ptr %i.x, ptr %95, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %95, i64 8 ; 6 uses
  store i32 0, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %95, i64 12 ; 2 uses
  store i32 4, ptr %i.z, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 2 uses
  store ptr %i.aa, ptr %96, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %96, i64 8 ; 6 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %96, i64 12 ; 2 uses
  store i32 4, ptr %i.ac, align 4, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %.not478 = icmp eq i32 %i.ae, 0
  br i1 %.not478, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread:       ; preds = %_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %._crit_edge521

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNK4mlir10presburger15IntegerRelation9isColZeroEj.exit.thread
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #16 ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !48
  %.not564 = icmp eq i32 %.pre, 0
  br i1 %.not564, label %._crit_edge521, label %.lr.ph520

.lr.ph520:                                        ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br label %bb.h

._crit_edge521:                                   ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit, %_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.sroa.19.0.lcssa = phi ptr [ %i.ai, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread ], [ %.sroa.19.1, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ]
  %.sroa.11.0.lcssa = phi ptr [ %i.ah, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread ], [ %.sroa.11.1, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ] ; 3 uses
  %.sroa.0439.0.lcssa = phi ptr [ %i.ah, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ], [ null, %_ZNSt6vectorIjSaIjEE7reserveEm.exit.thread ], [ %.sroa.0439.1, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %97, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 17, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %97, i64 24 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %97, i64 40 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %97, i64 32 ; 4 uses
  store i32 0, ptr %i.ap, align 16, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %97, i64 36
  store i32 0, ptr %i.aq, align 4, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i161 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i161, label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit, label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i

_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %._crit_edge521
  %i.at = zext i32 %i.as to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull %i.ao, i64 noundef %i.at, i64 noundef 8) #17
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !41
  %gepdiff.i.i.i = shl nuw nsw i64 %i.av, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 8 %i.aw, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.f, %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.as, ptr %i.ap, align 16, !tbaa !42
  br label %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit

_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit: ; preds = %._crit_edge521, %.sink.split.i.i.i
  %i.ay = call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace12getVarKindAtEj(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef %1) #17 ; 2 uses
  %i.az = call noundef i32 @_ZNK4mlir10presburger15PresburgerSpace16getVarKindOffsetENS0_7VarKindE(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef %i.ay) #17
  %i.ba = sub i32 %1, %i.az                       ; 2 uses
  %i.bb = add i32 %i.ba, 1
  call void @_ZN4mlir10presburger15PresburgerSpace14removeVarRangeENS0_7VarKindEjj(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef %i.bb) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #17
  %i.bc = load i32, ptr %i.y, align 8, !tbaa !42
  %i.bd = load i32, ptr %i.ab, align 8, !tbaa !42
  %114 = mul i32 %i.bd, %i.bc
  %i.be = ptrtoint ptr %.sroa.11.0.lcssa to i64
  %i.bf = ptrtoint ptr %.sroa.0439.0.lcssa to i64 ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 2
  %115 = trunc i64 %i.bh to i32
  %116 = add i32 %114, %115
  %i.bi = load i32, ptr %i.c, align 8, !tbaa !69
  %i.bj = load i32, ptr %i.al, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !76
  %i.bq = add i32 %i.bl, %i.bj
  %i.br = add i32 %i.bq, %i.bn
  %i.bs = add i32 %i.br, %i.bp                    ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4mlir10presburger15IntegerRelationE, i64 16), ptr %98, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 16 dereferenceable(40) %97, i64 17, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %98, i64 32 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %98, i64 48 ; 3 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %98, i64 40 ; 2 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !42
  %i.bx = getelementptr inbounds nuw i8, ptr %98, i64 44
  store i32 0, ptr %i.bx, align 4, !tbaa !43
  %i.by = load i32, ptr %i.ap, align 16, !tbaa !42 ; 3 uses
  %.not.i.i.i.i162 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i162, label %_ZN4mlir10presburger15IntegerRelationC2EjjjRKNS0_15PresburgerSpaceE.exit, label %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i

_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i: ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit
  %i.bz = zext i32 %i.by to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull %i.bv, i64 noundef %i.bz, i64 noundef 8) #17, !inline_history !86
  %i.ca = load i32, ptr %i.ap, align 16, !tbaa !42 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !41
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !41
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.cb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 8 %i.cc, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.g, %_ZSt4copyIPKN4mlir10presburger10IdentifierEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !42
  br label %_ZN4mlir10presburger15IntegerRelationC2EjjjRKNS0_15PresburgerSpaceE.exit

_ZN4mlir10presburger15IntegerRelationC2EjjjRKNS0_15PresburgerSpaceE.exit: ; preds = %_ZN4mlir10presburger15PresburgerSpaceC2ERKS1_.exit, %.sink.split.i.i.i.i
  %i.ce = load <4 x i32>, ptr %97, align 16, !tbaa !48
  %i.cf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ce)
  %op.rdx932 = add i32 %i.cf, 1
  call void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2Ejjjj(ptr noundef nonnull align 8 dereferenceable(288) %i.bv, i32 noundef 0, i32 noundef %op.rdx932, i32 noundef %i.bi, i32 noundef %i.bs) #17, !inline_history !86
  %i.cg = getelementptr inbounds nuw i8, ptr %98, i64 336 ; 2 uses
  %i.ch = load <4 x i32>, ptr %97, align 16, !tbaa !48
  %i.ci = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ch)
  %op.rdx933 = add i32 %i.ci, 1
  call void @_ZN4mlir10presburger6MatrixIN4llvm12DynamicAPIntEEC2Ejjjj(ptr noundef nonnull align 8 dereferenceable(288) %i.cg, i32 noundef 0, i32 noundef %op.rdx933, i32 noundef %116, i32 noundef %i.bs) #17, !inline_history !86
  %i.cj = load ptr, ptr %96, align 8, !tbaa !41   ; 2 uses
  %i.ck = load i32, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %.idx = shl nuw nsw i64 %i.cl, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx
  %.not536 = icmp eq i32 %i.ck, 0
  br i1 %.not536, label %._crit_edge540, label %.lr.ph539

.lr.ph539:                                        ; preds = %_ZN4mlir10presburger15IntegerRelationC2EjjjRKNS0_15PresburgerSpaceE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %99, i64 8 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %99, i64 12 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %100, i64 8 ; 11 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %101, i64 8 ; 14 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 12 uses
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %102, i64 8 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %104, i64 8 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %107, i64 8 ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %106, i64 8 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %103, i64 8 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %111, i64 8 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %110, i64 8 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %109, i64 8 ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %108, i64 8 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %94, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %91, i64 8 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %98, i64 352
  %i.gs = getelementptr inbounds nuw i8, ptr %98, i64 344
  br label %bb.v

bb.h:                                             ; preds = %.lr.ph520, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit
  %i.gt = phi i32 [ 0, %.lr.ph520 ], [ %i.iz, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ]
  %.sroa.0439.0519 = phi ptr [ %i.ah, %.lr.ph520 ], [ %.sroa.0439.1, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ] ; 9 uses
  %.sroa.11.0518 = phi ptr [ %i.ah, %.lr.ph520 ], [ %.sroa.11.1, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ] ; 8 uses
  %.sroa.19.0517 = phi ptr [ %i.ai, %.lr.ph520 ], [ %.sroa.19.1, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ] ; 6 uses
  %i.gu = load i32, ptr %i.ak, align 8, !tbaa !71
  %i.gv = mul i32 %i.gu, %i.gt
  %i.gw = add i32 %i.gv, %1
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %i.gx ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !72
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %.split454, label %_ZN4llvmeqERKNS_12DynamicAPIntEl.exit, !prof !73

.split454:                                        ; preds = %bb.h
  %i.hd = load i64, ptr %i.gz, align 8, !tbaa !72
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %bb.i, label %bb.o

_ZN4llvmeqERKNS_12DynamicAPIntEl.exit:            ; preds = %bb.h
  %i.hf = call noundef zeroext i1 @_ZN4llvm6detaileqERKNS0_16SlowDynamicAPIntEl(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i64 noundef 0) #17
  br i1 %i.hf, label %bb.i, label %_ZN4llvmeqERKNS_12DynamicAPIntEl.exit._crit_edge

_ZN4llvmeqERKNS_12DynamicAPIntEl.exit._crit_edge: ; preds = %_ZN4llvmeqERKNS_12DynamicAPIntEl.exit
  %.pre595 = load i32, ptr %i.b, align 4, !tbaa !48
  %.pre596 = load i32, ptr %i.ak, align 8, !tbaa !71
  %.pre597 = load ptr, ptr %i.aj, align 8, !tbaa !41
  %.pre642 = mul i32 %.pre596, %.pre595
  %.pre643 = add i32 %.pre642, %1
  %.pre645 = zext i32 %.pre643 to i64
  br label %bb.o

bb.i:                                             ; preds = %.split454, %_ZN4llvmeqERKNS_12DynamicAPIntEl.exit
  %.not.i163 = icmp eq ptr %.sroa.11.0518, %.sroa.19.0517
  br i1 %.not.i163, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hg = load i32, ptr %i.b, align 4, !tbaa !48
  store i32 %i.hg, ptr %.sroa.11.0518, align 4, !tbaa !48
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.11.0518, i64 4
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.hi = ptrtoint ptr %.sroa.11.0518 to i64
  %i.hj = ptrtoint ptr %.sroa.0439.0519 to i64
  %i.hk = sub i64 %i.hi, %i.hj                    ; 6 uses
  %i.hl = icmp eq i64 %i.hk, 9223372036854775804
  br i1 %i.hl, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.hm = ashr exact i64 %i.hk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hm, i64 1)
  %i.hn = add nsw i64 %.sroa.speculated.i.i.i, %i.hm ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hm
  %i.hp = call i64 @llvm.umin.i64(i64 %i.hn, i64 2305843009213693951)
  %i.hq = select i1 %i.ho, i64 2305843009213693951, i64 %i.hp ; 3 uses
  %.not.i.i.i164 = icmp ne i64 %i.hq, 0
  call void @llvm.assume(i1 %.not.i.i.i164)
  %i.hr = shl nuw nsw i64 %i.hq, 2
  %i.hs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #16 ; 4 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 %i.hk ; 2 uses
  %i.hu = load i32, ptr %i.b, align 4, !tbaa !48
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !48
  %i.hv = icmp sgt i64 %i.hk, 0
  br i1 %i.hv, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hs, ptr align 4 %.sroa.0439.0519, i64 %i.hk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0439.0519, null
end_hunk_0
