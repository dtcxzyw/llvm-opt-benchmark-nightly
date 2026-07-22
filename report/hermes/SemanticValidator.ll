inline.NumInlined: 5065
inline.NumDeleted: 2157
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6hermes3sem12BlockContext26ensureScopedNamesAreUniqueENS1_14IsFunctionBodyEPNS_6ESTree14IdentifierNodeE:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !460
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.240") align 8 %20, ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %19), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !460
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !382
  store ptr %i.aj, ptr %24, align 8
  store ptr %i.z, ptr %i.v, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E11try_emplaceIJS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.168") align 8 %23, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.ak = load i8, ptr %i.w, align 8, !tbaa !463, !range !160, !noundef !91
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.thread152, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %.loopexit157, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !209 ; 3 uses
  %i.aq = load i32, ptr %22, align 8
  %i.ar = and i32 %i.aq, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ar, 0          ; 2 uses
  %i.as = load ptr, ptr %.07.i.i.i.i.ptr.i, align 8
  %i.at = select i1 %.not.i.i.i.i.i, ptr %i.as, ptr %.07.i.i.i.i.ptr.i ; 2 uses
  %i.au = load i32, ptr %.07.i.i.i.i.ptr.1.i, align 8
  %i.av = select i1 %.not.i.i.i.i.i, i32 %i.au, i32 8 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit156, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = ptrtoint ptr %i.ap to i64
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = lshr i32 %i.ay, 4
  %i.ba = lshr i32 %i.ay, 9
  %i.bb = xor i32 %i.az, %i.ba
  %i.bc = add i32 %i.av, -1                       ; 2 uses
  %.02945.i.i.i = and i32 %i.bc, %i.bb            ; 2 uses
  %i.bd = zext nneg i32 %.02945.i.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !382 ; 2 uses
  %i.bg = icmp eq ptr %i.ap, %i.bf
  br i1 %i.bg, label %.loopexit157, label %.lr.ph.i.i.i70, !prof !404

.lr.ph.i.i.i70:                                   ; preds = %bb.l, %bb.m
  %i.bh = phi ptr [ %i.bn, %bb.m ], [ %i.bf, %bb.l ]
  %.02948.i.i.i = phi i32 [ %.029.i.i.i, %bb.m ], [ %.02945.i.i.i, %bb.l ]
  %.02747.i.i.i = phi i32 [ %i.bj, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.bi = icmp eq ptr %i.bh, inttoptr (i64 -8 to ptr)
  br i1 %i.bi, label %.loopexit156, label %bb.m, !prof !203

bb.m:                                             ; preds = %.lr.ph.i.i.i70
  %i.bj = add i32 %.02747.i.i.i, 1
  %i.bk = add i32 %.02747.i.i.i, %.02948.i.i.i
  %.029.i.i.i = and i32 %i.bk, %i.bc              ; 2 uses
  %i.bl = zext i32 %.029.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !382 ; 2 uses
  %i.bo = icmp eq ptr %i.ap, %i.bn
  br i1 %i.bo, label %.loopexit157, label %.lr.ph.i.i.i70, !prof !405, !llvm.loop !467

.loopexit156:                                     ; preds = %.lr.ph.i.i.i70, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bp, align 8, !tbaa !214
  %i.bq = load ptr, ptr %23, align 8, !tbaa !468
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !469
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.0.0.copyload.i73 = load ptr, ptr %i.bt, align 8, !tbaa !214
  %i.bu = icmp ult ptr %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i73
  br i1 %i.bu, label %bb.n, label %.thread152

bb.n:                                             ; preds = %.loopexit156
  store ptr %i.z, ptr %i.br, align 8, !tbaa !469
  br label %.thread152

.thread152:                                       ; preds = %.loopexit156, %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %.thread

.loopexit157:                                     ; preds = %bb.j, %bb.l, %bb.m
  %i.bv = load ptr, ptr %0, align 8, !tbaa !153
  %i.bw = load ptr, ptr %23, align 8, !tbaa !468
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !469 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bz, align 8, !tbaa !214
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i15.i = load ptr, ptr %i.ca, align 8, !tbaa !214
  %i.cb = icmp ult ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i15.i
  %i.cc = select i1 %i.cb, ptr %i.z, ptr %i.by    ; 4 uses
  %i.cd = icmp eq ptr %i.cc, %i.z
  %i.ce = select i1 %i.cd, ptr %i.by, ptr %i.z    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.0.0.copyload.i20.i = load ptr, ptr %i.ch, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %.sroa.2.0.copyload.i22.i = load ptr, ptr %.sroa.2.0..sroa_idx.i21.i, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !209
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 3, ptr %i.ck, align 8, !tbaa !215, !alias.scope !471
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 5, ptr %i.cl, align 1, !tbaa !221, !alias.scope !471
  store ptr @.str.67, ptr %16, align 8, !tbaa !222, !alias.scope !471
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !222, !alias.scope !471
  store ptr %16, ptr %15, align 8, !tbaa !222, !alias.scope !474
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.68, ptr %i.cn, align 8, !tbaa !222, !alias.scope !474
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 2, ptr %i.co, align 8, !tbaa !215, !alias.scope !474
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 3, ptr %i.cp, align 1, !tbaa !221, !alias.scope !474
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cg, i32 noundef 0, ptr %.sroa.0.0.copyload.i20.i, ptr %.sroa.2.0.copyload.i22.i, ptr noundef nonnull align 8 dereferenceable(18) %15, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.0.0.copyload.i25.i = load ptr, ptr %i.cr, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.sroa.2.0.copyload.i27.i = load ptr, ptr %.sroa.2.0..sroa_idx.i26.i, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !209
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i8 3, ptr %i.ct, align 8, !tbaa !215, !alias.scope !479
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 5, ptr %i.cu, align 1, !tbaa !221, !alias.scope !479
  store ptr @.str.61, ptr %18, align 8, !tbaa !222, !alias.scope !479
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !222, !alias.scope !479
  store ptr %18, ptr %17, align 8, !tbaa !222, !alias.scope !482
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.69, ptr %i.cw, align 8, !tbaa !222, !alias.scope !482
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i8 2, ptr %i.cx, align 8, !tbaa !215, !alias.scope !482
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 3, ptr %i.cy, align 1, !tbaa !221, !alias.scope !482
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cq, i32 noundef 3, ptr %.sroa.0.0.copyload.i25.i, ptr %.sroa.2.0.copyload.i27.i, ptr noundef nonnull align 8 dereferenceable(18) %17, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %.loopexit158

.thread:                                          ; preds = %bb.e, %bb.f, %.thread152
  %i.cz = getelementptr inbounds nuw i8, ptr %.0171, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.cz, %i.u
  br i1 %.not57, label %.loopexit158, label %bb.e

.loopexit158:                                     ; preds = %.thread, %bb.d, %.loopexit157
  %.not57166 = phi i1 [ false, %.loopexit157 ], [ true, %bb.d ], [ true, %.thread ]
  %i.da = load i32, ptr %22, align 8
  %i.db = and i32 %i.da, 1
  %.not.i.i.i78 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i78, label %bb.o, label %_ZN4llvh6detail12DenseSetImplIPN6hermes12UniqueStringENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit

bb.o:                                             ; preds = %.loopexit158
  %i.dc = load ptr, ptr %.07.i.i.i.i.ptr.i, align 8, !tbaa !487
  call void @_ZdlPv(ptr noundef %i.dc) #20
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes12UniqueStringENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit

_ZN4llvh6detail12DenseSetImplIPN6hermes12UniqueStringENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit: ; preds = %.loopexit158, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br i1 %.not57166, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes12UniqueStringENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit, %.lr.ph.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !154
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !157 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !136 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !138 ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %.idx181 = mul nuw nsw i64 %i.dk, 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx181
  %.not61173 = icmp eq i32 %i.dj, 0
  br i1 %.not61173, label %.critedge65, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %25, i64 16
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph175, %.critedge
  %.054174 = phi ptr [ %i.dh, %.lr.ph175 ], [ %i.gk, %.critedge ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.054174, i64 8 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !288
  %i.dq = load ptr, ptr %i.dd, align 8, !tbaa !154 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 152 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !382 ; 3 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !490 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 168
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !491 ; 4 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = ptrtoint ptr %i.dt to i64
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %i.ea = lshr i32 %i.dz, 4
  %i.eb = lshr i32 %i.dz, 9
  %i.ec = xor i32 %i.ea, %i.eb
  %i.ed = add i32 %i.dw, -1                       ; 2 uses
  %.02944.i.i.i.i.i = and i32 %i.ec, %i.ed        ; 2 uses
  %i.ee = zext nneg i32 %.02944.i.i.i.i.i to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ee ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !382 ; 2 uses
  %i.eh = icmp eq ptr %i.dt, %i.eg
  br i1 %i.eh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i.i, label %.lr.ph.i.i.i.i.i, !prof !404

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.ei = phi ptr [ %i.eo, %bb.s ], [ %i.eg, %bb.r ]
  %.02947.i.i.i.i.i = phi i32 [ %.029.i.i.i.i.i, %bb.s ], [ %.02944.i.i.i.i.i, %bb.r ]
  %.02746.i.i.i.i.i = phi i32 [ %i.ek, %bb.s ], [ 1, %bb.r ] ; 2 uses
  %i.ej = icmp eq ptr %i.ei, inttoptr (i64 -8 to ptr)
  br i1 %i.ej, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i.i.i, label %bb.s, !prof !203

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ek = add i32 %.02746.i.i.i.i.i, 1
  %i.el = add i32 %.02746.i.i.i.i.i, %.02947.i.i.i.i.i
  %.029.i.i.i.i.i = and i32 %i.el, %i.ed          ; 2 uses
  %i.em = zext i32 %.029.i.i.i.i.i to i64
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.em ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !382 ; 2 uses
  %i.ep = icmp eq ptr %i.dt, %i.eo
  br i1 %i.ep, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i.i, label %.lr.ph.i.i.i.i.i, !prof !405, !llvm.loop !492

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.q
  %i.eq = zext i32 %i.dw to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.eq
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i.i: ; preds = %bb.s, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i.i.i, %bb.r
  %.sink.i.i.ph.pn.i.i.i = phi ptr [ %i.er, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i.i.i ], [ %i.ef, %bb.r ], [ %i.en, %bb.s ] ; 2 uses
  %i.es = zext i32 %i.dw to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.es
  %i.eu = icmp eq ptr %.sink.i.i.ph.pn.i.i.i, %i.et
  br i1 %i.eu, label %_ZN6hermes3sem12BlockContext12stopHoistingEPNS_6ESTree14IdentifierNodeE.exit, label %_ZN4llvh9MapVectorIPKN6hermes12UniqueStringENS_11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEESt6vectorISt4pairIS4_S9_ESaISJ_EEE4findERKS4_.exit.i

_ZN4llvh9MapVectorIPKN6hermes12UniqueStringENS_11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEESt6vectorISt4pairIS4_S9_ESaISJ_EEE4findERKS4_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dq, i64 176
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !493
  %i.ex = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !494
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [56 x i8], ptr %i.ew, i64 %i.ez ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 184
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !493
  %i.fb = icmp eq ptr %i.fa, %.pre.i
  br i1 %i.fb, label %_ZN6hermes3sem12BlockContext12stopHoistingEPNS_6ESTree14IdentifierNodeE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvh9MapVectorIPKN6hermes12UniqueStringENS_11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEESt6vectorISt4pairIS4_S9_ESaISJ_EEE4findERKS4_.exit.i
  %i.fc = call ptr @_ZN4llvh9MapVectorIPKN6hermes12UniqueStringENS_11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEESt6vectorISt4pairIS4_S9_ESaISJ_EEE5eraseEN9__gnu_cxx17__normal_iteratorIPSJ_SL_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.dr, ptr %i.fa) ; 0 uses
  br label %_ZN6hermes3sem12BlockContext12stopHoistingEPNS_6ESTree14IdentifierNodeE.exit

_ZN6hermes3sem12BlockContext12stopHoistingEPNS_6ESTree14IdentifierNodeE.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes12UniqueStringEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4findES5_.exit.i.i, %_ZN4llvh9MapVectorIPKN6hermes12UniqueStringENS_11SmallVectorIPNS1_6ESTree23FunctionDeclarationNodeELj4EEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEESt6vectorISt4pairIS4_S9_ESaISJ_EEE4findERKS4_.exit.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %27 = load ptr, ptr %i.do, align 8, !tbaa !288  ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 48
  %29 = load ptr, ptr %28, align 8, !tbaa !382
  store ptr %29, ptr %26, align 8
  store ptr %27, ptr %i.dm, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E11try_emplaceIJS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.168") align 8 %25, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  %i.fd = load i8, ptr %i.dn, align 8, !tbaa !463, !range !160, !noundef !91
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %.critedge, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes3sem12BlockContext12stopHoistingEPNS_6ESTree14IdentifierNodeE.exit
  %i.ff = load ptr, ptr %0, align 8, !tbaa !153
  %i.fg = load ptr, ptr %25, align 8, !tbaa !468
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !469 ; 3 uses
  %i.fj = load ptr, ptr %i.do, align 8, !tbaa !288 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %.sroa.0.0.copyload.i.i81 = load ptr, ptr %i.fk, align 8, !tbaa !214
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %.sroa.0.0.copyload.i15.i82 = load ptr, ptr %i.fl, align 8, !tbaa !214
  %i.fm = icmp ult ptr %.sroa.0.0.copyload.i.i81, %.sroa.0.0.copyload.i15.i82
  %i.fn = select i1 %i.fm, ptr %i.fj, ptr %i.fi   ; 4 uses
  %i.fo = icmp eq ptr %i.fn, %i.fj
  %i.fp = select i1 %i.fo, ptr %i.fi, ptr %i.fj   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %.sroa.0.0.copyload.i20.i83 = load ptr, ptr %i.fs, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i21.i84 = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %.sroa.2.0.copyload.i22.i85 = load ptr, ptr %.sroa.2.0..sroa_idx.i21.i84, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !209
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 3, ptr %i.fv, align 8, !tbaa !215, !alias.scope !496
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 5, ptr %i.fw, align 1, !tbaa !221, !alias.scope !496
  store ptr @.str.67, ptr %12, align 8, !tbaa !222, !alias.scope !496
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !222, !alias.scope !496
  store ptr %12, ptr %11, align 8, !tbaa !222, !alias.scope !499
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.68, ptr %i.fy, align 8, !tbaa !222, !alias.scope !499
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 2, ptr %i.fz, align 8, !tbaa !215, !alias.scope !499
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 3, ptr %i.ga, align 1, !tbaa !221, !alias.scope !499
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.fr, i32 noundef 0, ptr %.sroa.0.0.copyload.i20.i83, ptr %.sroa.2.0.copyload.i22.i85, ptr noundef nonnull align 8 dereferenceable(18) %11, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.gb = load ptr, ptr %i.fq, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %.sroa.0.0.copyload.i25.i86 = load ptr, ptr %i.gc, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i26.i87 = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %.sroa.2.0.copyload.i27.i88 = load ptr, ptr %.sroa.2.0..sroa_idx.i26.i87, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.gd = load ptr, ptr %i.ft, align 8, !tbaa !209
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 3, ptr %i.ge, align 8, !tbaa !215, !alias.scope !504
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 5, ptr %i.gf, align 1, !tbaa !221, !alias.scope !504
  store ptr @.str.61, ptr %14, align 8, !tbaa !222, !alias.scope !504
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !222, !alias.scope !504
  store ptr %14, ptr %13, align 8, !tbaa !222, !alias.scope !507
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.69, ptr %i.gh, align 8, !tbaa !222, !alias.scope !507
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 2, ptr %i.gi, align 8, !tbaa !215, !alias.scope !507
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 3, ptr %i.gj, align 1, !tbaa !221, !alias.scope !507
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gb, i32 noundef 3, ptr %.sroa.0.0.copyload.i25.i86, ptr %.sroa.2.0.copyload.i27.i88, ptr noundef nonnull align 8 dereferenceable(18) %13, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %.loopexit

.critedge:                                        ; preds = %_ZN6hermes3sem12BlockContext12stopHoistingEPNS_6ESTree14IdentifierNodeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.gk = getelementptr inbounds nuw i8, ptr %.054174, i64 24 ; 2 uses
  %.not61 = icmp eq ptr %i.gk, %i.dl
  br i1 %.not61, label %.critedge65, label %bb.q

.critedge65:                                      ; preds = %.critedge, %bb.p
  %.not62 = icmp eq ptr %2, null
  br i1 %.not62, label %.critedge67, label %bb.v

bb.v:                                             ; preds = %.critedge65
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !209 ; 3 uses
  %i.gn = load i32, ptr %21, align 8
  %i.go = and i32 %i.gn, 1
  %.not.i.i.i.i.i89 = icmp eq i32 %i.go, 0        ; 2 uses
  %i.gp = load ptr, ptr %.07.i.i.i.ptr, align 8
  %i.gq = select i1 %.not.i.i.i.i.i89, ptr %i.gp, ptr %.07.i.i.i.ptr ; 4 uses
  %i.gr = load i32, ptr %.phi.trans.insert3.i.i, align 8
  %i.gs = select i1 %.not.i.i.i.i.i89, i32 %i.gr, i32 8 ; 4 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPSC_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gu = ptrtoint ptr %i.gm to i64
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  %i.gw = lshr i32 %i.gv, 4
  %i.gx = lshr i32 %i.gv, 9
  %i.gy = xor i32 %i.gw, %i.gx
  %i.gz = add i32 %i.gs, -1                       ; 2 uses
  %.02945.i.i.i90 = and i32 %i.gz, %i.gy          ; 2 uses
  %i.ha = zext nneg i32 %.02945.i.i.i90 to i64
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.ha ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !382 ; 2 uses
  %i.hd = icmp eq ptr %i.gm, %i.hc
  br i1 %i.hd, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit, label %.lr.ph.i.i.i91, !prof !404

.lr.ph.i.i.i91:                                   ; preds = %bb.w, %bb.x
  %i.he = phi ptr [ %i.hk, %bb.x ], [ %i.hc, %bb.w ]
  %.02948.i.i.i92 = phi i32 [ %.029.i.i.i94, %bb.x ], [ %.02945.i.i.i90, %bb.w ]
  %.02747.i.i.i93 = phi i32 [ %i.hg, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %i.hf = icmp eq ptr %i.he, inttoptr (i64 -8 to ptr)
  br i1 %i.hf, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPSC_.exit.i, label %bb.x, !prof !203

bb.x:                                             ; preds = %.lr.ph.i.i.i91
  %i.hg = add i32 %.02747.i.i.i93, 1
  %i.hh = add i32 %.02747.i.i.i93, %.02948.i.i.i92
  %.029.i.i.i94 = and i32 %i.hh, %i.gz            ; 2 uses
  %i.hi = zext i32 %.029.i.i.i94 to i64
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.hi ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !382 ; 2 uses
  %i.hl = icmp eq ptr %i.gm, %i.hk
  br i1 %i.hl, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit, label %.lr.ph.i.i.i91, !prof !405, !llvm.loop !512

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPSC_.exit.i: ; preds = %.lr.ph.i.i.i91, %bb.v
  %i.hm = zext i32 %i.gs to i64
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.hm
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit: ; preds = %bb.x, %bb.w, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPSC_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.hn, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPSC_.exit.i ], [ %i.hb, %bb.w ], [ %i.hj, %bb.x ] ; 2 uses
  %i.ho = zext i32 %i.gs to i64
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.ho
  %.not154 = icmp eq ptr %.sink.i.i.ph.pn.i, %i.hp
  br i1 %.not154, label %.critedge67, label %bb.y

bb.y:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeELj8ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit
  %i.hq = load ptr, ptr %0, align 8, !tbaa !153
  %i.hr = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !469 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %.sroa.0.0.copyload.i.i96 = load ptr, ptr %i.ht, align 8, !tbaa !214
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i15.i97 = load ptr, ptr %i.hu, align 8, !tbaa !214
  %i.hv = icmp ult ptr %.sroa.0.0.copyload.i.i96, %.sroa.0.0.copyload.i15.i97
  %i.hw = select i1 %i.hv, ptr %2, ptr %i.hs      ; 4 uses
  %i.hx = icmp eq ptr %i.hw, %2
  %i.hy = select i1 %i.hx, ptr %i.hs, ptr %2      ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %.sroa.0.0.copyload.i20.i98 = load ptr, ptr %i.ib, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i21.i99 = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %.sroa.2.0.copyload.i22.i100 = load ptr, ptr %.sroa.2.0..sroa_idx.i21.i99, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 48 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !209
  %i.ie = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 3, ptr %i.ie, align 8, !tbaa !215, !alias.scope !513
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 5, ptr %i.if, align 1, !tbaa !221, !alias.scope !513
  store ptr @.str.67, ptr %8, align 8, !tbaa !222, !alias.scope !513
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.id, ptr %i.ig, align 8, !tbaa !222, !alias.scope !513
  store ptr %8, ptr %7, align 8, !tbaa !222, !alias.scope !516
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.68, ptr %i.ih, align 8, !tbaa !222, !alias.scope !516
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 2, ptr %i.ii, align 8, !tbaa !215, !alias.scope !516
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 3, ptr %i.ij, align 1, !tbaa !221, !alias.scope !516
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ia, i32 noundef 0, ptr %.sroa.0.0.copyload.i20.i98, ptr %.sroa.2.0.copyload.i22.i100, ptr noundef nonnull align 8 dereferenceable(18) %7, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ik = load ptr, ptr %i.hz, align 8, !tbaa !98, !nonnull !91, !align !92
  %i.il = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %.sroa.0.0.copyload.i25.i101 = load ptr, ptr %i.il, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i26.i102 = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %.sroa.2.0.copyload.i27.i103 = load ptr, ptr %.sroa.2.0..sroa_idx.i26.i102, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.im = load ptr, ptr %i.ic, align 8, !tbaa !209
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 3, ptr %i.in, align 8, !tbaa !215, !alias.scope !521
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 5, ptr %i.io, align 1, !tbaa !221, !alias.scope !521
  store ptr @.str.61, ptr %10, align 8, !tbaa !222, !alias.scope !521
  %i.ip = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.im, ptr %i.ip, align 8, !tbaa !222, !alias.scope !521
  store ptr %10, ptr %9, align 8, !tbaa !222, !alias.scope !524
  %i.iq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.69, ptr %i.iq, align 8, !tbaa !222, !alias.scope !524
  %i.ir = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 2, ptr %i.ir, align 8, !tbaa !215, !alias.scope !524
end_hunk_0
