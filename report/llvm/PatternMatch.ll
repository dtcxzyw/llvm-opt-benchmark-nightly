Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PatternMatch?download=true
inline.NumInlined: 1294
inline.NumDeleted: 890
begin_hunk_0_@_ZN4mlir12RewriterBase14eraseOpResultsEPNS_9OperationERKN4llvm9BitVectorE:bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i45 = load ptr, ptr %i.at, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i45, i64 8
  %.sroa.0.0.copyload.i.i.i46 = load ptr, ptr %i.au, align 8
  store ptr %.sroa.0.0.copyload.i.i.i46, ptr %4, align 8
  %i.av = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 8388608
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.c, !prof !129

bb.c:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !133
  %i.bf = zext i32 %i.be to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %._crit_edge, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.bc, %bb.c ], [ null, %._crit_edge ]
  %.sroa.4.0.i.i = phi i64 [ %i.bf, %bb.c ], [ 0, %._crit_edge ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #16
  %i.bg = load ptr, ptr %5, align 8, !tbaa !38
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !39
  %i.bi = zext i32 %i.bh to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.bg, i64 %i.bi) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.bj = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  store ptr %i.bj, ptr %3, align 8
  %i.bk = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  store ptr %i.bl, ptr %9, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bn = extractvalue { ptr, i64 } %i.bk, 1
  store i64 %i.bn, ptr %i.bm, align 8
  call void @_ZN4mlir10BlockRangeC1EN4llvm8ArrayRefIPNS_5BlockEEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr null, i64 0) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.bo = load i64, ptr %7, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefENS_10ValueRangeENS_9TypeRangeENS2_8ArrayRefINS_14NamedAttributeEEENS_10BlockRangeENS2_15MutableArrayRefISt10unique_ptrINS_6RegionESt14default_deleteISC_EEEE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr %i.aw, i64 %i.ax, i64 %i.bo, i64 %i.bq, ptr noundef nonnull byval(%"class.mlir::TypeRange") align 8 %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef.76") align 8 %9, ptr noundef nonnull byval(%"class.mlir::BlockRange") align 8 %10, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %11) #16
  %i.br = load i32, ptr %i.ay, align 4
  %i.bs = and i32 %i.br, 8388607                  ; 2 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %.not100108 = icmp eq i32 %i.bs, 0
  br i1 %.not100108, label %._crit_edge111, label %.lr.ph110

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit
  %.sroa.494.0107 = phi i64 [ %i.cw, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit ] ; 2 uses
  %i.bu = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 noundef %.sroa.494.0107) #16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8 ; 3 uses
  %i.bw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.bx = icmp eq i64 %i.bw, 6
  br i1 %i.bx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !134
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = add i32 %i.ca, 6
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit

bb.e:                                             ; preds = %.lr.ph
  %i.cc = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.cd = and i32 %i.cc, 7
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit

_ZNK4mlir8OpResult15getResultNumberEv.exit:       ; preds = %bb.d, %bb.e
  %.1.i.i = phi i32 [ %i.cd, %bb.e ], [ %i.cb, %bb.d ] ; 2 uses
  %i.ce = and i32 %.1.i.i, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = lshr i32 %.1.i.i, 6
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = load ptr, ptr %2, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !17
  %i.cm = and i64 %i.cg, %i.cl
  %.not104 = icmp eq i64 %i.cm, 0
  br i1 %.not104, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %_ZNK4mlir8OpResult15getResultNumberEv.exit
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = load i32, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !40
  %.not.i50 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i50, label %bb.h, label %bb.g, !prof !142

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.co)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %bb.f
  %i.cr = zext i32 %i.cp to i64
  %i.cs = load ptr, ptr %5, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  store ptr %i.co, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.b, align 8, !tbaa !39
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.b, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit: ; preds = %bb.h, %bb.g, %_ZNK4mlir8OpResult15getResultNumberEv.exit
  %i.cw = add nuw nsw i64 %.sroa.494.0107, 1      ; 2 uses
  %.not = icmp eq i64 %i.cw, %i.aj
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge111:                                   ; preds = %.lr.ph110, %_ZN4mlir9Operation11getOperandsEv.exit
  %i.cx = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(304) %6) #16 ; 6 uses
  %i.cy = load i32, ptr %i.ay, align 4            ; 3 uses
  %i.cz = and i32 %i.cy, 8388607                  ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %._crit_edge116, label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %._crit_edge111
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dc = lshr i32 %i.cy, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.dc, 1
  %i.dd = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dd
  %i.df = lshr i32 %i.cy, 21
  %i.dg = and i32 %i.df, 2040
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !143
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.di, i64 %i.dl ; 2 uses
  %i.dn = shl nuw nsw i32 %i.cz, 5
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cx, i64 44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  br label %bb.i

.lr.ph110:                                        ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %.lr.ph110
  %.sroa.080.0109 = phi i64 [ %i.du, %.lr.ph110 ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.dt = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %6) #16 ; 0 uses
  %i.du = add nuw nsw i64 %.sroa.080.0109, 1      ; 2 uses
  %.not100 = icmp eq i64 %i.du, %i.bt
  br i1 %.not100, label %._crit_edge111, label %.lr.ph110

._crit_edge116:                                   ; preds = %bb.i, %._crit_edge111
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.dv = load i32, ptr %i.d, align 4, !tbaa !58  ; 7 uses
  %i.dw = zext i32 %i.dv to i64                   ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dx, ptr %12, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 6, ptr %i.dz, align 4, !tbaa !40
  %i.ea = icmp ugt i32 %i.dv, 6
  br i1 %i.ea, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i

_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %._crit_edge116
  %.not.i55 = icmp eq i32 %i.dv, 0
  br i1 %.not.i55, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread141

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread: ; preds = %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  store i32 %i.dv, ptr %i.dy, align 8, !tbaa !39
  br label %._crit_edge121

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread141: ; preds = %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.eb = shl nuw nsw i64 %i.dw, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dx, i8 0, i64 %i.eb, i1 false), !tbaa !144
  store i32 %i.dv, ptr %i.dy, align 8, !tbaa !39
  br label %.lr.ph120

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit: ; preds = %._crit_edge116
  store i32 0, ptr %i.dy, align 8, !tbaa !39
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.dx, i64 noundef %i.dw, i64 noundef 8) #16
  %i.ec = load ptr, ptr %12, align 8, !tbaa !38
  %i.ed = shl nuw nsw i64 %i.dw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ec, i8 0, i64 %i.ed, i1 false), !tbaa !144
  %.pre123 = load i32, ptr %i.d, align 4, !tbaa !58 ; 2 uses
  %.pre125.pre = load ptr, ptr %12, align 8       ; 2 uses
  store i32 %i.dv, ptr %i.dy, align 8, !tbaa !39
  %.not102117 = icmp eq i32 %.pre123, 0
  br i1 %.not102117, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread141, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit
  %.in = phi i32 [ %i.dv, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread141 ], [ %.pre123, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit ]
  %.pre124144 = phi ptr [ %i.dx, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread141 ], [ %.pre125.pre, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit ] ; 2 uses
  %i.ee = zext i32 %.in to i64
  %i.ef = load ptr, ptr %2, align 8, !tbaa !38
  %i.eg = getelementptr inbounds i8, ptr %i.cx, i64 -96
  br label %bb.o

bb.i:                                             ; preds = %_ZN4mlir9Operation10getRegionsEv.exit, %bb.i
  %.sroa.071.0114 = phi ptr [ %i.dm, %_ZN4mlir9Operation10getRegionsEv.exit ], [ %i.ez, %bb.i ] ; 2 uses
  %.sroa.7.0113 = phi i64 [ 0, %_ZN4mlir9Operation10getRegionsEv.exit ], [ %i.ey, %bb.i ] ; 2 uses
  %i.eh = load i32, ptr %i.dq, align 4            ; 3 uses
  %i.ei = and i32 %i.eh, 8388607
  %i.ej = icmp ne i32 %i.ei, 0
  call void @llvm.assume(i1 %i.ej)
  %i.ek = lshr i32 %i.eh, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.ek, 1
  %i.el = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.el
  %i.en = lshr i32 %i.eh, 21
  %i.eo = and i32 %i.en, 2040
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep
  %i.er = load i32, ptr %i.ds, align 8, !tbaa !143
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.es
  %i.eu = and i64 %.sroa.7.0113, 4294967295
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !106
  call void @_ZN4mlir12RewriterBase18inlineRegionBeforeERNS_6RegionES2_N4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.071.0114, ptr noundef nonnull align 8 dereferenceable(28) %i.ev, ptr %i.ex)
  %i.ey = add i64 %.sroa.7.0113, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.071.0114, i64 32 ; 2 uses
  %.not101 = icmp eq ptr %i.ez, %i.dp
  br i1 %.not101, label %._crit_edge116, label %bb.i

._crit_edge121:                                   ; preds = %bb.s, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit
  %.pre124140 = phi ptr [ %i.dx, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.thread ], [ %.pre125.pre, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit ], [ %.pre124144, %bb.s ]
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %.pre124140, i64 %i.dw) #16
  %i.fa = load i64, ptr %13, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = load ptr, ptr %0, align 8, !tbaa !56
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, i64 %i.fa, i64 %i.fc) #16
  %i.ff = load ptr, ptr %12, align 8, !tbaa !38   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dx
  br i1 %i.fg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge121
  call void @free(ptr noundef %i.ff) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge121
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not.i.i61 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i61, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x ptr> %i.an, ptr %i.al, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.l, %bb.m
  %i.fh = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.a
  br i1 %i.fi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit
  call void @free(ptr noundef %i.fh) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret ptr %i.cx

bb.o:                                             ; preds = %.lr.ph120, %bb.s
  %.0119 = phi i32 [ 0, %.lr.ph120 ], [ %.1, %bb.s ] ; 4 uses
  %.sroa.062.0118 = phi i64 [ 0, %.lr.ph120 ], [ %i.ga, %bb.s ] ; 4 uses
  %i.fj = and i64 %.sroa.062.0118, 63
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = lshr i64 %.sroa.062.0118, 6
  %i.fm = and i64 %i.fl, 67108863
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !17
  %i.fp = and i64 %i.fo, %i.fk
  %.not103 = icmp eq i64 %i.fp, 0
  br i1 %.not103, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.fq = add i32 %.0119, 1                       ; 2 uses
  %i.fr = icmp ult i32 %.0119, 6
  br i1 %i.fr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fs = zext nneg i32 %i.fq to i64
  %i.ft = sub nsw i64 0, %i.fs
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.ft
  br label %_ZN4mlir9Operation9getResultEj.exit

bb.r:                                             ; preds = %bb.p
  %i.fv = add i32 %.0119, -5
  %i.fw = zext i32 %i.fv to i64
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = getelementptr inbounds [24 x i8], ptr %i.eg, i64 %i.fx
  br label %_ZN4mlir9Operation9getResultEj.exit

_ZN4mlir9Operation9getResultEj.exit:              ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.fu, %bb.q ], [ %i.fy, %bb.r ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.pre124144, i64 %.sroa.062.0118
  store ptr %.0.i.i, ptr %i.fz, align 8, !tbaa !144
  br label %bb.s

bb.s:                                             ; preds = %_ZN4mlir9Operation9getResultEj.exit, %bb.o
  %.1 = phi i32 [ %.0119, %bb.o ], [ %i.fq, %_ZN4mlir9Operation9getResultEj.exit ]
  %i.ga = add nuw nsw i64 %.sroa.062.0118, 1      ; 2 uses
  %.not102 = icmp eq i64 %i.ga, %i.ee
  br i1 %.not102, label %._crit_edge121, label %bb.o
}

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN4mlir10BlockRangeC1EN4llvm8ArrayRefIPNS_5BlockEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #4

declare void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefENS_10ValueRangeENS_9TypeRangeENS2_8ArrayRefINS_14NamedAttributeEEENS_10BlockRangeENS2_15MutableArrayRefISt10unique_ptrINS_6RegionESt14default_deleteISC_EEEE(ptr noundef nonnull align 8 dereferenceable(304), ptr, ptr, i64, i64, i64, ptr noundef byval(%"class.mlir::TypeRange") align 8, ptr noundef byval(%"class.llvm::ArrayRef.76") align 8, ptr noundef byval(%"class.mlir::BlockRange") align 8, ptr noundef byval(%"class.llvm::MutableArrayRef") align 8) unnamed_addr #4

declare noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #4

declare noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir12RewriterBase18inlineRegionBeforeERNS_6RegionES2_N4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %1, align 8, !tbaa !124
  %i.d = icmp eq ptr %1, %i.c                     ; 2 uses
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %i.d, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106  ; 5 uses
  %i.h = icmp eq ptr %3, %1
  br i1 %i.h, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.g, ptr nonnull align 8 dereferenceable(16) %1) #16
  %i.i = icmp eq ptr %i.g, %1
  br i1 %i.i, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !106
  store ptr %i.k, ptr %1, align 8, !tbaa !124
  %i.m = load ptr, ptr %3, align 8, !tbaa !124    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %3, ptr %i.n, align 8, !tbaa !106
  store ptr %i.m, ptr %i.g, align 8, !tbaa !124
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !106
  store ptr %i.j, ptr %3, align 8, !tbaa !124
  br label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit

bb.f:                                             ; preds = %.lr.ph, %_ZN4mlir12RewriterBase15moveBlockBeforeEPNS_5BlockEPNS_6RegionEN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEE.exit
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 3 uses
  %i.r = tail call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.q) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !106
  tail call void @_ZN4mlir5Block10moveBeforeEPNS_6RegionEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull %2, ptr %3) #16
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN4mlir12RewriterBase15moveBlockBeforeEPNS_5BlockEPNS_6RegionEN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull %i.q, ptr noundef %i.r, ptr %i.t) #16, !inline_history !146
  br label %_ZN4mlir12RewriterBase15moveBlockBeforeEPNS_5BlockEPNS_6RegionEN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEE.exit

_ZN4mlir12RewriterBase15moveBlockBeforeEPNS_5BlockEPNS_6RegionEN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEE.exit: ; preds = %bb.f, %bb.g
  %i.y = load ptr, ptr %1, align 8, !tbaa !124
  %i.z = icmp eq ptr %1, %i.y
  br i1 %i.z, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.f, !llvm.loop !147

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit: ; preds = %_ZN4mlir12RewriterBase15moveBlockBeforeEPNS_5BlockEPNS_6RegionEN4llvm14ilist_iteratorINS5_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEE.exit, %.preheader, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir12RewriterBase22finalizeOpModificationEPNS_9OperationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.thread

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef %1) #16
end_hunk_0
