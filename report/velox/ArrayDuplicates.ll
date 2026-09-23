Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ArrayDuplicates?download=true
inline.NumInlined: 8303
inline.NumDeleted: 3333
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
  %.not.i30 = icmp eq i8 %i.bd, 0
  br i1 %.not.i30, label %bb.p, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bp

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bq

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !331
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !293, !range !131, !noundef !132
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bn, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !292
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !291
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bz = and i32 %i.bu, 2147483584               ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %.not37.i.i.not.i.i58.not = icmp eq i32 %i.bz, 0
  br i1 %.not37.i.i.not.i.i58.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i59, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ca
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i59 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cb = lshr exact i64 %indvars.iv.i.i59, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !155
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bu, %i.bz
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cf = lshr i32 %i.bu, 6
  %i.cg = and i32 %i.bu, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ch
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.ck, %notmask.i40.i.i.i.i
  %i.cl = icmp eq i64 %.demorgan.i.i, -1
  %i.cm = zext i1 %i.cl to i16
  %i.cn = or disjoint i16 %i.cm, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.cn, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bn, align 4
  %i.co = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.co, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.ct, %.noexc38 ], [ %i.cq, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.ct = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %i.cr
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !820

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cu = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cu, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cq, %i.cv
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = add i32 %i.cq, 63                       ; 2 uses
  %i.cx = srem i32 %i.cw, 64
  %i.cy = sub nsw i32 %i.cw, %i.cx                ; 6 uses
  %i.cz = and i32 %i.cv, -64                      ; 6 uses
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = ashr i32 %i.cv, 6
  %i.dc = and i32 %i.cv, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i, -1
  %i.df = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.di = sub nsw i32 64, %i.df
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.dh, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  %i.dm = sext i32 %i.db to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155
  %i.dp = and i64 %i.dl, %i.do                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.du, %.noexc39 ], [ %i.dp, %bb.ab ] ; 3 uses
  %i.dq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i32 %i.cz, %i.dr
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ds)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.dt = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.du = and i64 %i.dt, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !821

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.cy
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.dw = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dz = sub nsw i32 64, %i.dw
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %i.dy, %i.ea
  %i.ec = sext i32 %i.dv to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !155
  %i.ef = and i64 %i.ee, %i.eb                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eg = shl nsw i32 %i.dv, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ef, %.preheader.i37.i.i.i.i ], [ %i.el, %.noexc40 ] ; 3 uses
  %i.eh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ej)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.ek = add i64 %.011.i38.i.i.i.i, -1
  %i.el = and i64 %i.ek, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !821

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.em = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.em, %i.cz
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cv, %i.cz
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.en = phi i32 [ %i.ff, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.eo = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.er, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.es = shl nsw i32 %i.eo, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.eo, 6                    ; 2 uses
  %i.eu = add i32 %i.et, 64
  %i.ev = sext i32 %i.eu to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ew = sext i32 %i.et to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph21.i.i.i.i.i ], [ %i.ey, %.noexc41 ] ; 2 uses
  %i.ex = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ex)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ey = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !822

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.fe, %.noexc42 ] ; 3 uses
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = or disjoint i32 %i.es, %i.fb
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fc)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fd = add i64 %.01519.i.i.i.i.i, -1
  %i.fe = and i64 %i.fd, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !823

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.ff = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ff, %i.cz
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !824

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fg = ashr i32 %i.cv, 6
  %i.fh = and i32 %i.cv, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fk = sext i32 %i.fg to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !155
  %i.fn = and i64 %i.fm, %i.fj                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.fs, %.noexc43 ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = or disjoint i32 %i.cz, %i.fp
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fq)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fr = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !821

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ft = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 2
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(64) %i.ft, i64 noundef %i.fw)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ga = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.ga, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = atomicrmw add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.br

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.gd = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.gd, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %..i.i
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.bs  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 1, ptr %i.gu, align 8, !tbaa !110, !noalias !831
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 1, ptr %i.gv, align 4, !tbaa !111, !noalias !831
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gs, align 8, !tbaa !113, !noalias !831
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !831

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 160) #32, !noalias !831
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gw, ptr %0, align 8, !tbaa !203
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hb, align 8, !tbaa !110
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !111
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.he, %bb.ar ], [ %i.ho, %bb.as ]
  %i.hp = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hp, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hq = load ptr, ptr %15, align 8, !tbaa !331  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !337
  %i.ht = icmp eq i8 %i.hs, -1
  br i1 %i.ht, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIbbvvvEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hu = load i64, ptr %i.bm, align 8, !tbaa !338 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 14
  %i.hw = icmp ult i64 %i.hu, 256
  br i1 %i.hw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = and i64 %i.hu, 255                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !155
  store i64 %i.hx, ptr %i.bm, align 8, !tbaa !338
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hz = phi i64 [ %i.hu, %bb.au ], [ %i.hx, %bb.av ] ; 2 uses
  %i.ia = load i8, ptr %i.hv, align 1, !tbaa !98
  %i.ib = icmp eq i64 %i.hz, 0
  %i.ic = shl i8 %i.ia, 1
  %i.id = and i8 %i.ic, 30
  %narrow.i.i.i.i = add nuw nsw i8 %i.id, 16
  %i.ie = zext nneg i8 %narrow.i.i.i.i to i64
  %i.if = shl i64 48, %i.hz
  %.0.i.i.i.i.i = select i1 %i.ib, i64 %i.ie, i64 %i.if
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !331
  store i64 0, ptr %i.bm, align 8, !tbaa !338
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %.0.i.i.i.i.i) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIbbvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIbbvvvEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ig = load ptr, ptr %14, align 8, !tbaa !319  ; 7 uses
  %.not.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i55, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit60, label %bb.ax

bb.ax:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIbbvvvEEED2Ev.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = atomicrmw sub ptr %i.ih, i32 1 acq_rel, align 4
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !361, !nonnull !132, !align !171
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !297  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !362, !nonnull !132, !align !171
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173  ; 2 uses
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = lshr i64 %i.j, 6
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !155
  %i.n = and i64 %i.j, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = and i64 %i.m, %i.o
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !883, !nonnull !132, !align !171
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !297
  %i.t = sext i32 %i.f to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !107  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !884, !nonnull !132, !align !171
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !297
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.t
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !107 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !885, !nonnull !132, !align !171 ; 2 uses
  %i.ad = add nsw i32 %i.aa, %i.v                 ; 5 uses
  %i.ae = icmp eq i32 %i.v, 0
  br i1 %i.ae, label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !276 ; 3 uses
  %.not.i.i.i = icmp sgt i32 %i.v, 0
  br i1 %.not.i.i.i, label %bb.g, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ag = add i32 %i.aa, 63                       ; 2 uses
  %i.ah = srem i32 %i.ag, 64
  %i.ai = sub nsw i32 %i.ag, %i.ah                ; 6 uses
  %i.aj = and i32 %i.ad, -64                      ; 4 uses
  %i.ak = icmp slt i32 %i.aj, %i.ai
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = and i32 %i.ad, 63
  %i.am = zext nneg i32 %i.al to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.am
  %i.an = xor i64 %notmask.i.i.i.i, -1
  %i.ao = sub nsw i32 %i.ai, %i.aa                ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ap
  %i.aq = xor i64 %notmask.i.i.i.i.i, -1
  %i.ar = sub nsw i32 64, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.aq, %i.as
  %i.au = and i64 %i.at, %i.an
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

bb.i:                                             ; preds = %bb.g
  %.not32.i.i.i = icmp eq i32 %i.aa, %i.ai
  br i1 %.not32.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = sdiv i32 %i.aa, 64
  %i.aw = sub nsw i32 %i.ai, %i.aa                ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i35.i.i.i = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i35.i.i.i, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = sext i32 %i.av to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !155
  %i.bf = or i64 %i.be, %i.bb
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !155
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i: ; preds = %bb.j, %bb.i
  %i.bg = add nsw i32 %i.ai, 64                   ; 2 uses
  %.not3347.i.i.i = icmp sgt i32 %i.bg, %i.aj
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i
  %.not34.i.i.i = icmp eq i32 %i.ad, %i.aj
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, label %bb.k

.lr.ph.i.i.i:                                     ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, %.lr.ph.i.i.i
  %i.bh = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ %i.bg, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ] ; 2 uses
  %.048.i.i.i = phi i32 [ %i.bh, %.lr.ph.i.i.i ], [ %i.ai, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ]
  %i.bi = sdiv i32 %.048.i.i.i, 64
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bj
  store i64 -1, ptr %i.bk, align 8, !tbaa !155
  %i.bl = add nsw i32 %i.bh, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bl, %i.aj
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !17

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.bm = and i32 %i.ad, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i37.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split: ; preds = %bb.h, %bb.k
  %.sink19 = phi i64 [ %i.bo, %bb.k ], [ %i.au, %bb.h ]
  %.sink = ashr i32 %i.ad, 6
  %i.bp = sext i32 %.sink to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bp ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !155
  %i.bs = or i64 %i.br, %.sink19
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !155
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i:    ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split, %._crit_edge.i.i.i, %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 37
  store i8 0, ptr %i.bt, align 1, !tbaa !293
  br label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit

_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS7_PKT_PKmPKiEUliE_EEvSE_iibSA_EUlimE_ZNS3_ISH_EEvSE_iibSA_EUliE_EEviiSA_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.307) align 8 %2, ptr noundef byval(%class.anon.308) align 8 %3) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !356, !range !131, !noundef !132
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !357
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !155
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i32 noundef %i.ae)
  %i.af = add nuw i64 %.011.i, 9223372036854775807
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !886

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !356, !range !131, !noundef !132
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !357
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !155
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef %i.bd)
  %i.be = add i64 %.011.i38, -1
  %i.bf = and i64 %i.be, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bf, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !886

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bg = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3351 = icmp sgt i32 %i.bg, %i.d
  br i1 %.not3351, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.v

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  %i.bn = phi i32 [ %i.bg, %.lr.ph ], [ %i.fb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %.052 = phi i32 [ %i.c, %.lr.ph ], [ %i.bn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit ] ; 2 uses
  %i.bo = sdiv i32 %.052, 64                      ; 3 uses
  %i.bp = load i8, ptr %3, align 8, !tbaa !359, !range !131, !noundef !132
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !360
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !155
  %i.bu = xor i8 %i.bp, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = xor i64 %i.bt, %i.bw                    ; 2 uses
  switch i64 %i.bx, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.by = shl nsw i32 %i.bo, 6
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !361, !nonnull !132, !align !171
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !297 ; 2 uses
  %.not.i48 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !362, !nonnull !132, !align !171
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !173 ; 2 uses
  %.not9.i = icmp eq ptr %i.cc, null
  %i.cd = load ptr, ptr %i.bk, align 8, !nonnull !132, !align !171
  %i.ce = load ptr, ptr %i.bl, align 8, !nonnull !132, !align !171
  %i.cf = load ptr, ptr %i.bm, align 8, !nonnull !132, !align !171 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 37
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ch = shl nsw i32 %i.bo, 6                    ; 2 uses
  %i.ci = add nuw i32 %i.ch, 64
  %i.cj = sext i32 %i.ci to i64
  %.0.off = add i32 %.052, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ck = sext i32 %i.ch to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ck, %.lr.ph21.i ], [ %i.cm, %bb.j ] ; 2 uses
  %i.cl = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i32 noundef %i.cl)
  %i.cm = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cj
  br i1 %i.cn, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, !llvm.loop !887

bb.k:                                             ; preds = %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %.lr.ph.i
  %.01519.i = phi i64 [ %i.bx, %.lr.ph.i ], [ %i.fa, %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit ] ; 3 uses
  %i.co = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = or disjoint i32 %i.by, %i.cp            ; 3 uses
  br i1 %.not.i48, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !107
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cu = phi i32 [ %i.ct, %bb.l ], [ %i.cq, %bb.k ]
  br i1 %.not9.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = zext i32 %i.cq to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !155
  %i.cz = and i64 %i.cv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i, label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = load ptr, ptr %i.cd, align 8, !tbaa !297
  %i.dd = sext i32 %i.cu to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !107 ; 3 uses
  %i.dg = load ptr, ptr %i.ce, align 8, !tbaa !297
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dd
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !107 ; 6 uses
  %i.dj = add nsw i32 %i.di, %i.df                ; 5 uses
  %i.dk = icmp eq i32 %i.df, 0
  br i1 %i.dk, label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = load ptr, ptr %i.cf, align 8, !tbaa !276 ; 3 uses
  %.not.i.i.i.i = icmp sgt i32 %i.df, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.dm = add i32 %i.di, 63                       ; 2 uses
  %i.dn = srem i32 %i.dm, 64
  %i.do = sub nsw i32 %i.dm, %i.dn                ; 6 uses
  %i.dp = and i32 %i.dj, -64                      ; 4 uses
  %i.dq = icmp slt i32 %i.dp, %i.do
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = and i32 %i.dj, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ds
  %i.dt = xor i64 %notmask.i.i.i.i.i, -1
  %i.du = sub nsw i32 %i.do, %i.di                ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dv
  %i.dw = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dx = sub nsw i32 64, %i.du
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl i64 %i.dw, %i.dy
  %i.ea = and i64 %i.dz, %i.dt
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

bb.s:                                             ; preds = %bb.q
  %.not32.i.i.i.i = icmp eq i32 %i.di, %i.do
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = sdiv i32 %i.di, 64
  %i.ec = sub nsw i32 %i.do, %i.di                ; 2 uses
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ef = sub nsw i32 64, %i.ec
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = shl i64 %i.ee, %i.eg
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ei ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !155
  %i.el = or i64 %i.ek, %i.eh
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !155
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.em = add nsw i32 %i.do, 64                   ; 2 uses
  %.not3347.i.i.i.i = icmp sgt i32 %i.em, %i.dp
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.dj, %i.dp
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i, label %bb.u

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i, %.lr.ph.i.i.i.i
  %i.en = phi i32 [ %i.er, %.lr.ph.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i = phi i32 [ %i.en, %.lr.ph.i.i.i.i ], [ %i.do, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i ]
  %i.eo = sdiv i32 %.048.i.i.i.i, 64
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ep
  store i64 -1, ptr %i.eq, align 8, !tbaa !155
  %i.er = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.er, %i.dp
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.es = and i32 %i.dj, 63
  %i.et = zext nneg i32 %i.es to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.et
  %i.eu = xor i64 %notmask.i37.i.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i: ; preds = %bb.u, %bb.r
  %.sink19.i = phi i64 [ %i.eu, %bb.u ], [ %i.ea, %bb.r ]
  %.sink.i = ashr i32 %i.dj, 6
  %i.ev = sext i32 %.sink.i to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !155
  %i.ey = or i64 %i.ex, %.sink19.i
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !155
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split.i, %._crit_edge.i.i.i.i, %bb.p
  store i8 0, ptr %i.cg, align 1, !tbaa !293
  br label %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit

_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit: ; preds = %bb.n, %bb.o, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.ez = add i64 %.01519.i, -1
  %i.fa = and i64 %i.ez, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.fa, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !888

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUliE_clEi.exit: ; preds = %bb.j, %_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi.exit, %bb.h, %bb.i
  %i.fb = add nsw i32 %i.bn, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.fb, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !889

bb.v:                                             ; preds = %._crit_edge
  %i.fc = ashr i32 %1, 6
  %i.fd = and i32 %1, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %notmask.i42 = shl nsw i64 -1, %i.fe
  %i.ff = xor i64 %notmask.i42, -1
  %i.fg = load i8, ptr %2, align 8, !tbaa !356, !range !131, !noundef !132
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !357
  %i.fj = sext i32 %i.fc to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !155
  %i.fm = xor i8 %i.fg, 1
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = xor i64 %i.fl, %i.fo
  %i.fq = and i64 %i.fp, %i.ff                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fq, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fq, %.preheader.i44 ], [ %i.fw, %bb.w ] ; 3 uses
  %i.fs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = or disjoint i32 %i.d, %i.ft
  call void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, i32 noundef %i.fu)
  %i.fv = add nuw i64 %.011.i45, 9223372036854775807
  %i.fw = and i64 %i.fv, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fw, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit, label %bb.w, !llvm.loop !886

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_ENKUlimE_clEim.exit: ; preds = %bb.w, %bb.d, %bb.v, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %bb.b, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !314    ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !271, !range !131, !noalias !896, !noundef !132
  %i.f = trunc nuw i8 %i.e to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !897, !noalias !896
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.pre3.i = load ptr, ptr %.phi.trans.insert2.i, align 8, !tbaa !897, !noalias !896 ; 2 uses
  %i.g = icmp eq ptr %.pre.i, %.pre3.i            ; 2 uses
  br i1 %i.f, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %.critedge.thread.i, label %bb.e, !prof !119

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #34, !noalias !896
  unreachable

.critedge.i:                                      ; preds = %bb.c
  br i1 %i.g, label %.critedge.thread.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.d
  %i.h = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #31, !noalias !898 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 72, i1 false), !noalias !898
  store i8 1, ptr %i.i, align 8, !tbaa !899, !noalias !898
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.j, i8 0, i64 13, i1 false), !noalias !898
  store i8 1, ptr %i.k, align 1, !tbaa !900, !noalias !898
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false), !noalias !898
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i: ; preds = %.critedge.i
  %i.m = getelementptr inbounds i8, ptr %.pre3.i, i64 -8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !345, !noalias !896
  store ptr null, ptr %i.m, align 8, !tbaa !345, !noalias !896
  store ptr %i.m, ptr %.phi.trans.insert2.i, align 8, !tbaa !343, !noalias !896
  %i.o = inttoptr i64 %i.n to ptr
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit

bb.f:                                             ; preds = %bb.b
  %i.p = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #31, !noalias !901 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i8 0, i64 72, i1 false), !noalias !901
  store i8 1, ptr %i.q, align 8, !tbaa !899, !noalias !901
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.r, i8 0, i64 13, i1 false), !noalias !901
  store i8 1, ptr %i.s, align 1, !tbaa !900, !noalias !901
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false), !noalias !901
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i, %.critedge.thread.i, %bb.f
  %.sroa.0.0 = phi ptr [ %i.p, %bb.f ], [ %i.h, %.critedge.thread.i ], [ %i.o, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i ] ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !345  ; 6 uses
  store ptr %.sroa.0.0, ptr %i.a, align 8, !tbaa !345
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !276  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !277
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !347 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !348
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #32
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 120) #32
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i, %bb.a
  %i.aj = phi ptr [ %.sroa.0.0, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit ], [ %.pre, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i ], [ %i.b, %bb.a ]
  ret ptr %i.aj
}

declare void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(38), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !345    ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !276  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !347  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !348
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #32
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.216", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.216", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.216", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.a, label %bb.b, label %_ZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKc.exit, !prof !114

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !914
  store ptr @.str.82, ptr %9, align 16, !tbaa !98, !alias.scope !915, !noalias !914
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %1, ptr %i.b, align 16, !tbaa !98, !alias.scope !915, !noalias !914
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 4, ptr %i.c, align 16, !tbaa !98, !alias.scope !915, !noalias !914
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.87, i64 20, i64 1100, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !914
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.87) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIbE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !945, !nonnull !132, !align !171 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bu, %i.bx
  br i1 %.not.i.i, label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEvT_S7_T0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIbbvvvEEE5clearEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx84           ; 2 uses
  %i.cc = ashr exact i64 %gepdiff, 2
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = xor i64 %i.ce, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_T0_T1_(ptr noundef %i.bw, ptr noundef %i.bz, i64 noundef %i.cf, ptr nonnull %i.cb)
  %i.cg = icmp sgt i64 %gepdiff, 64
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_T0_(ptr noundef %i.bw, ptr noundef nonnull %i.ch, ptr nonnull %i.cb)
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_T0_(ptr noundef nonnull %i.ch, ptr noundef %i.bz, ptr nonnull %i.cb)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEvT_S7_T0_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEEEvT_SB_T0_(ptr noundef %i.bw, ptr noundef %i.bz, ptr nonnull %i.cb)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEvT_S7_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIbEEEvT_S7_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIbbvvvEEE5clearEv.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 7 uses
  %.01790 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !945, !nonnull !132, !align !171
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !345 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !377 ; 4 uses
  %.not.i30 = icmp eq ptr %i.cm, null
  br i1 %.not.i30, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 57
  %i.cr = load i8, ptr %i.cq, align 1, !range !131
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i = select i1 %i.cp, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.ct = lshr i64 %indvars.iv, 6
  %i.cu = and i64 %i.ct, 67108863
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !155
  %i.cx = and i64 %indvars.iv, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i31 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i31, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !379, !range !131, !noundef !132
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split49

.split49:                                         ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !380
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !107
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !155
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not.i7.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i7.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.m
  %i.do = load i64, ptr %i.cm, align 8, !tbaa !155
  %i.dp = and i64 %i.do, 1
  %.not.i6.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i6.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.n:                                             ; preds = %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dq = add nsw i32 %.01790, 1                  ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 2
  br i1 %i.dr, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !944, !nonnull !132, !align !171
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !297
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !940, !nonnull !132, !align !172 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !107
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = trunc nsw i64 %indvars.iv to i32
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !107
  %i.dz = load i32, ptr %i.du, align 4, !tbaa !107
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !107
  br label %bb.aa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.k, %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !381
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !378, !range !131, !noundef !132
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.ef, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !379, !range !131, !noundef !132
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit

bb.r:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !380
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %indvars.iv
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.q, %bb.r
  %.0.i.i = phi i32 [ %i.ep, %bb.r ], [ %i.el, %bb.q ], [ %i.eg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.eq = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.er = lshr i64 %i.eq, 6
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !155
  %i.eu = and i64 %i.eq, 63
  %i.ev = lshr i64 %i.et, %i.eu                   ; 3 uses
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = and i8 %i.ew, 1                         ; 3 uses
  store i8 %i.ex, ptr %i.a, align 1, !tbaa !117
  %i.ey = load ptr, ptr %i.x, align 8, !tbaa !942, !nonnull !132, !align !171 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !338 ; 2 uses
  %i.fb = lshr i64 %i.fa, 8
  switch i64 %i.fb, label %bb.t [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !383
  %i.fe = and i64 %i.fd, -2
  %i.ff = inttoptr i64 %i.fe to ptr               ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !117, !range !131, !noundef !132
  %i.fh = icmp eq i8 %i.ex, %i.fg
  br i1 %i.fh, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit
  %i.fi = and i64 %i.ev, 1                        ; 2 uses
  %i.fj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fi) ; 2 uses
  %i.fk = lshr i64 %i.fj, 24
  %i.fl = or i64 %i.fk, 128                       ; 2 uses
  %i.fm = add nuw nsw i64 %i.fj, %i.fi
  %i.fn = shl nuw nsw i64 %i.fl, 1
  %i.fo = or disjoint i64 %i.fn, 1
  %i.fp = trunc nuw i64 %i.fl to i8
  %i.fq = insertelement <16 x i8> poison, i8 %i.fp, i64 0
  %i.fr = shufflevector <16 x i8> %i.fq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fs = and i64 %i.fa, 255                      ; 2 uses
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = load ptr, ptr %i.ey, align 8, !tbaa !331
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.x
  %.022.i89 = phi i64 [ %i.ft, %bb.t ], [ %i.gn, %bb.x ]
  %.024.i88 = phi i64 [ %i.fm, %bb.t ], [ %i.go, %bb.x ] ; 2 uses
  %i.fv = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i88, i64 range(i64 0, 256) %i.fs)
  %i.fw = getelementptr inbounds nuw [48 x i8], ptr %i.fu, i64 %i.fv ; 3 uses
  %i.fx = load <16 x i8>, ptr %i.fw, align 16     ; 2 uses
  %i.fy = icmp eq <16 x i8> %i.fx, %i.fr
  %i.fz = bitcast <16 x i1> %i.fy to i16
  %i.ga = and i16 %i.fz, 16383
  %i.gb = zext nneg i16 %i.ga to i32
  %i.gc = icmp ne ptr %i.fw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.ge = extractelement <16 x i8> %i.fx, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %bb.u
  %.sroa.044.0 = phi i32 [ %i.gb, %bb.u ], [ %i.gh, %bb.v ] ; 4 uses
  %.not = icmp eq i32 %.sroa.044.0, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.gf = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.gg = add nuw nsw i32 %.sroa.044.0, 16383
  %i.gh = and i32 %i.gg, %.sroa.044.0
  %i.gi = zext nneg i32 %i.gf to i64              ; 2 uses
  call void @llvm.assume(i1 %i.gc)
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !117, !range !131, !noundef !132
  %i.gl = icmp eq i8 %i.ex, %i.gk
  br i1 %i.gl, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70.loopexit, label %.critedge.i, !prof !119, !llvm.loop !18

bb.w:                                             ; preds = %.critedge.i
  %i.gm = icmp eq i8 %i.ge, 0
  br i1 %i.gm, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread, label %bb.x, !prof !119

bb.x:                                             ; preds = %bb.w
  %i.gn = add i64 %.022.i89, -1                   ; 2 uses
  %i.go = add i64 %i.fo, %.024.i88
  %.not.i = icmp eq i64 %i.gn, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread, label %bb.u, !llvm.loop !19

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread: ; preds = %bb.w, %bb.x, %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !946
  store ptr %i.a, ptr %3, align 8, !tbaa !385, !alias.scope !947, !noalias !946
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !946
  %i.gp = and i64 %i.ev, 1                        ; 2 uses
  %i.gq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gp) ; 2 uses
  %i.gr = lshr i64 %i.gq, 24
  %i.gs = or i64 %i.gr, 128
  %i.gt = add nuw nsw i64 %i.gq, %i.gp
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE19tryEmplaceValueImplIbJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.330") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 %i.gt, i64 %i.gs, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !946
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !946
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !946
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !387, !noalias !946
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !946
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 1
  store i8 1, ptr %i.gu, align 1, !tbaa !117
  br label %bb.z

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70.loopexit: ; preds = %bb.v
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gi
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70.loopexit, %bb.s
  %.sroa.043.175 = phi ptr [ %i.ff, %bb.s ], [ %i.gv, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70.loopexit ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.043.175, i64 1 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !389, !range !131, !noundef !132
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70
  store i8 0, ptr %i.gw, align 1, !tbaa !389
  %i.gz = load ptr, ptr %i.w, align 8, !tbaa !944, !nonnull !132, !align !171
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !297
  %i.hb = load ptr, ptr %i.m, align 8, !tbaa !940, !nonnull !132, !align !172 ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !107
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hd
  store i32 %i.eg, ptr %i.he, align 4, !tbaa !107
  %i.hf = load i32, ptr %i.hb, align 4, !tbaa !107
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.hb, align 4, !tbaa !107
  br label %bb.z

bb.z:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread70, %bb.y, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE4findIbEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o, %bb.n
  %.1 = phi i32 [ 2, %bb.o ], [ %i.dq, %bb.n ], [ %.01790, %bb.z ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hh = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.hh, label %bb.k, label %._crit_edge, !llvm.loop !936
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE19tryEmplaceValueImplIbJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.330") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !331   ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i77 = phi i64 [ %i.j, %bb.b ], [ %i.ad, %bb.f ]
  %.024.i76 = phi i64 [ %2, %bb.b ], [ %i.ae, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.k ; 3 uses
  %i.m = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.n = icmp eq <16 x i8> %i.m, %i.h
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = and i16 %i.o, 16383
  %i.q = zext nneg i16 %i.p to i32
  %i.r = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.t = extractelement <16 x i8> %i.m, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.q, %bb.c ], [ %i.w, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.u = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.v = add nuw nsw i32 %.sroa.042.0, 16383
  %i.w = and i32 %i.v, %.sroa.042.0
  %i.x = zext nneg i32 %i.u to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.r)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.x
  %i.z = load i8, ptr %4, align 1, !tbaa !117, !range !131, !noundef !132
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !117, !range !131, !noundef !132
  %i.ab = icmp eq i8 %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %.critedge.i, !prof !119, !llvm.loop !18

bb.e:                                             ; preds = %.critedge.i
  %i.ac = icmp eq i8 %i.t, 0
  br i1 %i.ac, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %.022.i77, -1                   ; 2 uses
  %i.ae = add i64 %i.e, %.024.i76
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !19

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.x
  br label %bb.p

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi86 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !98
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi86              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.al = shl nuw i64 1, %.pre-phi86
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre82 = load ptr, ptr %1, align 8, !tbaa !331
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre84 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi86, %.thread66 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !98
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.as, 16383
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.av = phi i64 [ %i.an, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !390 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !390
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 16383
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !948

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !376
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !98
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmm.exit: ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !385
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !117, !range !131, !noundef !132
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !391
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !389
  %i.bx = lshr i64 %i.bl, 3
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = or i64 %i.bx, %i.by                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !383
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !155
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !338
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKbEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !387
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !951
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
  %.not.i30 = icmp eq i8 %i.bd, 0
  br i1 %.not.i30, label %bb.p, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bp

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bq

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !408
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !293, !range !131, !noundef !132
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bn, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !292
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !291
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bz = and i32 %i.bu, 2147483584               ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %.not37.i.i.not.i.i58.not = icmp eq i32 %i.bz, 0
  br i1 %.not37.i.i.not.i.i58.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i59, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ca
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i59 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cb = lshr exact i64 %indvars.iv.i.i59, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !155
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bu, %i.bz
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cf = lshr i32 %i.bu, 6
  %i.cg = and i32 %i.bu, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ch
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.ck, %notmask.i40.i.i.i.i
  %i.cl = icmp eq i64 %.demorgan.i.i, -1
  %i.cm = zext i1 %i.cl to i16
  %i.cn = or disjoint i16 %i.cm, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.cn, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bn, align 4
  %i.co = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.co, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.ct, %.noexc38 ], [ %i.cq, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.ct = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %i.cr
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1087

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cu = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cu, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cq, %i.cv
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = add i32 %i.cq, 63                       ; 2 uses
  %i.cx = srem i32 %i.cw, 64
  %i.cy = sub nsw i32 %i.cw, %i.cx                ; 6 uses
  %i.cz = and i32 %i.cv, -64                      ; 6 uses
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = ashr i32 %i.cv, 6
  %i.dc = and i32 %i.cv, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i, -1
  %i.df = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.di = sub nsw i32 64, %i.df
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.dh, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  %i.dm = sext i32 %i.db to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155
  %i.dp = and i64 %i.dl, %i.do                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.du, %.noexc39 ], [ %i.dp, %bb.ab ] ; 3 uses
  %i.dq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i32 %i.cz, %i.dr
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ds)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.dt = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.du = and i64 %i.dt, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1088

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.cy
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.dw = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dz = sub nsw i32 64, %i.dw
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %i.dy, %i.ea
  %i.ec = sext i32 %i.dv to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !155
  %i.ef = and i64 %i.ee, %i.eb                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eg = shl nsw i32 %i.dv, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ef, %.preheader.i37.i.i.i.i ], [ %i.el, %.noexc40 ] ; 3 uses
  %i.eh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ej)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.ek = add i64 %.011.i38.i.i.i.i, -1
  %i.el = and i64 %i.ek, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1088

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.em = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.em, %i.cz
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cv, %i.cz
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.en = phi i32 [ %i.ff, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.eo = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.er, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.es = shl nsw i32 %i.eo, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.eo, 6                    ; 2 uses
  %i.eu = add i32 %i.et, 64
  %i.ev = sext i32 %i.eu to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ew = sext i32 %i.et to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph21.i.i.i.i.i ], [ %i.ey, %.noexc41 ] ; 2 uses
  %i.ex = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ex)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ey = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1089

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.fe, %.noexc42 ] ; 3 uses
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = or disjoint i32 %i.es, %i.fb
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fc)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fd = add i64 %.01519.i.i.i.i.i, -1
  %i.fe = and i64 %i.fd, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1090

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.ff = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ff, %i.cz
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1091

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fg = ashr i32 %i.cv, 6
  %i.fh = and i32 %i.cv, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fk = sext i32 %i.fg to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !155
  %i.fn = and i64 %i.fm, %i.fj                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.fs, %.noexc43 ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = or disjoint i32 %i.cz, %i.fp
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fq)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fr = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1088

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ft = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 2
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(64) %i.ft, i64 noundef %i.fw)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ga = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.ga, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = atomicrmw add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.br

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.gd = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.gd, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %..i.i
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.bs  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 1, ptr %i.gu, align 8, !tbaa !110, !noalias !1098
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 1, ptr %i.gv, align 4, !tbaa !111, !noalias !1098
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gs, align 8, !tbaa !113, !noalias !1098
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1098

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 160) #32, !noalias !1098
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gw, ptr %0, align 8, !tbaa !203
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hb, align 8, !tbaa !110
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !111
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.he, %bb.ar ], [ %i.ho, %bb.as ]
  %i.hp = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hp, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hq = load ptr, ptr %15, align 8, !tbaa !408  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !337
  %i.ht = icmp eq i8 %i.hs, -1
  br i1 %i.ht, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIibvvvEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hu = load i64, ptr %i.bm, align 8, !tbaa !338 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 14
  %i.hw = icmp ult i64 %i.hu, 256
  br i1 %i.hw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = and i64 %i.hu, 255                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !155
  store i64 %i.hx, ptr %i.bm, align 8, !tbaa !338
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hz = phi i64 [ %i.hu, %bb.au ], [ %i.hx, %bb.av ] ; 2 uses
  %i.ia = load i8, ptr %i.hv, align 1, !tbaa !98
  %i.ib = icmp eq i64 %i.hz, 0
  %i.ic = shl i8 %i.ia, 3
  %i.id = and i8 %i.ic, 120
  %narrow.i.i.i.i = add nuw i8 %i.id, 16
  %i.ie = zext i8 %narrow.i.i.i.i to i64
  %i.if = shl i64 128, %i.hz
  %.0.i.i.i.i.i = select i1 %i.ib, i64 %i.ie, i64 %i.if
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !408
  store i64 0, ptr %i.bm, align 8, !tbaa !338
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %.0.i.i.i.i.i) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIibvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIibvvvEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ig = load ptr, ptr %14, align 8, !tbaa !319  ; 7 uses
  %.not.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i55, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit60, label %bb.ax

bb.ax:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIibvvvEEED2Ev.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = atomicrmw sub ptr %i.ih, i32 1 acq_rel, align 4
end_hunk_3
begin_hunk_4_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIiE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  %.idx = shl nsw i64 %i.by, 2                    ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 %.idx ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1113, !nonnull !132, !align !171 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bu, %i.bx
  br i1 %.not.i.i, label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEvT_S7_T0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIibvvvEEE5clearEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx84           ; 2 uses
  %i.cc = ashr exact i64 %gepdiff, 2
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = xor i64 %i.ce, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_T0_T1_(ptr noundef %i.bw, ptr noundef %i.bz, i64 noundef %i.cf, ptr nonnull %i.cb)
  %i.cg = icmp sgt i64 %gepdiff, 64
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_T0_(ptr noundef %i.bw, ptr noundef nonnull %i.ch, ptr nonnull %i.cb)
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_T0_(ptr noundef nonnull %i.ch, ptr noundef %i.bz, ptr nonnull %i.cb)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEvT_S7_T0_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEEEvT_SB_T0_(ptr noundef %i.bw, ptr noundef %i.bz, ptr nonnull %i.cb)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEvT_S7_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIiEEEvT_S7_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIibvvvEEE5clearEv.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 7 uses
  %.01790 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1113, !nonnull !132, !align !171
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !345 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !377 ; 4 uses
  %.not.i30 = icmp eq ptr %i.cm, null
  br i1 %.not.i30, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 57
  %i.cr = load i8, ptr %i.cq, align 1, !range !131
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i = select i1 %i.cp, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.ct = lshr i64 %indvars.iv, 6
  %i.cu = and i64 %i.ct, 67108863
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !155
  %i.cx = and i64 %indvars.iv, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i31 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i31, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !379, !range !131, !noundef !132
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split49

.split49:                                         ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !380
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !107
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !155
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not.i7.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i7.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.m
  %i.do = load i64, ptr %i.cm, align 8, !tbaa !155
  %i.dp = and i64 %i.do, 1
  %.not.i6.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i6.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.n:                                             ; preds = %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dq = add nsw i32 %.01790, 1                  ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 2
  br i1 %i.dr, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !1112, !nonnull !132, !align !171
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !297
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !1108, !nonnull !132, !align !172 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !107
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = trunc nsw i64 %indvars.iv to i32
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !107
  %i.dz = load i32, ptr %i.du, align 4, !tbaa !107
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !107
  br label %bb.aa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.k, %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !381
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !378, !range !131, !noundef !132
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.ef, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !379, !range !131, !noundef !132
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

bb.r:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !380
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %indvars.iv
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.q, %bb.r
  %.0.i.i = phi i32 [ %i.ep, %bb.r ], [ %i.el, %bb.q ], [ %i.eg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.eq = sext i32 %.0.i.i to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !107 ; 5 uses
  store i32 %i.es, ptr %i.a, align 4, !tbaa !107
  %i.et = load ptr, ptr %i.x, align 8, !tbaa !1110, !nonnull !132, !align !171 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !338 ; 2 uses
  %i.ew = lshr i64 %i.ev, 8
  switch i64 %i.ew, label %bb.t [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !412
  %i.ez = and i64 %i.ey, -8
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !107
  %i.fc = icmp eq i32 %i.es, %i.fb
  br i1 %i.fc, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  %i.fd = sext i32 %i.es to i64                   ; 2 uses
  %i.fe = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fd) ; 2 uses
  %i.ff = lshr i64 %i.fe, 24
  %i.fg = or i64 %i.ff, 128                       ; 2 uses
  %i.fh = add nsw i64 %i.fe, %i.fd
  %i.fi = shl nuw nsw i64 %i.fg, 1
  %i.fj = or disjoint i64 %i.fi, 1
  %i.fk = trunc nuw i64 %i.fg to i8
  %i.fl = insertelement <16 x i8> poison, i8 %i.fk, i64 0
  %i.fm = shufflevector <16 x i8> %i.fl, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fn = and i64 %i.ev, 255                      ; 2 uses
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = load ptr, ptr %i.et, align 8, !tbaa !408
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.x
  %.023.i89 = phi i64 [ %i.fo, %bb.t ], [ %i.gj, %bb.x ]
  %.025.i88 = phi i64 [ %i.fh, %bb.t ], [ %i.gk, %bb.x ] ; 2 uses
  %i.fq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i88, i64 range(i64 0, 256) %i.fn)
  %i.fr = getelementptr inbounds nuw [128 x i8], ptr %i.fp, i64 %i.fq ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.ft, i32 0, i32 3, i32 1)
  %i.fu = load <16 x i8>, ptr %i.fr, align 16     ; 2 uses
  %i.fv = icmp eq <16 x i8> %i.fu, %i.fm
  %i.fw = bitcast <16 x i1> %i.fv to i16
  %i.fx = and i16 %i.fw, 16383
  %i.fy = zext nneg i16 %i.fx to i32
  %i.fz = icmp ne ptr %i.fr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ga = extractelement <16 x i8> %i.fu, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %bb.u
  %.sroa.044.0 = phi i32 [ %i.fy, %bb.u ], [ %i.gd, %bb.v ] ; 4 uses
  %.not = icmp eq i32 %.sroa.044.0, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.gb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.gc = add nuw nsw i32 %.sroa.044.0, 16383
  %i.gd = and i32 %i.gc, %.sroa.044.0
  %i.ge = zext nneg i32 %i.gb to i64              ; 2 uses
  call void @llvm.assume(i1 %i.fz)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !107
  %i.gh = icmp eq i32 %i.es, %i.gg
  br i1 %i.gh, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70.loopexit, label %.critedge.i, !prof !119, !llvm.loop !23

bb.w:                                             ; preds = %.critedge.i
  %i.gi = icmp eq i8 %i.ga, 0
  br i1 %i.gi, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread, label %bb.x, !prof !119

bb.x:                                             ; preds = %bb.w
  %i.gj = add i64 %.023.i89, -1                   ; 2 uses
  %i.gk = add i64 %i.fj, %.025.i88
  %.not.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread, label %bb.u, !llvm.loop !24

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread: ; preds = %bb.w, %bb.x, %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1114
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1114
  store ptr %i.a, ptr %3, align 8, !tbaa !297, !alias.scope !1115, !noalias !1114
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1114
  %i.gl = sext i32 %i.es to i64                   ; 2 uses
  %i.gm = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gl) ; 2 uses
  %i.gn = lshr i64 %i.gm, 24
  %i.go = or i64 %i.gn, 128
  %i.gp = add nsw i64 %i.gm, %i.gl
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE19tryEmplaceValueImplIiJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.419") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 %i.gp, i64 %i.go, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1114
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1114
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1114
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !414, !noalias !1114
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1114
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 4
  store i8 1, ptr %i.gq, align 1, !tbaa !117
  br label %bb.z

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70.loopexit: ; preds = %bb.v
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ge
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70.loopexit, %bb.s
  %.sroa.043.175 = phi ptr [ %i.fa, %bb.s ], [ %i.gr, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70.loopexit ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.043.175, i64 4 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 4, !tbaa !416, !range !131, !noundef !132
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70
  store i8 0, ptr %i.gs, align 4, !tbaa !416
  %i.gv = load ptr, ptr %i.w, align 8, !tbaa !1112, !nonnull !132, !align !171
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !297
  %i.gx = load ptr, ptr %i.m, align 8, !tbaa !1108, !nonnull !132, !align !172 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !107
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gz
  store i32 %i.eg, ptr %i.ha, align 4, !tbaa !107
  %i.hb = load i32, ptr %i.gx, align 4, !tbaa !107
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.gx, align 4, !tbaa !107
  br label %bb.z

bb.z:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread70, %bb.y, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE4findIiEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKibEEEEERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o, %bb.n
  %.1 = phi i32 [ 2, %bb.o ], [ %i.dq, %bb.n ], [ %.01790, %bb.z ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hd = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.hd, label %bb.k, label %._crit_edge, !llvm.loop !1104
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE19tryEmplaceValueImplIiJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.419") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !408   ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i77 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i76 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i76, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %4, align 4, !tbaa !107
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !107
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !119, !llvm.loop !23

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i77, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i76
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !24

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi86 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !98
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi86              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.am = shl nuw i64 1, %.pre-phi86
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre82 = load ptr, ptr %1, align 8, !tbaa !408
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre84 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi86, %.thread66 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !98
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.at, 16383
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !417 ; 2 uses
  %.not.i33 = icmp eq i8 %i.az, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !417
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKibEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.030                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bh, 16383
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !1116

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !411
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !98
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKibEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKibEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !98
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 4 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %6, align 8, !tbaa !297
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !107
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !418
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i8 0, ptr %i.bx, align 4, !tbaa !416
  %i.by = lshr i64 %i.bm, 1
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = or i64 %i.by, %i.bz                     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !412
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE6setTagEmm.exit
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !155
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKibEE6setTagEmm.exit, %bb.o
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.cf = and i64 %i.ce, -256
  %i.cg = add i64 %i.cf, 256
  %i.ch = and i64 %i.ce, 255
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !338
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !414
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cj, align 8, !tbaa !1119
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIibvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
  %.not.i30 = icmp eq i8 %i.bd, 0
  br i1 %.not.i30, label %bb.p, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bp

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bq

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !428
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !293, !range !131, !noundef !132
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bn, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !292
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !291
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bz = and i32 %i.bu, 2147483584               ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %.not37.i.i.not.i.i58.not = icmp eq i32 %i.bz, 0
  br i1 %.not37.i.i.not.i.i58.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i59, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ca
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i59 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cb = lshr exact i64 %indvars.iv.i.i59, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !155
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bu, %i.bz
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cf = lshr i32 %i.bu, 6
  %i.cg = and i32 %i.bu, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ch
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.ck, %notmask.i40.i.i.i.i
  %i.cl = icmp eq i64 %.demorgan.i.i, -1
  %i.cm = zext i1 %i.cl to i16
  %i.cn = or disjoint i16 %i.cm, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.cn, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bn, align 4
  %i.co = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.co, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.ct, %.noexc38 ], [ %i.cq, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.ct = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %i.cr
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1171

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cu = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cu, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cq, %i.cv
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = add i32 %i.cq, 63                       ; 2 uses
  %i.cx = srem i32 %i.cw, 64
  %i.cy = sub nsw i32 %i.cw, %i.cx                ; 6 uses
  %i.cz = and i32 %i.cv, -64                      ; 6 uses
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = ashr i32 %i.cv, 6
  %i.dc = and i32 %i.cv, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i, -1
  %i.df = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.di = sub nsw i32 64, %i.df
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.dh, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  %i.dm = sext i32 %i.db to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155
  %i.dp = and i64 %i.dl, %i.do                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.du, %.noexc39 ], [ %i.dp, %bb.ab ] ; 3 uses
  %i.dq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i32 %i.cz, %i.dr
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ds)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.dt = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.du = and i64 %i.dt, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1172

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.cy
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.dw = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dz = sub nsw i32 64, %i.dw
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %i.dy, %i.ea
  %i.ec = sext i32 %i.dv to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !155
  %i.ef = and i64 %i.ee, %i.eb                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eg = shl nsw i32 %i.dv, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ef, %.preheader.i37.i.i.i.i ], [ %i.el, %.noexc40 ] ; 3 uses
  %i.eh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ej)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.ek = add i64 %.011.i38.i.i.i.i, -1
  %i.el = and i64 %i.ek, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1172

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.em = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.em, %i.cz
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cv, %i.cz
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.en = phi i32 [ %i.ff, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.eo = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.er, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.es = shl nsw i32 %i.eo, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.eo, 6                    ; 2 uses
  %i.eu = add i32 %i.et, 64
  %i.ev = sext i32 %i.eu to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ew = sext i32 %i.et to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph21.i.i.i.i.i ], [ %i.ey, %.noexc41 ] ; 2 uses
  %i.ex = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ex)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ey = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1173

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.fe, %.noexc42 ] ; 3 uses
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = or disjoint i32 %i.es, %i.fb
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fc)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fd = add i64 %.01519.i.i.i.i.i, -1
  %i.fe = and i64 %i.fd, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1174

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.ff = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ff, %i.cz
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1175

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fg = ashr i32 %i.cv, 6
  %i.fh = and i32 %i.cv, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fk = sext i32 %i.fg to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !155
  %i.fn = and i64 %i.fm, %i.fj                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.fs, %.noexc43 ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = or disjoint i32 %i.cz, %i.fp
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fq)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fr = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1172

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ft = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 2
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(64) %i.ft, i64 noundef %i.fw)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ga = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.ga, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = atomicrmw add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.br

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.gd = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.gd, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %..i.i
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.bs  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 1, ptr %i.gu, align 8, !tbaa !110, !noalias !1182
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 1, ptr %i.gv, align 4, !tbaa !111, !noalias !1182
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gs, align 8, !tbaa !113, !noalias !1182
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1182

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 160) #32, !noalias !1182
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gw, ptr %0, align 8, !tbaa !203
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hb, align 8, !tbaa !110
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !111
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.he, %bb.ar ], [ %i.ho, %bb.as ]
  %i.hp = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hp, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hq = load ptr, ptr %15, align 8, !tbaa !428  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !337
  %i.ht = icmp eq i8 %i.hs, -1
  br i1 %i.ht, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIabvvvEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hu = load i64, ptr %i.bm, align 8, !tbaa !338 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 14
  %i.hw = icmp ult i64 %i.hu, 256
  br i1 %i.hw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = and i64 %i.hu, 255                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !155
  store i64 %i.hx, ptr %i.bm, align 8, !tbaa !338
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hz = phi i64 [ %i.hu, %bb.au ], [ %i.hx, %bb.av ] ; 2 uses
  %i.ia = load i8, ptr %i.hv, align 1, !tbaa !98
  %i.ib = icmp eq i64 %i.hz, 0
  %i.ic = shl i8 %i.ia, 1
  %i.id = and i8 %i.ic, 30
  %narrow.i.i.i.i = add nuw nsw i8 %i.id, 16
  %i.ie = zext nneg i8 %narrow.i.i.i.i to i64
  %i.if = shl i64 48, %i.hz
  %.0.i.i.i.i.i = select i1 %i.ib, i64 %i.ie, i64 %i.if
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !428
  store i64 0, ptr %i.bm, align 8, !tbaa !338
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %.0.i.i.i.i.i) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIabvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIabvvvEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ig = load ptr, ptr %14, align 8, !tbaa !319  ; 7 uses
  %.not.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i55, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit60, label %bb.ax

bb.ax:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIabvvvEEED2Ev.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = atomicrmw sub ptr %i.ih, i32 1 acq_rel, align 4
end_hunk_5
begin_hunk_6_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIaE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  %i.bx = load i32, ptr %i.bg, align 4, !tbaa !107 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %.idx = shl nsw i64 %i.by, 2                    ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 %.idx ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1197, !nonnull !132, !align !171 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bu, %i.bx
  br i1 %.not.i.i, label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEvT_S7_T0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIabvvvEEE5clearEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx84           ; 2 uses
  %i.cc = ashr exact i64 %gepdiff, 2
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = xor i64 %i.ce, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_T0_T1_(ptr noundef %i.bw, ptr noundef %i.bz, i64 noundef %i.cf, ptr nonnull %i.cb)
  %i.cg = icmp sgt i64 %gepdiff, 64
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_T0_(ptr noundef %i.bw, ptr noundef nonnull %i.ch, ptr nonnull %i.cb)
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_T0_(ptr noundef nonnull %i.ch, ptr noundef %i.bz, ptr nonnull %i.cb)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEvT_S7_T0_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEEEvT_SB_T0_(ptr noundef %i.bw, ptr noundef %i.bz, ptr nonnull %i.cb)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEvT_S7_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIaEEEvT_S7_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIabvvvEEE5clearEv.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 7 uses
  %.01790 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1197, !nonnull !132, !align !171
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !345 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !377 ; 4 uses
  %.not.i30 = icmp eq ptr %i.cm, null
  br i1 %.not.i30, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 57
  %i.cr = load i8, ptr %i.cq, align 1, !range !131
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i = select i1 %i.cp, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.ct = lshr i64 %indvars.iv, 6
  %i.cu = and i64 %i.ct, 67108863
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !155
  %i.cx = and i64 %indvars.iv, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i31 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i31, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !379, !range !131, !noundef !132
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split49

.split49:                                         ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !380
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !107
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !155
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not.i7.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i7.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.m
  %i.do = load i64, ptr %i.cm, align 8, !tbaa !155
  %i.dp = and i64 %i.do, 1
  %.not.i6.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i6.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.n:                                             ; preds = %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dq = add nsw i32 %.01790, 1                  ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 2
  br i1 %i.dr, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !1196, !nonnull !132, !align !171
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !297
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !1192, !nonnull !132, !align !172 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !107
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = trunc nsw i64 %indvars.iv to i32
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !107
  %i.dz = load i32, ptr %i.du, align 4, !tbaa !107
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !107
  br label %bb.aa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.k, %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !381
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !378, !range !131, !noundef !132
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.ef, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !379, !range !131, !noundef !132
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit

bb.r:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !380
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %indvars.iv
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.q, %bb.r
  %.0.i.i = phi i32 [ %i.ep, %bb.r ], [ %i.el, %bb.q ], [ %i.eg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.eq = sext i32 %.0.i.i to i64
  %i.er = getelementptr inbounds i8, ptr %i.ec, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !98  ; 5 uses
  store i8 %i.es, ptr %i.a, align 1, !tbaa !98
  %i.et = load ptr, ptr %i.x, align 8, !tbaa !1194, !nonnull !132, !align !171 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !338 ; 2 uses
  %i.ew = lshr i64 %i.ev, 8
  switch i64 %i.ew, label %bb.t [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !431
  %i.ez = and i64 %i.ey, -2
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !98
  %i.fc = icmp eq i8 %i.es, %i.fb
  br i1 %i.fc, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit
  %i.fd = sext i8 %i.es to i64                    ; 2 uses
  %i.fe = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fd) ; 2 uses
  %i.ff = lshr i64 %i.fe, 24
  %i.fg = or i64 %i.ff, 128                       ; 2 uses
  %i.fh = add nsw i64 %i.fe, %i.fd
  %i.fi = shl nuw nsw i64 %i.fg, 1
  %i.fj = or disjoint i64 %i.fi, 1
  %i.fk = trunc nuw i64 %i.fg to i8
  %i.fl = insertelement <16 x i8> poison, i8 %i.fk, i64 0
  %i.fm = shufflevector <16 x i8> %i.fl, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fn = and i64 %i.ev, 255                      ; 2 uses
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = load ptr, ptr %i.et, align 8, !tbaa !428
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.x
  %.022.i89 = phi i64 [ %i.fo, %bb.t ], [ %i.gi, %bb.x ]
  %.024.i88 = phi i64 [ %i.fh, %bb.t ], [ %i.gj, %bb.x ] ; 2 uses
  %i.fq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i88, i64 range(i64 0, 256) %i.fn)
  %i.fr = getelementptr inbounds nuw [48 x i8], ptr %i.fp, i64 %i.fq ; 3 uses
  %i.fs = load <16 x i8>, ptr %i.fr, align 16     ; 2 uses
  %i.ft = icmp eq <16 x i8> %i.fs, %i.fm
  %i.fu = bitcast <16 x i1> %i.ft to i16
  %i.fv = and i16 %i.fu, 16383
  %i.fw = zext nneg i16 %i.fv to i32
  %i.fx = icmp ne ptr %i.fr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fz = extractelement <16 x i8> %i.fs, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %bb.u
  %.sroa.044.0 = phi i32 [ %i.fw, %bb.u ], [ %i.gc, %bb.v ] ; 4 uses
  %.not = icmp eq i32 %.sroa.044.0, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.ga = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.gb = add nuw nsw i32 %.sroa.044.0, 16383
  %i.gc = and i32 %i.gb, %.sroa.044.0
  %i.gd = zext nneg i32 %i.ga to i64              ; 2 uses
  call void @llvm.assume(i1 %i.fx)
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !98
  %i.gg = icmp eq i8 %i.es, %i.gf
  br i1 %i.gg, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70.loopexit, label %.critedge.i, !prof !119, !llvm.loop !28

bb.w:                                             ; preds = %.critedge.i
  %i.gh = icmp eq i8 %i.fz, 0
  br i1 %i.gh, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread, label %bb.x, !prof !119

bb.x:                                             ; preds = %bb.w
  %i.gi = add i64 %.022.i89, -1                   ; 2 uses
  %i.gj = add i64 %i.fj, %.024.i88
  %.not.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread, label %bb.u, !llvm.loop !29

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread: ; preds = %bb.w, %bb.x, %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1198
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1198
  store ptr %i.a, ptr %3, align 8, !tbaa !188, !alias.scope !1199, !noalias !1198
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1198
  %i.gk = sext i8 %i.es to i64                    ; 2 uses
  %i.gl = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gk) ; 2 uses
  %i.gm = lshr i64 %i.gl, 24
  %i.gn = or i64 %i.gm, 128
  %i.go = add nsw i64 %i.gl, %i.gk
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE19tryEmplaceValueImplIaJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.480") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 %i.go, i64 %i.gn, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1198
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !433, !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1198
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 1
  store i8 1, ptr %i.gp, align 1, !tbaa !117
  br label %bb.z

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70.loopexit: ; preds = %bb.v
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %i.gd
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70.loopexit, %bb.s
  %.sroa.043.175 = phi ptr [ %i.fa, %bb.s ], [ %i.gq, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70.loopexit ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.043.175, i64 1 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !435, !range !131, !noundef !132
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70
  store i8 0, ptr %i.gr, align 1, !tbaa !435
  %i.gu = load ptr, ptr %i.w, align 8, !tbaa !1196, !nonnull !132, !align !171
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !297
  %i.gw = load ptr, ptr %i.m, align 8, !tbaa !1192, !nonnull !132, !align !172 ; 3 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !107
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gy
  store i32 %i.eg, ptr %i.gz, align 4, !tbaa !107
  %i.ha = load i32, ptr %i.gw, align 4, !tbaa !107
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gw, align 4, !tbaa !107
  br label %bb.z

bb.z:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread70, %bb.y, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE4findIaEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKabEEEEERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o, %bb.n
  %.1 = phi i32 [ 2, %bb.o ], [ %i.dq, %bb.n ], [ %.01790, %bb.z ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.hc, label %bb.k, label %._crit_edge, !llvm.loop !1188
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE19tryEmplaceValueImplIaJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.480") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !428   ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i77 = phi i64 [ %i.j, %bb.b ], [ %i.ad, %bb.f ]
  %.024.i76 = phi i64 [ %2, %bb.b ], [ %i.ae, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.k ; 3 uses
  %i.m = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.n = icmp eq <16 x i8> %i.m, %i.h
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = and i16 %i.o, 16383
  %i.q = zext nneg i16 %i.p to i32
  %i.r = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.t = extractelement <16 x i8> %i.m, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.q, %bb.c ], [ %i.w, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.u = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.v = add nuw nsw i32 %.sroa.042.0, 16383
  %i.w = and i32 %i.v, %.sroa.042.0
  %i.x = zext nneg i32 %i.u to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.r)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.x
  %i.z = load i8, ptr %4, align 1, !tbaa !98
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !98
  %i.ab = icmp eq i8 %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %.critedge.i, !prof !119, !llvm.loop !28

bb.e:                                             ; preds = %.critedge.i
  %i.ac = icmp eq i8 %i.t, 0
  br i1 %i.ac, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %.022.i77, -1                   ; 2 uses
  %i.ae = add i64 %i.e, %.024.i76
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !29

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.x
  br label %bb.p

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi86 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !98
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi86              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.al = shl nuw i64 1, %.pre-phi86
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre82 = load ptr, ptr %1, align 8, !tbaa !428
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre84 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi86, %.thread66 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !98
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.as, 16383
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.av = phi i64 [ %i.an, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !436 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !436
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKabEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 16383
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !1200

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !430
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !98
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKabEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKabEE6setTagEmm.exit: ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !188
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !98
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !437
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !435
  %i.bx = lshr i64 %i.bl, 3
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = or i64 %i.bx, %i.by                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !431
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !155
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKabEE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !338
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !433
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !1203
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIabvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
  %.not.i30 = icmp eq i8 %i.bd, 0
  br i1 %.not.i30, label %bb.p, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bp

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bq

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !447
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !293, !range !131, !noundef !132
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bn, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !292
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !291
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bz = and i32 %i.bu, 2147483584               ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %.not37.i.i.not.i.i58.not = icmp eq i32 %i.bz, 0
  br i1 %.not37.i.i.not.i.i58.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i59, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ca
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i59 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cb = lshr exact i64 %indvars.iv.i.i59, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !155
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bu, %i.bz
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cf = lshr i32 %i.bu, 6
  %i.cg = and i32 %i.bu, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ch
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.ck, %notmask.i40.i.i.i.i
  %i.cl = icmp eq i64 %.demorgan.i.i, -1
  %i.cm = zext i1 %i.cl to i16
  %i.cn = or disjoint i16 %i.cm, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.cn, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bn, align 4
  %i.co = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.co, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.ct, %.noexc38 ], [ %i.cq, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.ct = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %i.cr
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1255

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cu = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cu, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cq, %i.cv
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = add i32 %i.cq, 63                       ; 2 uses
  %i.cx = srem i32 %i.cw, 64
  %i.cy = sub nsw i32 %i.cw, %i.cx                ; 6 uses
  %i.cz = and i32 %i.cv, -64                      ; 6 uses
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = ashr i32 %i.cv, 6
  %i.dc = and i32 %i.cv, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i, -1
  %i.df = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.di = sub nsw i32 64, %i.df
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.dh, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  %i.dm = sext i32 %i.db to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155
  %i.dp = and i64 %i.dl, %i.do                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.du, %.noexc39 ], [ %i.dp, %bb.ab ] ; 3 uses
  %i.dq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i32 %i.cz, %i.dr
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ds)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.dt = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.du = and i64 %i.dt, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1256

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.cy
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.dw = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dz = sub nsw i32 64, %i.dw
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %i.dy, %i.ea
  %i.ec = sext i32 %i.dv to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !155
  %i.ef = and i64 %i.ee, %i.eb                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eg = shl nsw i32 %i.dv, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ef, %.preheader.i37.i.i.i.i ], [ %i.el, %.noexc40 ] ; 3 uses
  %i.eh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ej)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.ek = add i64 %.011.i38.i.i.i.i, -1
  %i.el = and i64 %i.ek, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1256

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.em = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.em, %i.cz
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cv, %i.cz
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.en = phi i32 [ %i.ff, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.eo = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.er, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.es = shl nsw i32 %i.eo, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.eo, 6                    ; 2 uses
  %i.eu = add i32 %i.et, 64
  %i.ev = sext i32 %i.eu to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ew = sext i32 %i.et to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph21.i.i.i.i.i ], [ %i.ey, %.noexc41 ] ; 2 uses
  %i.ex = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ex)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ey = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1257

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.fe, %.noexc42 ] ; 3 uses
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = or disjoint i32 %i.es, %i.fb
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fc)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fd = add i64 %.01519.i.i.i.i.i, -1
  %i.fe = and i64 %i.fd, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1258

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.ff = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ff, %i.cz
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1259

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fg = ashr i32 %i.cv, 6
  %i.fh = and i32 %i.cv, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fk = sext i32 %i.fg to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !155
  %i.fn = and i64 %i.fm, %i.fj                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.fs, %.noexc43 ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = or disjoint i32 %i.cz, %i.fp
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fq)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fr = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1256

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ft = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 2
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(64) %i.ft, i64 noundef %i.fw)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ga = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.ga, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = atomicrmw add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.br

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.gd = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.gd, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %..i.i
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.bs  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 1, ptr %i.gu, align 8, !tbaa !110, !noalias !1266
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 1, ptr %i.gv, align 4, !tbaa !111, !noalias !1266
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gs, align 8, !tbaa !113, !noalias !1266
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1266

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 160) #32, !noalias !1266
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gw, ptr %0, align 8, !tbaa !203
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hb, align 8, !tbaa !110
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !111
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.he, %bb.ar ], [ %i.ho, %bb.as ]
  %i.hp = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hp, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hq = load ptr, ptr %15, align 8, !tbaa !447  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !337
  %i.ht = icmp eq i8 %i.hs, -1
  br i1 %i.ht, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIsbvvvEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hu = load i64, ptr %i.bm, align 8, !tbaa !338 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.hw = icmp ult i64 %i.hu, 256
  br i1 %i.hw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = and i64 %i.hu, 255                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !155
  store i64 %i.hx, ptr %i.bm, align 8, !tbaa !338
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hz = phi i64 [ %i.hu, %bb.au ], [ %i.hx, %bb.av ] ; 2 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.hv, align 1
  %i.ia = zext i16 %.0.copyload.i.i.i.i.i to i64
  %i.ib = icmp eq i64 %i.hz, 0
  %i.ic = shl nuw nsw i64 %i.ia, 2
  %i.id = add nuw nsw i64 %i.ic, 16
  %i.ie = shl i64 64, %i.hz
  %.0.i.i.i.i.i = select i1 %i.ib, i64 %i.id, i64 %i.ie
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !447
  store i64 0, ptr %i.bm, align 8, !tbaa !338
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %.0.i.i.i.i.i) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIsbvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIsbvvvEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.if = load ptr, ptr %14, align 8, !tbaa !319  ; 7 uses
  %.not.i55 = icmp eq ptr %i.if, null
  br i1 %.not.i55, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit60, label %bb.ax

bb.ax:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIsbvvvEEED2Ev.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ih = atomicrmw sub ptr %i.ig, i32 1 acq_rel, align 4
  %i.ii = icmp eq i32 %i.ih, 1
end_hunk_7
begin_hunk_8_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIsE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  %i.bv = load i32, ptr %i.be, align 4, !tbaa !107 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %.idx = shl nsw i64 %i.bw, 2                    ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.br, i64 %.idx ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1281, !nonnull !132, !align !171 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bs, %i.bv
  br i1 %.not.i.i, label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEvT_S7_T0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIsbvvvEEE5clearEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx84           ; 2 uses
  %i.ca = ashr exact i64 %gepdiff, 2
  %i.cb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = shl nuw nsw i64 %i.cb, 1
  %i.cd = xor i64 %i.cc, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_T0_T1_(ptr noundef %i.bu, ptr noundef %i.bx, i64 noundef %i.cd, ptr nonnull %i.bz)
  %i.ce = icmp sgt i64 %gepdiff, 64
  br i1 %i.ce, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_T0_(ptr noundef %i.bu, ptr noundef nonnull %i.cf, ptr nonnull %i.bz)
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_T0_(ptr noundef nonnull %i.cf, ptr noundef %i.bx, ptr nonnull %i.bz)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEvT_S7_T0_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEEEvT_SB_T0_(ptr noundef %i.bu, ptr noundef %i.bx, ptr nonnull %i.bz)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEvT_S7_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIsEEEvT_S7_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIsbvvvEEE5clearEv.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 7 uses
  %.01789 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !1281, !nonnull !132, !align !171
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !345 ; 10 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !377 ; 4 uses
  %.not.i30 = icmp eq ptr %i.ck, null
  br i1 %.not.i30, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 57
  %i.cp = load i8, ptr %i.co, align 1, !range !131
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond.i = select i1 %i.cn, i1 true, i1 %i.cq
  br i1 %or.cond.i, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.cr = lshr i64 %indvars.iv, 6
  %i.cs = and i64 %i.cr, 67108863
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !155
  %i.cv = and i64 %indvars.iv, 63
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cu, %i.cw
  %.not.i.i31 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i31, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 59
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !379, !range !131, !noundef !132
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split49

.split49:                                         ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !380
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !107
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 6
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !155
  %i.dj = and i64 %i.df, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.di
  %.not.i7.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i7.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.m
  %i.dm = load i64, ptr %i.ck, align 8, !tbaa !155
  %i.dn = and i64 %i.dm, 1
  %.not.i6.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i6.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.n:                                             ; preds = %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.do = add nsw i32 %.01789, 1                  ; 2 uses
  %i.dp = icmp eq i32 %i.do, 2
  br i1 %i.dp, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.dq = load ptr, ptr %i.w, align 8, !tbaa !1280, !nonnull !132, !align !171
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !297
  %i.ds = load ptr, ptr %i.m, align 8, !tbaa !1276, !nonnull !132, !align !172 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !107
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.du
  %i.dw = trunc nsw i64 %indvars.iv to i32
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !107
  %i.dx = load i32, ptr %i.ds, align 4, !tbaa !107
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !107
  br label %bb.aa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.k, %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !381
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ci, i64 58
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !378, !range !131, !noundef !132
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.ed, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ci, i64 59
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !379, !range !131, !noundef !132
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit

bb.r:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !380
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv
  %i.en = load i32, ptr %i.em, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.q, %bb.r
  %.0.i.i = phi i32 [ %i.en, %bb.r ], [ %i.ej, %bb.q ], [ %i.ee, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.eo = sext i32 %.0.i.i to i64
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.ea, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !449 ; 5 uses
  store i16 %i.eq, ptr %i.a, align 2, !tbaa !449
  %i.er = load ptr, ptr %i.x, align 8, !tbaa !1278, !nonnull !132, !align !171 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !338 ; 2 uses
  %i.eu = lshr i64 %i.et, 8
  switch i64 %i.eu, label %bb.t [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !450
  %i.ex = and i64 %i.ew, -4
  %i.ey = inttoptr i64 %i.ex to ptr               ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 4, !tbaa !449
  %i.fa = icmp eq i16 %i.eq, %i.ez
  br i1 %i.fa, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit
  %i.fb = sext i16 %i.eq to i64                   ; 2 uses
  %i.fc = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fb) ; 2 uses
  %i.fd = lshr i64 %i.fc, 24
  %i.fe = or i64 %i.fd, 128                       ; 2 uses
  %i.ff = add nsw i64 %i.fc, %i.fb
  %i.fg = shl nuw nsw i64 %i.fe, 1
  %i.fh = or disjoint i64 %i.fg, 1
  %i.fi = trunc nuw i64 %i.fe to i8
  %i.fj = insertelement <16 x i8> poison, i8 %i.fi, i64 0
  %i.fk = shufflevector <16 x i8> %i.fj, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fl = and i64 %i.et, 255                      ; 2 uses
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = load ptr, ptr %i.er, align 8, !tbaa !447
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.x
  %.022.i88 = phi i64 [ %i.fm, %bb.t ], [ %i.gg, %bb.x ]
  %.024.i87 = phi i64 [ %i.ff, %bb.t ], [ %i.gh, %bb.x ] ; 2 uses
  %i.fo = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i87, i64 range(i64 0, 256) %i.fl)
  %i.fp = getelementptr inbounds nuw [64 x i8], ptr %i.fn, i64 %i.fo ; 3 uses
  %i.fq = load <16 x i8>, ptr %i.fp, align 16     ; 2 uses
  %i.fr = icmp eq <16 x i8> %i.fq, %i.fk
  %i.fs = bitcast <16 x i1> %i.fr to i16
  %i.ft = and i16 %i.fs, 4095
  %i.fu = zext nneg i16 %i.ft to i32
  %i.fv = icmp ne ptr %i.fp, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.fx = extractelement <16 x i8> %i.fq, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %bb.u
  %.sroa.044.0 = phi i32 [ %i.fu, %bb.u ], [ %i.ga, %bb.v ] ; 4 uses
  %.not = icmp eq i32 %.sroa.044.0, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.fy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.fz = add nuw nsw i32 %.sroa.044.0, 4095
  %i.ga = and i32 %i.fz, %.sroa.044.0
  %i.gb = zext nneg i32 %i.fy to i64              ; 2 uses
  call void @llvm.assume(i1 %i.fv)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !449
  %i.ge = icmp eq i16 %i.eq, %i.gd
  br i1 %i.ge, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70.loopexit, label %.critedge.i, !prof !119, !llvm.loop !33

bb.w:                                             ; preds = %.critedge.i
  %i.gf = icmp eq i8 %i.fx, 0
  br i1 %i.gf, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread, label %bb.x, !prof !119

bb.x:                                             ; preds = %bb.w
  %i.gg = add i64 %.022.i88, -1                   ; 2 uses
  %i.gh = add i64 %i.fh, %.024.i87
  %.not.i = icmp eq i64 %i.gg, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread, label %bb.u, !llvm.loop !34

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread: ; preds = %bb.w, %bb.x, %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1282
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1282
  store ptr %i.a, ptr %3, align 8, !tbaa !452, !alias.scope !1283, !noalias !1282
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1282
  %i.gi = sext i16 %i.eq to i64                   ; 2 uses
  %i.gj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gi) ; 2 uses
  %i.gk = lshr i64 %i.gj, 24
  %i.gl = or i64 %i.gk, 128
  %i.gm = add nsw i64 %i.gj, %i.gi
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE19tryEmplaceValueImplIsJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.544") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 %i.gm, i64 %i.gl, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1282
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !454, !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1282
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 2
  store i8 1, ptr %i.gn, align 1, !tbaa !117
  br label %bb.z

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70.loopexit: ; preds = %bb.v
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gb
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70.loopexit, %bb.s
  %.sroa.043.175 = phi ptr [ %i.ey, %bb.s ], [ %i.go, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70.loopexit ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.043.175, i64 2 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 2, !tbaa !456, !range !131, !noundef !132
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70
  store i8 0, ptr %i.gp, align 2, !tbaa !456
  %i.gs = load ptr, ptr %i.w, align 8, !tbaa !1280, !nonnull !132, !align !171
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !297
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !1276, !nonnull !132, !align !172 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !107
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.gw
  store i32 %i.ee, ptr %i.gx, align 4, !tbaa !107
  %i.gy = load i32, ptr %i.gu, align 4, !tbaa !107
  %i.gz = add nsw i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gu, align 4, !tbaa !107
  br label %bb.z

bb.z:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread70, %bb.y, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE4findIsEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsbEEEEERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o, %bb.n
  %.1 = phi i32 [ 2, %bb.o ], [ %i.do, %bb.n ], [ %.01789, %bb.z ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ha = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.ha, label %bb.k, label %._crit_edge, !llvm.loop !1272
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE19tryEmplaceValueImplIsJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.544") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !447   ; 3 uses
  br i1 %.not, label %..thread66_crit_edge, label %bb.b

..thread66_crit_edge:                             ; preds = %bb.a
  %.pre87 = shl nuw i64 1, %i.b
  br label %.thread66

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i77 = phi i64 [ %i.j, %bb.b ], [ %i.ad, %bb.f ]
  %.024.i76 = phi i64 [ %2, %bb.b ], [ %i.ae, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %i.k ; 3 uses
  %i.m = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.n = icmp eq <16 x i8> %i.m, %i.h
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = and i16 %i.o, 4095
  %i.q = zext nneg i16 %i.p to i32
  %i.r = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.t = extractelement <16 x i8> %i.m, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.q, %bb.c ], [ %i.w, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.u = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.v = add nuw nsw i32 %.sroa.042.0, 4095
  %i.w = and i32 %i.v, %.sroa.042.0
  %i.x = zext nneg i32 %i.u to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.r)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x
  %i.z = load i16, ptr %4, align 2, !tbaa !449
  %i.aa = load i16, ptr %i.y, align 2, !tbaa !449
  %i.ab = icmp eq i16 %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %.critedge.i, !prof !119, !llvm.loop !33

bb.e:                                             ; preds = %.critedge.i
  %i.ac = icmp eq i8 %i.t, 0
  br i1 %i.ac, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %.022.i77, -1                   ; 2 uses
  %i.ae = add i64 %i.e, %.024.i76
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !34

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x
  br label %bb.p

.thread66:                                        ; preds = %bb.f, %bb.e, %..thread66_crit_edge
  %.pre-phi88 = phi i64 [ %.pre87, %..thread66_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi86 = phi i64 [ %i.b, %..thread66_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ag, align 1
  %i.ah = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ai = add i64 %.pre-phi88, -1
  %i.aj = lshr i64 %i.ai, 12
  %i.ak = add nuw nsw i64 %i.aj, 1
  %i.al = mul i64 %i.ak, %i.ah                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi88, i64 noundef %i.ah, i64 noundef %i.al)
  %.pre82 = load ptr, ptr %1, align 8, !tbaa !447
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre84 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi86, %.thread66 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !98
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.as, 4095
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.av = phi i64 [ %i.an, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !459 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !459
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 4095
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !1284

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !460
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 4095
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !98
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsbEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE6setTagEmm.exit: ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !452
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !449
  store i16 %i.bv, ptr %i.br, align 2, !tbaa !461
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 0, ptr %i.bw, align 2, !tbaa !456
  %i.bx = lshr i64 %i.bl, 2
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = or i64 %i.bx, %i.by                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !450
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !155
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsbEE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !338
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit
  %.sink102 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.lcssa100.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  store ptr %.sink102, ptr %0, align 8, !tbaa !454
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa100.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !1287
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 72057594037927935
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsbvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
  %.not.i30 = icmp eq i8 %i.bd, 0
  br i1 %.not.i30, label %bb.p, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bp

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bq

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !471
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !293, !range !131, !noundef !132
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bn, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !292
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !291
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bz = and i32 %i.bu, 2147483584               ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %.not37.i.i.not.i.i58.not = icmp eq i32 %i.bz, 0
  br i1 %.not37.i.i.not.i.i58.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i59, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ca
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i59 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cb = lshr exact i64 %indvars.iv.i.i59, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !155
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bu, %i.bz
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cf = lshr i32 %i.bu, 6
  %i.cg = and i32 %i.bu, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ch
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.ck, %notmask.i40.i.i.i.i
  %i.cl = icmp eq i64 %.demorgan.i.i, -1
  %i.cm = zext i1 %i.cl to i16
  %i.cn = or disjoint i16 %i.cm, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.cn, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bn, align 4
  %i.co = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.co, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.ct, %.noexc38 ], [ %i.cq, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.ct = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %i.cr
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1339

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cu = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cu, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cq, %i.cv
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = add i32 %i.cq, 63                       ; 2 uses
  %i.cx = srem i32 %i.cw, 64
  %i.cy = sub nsw i32 %i.cw, %i.cx                ; 6 uses
  %i.cz = and i32 %i.cv, -64                      ; 6 uses
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = ashr i32 %i.cv, 6
  %i.dc = and i32 %i.cv, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i, -1
  %i.df = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.di = sub nsw i32 64, %i.df
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.dh, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  %i.dm = sext i32 %i.db to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155
  %i.dp = and i64 %i.dl, %i.do                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.du, %.noexc39 ], [ %i.dp, %bb.ab ] ; 3 uses
  %i.dq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i32 %i.cz, %i.dr
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ds)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.dt = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.du = and i64 %i.dt, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1340

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.cy
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.dw = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dz = sub nsw i32 64, %i.dw
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %i.dy, %i.ea
  %i.ec = sext i32 %i.dv to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !155
  %i.ef = and i64 %i.ee, %i.eb                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eg = shl nsw i32 %i.dv, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ef, %.preheader.i37.i.i.i.i ], [ %i.el, %.noexc40 ] ; 3 uses
  %i.eh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ej)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.ek = add i64 %.011.i38.i.i.i.i, -1
  %i.el = and i64 %i.ek, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1340

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.em = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.em, %i.cz
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cv, %i.cz
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.en = phi i32 [ %i.ff, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.eo = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.er, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.es = shl nsw i32 %i.eo, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.eo, 6                    ; 2 uses
  %i.eu = add i32 %i.et, 64
  %i.ev = sext i32 %i.eu to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ew = sext i32 %i.et to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph21.i.i.i.i.i ], [ %i.ey, %.noexc41 ] ; 2 uses
  %i.ex = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ex)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ey = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1341

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.fe, %.noexc42 ] ; 3 uses
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = or disjoint i32 %i.es, %i.fb
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fc)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fd = add i64 %.01519.i.i.i.i.i, -1
  %i.fe = and i64 %i.fd, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1342

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.ff = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ff, %i.cz
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1343

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fg = ashr i32 %i.cv, 6
  %i.fh = and i32 %i.cv, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fk = sext i32 %i.fg to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !155
  %i.fn = and i64 %i.fm, %i.fj                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.fs, %.noexc43 ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = or disjoint i32 %i.cz, %i.fp
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fq)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fr = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1340

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ft = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 2
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(64) %i.ft, i64 noundef %i.fw)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ga = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.ga, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = atomicrmw add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.br

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.gd = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.gd, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %..i.i
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.bs  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 1, ptr %i.gu, align 8, !tbaa !110, !noalias !1350
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 1, ptr %i.gv, align 4, !tbaa !111, !noalias !1350
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gs, align 8, !tbaa !113, !noalias !1350
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1350

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 160) #32, !noalias !1350
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gw, ptr %0, align 8, !tbaa !203
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hb, align 8, !tbaa !110
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !111
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.he, %bb.ar ], [ %i.ho, %bb.as ]
  %i.hp = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hp, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hq = load ptr, ptr %15, align 8, !tbaa !471  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !337
  %i.ht = icmp eq i8 %i.hs, -1
  br i1 %i.ht, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIlbvvvEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hu = load i64, ptr %i.bm, align 8, !tbaa !338 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 14
  %i.hw = icmp ult i64 %i.hu, 256
  br i1 %i.hw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = and i64 %i.hu, 255                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !155
  store i64 %i.hx, ptr %i.bm, align 8, !tbaa !338
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hz = phi i64 [ %i.hu, %bb.au ], [ %i.hx, %bb.av ] ; 2 uses
  %i.ia = load i8, ptr %i.hv, align 1, !tbaa !98
  %i.ib = icmp eq i64 %i.hz, 0
  %i.ic = shl i8 %i.ia, 4
  %i.id = zext i8 %i.ic to i64
  %i.ie = add nuw nsw i64 %i.id, 16
  %i.if = shl i64 256, %i.hz
  %.0.i.i.i.i.i = select i1 %i.ib, i64 %i.ie, i64 %i.if
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !471
  store i64 0, ptr %i.bm, align 8, !tbaa !338
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %.0.i.i.i.i.i) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIlbvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIlbvvvEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ig = load ptr, ptr %14, align 8, !tbaa !319  ; 7 uses
  %.not.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i55, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit60, label %bb.ax

bb.ax:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIlbvvvEEED2Ev.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = atomicrmw sub ptr %i.ih, i32 1 acq_rel, align 4
  %i.ij = icmp eq i32 %i.ii, 1
end_hunk_9
begin_hunk_10_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIlE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  %i.by = sext i32 %i.bx to i64
  %.idx = shl nsw i64 %i.by, 2                    ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 %.idx ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1365, !nonnull !132, !align !171 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bu, %i.bx
  br i1 %.not.i.i, label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEvT_S7_T0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIlbvvvEEE5clearEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx84           ; 2 uses
  %i.cc = ashr exact i64 %gepdiff, 2
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = xor i64 %i.ce, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_T0_T1_(ptr noundef %i.bw, ptr noundef %i.bz, i64 noundef %i.cf, ptr nonnull %i.cb)
  %i.cg = icmp sgt i64 %gepdiff, 64
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_T0_(ptr noundef %i.bw, ptr noundef nonnull %i.ch, ptr nonnull %i.cb)
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_T0_(ptr noundef nonnull %i.ch, ptr noundef %i.bz, ptr nonnull %i.cb)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEvT_S7_T0_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEEEvT_SB_T0_(ptr noundef %i.bw, ptr noundef %i.bz, ptr nonnull %i.cb)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEvT_S7_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIlEEEvT_S7_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIlbvvvEEE5clearEv.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 7 uses
  %.01788 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !1365, !nonnull !132, !align !171
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !345 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !377 ; 4 uses
  %.not.i30 = icmp eq ptr %i.cm, null
  br i1 %.not.i30, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 57
  %i.cr = load i8, ptr %i.cq, align 1, !range !131
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i = select i1 %i.cp, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.ct = lshr i64 %indvars.iv, 6
  %i.cu = and i64 %i.ct, 67108863
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !155
  %i.cx = and i64 %indvars.iv, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i31 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i31, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !379, !range !131, !noundef !132
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split49

.split49:                                         ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !380
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !107
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !155
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not.i7.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i7.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.m
  %i.do = load i64, ptr %i.cm, align 8, !tbaa !155
  %i.dp = and i64 %i.do, 1
  %.not.i6.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i6.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.n:                                             ; preds = %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dq = add nsw i32 %.01788, 1                  ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 2
  br i1 %i.dr, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !1364, !nonnull !132, !align !171
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !297
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !1360, !nonnull !132, !align !172 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !107
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = trunc nsw i64 %indvars.iv to i32
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !107
  %i.dz = load i32, ptr %i.du, align 4, !tbaa !107
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.du, align 4, !tbaa !107
  br label %bb.aa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.k, %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !381
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 58
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !378, !range !131, !noundef !132
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.ef, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ck, i64 59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !379, !range !131, !noundef !132
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.r:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !380
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %indvars.iv
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.q, %bb.r
  %.0.i.i = phi i32 [ %i.ep, %bb.r ], [ %i.el, %bb.q ], [ %i.eg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.eq = sext i32 %.0.i.i to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !155 ; 7 uses
  store i64 %i.es, ptr %i.a, align 8, !tbaa !155
  %i.et = load ptr, ptr %i.x, align 8, !tbaa !1362, !nonnull !132, !align !171 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !338 ; 2 uses
  %i.ew = lshr i64 %i.ev, 8
  switch i64 %i.ew, label %bb.t [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !475
  %i.ez = and i64 %i.ey, -16
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 16, !tbaa !155
  %i.fc = icmp eq i64 %i.es, %i.fb
  br i1 %i.fc, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread70, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.fd = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.es) ; 2 uses
  %i.fe = lshr i64 %i.fd, 24
  %i.ff = or i64 %i.fe, 128                       ; 2 uses
  %i.fg = add i64 %i.fd, %i.es
  %i.fh = shl nuw nsw i64 %i.ff, 1
  %i.fi = or disjoint i64 %i.fh, 1
  %i.fj = trunc nuw i64 %i.ff to i8
  %i.fk = insertelement <16 x i8> poison, i8 %i.fj, i64 0
  %i.fl = shufflevector <16 x i8> %i.fk, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fm = and i64 %i.ev, 255                      ; 2 uses
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = load ptr, ptr %i.et, align 8, !tbaa !471
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.x
  %.023.i87 = phi i64 [ %i.fn, %bb.t ], [ %i.gi, %bb.x ]
  %.025.i86 = phi i64 [ %i.fg, %bb.t ], [ %i.gj, %bb.x ] ; 2 uses
  %i.fp = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i86, i64 range(i64 0, 256) %i.fm)
  %i.fq = getelementptr inbounds nuw [256 x i8], ptr %i.fo, i64 %i.fp ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.fs, i32 0, i32 3, i32 1)
  %i.ft = load <16 x i8>, ptr %i.fq, align 16     ; 2 uses
  %i.fu = icmp eq <16 x i8> %i.ft, %i.fl
  %i.fv = bitcast <16 x i1> %i.fu to i16
  %i.fw = and i16 %i.fv, 16383
  %i.fx = zext nneg i16 %i.fw to i32
  %i.fy = icmp ne ptr %i.fq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.fz = extractelement <16 x i8> %i.ft, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %bb.u
  %.sroa.044.0 = phi i32 [ %i.fx, %bb.u ], [ %i.gc, %bb.v ] ; 4 uses
  %.not = icmp eq i32 %.sroa.044.0, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.ga = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.gb = add nuw nsw i32 %.sroa.044.0, 16383
  %i.gc = and i32 %i.gb, %.sroa.044.0
  %i.gd = zext nneg i32 %i.ga to i64
  call void @llvm.assume(i1 %i.fy)
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.gd ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !155
  %i.gg = icmp eq i64 %i.es, %i.gf
  br i1 %i.gg, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread70, label %.critedge.i, !prof !119, !llvm.loop !38

bb.w:                                             ; preds = %.critedge.i
  %i.gh = icmp eq i8 %i.fz, 0
  br i1 %i.gh, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread, label %bb.x, !prof !119

bb.x:                                             ; preds = %bb.w
  %i.gi = add i64 %.023.i87, -1                   ; 2 uses
  %i.gj = add i64 %i.fi, %.025.i86
  %.not.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread, label %bb.u, !llvm.loop !39

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread: ; preds = %bb.w, %bb.x, %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1366
  store ptr %i.a, ptr %3, align 8, !tbaa !173, !alias.scope !1367, !noalias !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1366
  %i.gk = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.es) ; 2 uses
  %i.gl = lshr i64 %i.gk, 24
  %i.gm = or i64 %i.gl, 128
  %i.gn = add i64 %i.gk, %i.es
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE19tryEmplaceValueImplIlJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.608") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 %i.gn, i64 %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1366
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !477, !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1366
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 8
  store i8 1, ptr %i.go, align 1, !tbaa !117
  br label %bb.z

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread70: ; preds = %bb.v, %bb.s
  %.sroa.043.175 = phi ptr [ %i.fa, %bb.s ], [ %i.ge, %bb.v ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.043.175, i64 8 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !479, !range !131, !noundef !132
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread70
  store i8 0, ptr %i.gp, align 8, !tbaa !479
  %i.gs = load ptr, ptr %i.w, align 8, !tbaa !1364, !nonnull !132, !align !171
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !297
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !1360, !nonnull !132, !align !172 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !107
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.gw
  store i32 %i.eg, ptr %i.gx, align 4, !tbaa !107
  %i.gy = load i32, ptr %i.gu, align 4, !tbaa !107
  %i.gz = add nsw i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gu, align 4, !tbaa !107
  br label %bb.z

bb.z:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread70, %bb.y, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE4findIlEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlbEEEEERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o, %bb.n
  %.1 = phi i32 [ 2, %bb.o ], [ %i.dq, %bb.n ], [ %.01788, %bb.z ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ha = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.ha, label %bb.k, label %._crit_edge, !llvm.loop !1356
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE19tryEmplaceValueImplIlJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.608") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !471   ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 2 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %4, align 8, !tbaa !155
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !155
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %.loopexit, label %.critedge.i, !prof !119, !llvm.loop !38

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !39

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi83 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !98
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi83              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread66
  %i.al = shl nuw i64 1, %.pre-phi83
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre79 = load ptr, ptr %1, align 8, !tbaa !471
  %.pre80 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre81 = and i64 %.pre80, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi83, %.thread66 ], [ %.pre81, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre79, %bb.g ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !98
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.as, 16383
  br i1 %.not69, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.av = phi i64 [ %i.an, %bb.h ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !480 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !480
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 16383
  br i1 %.not70, label %bb.i, label %bb.k, !llvm.loop !1368

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !474
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !98
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKlbEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !173
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !155
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !481
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 0, ptr %i.bw, align 8, !tbaa !479
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = or i64 %i.bx, %i.bl                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !475
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !155
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlbEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !338
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit
  %.lcssa92.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa93.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa92.sink, ptr %0, align 8, !tbaa !477
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa93.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ch, align 8, !tbaa !1371
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlbvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bo

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bp

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr null, ptr %15, align 8, !tbaa !489
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bm, align 8, !tbaa !493
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !293, !range !131, !noundef !132
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bo, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !292
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !291
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bz = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bv, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.ca = and i32 %i.bv, 2147483584               ; 3 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %.not37.i.i.not.i.i56.not = icmp eq i32 %i.ca, 0
  br i1 %.not37.i.i.not.i.i56.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i57, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.cb
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cc = lshr exact i64 %indvars.iv.i.i57, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !155
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bv, %i.ca
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cg = lshr i32 %i.bv, 6
  %i.ch = and i32 %i.bv, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ci
  %i.cj = zext nneg i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.cl, %notmask.i40.i.i.i.i
  %i.cm = icmp eq i64 %.demorgan.i.i, -1
  %i.cn = zext i1 %i.cm to i16
  %i.co = or disjoint i16 %i.cn, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.co, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bo, align 4
  %i.cp = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.cp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cs = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.cu, %.noexc38 ], [ %i.cr, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.cu = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cu, %i.cs
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1423

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cv = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cw = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cv, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cv, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cr, %i.cw
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cx = add i32 %i.cr, 63                       ; 2 uses
  %i.cy = srem i32 %i.cx, 64
  %i.cz = sub nsw i32 %i.cx, %i.cy                ; 6 uses
  %i.da = and i32 %i.cw, -64                      ; 6 uses
  %i.db = icmp slt i32 %i.da, %i.cz
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = ashr i32 %i.cw, 6
  %i.dd = and i32 %i.cw, 63
  %i.de = zext nneg i32 %i.dd to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i.i.i.i.i, -1
  %i.dg = sub nsw i32 %i.cz, %i.cr                ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dh
  %i.di = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dj = sub nsw i32 64, %i.dg
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl i64 %i.di, %i.dk
  %i.dm = and i64 %i.dl, %i.df
  %i.dn = sext i32 %i.dc to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !155
  %i.dq = and i64 %i.dm, %i.dp                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.dv, %.noexc39 ], [ %i.dq, %bb.ab ] ; 3 uses
  %i.dr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = or disjoint i32 %i.da, %i.ds
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.dt)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.du = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.dv = and i64 %i.du, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1424

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cr, %i.cz
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = sdiv i32 %i.cr, 64                      ; 2 uses
  %i.dx = sub nsw i32 %i.cz, %i.cr                ; 2 uses
  %i.dy = zext nneg i32 %i.dx to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dy
  %i.dz = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ea = sub nsw i32 64, %i.dx
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl i64 %i.dz, %i.eb
  %i.ed = sext i32 %i.dw to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !155
  %i.eg = and i64 %i.ef, %i.ec                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eh = shl nsw i32 %i.dw, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.eg, %.preheader.i37.i.i.i.i ], [ %i.em, %.noexc40 ] ; 3 uses
  %i.ei = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ek)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.el = add i64 %.011.i38.i.i.i.i, -1
  %i.em = and i64 %i.el, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1424

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.en = add nsw i32 %i.cz, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.en, %i.da
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cw, %i.da
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.eo = phi i32 [ %i.fg, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.eo, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cz, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.ep = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.es, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.ep, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eu = shl nsw i32 %i.ep, 6                    ; 2 uses
  %i.ev = add i32 %i.eu, 64
  %i.ew = sext i32 %i.ev to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ex = sext i32 %i.eu to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ex, %.lr.ph21.i.i.i.i.i ], [ %i.ez, %.noexc41 ] ; 2 uses
  %i.ey = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ey)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ez = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ew
  br i1 %i.fa, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1425

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i ], [ %i.ff, %.noexc42 ] ; 3 uses
  %i.fb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = or disjoint i32 %i.et, %i.fc
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fd)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fe = add i64 %.01519.i.i.i.i.i, -1
  %i.ff = and i64 %i.fe, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1426

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.fg = add nsw i32 %i.eo, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fg, %i.da
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1427

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fh = ashr i32 %i.cw, 6
  %i.fi = and i32 %i.cw, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fj
  %i.fk = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fl = sext i32 %i.fh to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !155
  %i.fo = and i64 %i.fn, %i.fk                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.ft, %.noexc43 ], [ %i.fo, %bb.ai ] ; 3 uses
  %i.fp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = or disjoint i32 %i.da, %i.fq
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fr)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fs = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.ft = and i64 %i.fs, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1424

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fu = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fv = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 2
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !113
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  invoke void %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %i.fu, i64 noundef %i.fx)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.gb = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.gb, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.gb, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gd = atomicrmw add ptr %i.gc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.bq

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.ge = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.ge, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = atomicrmw sub ptr %i.gf, i32 1 acq_rel, align 4
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gi = load ptr, ptr %i.ge, align 8, !tbaa !113
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(64) %i.ge)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gm, null
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %..i.i
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(64) %i.ge)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gt = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.br  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i32 1, ptr %i.gv, align 8, !tbaa !110, !noalias !1434
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 1, ptr %i.gw, align 4, !tbaa !111, !noalias !1434
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gt, align 8, !tbaa !113, !noalias !1434
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1434

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef 160) #32, !noalias !1434
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gx, ptr %0, align 8, !tbaa !203
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gt, ptr %i.gz, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hc, align 8, !tbaa !110
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 0, ptr %i.hg, align 4, !tbaa !111
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !113
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30, !inline_history !13
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !113
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = add nsw i32 %i.hf, -1
  store i32 %i.ho, ptr %i.hc, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.hp = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.hf, %bb.ar ], [ %i.hp, %bb.as ]
  %i.hq = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hq, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hr = load ptr, ptr %i.bm, align 8, !tbaa !493 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 15
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !337
  %i.hu = icmp eq i8 %i.ht, -1
  br i1 %i.hu, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hv = load i64, ptr %i.bn, align 8, !tbaa !338 ; 2 uses
  %i.hw = and i64 %i.hv, 255                      ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.hx, align 1
  %i.hy = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i55 = shl nsw i64 -1, %i.hw
  %i.hz = xor i64 %notmask.i.i.i.i.i55, -1
  %i.ia = lshr i64 %i.hz, 12
  %i.ib = add nuw nsw i64 %i.ia, 1
  %i.ic = icmp ult i64 %i.hv, 256
  br i1 %i.ic, label %_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i64 %i.hw, ptr %i.bn, align 8, !tbaa !338
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.hx, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.av, %bb.au
  %.pre-phi21.i.i.i.i = phi i64 [ %i.hy, %bb.au ], [ %.pre20.i.i.i.i, %bb.av ]
  %i.id = icmp eq i64 %i.hw, 0
  %i.ie = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.ie
  %.neg18.i.i.i.i = shl i64 -64, %i.hw
  %.0.i.neg.i.i.i.i = select i1 %i.id, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bm, align 8, !tbaa !493
  store i64 0, ptr %i.bn, align 8, !tbaa !338
  %i.if = and i64 %.0.i.neg.i.i.i.i, -16
  %i.ig = shl nuw nsw i64 %i.hy, 5
  %i.ih = mul i64 %i.ig, %i.ib
  %i.ii = sub i64 %i.ih, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.ii) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5folly3f146detail21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
end_hunk_11
begin_hunk_12_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionInE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.f
  store i32 %i.bp, ptr %i.bt, align 4, !tbaa !107
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1448, !nonnull !132, !align !171
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !297 ; 2 uses
  %i.bx = load i32, ptr %i.bn, align 4, !tbaa !107 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %.idx73 = shl nsw i64 %i.by, 2                  ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 %.idx73 ; 4 uses
  %i.ca = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %.idx = shl nsw i64 %i.cb, 2                    ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %.idx ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1449, !nonnull !132, !align !171 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bx, %i.ca
  br i1 %.not.i.i, label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEvT_S7_T0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE5clearEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx73           ; 2 uses
  %i.cf = ashr exact i64 %gepdiff, 2
  %i.cg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = shl nuw nsw i64 %i.cg, 1
  %i.ci = xor i64 %i.ch, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_T0_T1_(ptr noundef %i.bz, ptr noundef %i.cc, i64 noundef %i.ci, ptr nonnull %i.ce)
  %i.cj = icmp sgt i64 %gepdiff, 64
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_T0_(ptr noundef %i.bz, ptr noundef nonnull %i.ck, ptr nonnull %i.ce)
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_T0_(ptr noundef nonnull %i.ck, ptr noundef %i.cc, ptr nonnull %i.ce)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEvT_S7_T0_.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEEEvT_SB_T0_(ptr noundef %i.bz, ptr noundef %i.cc, ptr nonnull %i.ce)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEvT_S7_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessInEEEvT_S7_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE5clearEv.exit, %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 7 uses
  %.01778 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.z ] ; 2 uses
  %i.cl = load ptr, ptr %i.v, align 8, !tbaa !1449, !nonnull !132, !align !171
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !345 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !377 ; 4 uses
  %.not.i25 = icmp eq ptr %i.cp, null
  br i1 %.not.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 58
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 57
  %i.cu = load i8, ptr %i.ct, align 1, !range !131
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.cv
  br i1 %or.cond.i, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.cw = lshr i64 %indvars.iv, 6
  %i.cx = and i64 %i.cw, 67108863
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !155
  %i.da = and i64 %indvars.iv, 63
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.cz, %i.db
  %.not.i.i26 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i26, label %bb.m, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !379, !range !131, !noundef !132
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split41

.split41:                                         ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !380
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !107
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !155
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dn
  %.not.i7.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i7.i, label %bb.m, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.l
  %i.dr = load i64, ptr %i.cp, align 8, !tbaa !155
  %i.ds = and i64 %i.dr, 1
  %.not.i6.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i6.i, label %bb.m, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %.split41, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dt = add nsw i32 %.01778, 1                  ; 2 uses
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.dv = load ptr, ptr %i.w, align 8, !tbaa !1448, !nonnull !132, !align !171
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !297
  %i.dx = load ptr, ptr %i.m, align 8, !tbaa !1444, !nonnull !132, !align !172 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !107
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = trunc nsw i64 %indvars.iv to i32
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !107
  %i.ec = load i32, ptr %i.dx, align 4, !tbaa !107
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.dx, align 4, !tbaa !107
  br label %bb.z

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.j, %.split41, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ee = load ptr, ptr %i.cm, align 8, !tbaa !345 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !381
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 58
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !378, !range !131, !noundef !132
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.ej, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 59
  %i.em = load i8, ptr %i.el, align 1, !tbaa !379, !range !131, !noundef !132
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit

bb.q:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !380
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv
  %i.et = load i32, ptr %i.es, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.p, %bb.q
  %.0.i.i = phi i32 [ %i.et, %bb.q ], [ %i.ep, %bb.p ], [ %i.ek, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.eu = sext i32 %.0.i.i to i64
  %i.ev = shl nsw i64 %i.eu, 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ev
  %.0.copyload.i.i = load i128, ptr %i.ew, align 1 ; 3 uses
  store i128 %.0.copyload.i.i, ptr %i.a, align 16, !tbaa !495
  %i.ex = load ptr, ptr %i.x, align 8, !tbaa !1446, !nonnull !132, !align !171 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !338 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 256
  %.pre = trunc i128 %.0.copyload.i.i to i64      ; 2 uses
  %.pre84 = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.pre) ; 2 uses
  %.pre86 = lshr i64 %.pre84, 24
  %.pre88 = or i64 %.pre86, 128                   ; 3 uses
  %.pre90 = add i64 %.pre84, %.pre                ; 2 uses
  br i1 %i.fa, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE4findInEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit
  %i.fb = shl nuw nsw i64 %.pre88, 1
  %i.fc = or disjoint i64 %i.fb, 1
  %i.fd = trunc nuw i64 %.pre88 to i8
  %i.fe = insertelement <16 x i8> poison, i8 %i.fd, i64 0
  %i.ff = shufflevector <16 x i8> %i.fe, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fg = and i64 %i.ez, 255                      ; 2 uses
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !493
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.v
  %.022.i77 = phi i64 [ %i.fh, %bb.r ], [ %i.gg, %bb.v ]
  %.024.i76 = phi i64 [ %.pre90, %bb.r ], [ %i.gh, %bb.v ] ; 2 uses
  %i.fk = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.fg)
  %i.fl = getelementptr inbounds nuw [64 x i8], ptr %i.fj, i64 %i.fk ; 3 uses
  %i.fm = load <16 x i8>, ptr %i.fl, align 16     ; 2 uses
  %i.fn = icmp eq <16 x i8> %i.fm, %i.ff
  %i.fo = bitcast <16 x i1> %i.fn to i16
  %i.fp = and i16 %i.fo, 4095
  %i.fq = zext nneg i16 %i.fp to i32
  %i.fr = icmp ne ptr %i.fl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.ft = extractelement <16 x i8> %i.fm, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.t, %bb.s
  %.sroa.036.0 = phi i32 [ %i.fq, %bb.s ], [ %i.fw, %bb.t ] ; 4 uses
  %.not = icmp eq i32 %.sroa.036.0, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i
  %i.fu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.036.0, i1 true)
  %i.fv = add nuw nsw i32 %.sroa.036.0, 4095
  %i.fw = and i32 %i.fv, %.sroa.036.0
  %i.fx = zext nneg i32 %i.fu to i64
  call void @llvm.assume(i1 %i.fr)
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fx
  %i.fz = load ptr, ptr %i.ex, align 8, !tbaa !489
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !107
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.gb ; 2 uses
  %i.gd = load i128, ptr %i.gc, align 16, !tbaa !495
  %i.ge = icmp eq i128 %.0.copyload.i.i, %i.gd
  br i1 %i.ge, label %bb.w, label %.critedge.i, !prof !119, !llvm.loop !43

bb.u:                                             ; preds = %.critedge.i
  %i.gf = icmp eq i8 %i.ft, 0
  br i1 %i.gf, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE4findInEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.v, !prof !119

bb.v:                                             ; preds = %bb.u
  %i.gg = add i64 %.022.i77, -1                   ; 2 uses
  %i.gh = add i64 %i.fc, %.024.i76
  %.not.i = icmp eq i64 %i.gg, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE4findInEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.s, !llvm.loop !44

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE4findInEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.u, %bb.v, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1450
  store ptr %i.a, ptr %3, align 8, !tbaa !497, !alias.scope !1451, !noalias !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1450
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplInJRKSt21piecewise_construct_tSt5tupleIJRKnEESC_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.668") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i64 %.pre90, i64 %.pre88, ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1450
  %i.gi = load ptr, ptr %2, align 8, !tbaa !499, !noalias !1450, !nonnull !132, !noundef !132
  %i.gj = load ptr, ptr %i.ex, align 8, !tbaa !489, !noalias !1450, !nonnull !132, !noundef !132
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !107, !noalias !1450
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %i.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1450
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store i8 1, ptr %i.gn, align 1, !tbaa !117
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 16, !tbaa !501, !range !131, !noundef !132
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.go, align 16, !tbaa !501
  %i.gr = load ptr, ptr %i.w, align 8, !tbaa !1448, !nonnull !132, !align !171
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !297
  %i.gt = load ptr, ptr %i.m, align 8, !tbaa !1444, !nonnull !132, !align !172 ; 3 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !107
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gv
  store i32 %i.ek, ptr %i.gw, align 4, !tbaa !107
  %i.gx = load i32, ptr %i.gt, align 4, !tbaa !107
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gt, align 4, !tbaa !107
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE4findInEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.n, %bb.m
  %.1 = phi i32 [ 2, %bb.n ], [ %i.dt, %bb.m ], [ %.01778, %bb.y ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gz = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.gz, label %bb.j, label %._crit_edge, !llvm.loop !1440
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplInJRKSt21piecewise_construct_tSt5tupleIJRKnEESC_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.668") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread66_crit_edge, label %bb.b

..thread66_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !493
  %.pre85 = shl nuw i64 1, %i.b
  br label %.thread66

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !493  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i77 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %.024.i76 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.042.0, 4095
  %i.y = and i32 %i.x, %.sroa.042.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !489
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !107
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i128, ptr %4, align 16, !tbaa !495
  %i.ag = load i128, ptr %i.ae, align 16, !tbaa !495
  %i.ah = icmp eq i128 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !119, !llvm.loop !43

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i77, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.024.i76
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !44

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread66:                                        ; preds = %bb.f, %bb.e, %..thread66_crit_edge
  %.pre-phi86 = phi i64 [ %.pre85, %..thread66_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread66_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread66_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi86, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi86, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre82 = load ptr, ptr %i.at, align 8, !tbaa !493
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre87 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi88 = phi i64 [ %.pre-phi, %.thread66 ], [ %.pre87, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.am, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !98
  %i.ay = icmp slt <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.ba, 4095
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bd = phi i64 [ %i.av, %bb.i ], [ %i.bj, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !504 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bg, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !504
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bi, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bj ; 3 uses
  %i.bl = load <16 x i8>, ptr %i.bk, align 16     ; 2 uses
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %i.bo = and i16 %i.bn, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.bo, 4095
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !1452

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bp = extractelement <16 x i8> %i.bl, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !505
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.l ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bk, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 4095
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !98
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  %i.ca = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !338 ; 3 uses
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !107
  %i.ce = load ptr, ptr %1, align 8, !tbaa !489, !nonnull !132, !noundef !132
  %i.cf = and i64 %i.cc, 4294967295
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i64, ptr %6, align 8, !tbaa !497
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i128, ptr %i.ci, align 16, !tbaa !495
  store i128 %i.cj, ptr %i.cg, align 16, !tbaa !1453
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i8 0, ptr %i.ck, align 16, !tbaa !501
  %i.cl = and i64 %i.cb, -256
  %i.cm = add i64 %i.cl, 256
  %i.cn = and i64 %i.cb, 255
  %i.co = or disjoint i64 %i.cm, %i.cn
  store i64 %i.co, ptr %i.a, align 8, !tbaa !338
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink101 = phi ptr [ %i.al, %bb.g ], [ %i.bz, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa99.sink = phi i64 [ %i.z, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink101, ptr %0, align 8, !tbaa !297
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa99.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
  %.not.i30 = icmp eq i8 %i.bd, 0
  br i1 %.not.i30, label %bb.p, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bp

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bq

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !520
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !293, !range !131, !noundef !132
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bn, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !292
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !291
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bz = and i32 %i.bu, 2147483584               ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %.not37.i.i.not.i.i58.not = icmp eq i32 %i.bz, 0
  br i1 %.not37.i.i.not.i.i58.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i59, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ca
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i59 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cb = lshr exact i64 %indvars.iv.i.i59, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !155
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bu, %i.bz
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cf = lshr i32 %i.bu, 6
  %i.cg = and i32 %i.bu, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ch
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.ck, %notmask.i40.i.i.i.i
  %i.cl = icmp eq i64 %.demorgan.i.i, -1
  %i.cm = zext i1 %i.cl to i16
  %i.cn = or disjoint i16 %i.cm, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.cn, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bn, align 4
  %i.co = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.co, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.ct, %.noexc38 ], [ %i.cq, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.ct = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %i.cr
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1507

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cu = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cu, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cq, %i.cv
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = add i32 %i.cq, 63                       ; 2 uses
  %i.cx = srem i32 %i.cw, 64
  %i.cy = sub nsw i32 %i.cw, %i.cx                ; 6 uses
  %i.cz = and i32 %i.cv, -64                      ; 6 uses
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = ashr i32 %i.cv, 6
  %i.dc = and i32 %i.cv, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i, -1
  %i.df = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.di = sub nsw i32 64, %i.df
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.dh, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  %i.dm = sext i32 %i.db to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155
  %i.dp = and i64 %i.dl, %i.do                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.du, %.noexc39 ], [ %i.dp, %bb.ab ] ; 3 uses
  %i.dq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i32 %i.cz, %i.dr
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ds)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.dt = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.du = and i64 %i.dt, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1508

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.cy
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.dw = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dz = sub nsw i32 64, %i.dw
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %i.dy, %i.ea
  %i.ec = sext i32 %i.dv to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !155
  %i.ef = and i64 %i.ee, %i.eb                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eg = shl nsw i32 %i.dv, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ef, %.preheader.i37.i.i.i.i ], [ %i.el, %.noexc40 ] ; 3 uses
  %i.eh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ej)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.ek = add i64 %.011.i38.i.i.i.i, -1
  %i.el = and i64 %i.ek, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1508

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.em = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.em, %i.cz
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cv, %i.cz
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.en = phi i32 [ %i.ff, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.eo = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.er, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.es = shl nsw i32 %i.eo, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.eo, 6                    ; 2 uses
  %i.eu = add i32 %i.et, 64
  %i.ev = sext i32 %i.eu to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ew = sext i32 %i.et to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph21.i.i.i.i.i ], [ %i.ey, %.noexc41 ] ; 2 uses
  %i.ex = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ex)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ey = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1509

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.fe, %.noexc42 ] ; 3 uses
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = or disjoint i32 %i.es, %i.fb
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fc)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fd = add i64 %.01519.i.i.i.i.i, -1
  %i.fe = and i64 %i.fd, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1510

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.ff = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ff, %i.cz
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1511

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fg = ashr i32 %i.cv, 6
  %i.fh = and i32 %i.cv, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fk = sext i32 %i.fg to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !155
  %i.fn = and i64 %i.fm, %i.fj                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.fs, %.noexc43 ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = or disjoint i32 %i.cz, %i.fp
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fq)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fr = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1508

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ft = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 2
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(64) %i.ft, i64 noundef %i.fw)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ga = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.ga, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = atomicrmw add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.br

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.gd = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.gd, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %..i.i
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.bs  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 1, ptr %i.gu, align 8, !tbaa !110, !noalias !1518
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 1, ptr %i.gv, align 4, !tbaa !111, !noalias !1518
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gs, align 8, !tbaa !113, !noalias !1518
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1518

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 160) #32, !noalias !1518
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gw, ptr %0, align 8, !tbaa !203
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hb, align 8, !tbaa !110
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !111
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.he, %bb.ar ], [ %i.ho, %bb.as ]
  %i.hp = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hp, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hq = load ptr, ptr %15, align 8, !tbaa !520  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !337
  %i.ht = icmp eq i8 %i.hs, -1
  br i1 %i.ht, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hu = load i64, ptr %i.bm, align 8, !tbaa !338 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 14
  %i.hw = icmp ult i64 %i.hu, 256
  br i1 %i.hw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = and i64 %i.hu, 255                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !155
  store i64 %i.hx, ptr %i.bm, align 8, !tbaa !338
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hz = phi i64 [ %i.hu, %bb.au ], [ %i.hx, %bb.av ] ; 2 uses
  %i.ia = load i8, ptr %i.hv, align 1, !tbaa !98
  %i.ib = icmp eq i64 %i.hz, 0
  %i.ic = shl i8 %i.ia, 3
  %i.id = and i8 %i.ic, 120
  %narrow.i.i.i.i = add nuw i8 %i.id, 16
  %i.ie = zext i8 %narrow.i.i.i.i to i64
  %i.if = shl i64 128, %i.hz
  %.0.i.i.i.i.i = select i1 %i.ib, i64 %i.ie, i64 %i.if
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !520
  store i64 0, ptr %i.bm, align 8, !tbaa !338
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %.0.i.i.i.i.i) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ig = load ptr, ptr %14, align 8, !tbaa !319  ; 7 uses
  %.not.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i55, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit60, label %bb.ax

bb.ax:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEED2Ev.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = atomicrmw sub ptr %i.ih, i32 1 acq_rel, align 4
end_hunk_13
begin_hunk_14_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIfE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEvT_S7_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIfEEEvT_S7_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEE5clearEv.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 7 uses
  %.01790 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ae ] ; 2 uses
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !1535, !nonnull !132, !align !171
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !345 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !377 ; 4 uses
  %.not.i30 = icmp eq ptr %i.co, null
  br i1 %.not.i30, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 58
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 57
  %i.ct = load i8, ptr %i.cs, align 1, !range !131
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond.i = select i1 %i.cr, i1 true, i1 %i.cu
  br i1 %or.cond.i, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.cv = lshr i64 %indvars.iv, 6
  %i.cw = and i64 %i.cv, 67108863
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !155
  %i.cz = and i64 %indvars.iv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i.i31 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i31, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 59
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !379, !range !131, !noundef !132
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split49

.split49:                                         ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !380
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !107
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !155
  %i.dn = and i64 %i.dj, 63
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.do, %i.dm
  %.not.i7.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i7.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.m
  %i.dq = load i64, ptr %i.co, align 8, !tbaa !155
  %i.dr = and i64 %i.dq, 1
  %.not.i6.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i6.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.n:                                             ; preds = %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ds = add nsw i32 %.01790, 1                  ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.o, label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.du = load ptr, ptr %i.y, align 8, !tbaa !1534, !nonnull !132, !align !171
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !297
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !1530, !nonnull !132, !align !172 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !107
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dy
  %i.ea = trunc nsw i64 %indvars.iv to i32
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !107
  %i.eb = load i32, ptr %i.dw, align 4, !tbaa !107
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.dw, align 4, !tbaa !107
  br label %bb.ae

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.k, %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !381
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 58
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !378, !range !131, !noundef !132
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.eh, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cm, i64 59
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !379, !range !131, !noundef !132
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.en = load i32, ptr %i.em, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit

bb.r:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !380
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.q, %bb.r
  %.0.i.i = phi i32 [ %i.er, %bb.r ], [ %i.en, %bb.q ], [ %i.ei, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.es = sext i32 %.0.i.i to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !523 ; 7 uses
  store float %i.eu, ptr %i.c, align 4, !tbaa !523
  %i.ev = load ptr, ptr %i.z, align 8, !tbaa !1532, !nonnull !132, !align !171 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !338 ; 2 uses
  %i.ey = lshr i64 %i.ex, 8
  switch i64 %i.ey, label %bb.t [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !524
  %i.fb = and i64 %i.fa, -8
  %i.fc = inttoptr i64 %i.fb to ptr               ; 2 uses
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !523
  %i.fe = fcmp oeq float %i.eu, %i.fd
  br i1 %i.fe, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %i.eu, ptr %i.b, align 4, !tbaa !523
  %i.ff = fcmp une float %i.eu, 0.000000e+00
  br i1 %i.ff, label %bb.u, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit

bb.u:                                             ; preds = %bb.t
  %i.fg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 3339675911)
          to label %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit_crit_edge unwind label %bb.v

._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit_crit_edge: ; preds = %bb.u
  %.pre = load i64, ptr %i.ew, align 8, !tbaa !338
  %.pre97 = load float, ptr %i.c, align 4
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit

bb.v:                                             ; preds = %bb.u
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #33
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit: ; preds = %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit_crit_edge, %bb.t
  %i.fj = phi float [ %i.eu, %bb.t ], [ %.pre97, %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit_crit_edge ] ; 2 uses
  %i.fk = phi i64 [ %i.ex, %bb.t ], [ %.pre, %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit_crit_edge ]
  %i.fl = phi i64 [ 0, %bb.t ], [ %i.fg, %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit_crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fm = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fl) ; 2 uses
  %i.fn = lshr i64 %i.fm, 24
  %i.fo = or i64 %i.fn, 128                       ; 2 uses
  %i.fp = add i64 %i.fm, %i.fl
  %i.fq = shl nuw nsw i64 %i.fo, 1
  %i.fr = or disjoint i64 %i.fq, 1
  %i.fs = trunc nuw i64 %i.fo to i8
  %i.ft = insertelement <16 x i8> poison, i8 %i.fs, i64 0
  %i.fu = shufflevector <16 x i8> %i.ft, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fv = and i64 %i.fk, 255                      ; 2 uses
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = load ptr, ptr %i.ev, align 8, !tbaa !520
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit, %bb.z
  %.023.i89 = phi i64 [ %i.fw, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit ], [ %i.gr, %bb.z ]
  %.025.i88 = phi i64 [ %i.fp, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE11computeHashIfEESt4pairImmERKT_.exit ], [ %i.gs, %bb.z ] ; 2 uses
  %i.fy = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i88, i64 range(i64 0, 256) %i.fv)
  %i.fz = getelementptr inbounds nuw [128 x i8], ptr %i.fx, i64 %i.fy ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.gb, i32 0, i32 3, i32 1)
  %i.gc = load <16 x i8>, ptr %i.fz, align 16     ; 2 uses
  %i.gd = icmp eq <16 x i8> %i.gc, %i.fu
  %i.ge = bitcast <16 x i1> %i.gd to i16
  %i.gf = and i16 %i.ge, 16383
  %i.gg = zext nneg i16 %i.gf to i32
  %i.gh = icmp ne ptr %i.fz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.gi = extractelement <16 x i8> %i.gc, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.x, %bb.w
  %.sroa.044.0 = phi i32 [ %i.gg, %bb.w ], [ %i.gl, %bb.x ] ; 4 uses
  %.not = icmp eq i32 %.sroa.044.0, 0
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i
  %i.gj = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.gk = add nuw nsw i32 %.sroa.044.0, 16383
  %i.gl = and i32 %i.gk, %.sroa.044.0
  %i.gm = zext nneg i32 %i.gj to i64              ; 2 uses
  call void @llvm.assume(i1 %i.gh)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !523
  %i.gp = fcmp oeq float %i.fj, %i.go
  br i1 %i.gp, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70.loopexit, label %.critedge.i, !prof !119, !llvm.loop !48

bb.y:                                             ; preds = %.critedge.i
  %i.gq = icmp eq i8 %i.gi, 0
  br i1 %i.gq, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread.loopexit, label %bb.z, !prof !119

bb.z:                                             ; preds = %bb.y
  %i.gr = add i64 %.023.i89, -1                   ; 2 uses
  %i.gs = add i64 %i.fr, %.025.i88
  %.not.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread.loopexit, label %bb.w, !llvm.loop !49

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread.loopexit: ; preds = %bb.z, %bb.y
  %.pre98 = load ptr, ptr %i.z, align 8, !tbaa !1532
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread.loopexit, %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit
  %i.gt = phi float [ %i.fj, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread.loopexit ], [ %i.eu, %bb.s ], [ %i.eu, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit ] ; 2 uses
  %i.gu = phi ptr [ %.pre98, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread.loopexit ], [ %i.ev, %bb.s ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1536
  store ptr %i.c, ptr %3, align 8, !tbaa !526, !alias.scope !1537, !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1538
  store float %i.gt, ptr %i.a, align 4, !tbaa !523, !noalias !1538
  %i.gv = fcmp une float %i.gt, 0.000000e+00
  br i1 %i.gv, label %bb.aa, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEEixERKf.exit

bb.aa:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread
  %i.gw = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 3339675911)
          to label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEEixERKf.exit unwind label %bb.ab, !noalias !1538

bb.ab:                                            ; preds = %bb.aa
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #33, !noalias !1538
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEEixERKf.exit: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread, %bb.aa
  %i.gz = phi i64 [ 0, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread ], [ %i.gw, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1538
  %i.ha = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gz) ; 2 uses
  %i.hb = lshr i64 %i.ha, 24
  %i.hc = or i64 %i.hb, 128
  %i.hd = add i64 %i.ha, %i.gz
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE19tryEmplaceValueImplIfJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.728") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.gu, i64 %i.hd, i64 %i.hc, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1536
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !528, !noalias !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1536
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 4
  store i8 1, ptr %i.he, align 1, !tbaa !117
  br label %bb.ad

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70.loopexit: ; preds = %bb.x
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gm
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70.loopexit, %bb.s
  %.sroa.043.175 = phi ptr [ %i.fc, %bb.s ], [ %i.hf, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70.loopexit ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.043.175, i64 4 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 4, !tbaa !530, !range !131, !noundef !132
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70
  store i8 0, ptr %i.hg, align 4, !tbaa !530
  %i.hj = load ptr, ptr %i.y, align 8, !tbaa !1534, !nonnull !132, !align !171
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !297
  %i.hl = load ptr, ptr %i.o, align 8, !tbaa !1530, !nonnull !132, !align !172 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !107
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hn
  store i32 %i.ei, ptr %i.ho, align 4, !tbaa !107
  %i.hp = load i32, ptr %i.hl, align 4, !tbaa !107
  %i.hq = add nsw i32 %i.hp, 1
  store i32 %i.hq, ptr %i.hl, align 4, !tbaa !107
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE4findIfEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfbEEEEERKT_.exit.thread70, %bb.ac, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIfbvvvEEEixERKf.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.o, %bb.n
  %.1 = phi i32 [ 2, %bb.o ], [ %i.ds, %bb.n ], [ %.01790, %bb.ad ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hr = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.hr, label %bb.k, label %._crit_edge, !llvm.loop !1526
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE19tryEmplaceValueImplIfJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.728") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !520   ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i77 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i76 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i76, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load float, ptr %4, align 4, !tbaa !523
  %i.ab = load float, ptr %i.z, align 4, !tbaa !523
  %i.ac = fcmp oeq float %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !119, !llvm.loop !48

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i77, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i76
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !49

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi86 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !98
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi86              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.am = shl nuw i64 1, %.pre-phi86
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre82 = load ptr, ptr %1, align 8, !tbaa !520
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre84 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi86, %.thread66 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !98
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.at, 16383
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !531 ; 2 uses
  %.not.i33 = icmp eq i8 %i.az, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !531
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.030                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bh, 16383
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !1539

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !522
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !98
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKfbEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !98
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 4 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %6, align 8, !tbaa !526
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !523
  store float %i.bw, ptr %i.bs, align 4, !tbaa !532
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i8 0, ptr %i.bx, align 4, !tbaa !530
  %i.by = lshr i64 %i.bm, 1
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = or i64 %i.by, %i.bz                     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !524
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE6setTagEmm.exit
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !155
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfbEE6setTagEmm.exit, %bb.o
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.cf = and i64 %i.ce, -256
  %i.cg = add i64 %i.cf, 256
  %i.ch = and i64 %i.ce, 255
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !338
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !528
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cj, align 8, !tbaa !1542
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfbvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}
end_hunk_14
begin_hunk_15_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a
  %.not.i30 = icmp eq i8 %i.bd, 0
  br i1 %.not.i30, label %bb.p, label %bb.o, !prof !119

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bp

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bq

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !542
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !293, !range !131, !noundef !132
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bn, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !292
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !291
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bz = and i32 %i.bu, 2147483584               ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %.not37.i.i.not.i.i58.not = icmp eq i32 %i.bz, 0
  br i1 %.not37.i.i.not.i.i58.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i59, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ca
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i59 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cb = lshr exact i64 %indvars.iv.i.i59, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !155
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bu, %i.bz
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cf = lshr i32 %i.bu, 6
  %i.cg = and i32 %i.bu, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ch
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.ck, %notmask.i40.i.i.i.i
  %i.cl = icmp eq i64 %.demorgan.i.i, -1
  %i.cm = zext i1 %i.cl to i16
  %i.cn = or disjoint i16 %i.cm, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.cn, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bn, align 4
  %i.co = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.co, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.ct, %.noexc38 ], [ %i.cq, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.ct = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %i.cr
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1594

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cu = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cu, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cu, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cq, %i.cv
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = add i32 %i.cq, 63                       ; 2 uses
  %i.cx = srem i32 %i.cw, 64
  %i.cy = sub nsw i32 %i.cw, %i.cx                ; 6 uses
  %i.cz = and i32 %i.cv, -64                      ; 6 uses
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = ashr i32 %i.cv, 6
  %i.dc = and i32 %i.cv, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = xor i64 %notmask.i.i.i.i.i, -1
  %i.df = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dg
  %i.dh = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.di = sub nsw i32 64, %i.df
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl i64 %i.dh, %i.dj
  %i.dl = and i64 %i.dk, %i.de
  %i.dm = sext i32 %i.db to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !155
  %i.dp = and i64 %i.dl, %i.do                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.du, %.noexc39 ], [ %i.dp, %bb.ab ] ; 3 uses
  %i.dq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i32 %i.cz, %i.dr
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ds)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.dt = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.du = and i64 %i.dt, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1595

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.cy
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.dw = sub nsw i32 %i.cy, %i.cq                ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dz = sub nsw i32 64, %i.dw
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %i.dy, %i.ea
  %i.ec = sext i32 %i.dv to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !155
  %i.ef = and i64 %i.ee, %i.eb                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eg = shl nsw i32 %i.dv, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ef, %.preheader.i37.i.i.i.i ], [ %i.el, %.noexc40 ] ; 3 uses
  %i.eh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ej)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.ek = add i64 %.011.i38.i.i.i.i, -1
  %i.el = and i64 %i.ek, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1595

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.em = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.em, %i.cz
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cv, %i.cz
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.en = phi i32 [ %i.ff, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.eo = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.er, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.es = shl nsw i32 %i.eo, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.eo, 6                    ; 2 uses
  %i.eu = add i32 %i.et, 64
  %i.ev = sext i32 %i.eu to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ew = sext i32 %i.et to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph21.i.i.i.i.i ], [ %i.ey, %.noexc41 ] ; 2 uses
  %i.ex = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ex)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ey = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1596

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.fe, %.noexc42 ] ; 3 uses
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = or disjoint i32 %i.es, %i.fb
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fc)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fd = add i64 %.01519.i.i.i.i.i, -1
  %i.fe = and i64 %i.fd, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1597

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.ff = add nsw i32 %i.en, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ff, %i.cz
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1598

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fg = ashr i32 %i.cv, 6
  %i.fh = and i32 %i.cv, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fk = sext i32 %i.fg to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !155
  %i.fn = and i64 %i.fm, %i.fj                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.fs, %.noexc43 ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = or disjoint i32 %i.cz, %i.fp
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fq)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fr = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1595

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ft = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 2
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(64) %i.ft, i64 noundef %i.fw)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ga = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.ga, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.ga, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = atomicrmw add ptr %i.gb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.br

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.gd = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.gd, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !113
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gl, null
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %..i.i
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gs = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.bs  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 1, ptr %i.gu, align 8, !tbaa !110, !noalias !1605
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 1, ptr %i.gv, align 4, !tbaa !111, !noalias !1605
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gs, align 8, !tbaa !113, !noalias !1605
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1605

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 160) #32, !noalias !1605
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gw, ptr %0, align 8, !tbaa !203
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gy, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hb, align 8, !tbaa !110
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !111
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.he, %bb.ar ], [ %i.ho, %bb.as ]
  %i.hp = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hp, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hq = load ptr, ptr %15, align 8, !tbaa !542  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !337
  %i.ht = icmp eq i8 %i.hs, -1
  br i1 %i.ht, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hu = load i64, ptr %i.bm, align 8, !tbaa !338 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 14
  %i.hw = icmp ult i64 %i.hu, 256
  br i1 %i.hw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = and i64 %i.hu, 255                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !155
  store i64 %i.hx, ptr %i.bm, align 8, !tbaa !338
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hz = phi i64 [ %i.hu, %bb.au ], [ %i.hx, %bb.av ] ; 2 uses
  %i.ia = load i8, ptr %i.hv, align 1, !tbaa !98
  %i.ib = icmp eq i64 %i.hz, 0
  %i.ic = shl i8 %i.ia, 4
  %i.id = zext i8 %i.ic to i64
  %i.ie = add nuw nsw i64 %i.id, 16
  %i.if = shl i64 256, %i.hz
  %.0.i.i.i.i.i = select i1 %i.ib, i64 %i.ie, i64 %i.if
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %15, align 8, !tbaa !542
  store i64 0, ptr %i.bm, align 8, !tbaa !338
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %.0.i.i.i.i.i) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ig = load ptr, ptr %14, align 8, !tbaa !319  ; 7 uses
  %.not.i55 = icmp eq ptr %i.ig, null
  br i1 %.not.i55, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit60, label %bb.ax

bb.ax:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEED2Ev.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = atomicrmw sub ptr %i.ih, i32 1 acq_rel, align 4
  %i.ij = icmp eq i32 %i.ii, 1
end_hunk_15
begin_hunk_16_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionIdE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEEEvT_SB_T0_(ptr noundef %i.by, ptr noundef %i.cb, ptr nonnull %i.cd)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEvT_S7_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessIdEEEvT_S7_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEE5clearEv.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 7 uses
  %.01788 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ae ] ; 2 uses
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !1622, !nonnull !132, !align !171
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !345 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !377 ; 4 uses
  %.not.i30 = icmp eq ptr %i.co, null
  br i1 %.not.i30, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 58
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 57
  %i.ct = load i8, ptr %i.cs, align 1, !range !131
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond.i = select i1 %i.cr, i1 true, i1 %i.cu
  br i1 %or.cond.i, label %.split, label %bb.m

.split:                                           ; preds = %bb.l
  %i.cv = lshr i64 %indvars.iv, 6
  %i.cw = and i64 %i.cv, 67108863
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !155
  %i.cz = and i64 %indvars.iv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i.i31 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i31, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 59
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !379, !range !131, !noundef !132
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split49

.split49:                                         ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !380
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !107
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !155
  %i.dn = and i64 %i.dj, 63
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.do, %i.dm
  %.not.i7.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i7.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.m
  %i.dq = load i64, ptr %i.co, align 8, !tbaa !155
  %i.dr = and i64 %i.dq, 1
  %.not.i6.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i6.i, label %bb.n, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.n:                                             ; preds = %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ds = add nsw i32 %.01788, 1                  ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.o, label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.du = load ptr, ptr %i.y, align 8, !tbaa !1621, !nonnull !132, !align !171
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !297
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !1617, !nonnull !132, !align !172 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !107
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dy
  %i.ea = trunc nsw i64 %indvars.iv to i32
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !107
  %i.eb = load i32, ptr %i.dw, align 4, !tbaa !107
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.dw, align 4, !tbaa !107
  br label %bb.ae

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.k, %.split49, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !381
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 58
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !378, !range !131, !noundef !132
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.eh, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cm, i64 59
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !379, !range !131, !noundef !132
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.en = load i32, ptr %i.em, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit

bb.r:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !380
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.q, %bb.r
  %.0.i.i = phi i32 [ %i.er, %bb.r ], [ %i.en, %bb.q ], [ %i.ei, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.es = sext i32 %.0.i.i to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !546 ; 7 uses
  store double %i.eu, ptr %i.c, align 8, !tbaa !546
  %i.ev = load ptr, ptr %i.z, align 8, !tbaa !1619, !nonnull !132, !align !171 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !338
  %i.ey = lshr i64 %i.ex, 8
  switch i64 %i.ey, label %bb.t [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !547
  %i.fb = and i64 %i.fa, -16
  %i.fc = inttoptr i64 %i.fb to ptr               ; 2 uses
  %i.fd = load double, ptr %i.fc, align 16, !tbaa !546
  %i.fe = fcmp oeq double %i.eu, %i.fd
  br i1 %i.fe, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread70, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.eu, ptr %i.b, align 8, !tbaa !546
  %i.ff = fcmp une double %i.eu, 0.000000e+00
  br i1 %i.ff, label %bb.u, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit

bb.u:                                             ; preds = %bb.t
  %i.fg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8, i64 noundef 3339675911)
          to label %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit_crit_edge unwind label %bb.v

._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit_crit_edge: ; preds = %bb.u
  %.pre = load double, ptr %i.c, align 8
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit

bb.v:                                             ; preds = %bb.u
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #33
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit: ; preds = %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit_crit_edge, %bb.t
  %i.fj = phi double [ %i.eu, %bb.t ], [ %.pre, %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit_crit_edge ] ; 2 uses
  %i.fk = phi i64 [ 0, %bb.t ], [ %i.fg, %._ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit_crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fl = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fk) ; 2 uses
  %i.fm = lshr i64 %i.fl, 24
  %i.fn = or i64 %i.fm, 128                       ; 2 uses
  %i.fo = add i64 %i.fl, %i.fk
  %i.fp = shl nuw nsw i64 %i.fn, 1
  %i.fq = or disjoint i64 %i.fp, 1
  %i.fr = trunc nuw i64 %i.fn to i8
  %i.fs = insertelement <16 x i8> poison, i8 %i.fr, i64 0
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fu = load i64, ptr %i.ew, align 8, !tbaa !338
  %i.fv = and i64 %i.fu, 255                      ; 2 uses
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = load ptr, ptr %i.ev, align 8, !tbaa !542
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit, %bb.z
  %.023.i87 = phi i64 [ %i.fw, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit ], [ %i.gr, %bb.z ]
  %.025.i86 = phi i64 [ %i.fo, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE11computeHashIdEESt4pairImmERKT_.exit ], [ %i.gs, %bb.z ] ; 2 uses
  %i.fy = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i86, i64 range(i64 0, 256) %i.fv)
  %i.fz = getelementptr inbounds nuw [256 x i8], ptr %i.fx, i64 %i.fy ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.gb, i32 0, i32 3, i32 1)
  %i.gc = load <16 x i8>, ptr %i.fz, align 16     ; 2 uses
  %i.gd = icmp eq <16 x i8> %i.gc, %i.ft
  %i.ge = bitcast <16 x i1> %i.gd to i16
  %i.gf = and i16 %i.ge, 16383
  %i.gg = zext nneg i16 %i.gf to i32
  %i.gh = icmp ne ptr %i.fz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.gi = extractelement <16 x i8> %i.gc, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.x, %bb.w
  %.sroa.044.0 = phi i32 [ %i.gg, %bb.w ], [ %i.gl, %bb.x ] ; 4 uses
  %.not = icmp eq i32 %.sroa.044.0, 0
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge.i
  %i.gj = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.gk = add nuw nsw i32 %.sroa.044.0, 16383
  %i.gl = and i32 %i.gk, %.sroa.044.0
  %i.gm = zext nneg i32 %i.gj to i64
  call void @llvm.assume(i1 %i.gh)
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.gm ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !546
  %i.gp = fcmp oeq double %i.fj, %i.go
  br i1 %i.gp, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread70, label %.critedge.i, !prof !119, !llvm.loop !53

bb.y:                                             ; preds = %.critedge.i
  %i.gq = icmp eq i8 %i.gi, 0
  br i1 %i.gq, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread.loopexit, label %bb.z, !prof !119

bb.z:                                             ; preds = %bb.y
  %i.gr = add i64 %.023.i87, -1                   ; 2 uses
  %i.gs = add i64 %i.fq, %.025.i86
  %.not.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread.loopexit, label %bb.w, !llvm.loop !54

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread.loopexit: ; preds = %bb.z, %bb.y
  %.pre93 = load ptr, ptr %i.z, align 8, !tbaa !1619
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread.loopexit, %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit
  %i.gt = phi double [ %i.fj, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread.loopexit ], [ %i.eu, %bb.s ], [ %i.eu, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit ] ; 2 uses
  %i.gu = phi ptr [ %.pre93, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread.loopexit ], [ %i.ev, %bb.s ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1623
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1623
  store ptr %i.c, ptr %3, align 8, !tbaa !549, !alias.scope !1624, !noalias !1623
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1625
  store double %i.gt, ptr %i.a, align 8, !tbaa !546, !noalias !1625
  %i.gv = fcmp une double %i.gt, 0.000000e+00
  br i1 %i.gv, label %bb.aa, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEEixERKd.exit

bb.aa:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread
  %i.gw = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEEixERKd.exit unwind label %bb.ab, !noalias !1625

bb.ab:                                            ; preds = %bb.aa
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #33, !noalias !1625
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEEixERKd.exit: ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread, %bb.aa
  %i.gz = phi i64 [ 0, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread ], [ %i.gw, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1625
  %i.ha = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.gz) ; 2 uses
  %i.hb = lshr i64 %i.ha, 24
  %i.hc = or i64 %i.hb, 128
  %i.hd = add i64 %i.ha, %i.gz
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE19tryEmplaceValueImplIdJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.790") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.gu, i64 %i.hd, i64 %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1623
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1623
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1623
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !551, !noalias !1623
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1623
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 8
  store i8 1, ptr %i.he, align 1, !tbaa !117
  br label %bb.ad

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread70: ; preds = %bb.x, %bb.s
  %.sroa.043.175 = phi ptr [ %i.fc, %bb.s ], [ %i.gn, %bb.x ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.043.175, i64 8 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !553, !range !131, !noundef !132
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread70
  store i8 0, ptr %i.hf, align 8, !tbaa !553
  %i.hi = load ptr, ptr %i.y, align 8, !tbaa !1621, !nonnull !132, !align !171
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !297
  %i.hk = load ptr, ptr %i.o, align 8, !tbaa !1617, !nonnull !132, !align !172 ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !107
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hm
  store i32 %i.ei, ptr %i.hn, align 4, !tbaa !107
  %i.ho = load i32, ptr %i.hk, align 4, !tbaa !107
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hk, align 4, !tbaa !107
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE4findIdEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdbEEEEERKT_.exit.thread70, %bb.ac, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIdbvvvEEEixERKd.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.o, %bb.n
  %.1 = phi i32 [ 2, %bb.o ], [ %i.ds, %bb.n ], [ %.01788, %bb.ad ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hq = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.hq, label %bb.k, label %._crit_edge, !llvm.loop !1613
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE19tryEmplaceValueImplIdJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISF_ISB_bEEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.790") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !542   ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.042.0, 16383
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 2 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %4, align 8, !tbaa !546
  %i.ab = load double, ptr %i.z, align 8, !tbaa !546
  %i.ac = fcmp oeq double %i.aa, %i.ab
  br i1 %i.ac, label %.loopexit, label %.critedge.i, !prof !119, !llvm.loop !53

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !54

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi83 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !98
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = shl i64 %i.aj, %.pre-phi83              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ak
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread66
  %i.al = shl nuw i64 1, %.pre-phi83
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.al, i64 noundef %i.aj, i64 noundef %i.ak)
  %.pre79 = load ptr, ptr %1, align 8, !tbaa !542
  %.pre80 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre81 = and i64 %.pre80, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi83, %.thread66 ], [ %.pre81, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.thread66 ], [ %.pre79, %bb.g ] ; 3 uses
  %i.an = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16, !tbaa !98
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = and i16 %i.ar, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.as, 16383
  br i1 %.not69, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE16reserveForInsertEm.exit
  %i.at = shl i64 %3, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.av = phi i64 [ %i.an, %bb.h ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.ba, %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE25incrOutboundOverflowCountEv.exit ]
  %i.aw = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !554 ; 2 uses
  %.not.i33 = icmp eq i8 %i.ay, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !554
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.ba = add i64 %i.au, %.030                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ba, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bg, 16383
  br i1 %.not70, label %bb.i, label %bb.k, !llvm.loop !1626

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !544
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !98
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKdbEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !549
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !546
  store double %i.bv, ptr %i.br, align 8, !tbaa !555
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 0, ptr %i.bw, align 8, !tbaa !553
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = or i64 %i.bx, %i.bl                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !547
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !155
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdbEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !338
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit
  %.lcssa92.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa93.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISB_bEEEEESH_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa92.sink, ptr %0, align 8, !tbaa !551
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa93.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ch, align 8, !tbaa !1629
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdbvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bo

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bp

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr null, ptr %15, align 8, !tbaa !563
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bm, align 8, !tbaa !565
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !293, !range !131, !noundef !132
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bo, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !292
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !291
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bz = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bv, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.ca = and i32 %i.bv, 2147483584               ; 3 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %.not37.i.i.not.i.i56.not = icmp eq i32 %i.ca, 0
  br i1 %.not37.i.i.not.i.i56.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i57, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.cb
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cc = lshr exact i64 %indvars.iv.i.i57, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !155
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bv, %i.ca
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cg = lshr i32 %i.bv, 6
  %i.ch = and i32 %i.bv, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ci
  %i.cj = zext nneg i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.cl, %notmask.i40.i.i.i.i
  %i.cm = icmp eq i64 %.demorgan.i.i, -1
  %i.cn = zext i1 %i.cm to i16
  %i.co = or disjoint i16 %i.cn, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.co, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bo, align 4
  %i.cp = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.cp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cs = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.cu, %.noexc38 ], [ %i.cr, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.cu = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cu, %i.cs
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1681

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cv = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cw = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cv, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cv, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cr, %i.cw
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cx = add i32 %i.cr, 63                       ; 2 uses
  %i.cy = srem i32 %i.cx, 64
  %i.cz = sub nsw i32 %i.cx, %i.cy                ; 6 uses
  %i.da = and i32 %i.cw, -64                      ; 6 uses
  %i.db = icmp slt i32 %i.da, %i.cz
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = ashr i32 %i.cw, 6
  %i.dd = and i32 %i.cw, 63
  %i.de = zext nneg i32 %i.dd to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i.i.i.i.i, -1
  %i.dg = sub nsw i32 %i.cz, %i.cr                ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dh
  %i.di = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dj = sub nsw i32 64, %i.dg
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl i64 %i.di, %i.dk
  %i.dm = and i64 %i.dl, %i.df
  %i.dn = sext i32 %i.dc to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !155
  %i.dq = and i64 %i.dm, %i.dp                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.dv, %.noexc39 ], [ %i.dq, %bb.ab ] ; 3 uses
  %i.dr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = or disjoint i32 %i.da, %i.ds
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.dt)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.du = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.dv = and i64 %i.du, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1682

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cr, %i.cz
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = sdiv i32 %i.cr, 64                      ; 2 uses
  %i.dx = sub nsw i32 %i.cz, %i.cr                ; 2 uses
  %i.dy = zext nneg i32 %i.dx to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dy
  %i.dz = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ea = sub nsw i32 64, %i.dx
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl i64 %i.dz, %i.eb
  %i.ed = sext i32 %i.dw to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !155
  %i.eg = and i64 %i.ef, %i.ec                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eh = shl nsw i32 %i.dw, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.eg, %.preheader.i37.i.i.i.i ], [ %i.em, %.noexc40 ] ; 3 uses
  %i.ei = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ek)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.el = add i64 %.011.i38.i.i.i.i, -1
  %i.em = and i64 %i.el, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1682

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.en = add nsw i32 %i.cz, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.en, %i.da
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cw, %i.da
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.eo = phi i32 [ %i.fg, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.eo, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cz, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.ep = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.es, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.ep, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eu = shl nsw i32 %i.ep, 6                    ; 2 uses
  %i.ev = add i32 %i.eu, 64
  %i.ew = sext i32 %i.ev to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ex = sext i32 %i.eu to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ex, %.lr.ph21.i.i.i.i.i ], [ %i.ez, %.noexc41 ] ; 2 uses
  %i.ey = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ey)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ez = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ew
  br i1 %i.fa, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1683

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i ], [ %i.ff, %.noexc42 ] ; 3 uses
  %i.fb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = or disjoint i32 %i.et, %i.fc
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fd)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fe = add i64 %.01519.i.i.i.i.i, -1
  %i.ff = and i64 %i.fe, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1684

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.fg = add nsw i32 %i.eo, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fg, %i.da
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1685

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fh = ashr i32 %i.cw, 6
  %i.fi = and i32 %i.cw, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fj
  %i.fk = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fl = sext i32 %i.fh to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !155
  %i.fo = and i64 %i.fn, %i.fk                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.ft, %.noexc43 ], [ %i.fo, %bb.ai ] ; 3 uses
  %i.fp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = or disjoint i32 %i.da, %i.fq
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fr)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fs = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.ft = and i64 %i.fs, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1682

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fu = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fv = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 2
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !113
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  invoke void %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %i.fu, i64 noundef %i.fx)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.gb = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.gb, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.gb, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gd = atomicrmw add ptr %i.gc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.bq

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.ge = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.ge, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = atomicrmw sub ptr %i.gf, i32 1 acq_rel, align 4
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gi = load ptr, ptr %i.ge, align 8, !tbaa !113
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(64) %i.ge)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gm, null
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %..i.i
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(64) %i.ge)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gt = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.br  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i32 1, ptr %i.gv, align 8, !tbaa !110, !noalias !1692
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 1, ptr %i.gw, align 4, !tbaa !111, !noalias !1692
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gt, align 8, !tbaa !113, !noalias !1692
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1692

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef 160) #32, !noalias !1692
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gx, ptr %0, align 8, !tbaa !203
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gt, ptr %i.gz, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hc, align 8, !tbaa !110
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 0, ptr %i.hg, align 4, !tbaa !111
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !113
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30, !inline_history !13
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !113
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = add nsw i32 %i.hf, -1
  store i32 %i.ho, ptr %i.hc, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.hp = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.hf, %bb.ar ], [ %i.hp, %bb.as ]
  %i.hq = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hq, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hr = load ptr, ptr %i.bm, align 8, !tbaa !565 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 15
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !337
  %i.hu = icmp eq i8 %i.ht, -1
  br i1 %i.hu, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hv = load i64, ptr %i.bn, align 8, !tbaa !338 ; 2 uses
  %i.hw = and i64 %i.hv, 255                      ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.hx, align 1
  %i.hy = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i55 = shl nsw i64 -1, %i.hw
  %i.hz = xor i64 %notmask.i.i.i.i.i55, -1
  %i.ia = lshr i64 %i.hz, 12
  %i.ib = add nuw nsw i64 %i.ia, 1
  %i.ic = icmp ult i64 %i.hv, 256
  br i1 %i.ic, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i64 %i.hw, ptr %i.bn, align 8, !tbaa !338
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.hx, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.av, %bb.au
  %.pre-phi21.i.i.i.i = phi i64 [ %.pre20.i.i.i.i, %bb.av ], [ %i.hy, %bb.au ]
  %i.id = icmp eq i64 %i.hw, 0
  %i.ie = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.ie
  %.neg18.i.i.i.i = shl i64 -64, %i.hw
  %.0.i.neg.i.i.i.i = select i1 %i.id, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bm, align 8, !tbaa !565
  store i64 0, ptr %i.bn, align 8, !tbaa !338
  %i.if = and i64 %.0.i.neg.i.i.i.i, -8
  %i.ig = mul nuw nsw i64 %i.hy, 24
  %i.ih = mul i64 %i.ig, %i.ib
  %i.ii = sub i64 %i.ih, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.ii) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
end_hunk_17
begin_hunk_18_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_10StringViewEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessINS2_10StringViewEEEEvT_S8_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessINS2_10StringViewEEEEvT_S8_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE5clearEv.exit, %bb.g
  ret void

bb.h:                                             ; preds = %.lr.ph118, %bb.y
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph118 ], [ %indvars.iv.next, %bb.y ] ; 7 uses
  %.017115 = phi i32 [ 0, %.lr.ph118 ], [ %.1, %bb.y ] ; 2 uses
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !1709, !nonnull !132, !align !171
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !345 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !377 ; 4 uses
  %.not.i25 = icmp eq ptr %i.cr, null
  br i1 %.not.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 58
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 57
  %i.cw = load i8, ptr %i.cv, align 1, !range !131
  %i.cx = trunc nuw i8 %i.cw to i1
  %or.cond.i = select i1 %i.cu, i1 true, i1 %i.cx
  br i1 %or.cond.i, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %i.cy = lshr i64 %indvars.iv, 6
  %i.cz = and i64 %i.cy, 67108863
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !155
  %i.dc = and i64 %indvars.iv, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.db, %i.dd
  %.not.i.i26 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i26, label %bb.k, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 59
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !379, !range !131, !noundef !132
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split43

.split43:                                         ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !380
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !107
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = lshr i64 %i.dm, 6
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !155
  %i.dq = and i64 %i.dm, 63
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dr, %i.dp
  %.not.i7.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i7.i, label %bb.k, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.j
  %i.dt = load i64, ptr %i.cr, align 8, !tbaa !155
  %i.du = and i64 %i.dt, 1
  %.not.i6.i = icmp eq i64 %i.du, 0
  br i1 %.not.i6.i, label %bb.k, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.k:                                             ; preds = %.split43, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dv = add nsw i32 %.017115, 1                 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 2
  br i1 %i.dw, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.dx = load ptr, ptr %i.v, align 8, !tbaa !1708, !nonnull !132, !align !171
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !297
  %i.dz = load ptr, ptr %i.l, align 8, !tbaa !1704, !nonnull !132, !align !172 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !107
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.eb
  %i.ed = trunc nsw i64 %indvars.iv to i32
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !107
  %i.ee = load i32, ptr %i.dz, align 4, !tbaa !107
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.dz, align 4, !tbaa !107
  br label %bb.y

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.h, %.split43, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.eg = load ptr, ptr %i.co, align 8, !tbaa !345 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !381
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 58
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !378, !range !131, !noundef !132
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.el, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 59
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !379, !range !131, !noundef !132
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.o:                                             ; preds = %bb.m
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !380
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.n, %bb.o
  %.0.i.i = phi i32 [ %i.ev, %bb.o ], [ %i.er, %bb.n ], [ %i.em, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.ew = sext i32 %.0.i.i to i64
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %i.ew ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ex, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !98 ; 4 uses
  store i64 %.sroa.0.0.copyload.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.w, align 8
  %i.ey = load ptr, ptr %i.x, align 8, !tbaa !1706, !nonnull !132, !align !171 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !338
  %i.fb = icmp ult i64 %i.fa, 256
  br i1 %i.fb, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.y, align 8
  %i.fc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.fd = icmp ult i32 %i.fc, 13
  %i.fe = select i1 %i.fd, ptr %i.z, ptr %.sroa.2.0.copyload.i
  %i.ff = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.fg = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.fe, i64 noundef %i.ff) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fh = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.fg) ; 2 uses
  %i.fi = lshr i64 %i.fh, 24
  %i.fj = or i64 %i.fi, 128                       ; 2 uses
  %i.fk = add i64 %i.fh, %i.fg                    ; 3 uses
  %i.fl = shl nuw nsw i64 %i.fj, 1
  %i.fm = or disjoint i64 %i.fl, 1                ; 3 uses
  %i.fn = trunc nuw i64 %i.fj to i8
  %i.fo = insertelement <16 x i8> poison, i8 %i.fn, i64 0
  %i.fp = shufflevector <16 x i8> %i.fo, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.fq = load i64, ptr %i.ez, align 8, !tbaa !338
  %i.fr = and i64 %i.fq, 255                      ; 4 uses
  %i.fs = shl nuw i64 1, %i.fr                    ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !565 ; 3 uses
  %i.fv = load i64, ptr %7, align 8
  %.fr = freeze i64 %i.fv                         ; 11 uses
  %i.fw = trunc i64 %.fr to i32                   ; 2 uses
  %i.fx = icmp ult i32 %i.fw, 13
  %i.fy = load ptr, ptr %i.w, align 8             ; 8 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = and i64 %.fr, 4294967295
  %i.gb = add nsw i64 %i.ga, -4
  %.cast = ptrtoint ptr %i.fy to i64
  br i1 %i.fx, label %.split98.us, label %.split98

.split98.us:                                      ; preds = %bb.p
  %i.gc = icmp samesign ult i32 %i.fw, 5
  br i1 %i.gc, label %.split98.us.split.us, label %.split98.us.split, !llvm.loop !58

.split98.us.split.us:                             ; preds = %.split98.us, %bb.r
  %.022.i97.us.us = phi i64 [ %i.gy, %bb.r ], [ %i.fs, %.split98.us ]
  %.024.i96.us.us = phi i64 [ %i.gz, %bb.r ], [ %i.fk, %.split98.us ] ; 2 uses
  %i.gd = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i96.us.us, i64 range(i64 0, 256) %i.fr)
  %i.ge = getelementptr inbounds nuw [64 x i8], ptr %i.fu, i64 %i.gd ; 3 uses
  %i.gf = load <16 x i8>, ptr %i.ge, align 16     ; 2 uses
  %i.gg = icmp eq <16 x i8> %i.gf, %i.fp
  %i.gh = bitcast <16 x i1> %i.gg to i16
  %i.gi = and i16 %i.gh, 4095                     ; 2 uses
  %.not82.us.us = icmp eq i16 %i.gi, 0
  %i.gj = extractelement <16 x i8> %i.gf, i64 15
  br i1 %.not82.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.split98.us.split.us
  %i.gk = zext nneg i16 %i.gi to i32
  %i.gl = icmp ne ptr %i.ge, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gn = load ptr, ptr %i.ey, align 8, !tbaa !563 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i.backedge.us.us.us.us, %.lr.ph.us.us
  %.sroa.038.083.us.us.us.us = phi i32 [ %i.gk, %.lr.ph.us.us ], [ %i.gw, %.critedge.i.backedge.us.us.us.us ] ; 3 uses
  %i.go = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.038.083.us.us.us.us, i1 true)
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !107
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !155
  %.not.i.i.i.us.us.us.us = icmp eq i64 %.fr, %i.gu
  br i1 %.not.i.i.i.us.us.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us.us.us, !prof !566

.critedge.i.backedge.us.us.us.us:                 ; preds = %bb.q
  %i.gv = add nuw nsw i32 %.sroa.038.083.us.us.us.us, 4095
  %i.gw = and i32 %i.gv, %.sroa.038.083.us.us.us.us ; 2 uses
  %.not.us.us.us.us = icmp eq i32 %i.gw, 0
  br i1 %.not.us.us.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %bb.q, !llvm.loop !58

.critedge.i._crit_edge.split.us.split.us.us.us:   ; preds = %.critedge.i.backedge.us.us.us.us, %.split98.us.split.us
  %i.gx = icmp eq i8 %i.gj, 0
  br i1 %i.gx, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.r, !prof !119

bb.r:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us
  %i.gy = add i64 %.022.i97.us.us, -1             ; 2 uses
  %i.gz = add i64 %i.fm, %.024.i96.us.us
  %.not.i.us.us = icmp eq i64 %i.gy, 0
  br i1 %.not.i.us.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split98.us.split.us, !llvm.loop !59

.split98.us.split:                                ; preds = %.split98.us, %bb.t
  %.022.i97.us = phi i64 [ %i.hy, %bb.t ], [ %i.fs, %.split98.us ]
  %.024.i96.us = phi i64 [ %i.hz, %bb.t ], [ %i.fk, %.split98.us ] ; 2 uses
  %i.ha = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i96.us, i64 range(i64 0, 256) %i.fr)
  %i.hb = getelementptr inbounds nuw [64 x i8], ptr %i.fu, i64 %i.ha ; 3 uses
  %i.hc = load <16 x i8>, ptr %i.hb, align 16     ; 2 uses
  %i.hd = icmp eq <16 x i8> %i.hc, %i.fp
  %i.he = bitcast <16 x i1> %i.hd to i16
  %i.hf = and i16 %i.he, 4095                     ; 2 uses
  %.not82.us = icmp eq i16 %i.hf, 0
  %i.hg = extractelement <16 x i8> %i.hc, i64 15
  br i1 %.not82.us, label %.critedge.i._crit_edge.split.us.split.us104, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split98.us.split
  %i.hh = zext nneg i16 %i.hf to i32
  %i.hi = icmp ne ptr %i.hb, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hk = load ptr, ptr %i.ey, align 8, !tbaa !563 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.backedge.us.us102, %.lr.ph.us
  %.sroa.038.083.us.us100 = phi i32 [ %i.hh, %.lr.ph.us ], [ %i.hn, %.critedge.i.backedge.us.us102 ] ; 3 uses
  %i.hl = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.038.083.us.us100, i1 true)
  %i.hm = add nuw nsw i32 %.sroa.038.083.us.us100, 4095
  %i.hn = and i32 %i.hm, %.sroa.038.083.us.us100  ; 2 uses
  %i.ho = zext nneg i32 %i.hl to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !107
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %i.hr ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !155
  %.not.i.i.i.us.us101 = icmp eq i64 %.fr, %i.ht
  br i1 %.not.i.i.i.us.us101, label %.split46.us.us, label %.critedge.i.backedge.us.us102, !prof !566

.split46.us.us:                                   ; preds = %bb.s
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !155
  %i.hw = icmp eq i64 %i.hv, %.cast
  br i1 %i.hw, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us102, !prof !567

.critedge.i.backedge.us.us102:                    ; preds = %.split46.us.us, %bb.s
  %.not.us.us103 = icmp eq i32 %i.hn, 0
  br i1 %.not.us.us103, label %.critedge.i._crit_edge.split.us.split.us104, label %bb.s, !llvm.loop !58

.critedge.i._crit_edge.split.us.split.us104:      ; preds = %.critedge.i.backedge.us.us102, %.split98.us.split
  %i.hx = icmp eq i8 %i.hg, 0
  br i1 %i.hx, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.t, !prof !119

bb.t:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us104
  %i.hy = add i64 %.022.i97.us, -1                ; 2 uses
  %i.hz = add i64 %i.fm, %.024.i96.us
  %.not.i.us = icmp eq i64 %i.hy, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split98.us.split, !llvm.loop !59

.split98:                                         ; preds = %bb.p, %bb.v
  %.022.i97 = phi i64 [ %i.iz, %bb.v ], [ %i.fs, %bb.p ]
  %.024.i96 = phi i64 [ %i.ja, %bb.v ], [ %i.fk, %bb.p ] ; 2 uses
  %i.ia = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i96, i64 range(i64 0, 256) %i.fr)
  %i.ib = getelementptr inbounds nuw [64 x i8], ptr %i.fu, i64 %i.ia ; 3 uses
  %i.ic = load <16 x i8>, ptr %i.ib, align 16     ; 2 uses
  %i.id = icmp eq <16 x i8> %i.ic, %i.fp
  %i.ie = bitcast <16 x i1> %i.id to i16
  %i.if = and i16 %i.ie, 4095                     ; 2 uses
  %.not82 = icmp eq i16 %i.if, 0
  %i.ig = extractelement <16 x i8> %i.ic, i64 15
  br i1 %.not82, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split98
  %i.ih = zext nneg i16 %i.if to i32
  %i.ii = icmp ne ptr %i.ib, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ii)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ik = load ptr, ptr %i.ey, align 8, !tbaa !563 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.038.083 = phi i32 [ %i.ih, %.lr.ph ], [ %i.in, %.critedge.i.backedge ] ; 3 uses
  %i.il = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.038.083, i1 true)
  %i.im = add nuw nsw i32 %.sroa.038.083, 4095
  %i.in = and i32 %i.im, %.sroa.038.083           ; 2 uses
  %i.io = zext nneg i32 %i.il to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !107
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %i.ir ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !155
  %.not.i.i.i = icmp eq i64 %.fr, %i.it
  br i1 %.not.i.i.i, label %.split45, label %.critedge.i.backedge, !prof !566

.split45:                                         ; preds = %bb.u
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !98
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.fz, ptr nonnull %i.iw, i64 %i.gb)
  %i.ix = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ix, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !567

.critedge.i.backedge:                             ; preds = %.split45, %bb.u
  %.not = icmp eq i32 %i.in, 0
  br i1 %.not, label %.critedge.i._crit_edge.split, label %bb.u, !llvm.loop !58

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split98
  %i.iy = icmp eq i8 %i.ig, 0
  br i1 %i.iy, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.v, !prof !119

bb.v:                                             ; preds = %.critedge.i._crit_edge.split
  %i.iz = add i64 %.022.i97, -1                   ; 2 uses
  %i.ja = add i64 %i.fm, %.024.i96
  %.not.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %.split98, !llvm.loop !59

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.critedge.i._crit_edge.split, %bb.v, %.critedge.i._crit_edge.split.us.split.us104, %bb.t, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %.sroa.2.0.copyload.i.i.i.i.i = phi ptr [ %i.fy, %.critedge.i._crit_edge.split.us.split.us104 ], [ %i.fy, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %.sroa.2.0.copyload.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ], [ %i.fy, %bb.r ], [ %i.fy, %bb.t ], [ %i.fy, %bb.v ], [ %i.fy, %.critedge.i._crit_edge.split ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = phi i64 [ %.fr, %.critedge.i._crit_edge.split.us.split.us104 ], [ %.fr, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %.sroa.0.0.copyload.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ], [ %.fr, %bb.r ], [ %.fr, %bb.t ], [ %.fr, %bb.v ], [ %.fr, %.critedge.i._crit_edge.split ] ; 3 uses
  %i.jb = load ptr, ptr %i.x, align 8, !tbaa !1706, !nonnull !132, !align !171 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1710
  store ptr %7, ptr %4, align 8, !tbaa !569, !alias.scope !1711, !noalias !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !1710
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !1712
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %2, align 8, !noalias !1712
  store ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr %i.aa, align 8, !noalias !1712
  %i.jc = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %i.jd = icmp ult i32 %i.jc, 13
  %i.je = select i1 %i.jd, ptr %i.ab, ptr %.sroa.2.0.copyload.i.i.i.i.i
  %i.jf = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4294967295
  %i.jg = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.je, i64 noundef %i.jf), !noalias !1712 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !1712
  %i.jh = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.jg) ; 2 uses
  %i.ji = lshr i64 %i.jh, 24
  %i.jj = or i64 %i.ji, 128
  %i.jk = add i64 %i.jh, %i.jg
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESK_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.668") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i64 %i.jk, i64 %i.jj, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !1710
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !1710
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1710
  %i.jl = load ptr, ptr %3, align 8, !tbaa !499, !noalias !1710, !nonnull !132, !noundef !132
  %i.jm = load ptr, ptr %i.jb, align 8, !tbaa !563, !noalias !1710, !nonnull !132, !noundef !132
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !107, !noalias !1710
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.jm, i64 %i.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1710
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store i8 1, ptr %i.jq, align 1, !tbaa !117
  br label %bb.x

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread: ; preds = %.split45, %.split46.us.us, %bb.q
  %.pre-phi = phi i64 [ %i.hr, %.split46.us.us ], [ %i.gs, %bb.q ], [ %i.ir, %.split45 ]
  %i.jr = phi ptr [ %i.hk, %.split46.us.us ], [ %i.gn, %bb.q ], [ %i.ik, %.split45 ]
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jr, i64 %.pre-phi
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !572, !range !131, !noundef !132
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread
  store i8 0, ptr %i.jt, align 8, !tbaa !572
  %i.jw = load ptr, ptr %i.v, align 8, !tbaa !1708, !nonnull !132, !align !171
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !297
  %i.jy = load ptr, ptr %i.l, align 8, !tbaa !1704, !nonnull !132, !align !172 ; 3 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !107
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.ka
  store i32 %i.em, ptr %i.kb, align 4, !tbaa !107
  %i.kc = load i32, ptr %i.jy, align 4, !tbaa !107
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.jy, align 4, !tbaa !107
  br label %bb.x

bb.x:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %bb.w, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.l, %bb.k
  %.1 = phi i32 [ 2, %bb.l ], [ %i.dv, %bb.k ], [ %.017115, %bb.x ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ke = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ke, label %bb.h, label %._crit_edge, !llvm.loop !1700
}

declare noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESK_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.668") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread69_crit_edge, label %bb.b

..thread69_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !565
  %.pre135 = shl nuw i64 1, %i.b
  br label %.thread69

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 3 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.i = and i64 %i.b, 255                        ; 10 uses
  %i.j = shl nuw i64 1, %i.i                      ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !565  ; 9 uses
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %i.n = load i64, ptr %4, align 8
  %.fr = freeze i64 %i.n                          ; 5 uses
  %i.o = trunc i64 %.fr to i32                    ; 2 uses
  %i.p = icmp ult i32 %i.o, 13
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = and i64 %.fr, 4294967295
  %i.s = add nsw i64 %i.r, -4
  br i1 %i.p, label %.split98.us, label %.split98

.split98.us:                                      ; preds = %bb.b
  %i.t = icmp samesign ult i32 %i.o, 5
  br i1 %i.t, label %.split98.us.split.us, label %.split98.us.split, !llvm.loop !58

.split98.us.split.us:                             ; preds = %.split98.us, %bb.d
  %.022.i97.us.us = phi i64 [ %i.ao, %bb.d ], [ %i.j, %.split98.us ]
  %.024.i96.us.us = phi i64 [ %i.ap, %bb.d ], [ %2, %.split98.us ] ; 2 uses
  %i.u = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i96.us.us, i64 range(i64 0, 256) %i.i)
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.u ; 3 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16       ; 2 uses
  %i.x = icmp eq <16 x i8> %i.w, %i.h
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = and i16 %i.y, 4095                       ; 2 uses
  %.not7179.us.us = icmp eq i16 %i.z, 0
  %i.aa = extractelement <16 x i8> %i.w, i64 15
  br i1 %.not7179.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.split98.us.split.us
  %i.ab = zext nneg i16 %i.z to i32
  %i.ac = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.backedge.us.us.us.us, %.lr.ph.us.us
  %.sroa.042.080.us.us.us.us = phi i32 [ %i.ab, %.lr.ph.us.us ], [ %i.am, %.critedge.i.backedge.us.us.us.us ] ; 3 uses
  %i.ae = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.080.us.us.us.us, i1 true)
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !107
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !155
  %.not.i.i.i.us.us.us.us = icmp eq i64 %.fr, %i.ak
  br i1 %.not.i.i.i.us.us.us.us, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us.us.us, !prof !566

.critedge.i.backedge.us.us.us.us:                 ; preds = %bb.c
  %i.al = add nuw nsw i32 %.sroa.042.080.us.us.us.us, 4095
  %i.am = and i32 %i.al, %.sroa.042.080.us.us.us.us ; 2 uses
  %.not71.us.us.us.us = icmp eq i32 %i.am, 0
  br i1 %.not71.us.us.us.us, label %.critedge.i._crit_edge.split.us.split.us.us.us, label %bb.c, !llvm.loop !58

.critedge.i._crit_edge.split.us.split.us.us.us:   ; preds = %.critedge.i.backedge.us.us.us.us, %.split98.us.split.us
  %i.an = icmp eq i8 %i.aa, 0
  br i1 %i.an, label %.thread69, label %bb.d, !prof !119

bb.d:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us
  %i.ao = add i64 %.022.i97.us.us, -1             ; 2 uses
  %i.ap = add i64 %i.e, %.024.i96.us.us
  %.not.i.us.us = icmp eq i64 %i.ao, 0
  br i1 %.not.i.us.us, label %.thread69, label %.split98.us.split.us, !llvm.loop !59

.split98.us.split:                                ; preds = %.split98.us, %bb.f
  %.022.i97.us = phi i64 [ %i.bo, %bb.f ], [ %i.j, %.split98.us ]
  %.024.i96.us = phi i64 [ %i.bp, %bb.f ], [ %2, %.split98.us ] ; 2 uses
  %i.aq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i96.us, i64 range(i64 0, 256) %i.i)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.aq ; 3 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 16     ; 2 uses
  %i.at = icmp eq <16 x i8> %i.as, %i.h
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = and i16 %i.au, 4095                     ; 2 uses
  %.not7179.us = icmp eq i16 %i.av, 0
  %i.aw = extractelement <16 x i8> %i.as, i64 15
  br i1 %.not7179.us, label %.critedge.i._crit_edge.split.us.split.us104, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split98.us.split
  %i.ax = zext nneg i16 %i.av to i32
  %i.ay = icmp ne ptr %i.ar, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i.backedge.us.us102, %.lr.ph.us
  %.sroa.042.080.us.us100 = phi i32 [ %i.ax, %.lr.ph.us ], [ %i.bc, %.critedge.i.backedge.us.us102 ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.080.us.us100, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.042.080.us.us100, 4095
  %i.bc = and i32 %i.bb, %.sroa.042.080.us.us100  ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !107
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bg ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !155
  %.not.i.i.i.us.us101 = icmp eq i64 %.fr, %i.bi
  br i1 %.not.i.i.i.us.us101, label %.split47.us.us, label %.critedge.i.backedge.us.us102, !prof !566

.split47.us.us:                                   ; preds = %bb.e
  %i.bj = load i64, ptr %i.q, align 8, !tbaa !155
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !155
  %i.bm = icmp eq i64 %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge.us.us102, !prof !567

.critedge.i.backedge.us.us102:                    ; preds = %.split47.us.us, %bb.e
  %.not71.us.us103 = icmp eq i32 %i.bc, 0
  br i1 %.not71.us.us103, label %.critedge.i._crit_edge.split.us.split.us104, label %bb.e, !llvm.loop !58

.critedge.i._crit_edge.split.us.split.us104:      ; preds = %.critedge.i.backedge.us.us102, %.split98.us.split
  %i.bn = icmp eq i8 %i.aw, 0
  br i1 %i.bn, label %.thread69, label %bb.f, !prof !119

bb.f:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us104
  %i.bo = add i64 %.022.i97.us, -1                ; 2 uses
  %i.bp = add i64 %i.e, %.024.i96.us
  %.not.i.us = icmp eq i64 %i.bo, 0
  br i1 %.not.i.us, label %.thread69, label %.split98.us.split, !llvm.loop !59

.split98:                                         ; preds = %bb.b, %bb.h
  %.022.i97 = phi i64 [ %i.cq, %bb.h ], [ %i.j, %bb.b ]
  %.024.i96 = phi i64 [ %i.cr, %bb.h ], [ %2, %bb.b ] ; 2 uses
  %i.bq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i96, i64 range(i64 0, 256) %i.i)
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.bq ; 3 uses
  %i.bs = load <16 x i8>, ptr %i.br, align 16     ; 2 uses
  %i.bt = icmp eq <16 x i8> %i.bs, %i.h
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = and i16 %i.bu, 4095                     ; 2 uses
  %.not7179 = icmp eq i16 %i.bv, 0
  %i.bw = extractelement <16 x i8> %i.bs, i64 15
  br i1 %.not7179, label %.critedge.i._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.split98
  %i.bx = zext nneg i16 %i.bv to i32
  %i.by = icmp ne ptr %i.br, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge.i.backedge
  %.sroa.042.080 = phi i32 [ %i.bx, %.lr.ph ], [ %i.cc, %.critedge.i.backedge ] ; 3 uses
  %i.ca = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.080, i1 true)
  %i.cb = add nuw nsw i32 %.sroa.042.080, 4095
  %i.cc = and i32 %i.cb, %.sroa.042.080           ; 2 uses
  %i.cd = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !107
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !155
  %.not.i.i.i = icmp eq i64 %.fr, %i.ci
  br i1 %.not.i.i.i, label %.split, label %.critedge.i.backedge, !prof !566

.split:                                           ; preds = %bb.g
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !98
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ck, ptr nonnull %i.cn, i64 %i.s)
  %i.co = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.co, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, label %.critedge.i.backedge, !prof !567

.critedge.i.backedge:                             ; preds = %.split, %bb.g
  %.not71 = icmp eq i32 %i.cc, 0
  br i1 %.not71, label %.critedge.i._crit_edge.split, label %bb.g, !llvm.loop !58

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.split98
  %i.cp = icmp eq i8 %i.bw, 0
  br i1 %i.cp, label %.thread69, label %bb.h, !prof !119

bb.h:                                             ; preds = %.critedge.i._crit_edge.split
  %i.cq = add i64 %.022.i97, -1                   ; 2 uses
  %i.cr = add i64 %i.e, %.024.i96
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %.thread69, label %.split98, !llvm.loop !59

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread: ; preds = %.split, %.split47.us.us, %bb.c
  %.us-phi = phi i64 [ %i.bd, %.split47.us.us ], [ %i.af, %bb.c ], [ %i.cd, %.split ] ; 2 uses
  %.us-phi81 = phi ptr [ %i.az, %.split47.us.us ], [ %i.ad, %bb.c ], [ %i.bz, %.split ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.us-phi81, i64 %.us-phi
  br label %bb.p

.thread69:                                        ; preds = %bb.h, %.critedge.i._crit_edge.split, %.critedge.i._crit_edge.split.us.split.us104, %bb.f, %.critedge.i._crit_edge.split.us.split.us.us.us, %bb.d, %..thread69_crit_edge
  %.pre-phi136 = phi i64 [ %.pre135, %..thread69_crit_edge ], [ %i.j, %.critedge.i._crit_edge.split.us.split.us104 ], [ %i.j, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.j, %bb.d ], [ %i.j, %bb.f ], [ %i.j, %.critedge.i._crit_edge.split ], [ %i.j, %bb.h ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread69_crit_edge ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us104 ], [ %i.i, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.i, %bb.d ], [ %i.i, %bb.f ], [ %i.i, %.critedge.i._crit_edge.split ], [ %i.i, %bb.h ]
  %i.ct = phi ptr [ %.pre, %..thread69_crit_edge ], [ %i.l, %.critedge.i._crit_edge.split.us.split.us104 ], [ %i.l, %.critedge.i._crit_edge.split.us.split.us.us.us ], [ %i.l, %bb.d ], [ %i.l, %bb.f ], [ %i.l, %.critedge.i._crit_edge.split ], [ %i.l, %bb.h ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %.0.copyload.i.i = load i16, ptr %i.cu, align 1
  %i.cv = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.cw = add i64 %.pre-phi136, -1
  %i.cx = lshr i64 %i.cw, 12
  %i.cy = add nuw nsw i64 %i.cx, 1
  %i.cz = mul i64 %i.cy, %i.cv                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.cz
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.i

bb.i:                                             ; preds = %.thread69
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi136, i64 noundef %i.cv, i64 noundef %i.cz)
  %.pre132 = load ptr, ptr %i.da, align 8, !tbaa !565
  %.pre133 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre137 = and i64 %.pre133, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.i
  %.pre-phi138 = phi i64 [ %.pre-phi, %.thread69 ], [ %.pre137, %bb.i ] ; 2 uses
  %i.db = phi ptr [ %i.ct, %.thread69 ], [ %.pre132, %bb.i ] ; 3 uses
  %i.dc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi138) ; 2 uses
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %i.dc ; 2 uses
  %i.de = load <16 x i8>, ptr %i.dd, align 16, !tbaa !98
  %i.df = icmp slt <16 x i8> %i.de, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = and i16 %i.dg, 4095                     ; 2 uses
  %.not72 = icmp eq i16 %i.dh, 4095
  br i1 %.not72, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.di = shl i64 %3, 1
  %i.dj = or disjoint i64 %i.di, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.j
  %i.dk = phi i64 [ %i.dc, %bb.j ], [ %i.dq, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.j ], [ %i.dp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 15 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !504 ; 2 uses
  %.not.i33 = icmp eq i8 %i.dn, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = add i8 %i.dn, 1
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !504
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.k, %bb.l
  %i.dp = add i64 %i.dj, %.030                    ; 2 uses
  %i.dq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.dp, i64 range(i64 0, 256) %.pre-phi138) ; 2 uses
  %i.dr = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %i.dq ; 3 uses
  %i.ds = load <16 x i8>, ptr %i.dr, align 16     ; 2 uses
  %i.dt = icmp slt <16 x i8> %i.ds, zeroinitializer
  %i.du = bitcast <16 x i1> %i.dt to i16
  %i.dv = and i16 %i.du, 4095                     ; 2 uses
  %.not73 = icmp eq i16 %i.dv, 4095
  br i1 %.not73, label %bb.k, label %bb.m, !llvm.loop !1713

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.dw = extractelement <16 x i8> %i.ds, i64 14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 14
  %i.dy = add i8 %i.dw, 16
  store i8 %i.dy, ptr %i.dx, align 2, !tbaa !505
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.dh, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.dv, %bb.m ]
  %.1 = phi ptr [ %i.dd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.dr, %bb.m ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 4095
  %i.dz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64              ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ea ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !98
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.n
  %i.ee = trunc i64 %3 to i8
  store i8 %i.ee, ptr %i.eb, align 1, !tbaa !98
  %i.ef = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ea ; 2 uses
  %i.eh = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !338
  %i.ej = lshr i64 %i.ei, 8                       ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !107
  %i.el = load ptr, ptr %1, align 8, !tbaa !563, !nonnull !132, !noundef !132
  %i.em = and i64 %i.ej, 4294967295
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %6, align 8, !tbaa !569
  %i.ep = inttoptr i64 %i.eo to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !1714
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i8 0, ptr %i.eq, align 8, !tbaa !572
  %i.er = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.es = and i64 %i.er, -256
  %i.et = add i64 %i.es, 256
  %i.eu = and i64 %i.er, 255
  %i.ev = or disjoint i64 %i.et, %i.eu
  store i64 %i.ev, ptr %i.a, align 8, !tbaa !338
  br label %bb.p

bb.p:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink169 = phi ptr [ %i.cs, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.eg, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.ea, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink169, ptr %0, align 8, !tbaa !297
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ew, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
end_hunk_18
begin_hunk_19_@_ZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxE:bb.a

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc31 unwind label %bb.bo

.noexc31:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !325
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.bg = load ptr, ptr %14, align 8, !tbaa !319  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !324
  %i.bj = and i8 %i.bi, 2
  %.not.i33 = icmp eq i8 %i.bj, 0
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #34
          to label %.noexc34 unwind label %bb.bp

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr null, ptr %15, align 8, !tbaa !578
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bm, align 8, !tbaa !580
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.f, ptr %.sroa.73.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !293, !range !131, !noundef !132
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.r
  %.0.in.pre.i.i = load i8, ptr %i.bo, align 4, !tbaa !117, !range !131
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !292
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.ag, align 8, !tbaa !241 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !291
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bz = load ptr, ptr %1, align 8, !tbaa !276   ; 2 uses
  %.not.i.i.i37 = icmp sgt i32 %i.bv, 0
  br i1 %.not.i.i.i37, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.ca = and i32 %i.bv, 2147483584               ; 3 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %.not37.i.i.not.i.i56.not = icmp eq i32 %i.ca, 0
  br i1 %.not37.i.i.not.i.i56.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i57, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.cb
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cc = lshr exact i64 %indvars.iv.i.i57, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !155
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !15

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i = icmp eq i32 %i.bv, %i.ca
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i
  %i.cg = lshr i32 %i.bv, 6
  %i.ch = and i32 %i.bv, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ci
  %i.cj = zext nneg i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !155
  %.demorgan.i.i = or i64 %i.cl, %notmask.i40.i.i.i.i
  %i.cm = icmp eq i64 %.demorgan.i.i, -1
  %i.cn = zext i1 %i.cm to i16
  %i.co = or disjoint i16 %i.cn, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.x, %.critedge.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i ], [ %i.co, %bb.x ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bo, align 4
  %i.cp = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.cp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !292 ; 8 uses
  br i1 %.0.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cs = load i32, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.i, label %.loopexit4

.lr.ph.i:                                         ; preds = %bb.y, %.noexc38
  %.06.i = phi i32 [ %i.cu, %.noexc38 ], [ %i.cr, %bb.y ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i32 noundef %.06.i)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %.lr.ph.i
  %i.cu = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cu, %i.cs
  br i1 %exitcond.not.i, label %.loopexit4, label %.lr.ph.i, !llvm.loop !1769

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cv = load ptr, ptr %1, align 8, !tbaa !276   ; 6 uses
  %i.cw = load i32, ptr %i.ag, align 8, !tbaa !241 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 56, i1 false)
  store i8 1, ptr %3, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cv, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %4, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cv, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i36 = icmp slt i32 %i.cr, %i.cw
  br i1 %.not.i.i.i.i36, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cx = add i32 %i.cr, 63                       ; 2 uses
  %i.cy = srem i32 %i.cx, 64
  %i.cz = sub nsw i32 %i.cx, %i.cy                ; 6 uses
  %i.da = and i32 %i.cw, -64                      ; 6 uses
  %i.db = icmp slt i32 %i.da, %i.cz
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = ashr i32 %i.cw, 6
  %i.dd = and i32 %i.cw, 63
  %i.de = zext nneg i32 %i.dd to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i.i.i.i.i, -1
  %i.dg = sub nsw i32 %i.cz, %i.cr                ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.dh
  %i.di = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.dj = sub nsw i32 64, %i.dg
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl i64 %i.di, %i.dk
  %i.dm = and i64 %i.dl, %i.df
  %i.dn = sext i32 %i.dc to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !155
  %i.dq = and i64 %i.dm, %i.dp                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab, %.noexc39
  %.011.i.i.i.i.i = phi i64 [ %i.dv, %.noexc39 ], [ %i.dq, %bb.ab ] ; 3 uses
  %i.dr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = or disjoint i32 %i.da, %i.ds
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.dt)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.preheader.i.i.i.i.i
  %i.du = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.dv = and i64 %i.du, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !1770

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.cr, %i.cz
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = sdiv i32 %i.cr, 64                      ; 2 uses
  %i.dx = sub nsw i32 %i.cz, %i.cr                ; 2 uses
  %i.dy = zext nneg i32 %i.dx to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dy
  %i.dz = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ea = sub nsw i32 64, %i.dx
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl i64 %i.dz, %i.eb
  %i.ed = sext i32 %i.dw to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !155
  %i.eg = and i64 %i.ef, %i.ec                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.ad
  %i.eh = shl nsw i32 %i.dw, 6
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc40, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.eg, %.preheader.i37.i.i.i.i ], [ %i.em, %.noexc40 ] ; 3 uses
  %i.ei = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ek)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %bb.ae
  %i.el = add i64 %.011.i38.i.i.i.i, -1
  %i.em = and i64 %i.el, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ae, !llvm.loop !1770

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc40, %bb.ad, %bb.ac
  %i.en = add nsw i32 %i.cz, 64                   ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.en, %i.da
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.cw, %i.da
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %bb.ai

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %i.eo = phi i32 [ %i.fg, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.eo, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cz, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i ] ; 2 uses
  %i.ep = sdiv i32 %.051.i.i.i.i, 64              ; 3 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !155 ; 2 uses
  switch i64 %i.es, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.et = shl nsw i32 %i.ep, 6
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eu = shl nsw i32 %i.ep, 6                    ; 2 uses
  %i.ev = add i32 %i.eu, 64
  %i.ew = sext i32 %i.ev to i64
  %.0.off.i.i.i.i = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.af
  %i.ex = sext i32 %i.eu to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc41, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ex, %.lr.ph21.i.i.i.i.i ], [ %i.ez, %.noexc41 ] ; 2 uses
  %i.ey = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ey)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %bb.ag
  %i.ez = add nuw i64 %.020.i.i.i.i.i, 1          ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ew
  br i1 %i.fa, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1771

bb.ah:                                            ; preds = %.noexc42, %.lr.ph.i.i.i.i.i
  %.01519.i.i.i.i.i = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i ], [ %i.ff, %.noexc42 ] ; 3 uses
  %i.fb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = or disjoint i32 %i.et, %i.fc
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.fd)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.ah
  %i.fe = add i64 %.01519.i.i.i.i.i, -1
  %i.ff = and i64 %i.fe, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.ah, !llvm.loop !1772

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %.noexc41, %.noexc42, %bb.af, %.lr.ph.i.i.i.i
  %i.fg = add nsw i32 %i.eo, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fg, %i.da
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1773

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fh = ashr i32 %i.cw, 6
  %i.fi = and i32 %i.cw, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.fj
  %i.fk = xor i64 %notmask.i42.i.i.i.i, -1
  %i.fl = sext i32 %i.fh to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !155
  %i.fo = and i64 %i.fn, %i.fk                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ai, %.noexc43
  %.011.i45.i.i.i.i = phi i64 [ %i.ft, %.noexc43 ], [ %i.fo, %bb.ai ] ; 3 uses
  %i.fp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = or disjoint i32 %i.da, %i.fq
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.fr)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc43:                                         ; preds = %.preheader.i44.i.i.i.i
  %i.fs = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.ft = and i64 %i.fs, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !1770

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i: ; preds = %.noexc43, %.noexc39, %bb.ai, %._crit_edge.i.i.i.i, %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit4

.loopexit4:                                       ; preds = %.noexc38, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEEUliE_EEvPKmiiT_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fu = load ptr, ptr %12, align 8, !tbaa !319  ; 2 uses
  %i.fv = load i32, ptr %i.d, align 4, !tbaa !107
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 2
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !113
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  invoke void %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %i.fu, i64 noundef %i.fx)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.gb = load ptr, ptr %12, align 8, !tbaa !319  ; 3 uses
  store ptr %i.gb, ptr %17, align 8, !tbaa !319
  %.not.i44 = icmp eq ptr %i.gb, null
  br i1 %.not.i44, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gd = atomicrmw add ptr %i.gc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN8facebook5velox10BaseVector9transposeEN5boost13intrusive_ptrINS0_6BufferEEEOSt10shared_ptrIS1_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.47") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.al unwind label %bb.bq

bb.al:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.ge = load ptr, ptr %17, align 8, !tbaa !319  ; 7 uses
  %.not.i45 = icmp eq ptr %i.ge, null
  br i1 %.not.i45, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = atomicrmw sub ptr %i.gf, i32 1 acq_rel, align 4
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.am
  %i.gi = load ptr, ptr %i.ge, align 8, !tbaa !113
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(64) %i.ge)
          to label %.noexc.i unwind label %bb.an, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !332
  %.not.i.i = icmp eq ptr %i.gm, null
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !113
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %..i.i
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr noundef nonnull align 8 dereferenceable(64) %i.ge)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.an, !inline_history !16

bb.an:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.al, %bb.am, %.noexc.i
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store ptr null, ptr %i.h, align 8, !tbaa !334
  %i.gt = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %.noexc46 unwind label %bb.br  ; 6 uses

.noexc46:                                         ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i32 1, ptr %i.gv, align 8, !tbaa !110, !noalias !1780
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 1, ptr %i.gw, align 4, !tbaa !111, !noalias !1780
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gt, align 8, !tbaa !113, !noalias !1780
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDnRiN5boost13intrusive_ptrINS1_6BufferEEESH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i, !noalias !1780

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %.noexc46
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef 160) #32, !noalias !1780
  br label %.body47

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc46
  store ptr %i.gx, ptr %0, align 8, !tbaa !203
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gt, ptr %i.gz, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !105 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hc, align 8, !tbaa !110
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 0, ptr %i.hg, align 4, !tbaa !111
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !113
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30, !inline_history !13
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !113
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i52 = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i.i52, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = add nsw i32 %i.hf, -1
  store i32 %i.ho, ptr %i.hc, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.as:                                            ; preds = %bb.aq
  %i.hp = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i54 = phi i32 [ %i.hf, %bb.ar ], [ %i.hp, %bb.as ]
  %i.hq = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.hq, label %bb.at, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.hr = load ptr, ptr %i.bm, align 8, !tbaa !580 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 15
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !337
  %i.hu = icmp eq i8 %i.ht, -1
  br i1 %i.hu, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hv = load i64, ptr %i.bn, align 8, !tbaa !338 ; 2 uses
  %i.hw = and i64 %i.hv, 255                      ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.hx, align 1
  %i.hy = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i55 = shl nsw i64 -1, %i.hw
  %i.hz = xor i64 %notmask.i.i.i.i.i55, -1
  %i.ia = lshr i64 %i.hz, 12
  %i.ib = add nuw nsw i64 %i.ia, 1
  %i.ic = icmp ult i64 %i.hv, 256
  br i1 %i.ic, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i64 %i.hw, ptr %i.bn, align 8, !tbaa !338
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.hx, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.av, %bb.au
  %.pre-phi21.i.i.i.i = phi i64 [ %.pre20.i.i.i.i, %bb.av ], [ %i.hy, %bb.au ]
  %i.id = icmp eq i64 %i.hw, 0
  %i.ie = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.ie
  %.neg18.i.i.i.i = shl i64 -64, %i.hw
  %.0.i.neg.i.i.i.i = select i1 %i.id, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bm, align 8, !tbaa !580
  store i64 0, ptr %i.bn, align 8, !tbaa !338
  %i.if = and i64 %.0.i.neg.i.i.i.i, -8
  %i.ig = mul nuw nsw i64 %i.hy, 24
  %i.ih = mul i64 %i.ig, %i.ib
  %i.ii = sub i64 %i.ih, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.ii) #30
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
end_hunk_19
begin_hunk_20_@_ZZNK8facebook5velox9functions12_GLOBAL__N_123ArrayDuplicatesFunctionINS0_9TimestampEE9applyFlatERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERNS0_4exec7EvalCtxEENKUliE_clEi:bb.a
  %i.cb = sext i32 %i.ca to i64
  %.idx = shl nsw i64 %i.cb, 2                    ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %.idx ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1795, !nonnull !132, !align !171 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bx, %i.ca
  br i1 %.not.i.i, label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessINS2_9TimestampEEEEvT_S8_T0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE5clearEv.exit
  %gepdiff = sub nsw i64 %.idx, %.idx75           ; 2 uses
  %i.cf = ashr exact i64 %gepdiff, 2
  %i.cg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = shl nuw nsw i64 %i.cg, 1
  %i.ci = xor i64 %i.ch, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_T0_T1_(ptr noundef %i.bz, ptr noundef %i.cc, i64 noundef %i.ci, ptr nonnull %i.ce)
  %i.cj = icmp sgt i64 %gepdiff, 64
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_T0_(ptr noundef %i.bz, ptr noundef nonnull %i.ck, ptr nonnull %i.ce)
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_T0_(ptr noundef nonnull %i.ck, ptr noundef %i.cc, ptr nonnull %i.ce)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessINS2_9TimestampEEEEvT_S8_T0_.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN8facebook5velox9functions3lib23Index2ValueNullableLessINS5_9TimestampEEEEEEvT_SC_T0_(ptr noundef %i.bz, ptr noundef %i.cc, ptr nonnull %i.ce)
  br label %_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessINS2_9TimestampEEEEvT_S8_T0_.exit

_ZSt4sortIPiN8facebook5velox9functions3lib23Index2ValueNullableLessINS2_9TimestampEEEEvT_S8_T0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE5clearEv.exit, %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 7 uses
  %.01780 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.z ] ; 2 uses
  %i.cl = load ptr, ptr %i.u, align 8, !tbaa !1795, !nonnull !132, !align !171
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !345 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !377 ; 4 uses
  %.not.i25 = icmp eq ptr %i.cp, null
  br i1 %.not.i25, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 58
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !378, !range !131, !noundef !132
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 57
  %i.cu = load i8, ptr %i.ct, align 1, !range !131
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.cv
  br i1 %or.cond.i, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.cw = lshr i64 %indvars.iv, 6
  %i.cx = and i64 %i.cw, 67108863
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !155
  %i.da = and i64 %indvars.iv, 63
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.cz, %i.db
  %.not.i.i26 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i26, label %bb.m, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !379, !range !131, !noundef !132
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split43

.split43:                                         ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !380
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !107
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !155
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dn
  %.not.i7.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i7.i, label %bb.m, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.l
  %i.dr = load i64, ptr %i.cp, align 8, !tbaa !155
  %i.ds = and i64 %i.dr, 1
  %.not.i6.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i6.i, label %bb.m, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.m:                                             ; preds = %.split43, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dt = add nsw i32 %.01780, 1                  ; 2 uses
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !1794, !nonnull !132, !align !171
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !297
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !1790, !nonnull !132, !align !172 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !107
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = trunc nsw i64 %indvars.iv to i32
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !107
  %i.ec = load i32, ptr %i.dx, align 4, !tbaa !107
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.dx, align 4, !tbaa !107
  br label %bb.z

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.j, %.split43, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ee = load ptr, ptr %i.cm, align 8, !tbaa !345 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !381
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 58
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !378, !range !131, !noundef !132
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.ej, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 59
  %i.em = load i8, ptr %i.el, align 1, !tbaa !379, !range !131, !noundef !132
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !382
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit

bb.q:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !380
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv
  %i.et = load i32, ptr %i.es, align 4, !tbaa !107
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %bb.p, %bb.q
  %.0.i.i = phi i32 [ %i.et, %bb.q ], [ %i.ep, %bb.p ], [ %i.ek, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.eu = sext i32 %.0.i.i to i64
  %i.ev = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eu ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ev, align 8, !tbaa !155 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !155 ; 3 uses
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.w, align 8
  %i.ew = load ptr, ptr %i.x, align 8, !tbaa !1792, !nonnull !132, !align !171 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !338 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, 256
  %.pre = xor i64 %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i
  %.pre86 = mul i64 %.pre, -7070675565921424023   ; 2 uses
  %.pre88 = lshr i64 %.pre86, 47
  %.pre90 = xor i64 %.sroa.0.0.copyload.i, %.pre88
  %.pre92 = xor i64 %.pre90, %.pre86
  %.pre94 = mul i64 %.pre92, -7070675565921424023 ; 2 uses
  %.pre96 = lshr i64 %.pre94, 47
  %.pre98 = xor i64 %.pre96, %.pre94
  %.pre100 = mul i64 %.pre98, -7070675565921424023 ; 2 uses
  %.pre102 = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.pre100) ; 2 uses
  %.pre104 = lshr i64 %.pre102, 24
  %.pre106 = or i64 %.pre104, 128                 ; 3 uses
  %.pre108 = add i64 %.pre102, %.pre100           ; 2 uses
  br i1 %i.ez, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit
  %i.fa = shl nuw nsw i64 %.pre106, 1
  %i.fb = or disjoint i64 %i.fa, 1
  %i.fc = trunc nuw i64 %.pre106 to i8
  %i.fd = insertelement <16 x i8> poison, i8 %i.fc, i64 0
  %i.fe = shufflevector <16 x i8> %i.fd, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ff = and i64 %i.ey, 255                      ; 2 uses
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !580
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.v
  %.022.i79 = phi i64 [ %i.fg, %bb.r ], [ %i.gj, %bb.v ]
  %.024.i78 = phi i64 [ %.pre108, %bb.r ], [ %i.gk, %bb.v ] ; 2 uses
  %i.fj = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i78, i64 range(i64 0, 256) %i.ff)
  %i.fk = getelementptr inbounds nuw [64 x i8], ptr %i.fi, i64 %i.fj ; 3 uses
  %i.fl = load <16 x i8>, ptr %i.fk, align 16     ; 2 uses
  %i.fm = icmp eq <16 x i8> %i.fl, %i.fe
  %i.fn = bitcast <16 x i1> %i.fm to i16
  %i.fo = and i16 %i.fn, 4095
  %i.fp = zext nneg i16 %i.fo to i32
  %i.fq = icmp ne ptr %i.fk, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fs = extractelement <16 x i8> %i.fl, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.t, %bb.s
  %.sroa.038.0 = phi i32 [ %i.fp, %bb.s ], [ %i.fv, %bb.t ] ; 4 uses
  %.not = icmp eq i32 %.sroa.038.0, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i
  %i.ft = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.038.0, i1 true)
  %i.fu = add nuw nsw i32 %.sroa.038.0, 4095
  %i.fv = and i32 %i.fu, %.sroa.038.0
  %i.fw = zext nneg i32 %i.ft to i64
  call void @llvm.assume(i1 %i.fq)
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fw
  %i.fy = load ptr, ptr %i.ew, align 8, !tbaa !578
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !107
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.fy, i64 %i.ga ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !1796
  %i.gd = icmp eq i64 %.sroa.0.0.copyload.i, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = icmp eq i64 %.sroa.2.0.copyload.i, %i.gf
  %i.gh = select i1 %i.gd, i1 %i.gg, i1 false
  br i1 %i.gh, label %bb.w, label %.critedge.i, !prof !119, !llvm.loop !64

bb.u:                                             ; preds = %.critedge.i
  %i.gi = icmp eq i8 %i.fs, 0
  br i1 %i.gi, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.v, !prof !119

bb.v:                                             ; preds = %bb.u
  %i.gj = add i64 %.022.i79, -1                   ; 2 uses
  %i.gk = add i64 %i.fb, %.024.i78
  %.not.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.s, !llvm.loop !65

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %bb.u, %bb.v, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1797
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1797
  store ptr %5, ptr %3, align 8, !tbaa !583, !alias.scope !1798, !noalias !1797
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1797
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESK_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.668") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 %.pre108, i64 %.pre106, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !1797
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1797
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1797
  %i.gl = load ptr, ptr %2, align 8, !tbaa !499, !noalias !1797, !nonnull !132, !noundef !132
  %i.gm = load ptr, ptr %i.ew, align 8, !tbaa !578, !noalias !1797, !nonnull !132, !noundef !132
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !107, !noalias !1797
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %i.go
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1797
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i8 1, ptr %i.gq, align 1, !tbaa !117
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !585, !range !131, !noundef !132
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.gr, align 8, !tbaa !585
  %i.gu = load ptr, ptr %i.v, align 8, !tbaa !1794, !nonnull !132, !align !171
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !297
  %i.gw = load ptr, ptr %i.l, align 8, !tbaa !1790, !nonnull !132, !align !172 ; 3 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !107
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gy
  store i32 %i.ek, ptr %i.gz, align 4, !tbaa !107
  %i.ha = load i32, ptr %i.gw, align 4, !tbaa !107
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gw, align 4, !tbaa !107
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.n, %bb.m
  %.1 = phi i32 [ 2, %bb.n ], [ %i.dt, %bb.m ], [ %.01780, %bb.y ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.hc, label %bb.j, label %._crit_edge, !llvm.loop !1786
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESK_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.668") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread66_crit_edge, label %bb.b

..thread66_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !580
  %.pre85 = shl nuw i64 1, %i.b
  br label %.thread66

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !580  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i77 = phi i64 [ %i.j, %bb.b ], [ %i.am, %bb.f ]
  %.024.i76 = phi i64 [ %2, %bb.b ], [ %i.an, %bb.f ] ; 2 uses
  %i.m = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.i)
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 4095
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.v = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.w = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.x = add nuw nsw i32 %.sroa.042.0, 4095
  %i.y = and i32 %i.x, %.sroa.042.0
  %i.z = zext nneg i32 %i.w to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %1, align 8, !tbaa !578
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !107
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load <2 x i64>, ptr %4, align 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8
  %i.ah = icmp eq <2 x i64> %i.af, %i.ag          ; 2 uses
  %i.ai = extractelement <2 x i1> %i.ah, i64 0
  %i.aj = extractelement <2 x i1> %i.ah, i64 1
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.g, label %.critedge.i, !prof !119, !llvm.loop !64

bb.e:                                             ; preds = %.critedge.i
  %i.al = icmp eq i8 %i.v, 0
  br i1 %i.al, label %.thread66, label %bb.f, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.am = add i64 %.022.i77, -1                   ; 2 uses
  %i.an = add i64 %i.e, %.024.i76
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !65

bb.g:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.o

.thread66:                                        ; preds = %bb.f, %bb.e, %..thread66_crit_edge
  %.pre-phi86 = phi i64 [ %.pre85, %..thread66_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread66_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.ap = phi ptr [ %.pre, %..thread66_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %.0.copyload.i.i = load i16, ptr %i.aq, align 1
  %i.ar = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.as = add i64 %.pre-phi86, -1
  %i.at = lshr i64 %i.as, 12
  %i.au = add nuw nsw i64 %i.at, 1
  %i.av = mul i64 %i.au, %i.ar                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.av
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi86, i64 noundef %i.ar, i64 noundef %i.av)
  %.pre82 = load ptr, ptr %i.aw, align 8, !tbaa !580
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !338
  %.pre87 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi88 = phi i64 [ %.pre-phi, %.thread66 ], [ %.pre87, %bb.h ] ; 2 uses
  %i.ax = phi ptr [ %i.ap, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.ay = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load <16 x i8>, ptr %i.az, align 16, !tbaa !98
  %i.bb = icmp slt <16 x i8> %i.ba, zeroinitializer
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = and i16 %i.bc, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bd, 4095
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.be = shl i64 %3, 1
  %i.bf = or disjoint i64 %i.be, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bg = phi i64 [ %i.ay, %bb.i ], [ %i.bm, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bl, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !504 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bj, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = add i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !504
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bl = add i64 %i.bf, %.030                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bl, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %i.bm ; 3 uses
  %i.bo = load <16 x i8>, ptr %i.bn, align 16     ; 2 uses
  %i.bp = icmp slt <16 x i8> %i.bo, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %i.br = and i16 %i.bq, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.br, 4095
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !1799

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bs = extractelement <16 x i8> %i.bo, i64 14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  %i.bu = add i8 %i.bs, 16
  store i8 %i.bu, ptr %i.bt, align 2, !tbaa !505
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.bd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.br, %bb.l ]
  %.1 = phi ptr [ %i.az, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bn, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 4095
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64              ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !98
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #35
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.ca = trunc i64 %3 to i8
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !98
  %i.cb = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bw ; 2 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !338
  %i.cf = lshr i64 %i.ce, 8                       ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  store i32 %i.cg, ptr %i.cc, align 4, !tbaa !107
  %i.ch = load ptr, ptr %1, align 8, !tbaa !578, !nonnull !132, !noundef !132
  %i.ci = and i64 %i.cf, 4294967295
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %6, align 8, !tbaa !583
  %i.cl = inttoptr i64 %i.ck to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !1800
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i8 0, ptr %i.cm, align 8, !tbaa !585
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %i.cp = add i64 %i.co, 256
  %i.cq = and i64 %i.cn, 255
  %i.cr = or disjoint i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !338
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink101 = phi ptr [ %i.ao, %bb.g ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa99.sink = phi i64 [ %i.z, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink101, ptr %0, align 8, !tbaa !297
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa99.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !155
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cs, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEbvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #16
  unreachable
end_hunk_20
