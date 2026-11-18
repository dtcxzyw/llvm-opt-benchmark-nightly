Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyCFG?download=true
inline.NumInlined: 15223
inline.NumDeleted: 6880
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN12_GLOBAL__N_114SimplifyCFGOpt18simplifyCondBranchEPN4llvm10CondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE:bb.a
bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  %i.kq = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 1, ptr %i.kq, align 8, !tbaa !194
  %i.kr = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 1, ptr %i.kr, align 1, !tbaa !195
  %i.ks = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %.0105.i, ptr noundef %i.ki, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr null, i64 0) #27 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !238, !nonnull !74, !align !229 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.gs, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i128.i, align 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !65
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef %i.ks, ptr noundef nonnull align 8 dereferenceable(34) %51, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #27, !inline_history !895
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.ks) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i: ; preds = %bb.bd, %bb.bc
  %.1.i.i = phi ptr [ %i.kp, %bb.bc ], [ %i.ks, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %bb.be

bb.be:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i, %_ZNK4llvm5APInt6isZeroEv.exit.i, %.split.i
  %.0104.i = phi ptr [ %.0105.i, %_ZNK4llvm5APInt6isZeroEv.exit.i ], [ %.1.i.i, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit.i ], [ %.0105.i, %.split.i ]
  %i.ky = load i32, ptr %i.l, align 4, !tbaa !935
  %i.kz = getelementptr inbounds nuw i8, ptr %.0105.i, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !123
  %i.lb = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.la, ptr noundef nonnull align 8 dereferenceable(12) %50) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  %i.lc = getelementptr inbounds nuw i8, ptr %52, i64 32
  store i16 257, ptr %i.lc, align 8
  %i.ld = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.ky, ptr noundef %.0104.i, ptr noundef %i.lb, ptr noundef nonnull align 8 dereferenceable(34) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  %i.le = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #27 ; 4 uses
  call void @_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.le, ptr noundef %i.ld, ptr noundef %.0173.i, ptr noundef %.0172.i, ptr null, i64 0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  %i.lf = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i16 257, ptr %i.lf, align 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !238, !nonnull !74, !align !229 ; 2 uses
  %.sroa.0.0.copyload.i.i136.i = load ptr, ptr %i.gs, align 8
  %.sroa.2.0.copyload.i.i138.i = load i64, ptr %.sroa.4.0..sroa_idx.i128.i, align 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !65
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(8) %i.lh, ptr noundef nonnull %i.le, ptr noundef nonnull align 8 dereferenceable(34) %32, ptr %.sroa.0.0.copyload.i.i136.i, i64 %.sroa.2.0.copyload.i.i138.i) #27, !inline_history !889
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %i.le) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br i1 %i.eo, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ll = load ptr, ptr %38, align 8, !tbaa !77
  %i.lm = load i32, ptr %i.dy, align 8, !tbaa !112
  %i.ln = zext i32 %i.lm to i64
  call void @_ZN4llvm16setBranchWeightsERNS_11InstructionENS_8ArrayRefIjEEbb(ptr noundef nonnull align 8 dereferenceable(72) %i.le, ptr %i.ll, i64 %i.ln, i1 noundef zeroext false, i1 noundef zeroext false) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  %i.lo = load i32, ptr %i.jz, align 8, !tbaa !352
  %i.lp = icmp ugt i32 %i.lo, 64
  br i1 %i.lp, label %bb.bh, label %_ZN4llvm5APIntD2Ev.exit139.i

bb.bh:                                            ; preds = %bb.bg
  %i.lq = load ptr, ptr %50, align 8, !tbaa !153  ; 2 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %_ZN4llvm5APIntD2Ev.exit139.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #31
  br label %_ZN4llvm5APIntD2Ev.exit139.i

_ZN4llvm5APIntD2Ev.exit139.i:                     ; preds = %bb.bi, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  %i.ls = load i32, ptr %i.jy, align 8, !tbaa !352
  %i.lt = icmp ugt i32 %i.ls, 64
  br i1 %i.lt, label %bb.bj, label %_ZN4llvm5APIntD2Ev.exit140.i

bb.bj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit139.i
  %i.lu = load ptr, ptr %49, align 8, !tbaa !153  ; 2 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %_ZN4llvm5APIntD2Ev.exit140.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.lu) #31
  br label %_ZN4llvm5APIntD2Ev.exit140.i

_ZN4llvm5APIntD2Ev.exit140.i:                     ; preds = %bb.bk, %bb.bj, %_ZN4llvm5APIntD2Ev.exit139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  %i.lw = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !352
  %i.ly = icmp ugt i32 %i.lx, 64
  br i1 %i.ly, label %bb.bl, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.bl:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit140.i
  %i.lz = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !153 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZdaPv(ptr noundef nonnull %i.ma) #31
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.bm, %bb.bl, %_ZN4llvm5APIntD2Ev.exit140.i
  %i.mc = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !352
  %i.me = icmp ugt i32 %i.md, 64
  br i1 %i.me, label %bb.bn, label %_ZN4llvm13ConstantRangeD2Ev.exit.i

bb.bn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i
  %i.mf = load ptr, ptr %45, align 8, !tbaa !153  ; 2 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %_ZN4llvm13ConstantRangeD2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZdaPv(ptr noundef nonnull %i.mf) #31
  br label %_ZN4llvm13ConstantRangeD2Ev.exit.i

_ZN4llvm13ConstantRangeD2Ev.exit.i:               ; preds = %bb.bo, %bb.bn, %_ZN4llvm5APIntD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  br label %.loopexit.i

bb.bp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.thread.i.thread, %_ZN4llvm5APIntD2Ev.exit130.i, %.split253.i, %_ZN4llvm5APIntD2Ev.exit.thread.i, %_ZNK4llvm5APInteqEm.exit.i
  %i.mh = load i32, ptr %i.bh, align 8, !tbaa !112
  %i.mi = call noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef 80) #27 ; 5 uses
  call void @_ZN4llvm10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76) %i.mi, ptr noundef %.0105.i, ptr noundef %.0172.i, i32 noundef %i.mh, ptr null, i64 0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.mj = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i16 257, ptr %i.mj, align 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !238, !nonnull !74, !align !229 ; 2 uses
  %.sroa.0.0.copyload.i.i141.i = load ptr, ptr %i.gs, align 8
  %.sroa.2.0.copyload.i.i143.i = load i64, ptr %.sroa.4.0..sroa_idx.i128.i, align 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !65
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef nonnull %i.mi, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr %.sroa.0.0.copyload.i.i141.i, i64 %.sroa.2.0.copyload.i.i143.i) #27, !inline_history !896
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %i.mi) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br i1 %i.eo, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27
  %i.mp = load i32, ptr %i.bh, align 8, !tbaa !112 ; 2 uses
  %i.mq = zext i32 %i.mp to i64
  %i.mr = add nuw nsw i64 %i.mq, 1                ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  store ptr %i.ms, ptr %53, align 8, !tbaa !77
  %i.mt = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 5 uses
  store i32 0, ptr %i.mt, align 8, !tbaa !112
  %i.mu = getelementptr inbounds nuw i8, ptr %53, i64 12
  store i32 12, ptr %i.mu, align 4, !tbaa !113
  %i.mv = icmp ugt i32 %i.mp, 11
  br i1 %i.mv, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i: ; preds = %bb.bq
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %53, ptr noundef nonnull %i.ms, i64 noundef %i.mr, i64 noundef 4) #27
  %.pre.i.i.i.i = load i32, ptr %i.mt, align 8, !tbaa !112
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i to i64 ; 2 uses
  %.not11.i.i.i.i = icmp samesign eq i64 %i.mr, %.pre13.i.i.i.i
  %.pre211.i = load ptr, ptr %53, align 8, !tbaa !77 ; 2 uses
  br i1 %.not11.i.i.i.i, label %_ZN4llvm11SmallVectorIjLj12EEC2Em.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i, %bb.bq
  %i.mw = phi ptr [ %i.ms, %bb.bq ], [ %.pre211.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i.i = phi i64 [ 0, %bb.bq ], [ %.pre13.i.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ] ; 2 uses
  %i.mx = getelementptr [4 x i8], ptr %i.mw, i64 %.pre-phi.i.i3.i.i
  %i.my = sub nsw i64 %i.mr, %.pre-phi.i.i3.i.i
  %i.mz = shl nsw i64 %i.my, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mx, i8 0, i64 %i.mz, i1 false), !tbaa !248
  br label %_ZN4llvm11SmallVectorIjLj12EEC2Em.exit.i

_ZN4llvm11SmallVectorIjLj12EEC2Em.exit.i:         ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i
  %i.na = phi ptr [ %.pre211.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ], [ %i.mw, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.nb = trunc i64 %i.mr to i32
  store i32 %i.nb, ptr %i.mt, align 8, !tbaa !112
  %i.nc = load ptr, ptr %38, align 8, !tbaa !77   ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !248
  store i32 %i.ne, ptr %i.na, align 4, !tbaa !248
  %i.nf = load i32, ptr %i.mt, align 8, !tbaa !112 ; 2 uses
  %i.ng = zext i32 %i.nf to i64
  %.idx.i = shl nuw nsw i64 %i.ng, 2              ; 2 uses
  %i.nh = getelementptr i8, ptr %i.na, i64 %.idx.i ; 3 uses
  %.not115190.i = icmp eq i32 %i.nf, 1
  br i1 %.not115190.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4llvm11SmallVectorIjLj12EEC2Em.exit.i
  %.0103189.i = getelementptr i8, ptr %i.na, i64 4 ; 6 uses
  %i.ni = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.nj = lshr exact i64 %i.ni, 2
  %i.nk = add nuw nsw i64 %i.nj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ni, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.nl = getelementptr i8, ptr %i.nc, i64 4
  %bound0 = icmp ult ptr %.0103189.i, %i.nl
  %bound1 = icmp ult ptr %i.nc, %i.nh
  %found.conflict = and i1 %bound0, %bound1
  %57 = getelementptr inbounds nuw i8, ptr %37, i64 36
  %bound0554 = icmp ult ptr %.0103189.i, %57
  %bound1555 = icmp ult ptr %i.bh, %i.nh
  %found.conflict556 = and i1 %bound0554, %bound1555
  %conflict.rdx = or i1 %found.conflict, %found.conflict556
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nk, 9223372036854775800     ; 3 uses
  %i.nm = shl i64 %n.vec, 2
  %i.nn = getelementptr i8, ptr %.0103189.i, i64 %i.nm
  %i.no = load i32, ptr %i.nc, align 4, !tbaa !248, !alias.scope !936
  %i.np = load i32, ptr %i.bh, align 8, !tbaa !112, !alias.scope !937
  %i.nq = udiv i32 %i.no, %i.np
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.nq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0103189.i, i64 %i.nr ; 2 uses
  %i.ns = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !248, !alias.scope !938, !noalias !939
  store <4 x i32> %broadcast.splat, ptr %i.ns, align 4, !tbaa !248, !alias.scope !938, !noalias !939
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nt = icmp eq i64 %index.next, %n.vec
  br i1 %i.nt, label %middle.block, label %vector.body, !llvm.loop !901

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nk, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.0103191.i.ph = phi ptr [ %.0103189.i, %vector.memcheck ], [ %.0103189.i, %.lr.ph.preheader.i ], [ %i.nn, %middle.block ]
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %.pre212.i = load i32, ptr %i.mt, align 8, !tbaa !112
  %i.nu = zext i32 %.pre212.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4llvm11SmallVectorIjLj12EEC2Em.exit.i
  %i.nv = phi i64 [ %i.nu, %._crit_edge.loopexit.i ], [ 1, %_ZN4llvm11SmallVectorIjLj12EEC2Em.exit.i ]
  call void @_ZN4llvm16setBranchWeightsERNS_11InstructionENS_8ArrayRefIjEEbb(ptr noundef nonnull align 8 dereferenceable(72) %i.mi, ptr nonnull %i.na, i64 %i.nv, i1 noundef zeroext false, i1 noundef zeroext false) #27
  %i.nw = load ptr, ptr %53, align 8, !tbaa !77   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.ms
  br i1 %i.nx, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit.i, label %bb.br

bb.br:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.nw) #27
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit.i

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit.i:         ; preds = %bb.br, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br label %bb.bs

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0103191.i = phi ptr [ %.0103.i, %.lr.ph.i ], [ %.0103191.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ny = load i32, ptr %i.nc, align 4, !tbaa !248
  %i.nz = load i32, ptr %i.bh, align 8, !tbaa !112
  %i.oa = udiv i32 %i.ny, %i.nz
  store i32 %i.oa, ptr %.0103191.i, align 4, !tbaa !248
  %.0103.i = getelementptr inbounds nuw i8, ptr %.0103191.i, i64 4 ; 2 uses
  %.not115.i = icmp eq ptr %.0103.i, %i.nh
  br i1 %.not115.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !902

bb.bs:                                            ; preds = %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit.i, %bb.bp
  %i.ob = load ptr, ptr %i.bf, align 8, !tbaa !77 ; 2 uses
  %i.oc = load i32, ptr %i.bh, align 8, !tbaa !112 ; 2 uses
  %i.od = zext i32 %i.oc to i64
  %.idx205.i = shl nuw nsw i64 %i.od, 3
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.idx205.i
  %.not116192.i = icmp eq i32 %i.oc, 0
  br i1 %.not116192.i, label %._crit_edge196.i, label %.lr.ph195.i

._crit_edge196.i:                                 ; preds = %.lr.ph195.i, %bb.bs
  %i.of = getelementptr inbounds nuw i8, ptr %.0173.i, i64 56
  %.sroa.0150.0201.i = load ptr, ptr %i.of, align 8, !tbaa !130 ; 2 uses
  %i.og = getelementptr inbounds i8, ptr %.sroa.0150.0201.i, i64 -24 ; 2 uses
  %i.oh = load i8, ptr %i.og, align 8, !tbaa !107
  %i.oi = icmp eq i8 %i.oh, 87
  br i1 %i.oi, label %.lr.ph204.i, label %.loopexit.i

.lr.ph195.i:                                      ; preds = %bb.bs, %.lr.ph195.i
  %.0102193.i = phi ptr [ %i.ok, %.lr.ph195.i ], [ %i.ob, %bb.bs ] ; 2 uses
  %i.oj = load ptr, ptr %.0102193.i, align 8, !tbaa !349
  call void @_ZN4llvm10SwitchInst7addCaseEPNS_11ConstantIntEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(76) %i.mi, ptr noundef %i.oj, ptr noundef %.0173.i) #27
  %i.ok = getelementptr inbounds nuw i8, ptr %.0102193.i, i64 8 ; 2 uses
  %.not116.i = icmp eq ptr %i.ok, %i.oe
  br i1 %.not116.i, label %._crit_edge196.i, label %.lr.ph195.i

.lr.ph204.i:                                      ; preds = %._crit_edge196.i, %._crit_edge200.i
  %i.ol = phi ptr [ %i.pf, %._crit_edge200.i ], [ %i.og, %._crit_edge196.i ]
  %.sroa.0150.0202.i = phi ptr [ %.sroa.0150.0.i, %._crit_edge200.i ], [ %.sroa.0150.0201.i, %._crit_edge196.i ] ; 5 uses
  %i.om = getelementptr inbounds i8, ptr %.sroa.0150.0202.i, i64 -20 ; 5 uses
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = and i32 %i.on, 268435455                ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.oo, 0
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.sroa.0150.0202.i, i64 -32 ; 3 uses
  %.pre.i146.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !114 ; 3 uses
  br i1 %.not11.i.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph204.i
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0150.0202.i, i64 52
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !148
  %i.or = zext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [32 x i8], ptr %.pre.i146.i, i64 %i.or
  %i.ot = zext nneg i32 %i.oo to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bu ] ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv.i.i.i
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !116
  %i.ow = icmp eq ptr %i.ov, %.0106.i
  br i1 %i.ow, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ot
  br i1 %.not.i.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i, label %bb.bt, !llvm.loop !3

_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i: ; preds = %bb.bu, %bb.bt, %.lr.ph204.i
  %i.ox = phi i64 [ 4294967295, %.lr.ph204.i ], [ %indvars.iv.i.i.i, %bb.bt ], [ 4294967295, %bb.bu ]
  %i.oy = getelementptr inbounds nuw [32 x i8], ptr %.pre.i146.i, i64 %i.ox
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !106 ; 4 uses
  %i.pa = load i32, ptr %i.bh, align 8, !tbaa !112
  %i.pb = add i32 %i.pa, -1                       ; 2 uses
  %.not117197.i = icmp eq i32 %i.pb, 0
  br i1 %.not117197.i, label %._crit_edge200.i, label %.lr.ph199.i

.lr.ph199.i:                                      ; preds = %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0150.0202.i, i64 52 ; 2 uses
  %.not.i.i.i.i.i.i131 = icmp eq ptr %i.oz, null
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 16 ; 3 uses
  %.pre213.i = load i32, ptr %i.pc, align 4, !tbaa !148
  br label %bb.bv

._crit_edge200.i:                                 ; preds = %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i, %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit.i
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0150.0202.i, i64 8
  %.sroa.0150.0.i = load ptr, ptr %i.pe, align 8, !tbaa !130 ; 2 uses
  %i.pf = getelementptr inbounds i8, ptr %.sroa.0150.0.i, i64 -24 ; 2 uses
  %i.pg = load i8, ptr %i.pf, align 8, !tbaa !107
  %i.ph = icmp eq i8 %i.pg, 87
  br i1 %i.ph, label %.lr.ph204.i, label %.loopexit.i, !llvm.loop !903

bb.bv:                                            ; preds = %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i, %.lr.ph199.i
  %i.pi = phi ptr [ %.pre.i146.i, %.lr.ph199.i ], [ %i.qj, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i ]
  %i.pj = phi i32 [ %.pre213.i, %.lr.ph199.i ], [ %i.qk, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i ]
  %.0198.i = phi i32 [ 0, %.lr.ph199.i ], [ %i.qp, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i ]
  %i.pk = load i32, ptr %i.om, align 4            ; 2 uses
  %i.pl = and i32 %i.pk, 268435455
  %i.pm = icmp eq i32 %i.pl, %i.pj
  br i1 %i.pm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ol) #27
  %.pre.i147.i = load i32, ptr %i.om, align 4
  %.pre214.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !114
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.pn = phi ptr [ %.pre214.i, %bb.bw ], [ %i.pi, %bb.bv ]
  %i.po = phi i32 [ %.pre.i147.i, %bb.bw ], [ %i.pk, %bb.bv ] ; 2 uses
  %i.pp = add i32 %i.po, 1
  %i.pq = and i32 %i.pp, 268435455                ; 2 uses
  %i.pr = and i32 %i.po, -268435456
  %i.ps = or disjoint i32 %i.pq, %i.pr
  store i32 %i.ps, ptr %i.om, align 4
  %i.pt = add nsw i32 %i.pq, -1
  %i.pu = zext i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [32 x i8], ptr %i.pn, i64 %i.pu ; 5 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 3 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !178 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.px, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !109 ; 3 uses
  store ptr %i.pz, ptr %i.px, align 8, !tbaa !114
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %i.pz, null
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  store ptr %i.px, ptr %i.qa, align 8, !tbaa !178
  store ptr null, ptr %i.py, align 8, !tbaa !109
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store ptr null, ptr %i.pw, align 8, !tbaa !178
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i:  ; preds = %bb.ca, %bb.bx
  store ptr %i.oz, ptr %i.pv, align 8, !tbaa !106
  br i1 %.not.i.i.i.i.i.i131, label %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i
  %i.qb = load i8, ptr %i.oz, align 8, !tbaa !107
end_hunk_0
