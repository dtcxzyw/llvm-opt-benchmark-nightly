Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/BigintEnumRegistration?download=true
inline.NumInlined: 5808
inline.NumDeleted: 1760
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator6castToERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSC_IS3_E:bb.a
bb.f:                                             ; preds = %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i
  %i.ag = tail call ptr @__dynamic_cast(ptr nonnull %i.ae, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox14BigintEnumTypeE, i64 0) #37, !noalias !681 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.not.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ag, ptr %30, align 8, !tbaa !157, !alias.scope !681
  %i.ah = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85, !noalias !681 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !85, !alias.scope !681
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69, !noalias !681
  %.not.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !86, !noalias !681
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !86, !noalias !681
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !681 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i

_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i: ; preds = %bb.f, %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false), !alias.scope !681
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i

_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i, %bb.j, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  %i.ap = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %1, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIaEE, i64 0) #37
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  store ptr %i.h, ptr %27, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %30, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 37
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !161, !range !77, !noundef !78
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.k

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i
  %.0.in.pre.i.i.i = load i8, ptr %i.aq, align 4, !tbaa !162, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.k:                                             ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !171
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !172 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !173
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %3, align 8, !tbaa !174   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.ay, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bd = and i32 %i.ay, 2147483584               ; 3 uses
  %i.be = zext nneg i32 %i.bd to i64
  %.not37.i.i.not.i.i.i481.not = icmp eq i32 %i.bd, 0
  br i1 %.not37.i.i.not.i.i.i481.not, label %.critedge.i.i.i.i.i, label %.lr.ph483

bb.o:                                             ; preds = %.lr.ph483
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i482, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.be
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph483, label %.critedge.i.i.i.i.i, !llvm.loop !2

.lr.ph483:                                        ; preds = %bb.n, %bb.o
  %indvars.iv.i.i.i482 = phi i64 [ %indvars.iv.next.i.i.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.bf = lshr exact i64 %indvars.iv.i.i.i482, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !176
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !2

.critedge.i.i.i.i.i:                              ; preds = %bb.o, %bb.n
  %.not38.i.i.i.i.i = icmp eq i32 %i.ay, %i.bd
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i
  %i.bj = lshr i32 %i.ay, 6
  %i.bk = and i32 %i.ay, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.bl
  %i.bm = zext nneg i32 %i.bj to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !176
  %.demorgan.i.i.i = or i64 %i.bo, %notmask.i40.i.i.i.i.i
  %i.bp = icmp eq i64 %.demorgan.i.i.i, -1
  %i.bq = zext i1 %i.bp to i16
  %i.br = or disjoint i16 %i.bq, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph483, %bb.p, %.critedge.i.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.l ], [ 256, %bb.k ], [ 257, %bb.m ], [ 257, %.critedge.i.i.i.i.i ], [ %i.br, %bb.p ], [ 256, %.lr.ph483 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.aq, align 4
  %i.bs = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.bs, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  br i1 %.0.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !172 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !171 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %i.bu
  br i1 %i.bx, label %.lr.ph.i.i, label %.loopexit1.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.noexc.i
  %.06.i.i = phi i32 [ %i.by, %.noexc.i ], [ %i.bw, %bb.q ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %27, i32 noundef %.06.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.by = add i32 %.06.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.by, %i.bu
  br i1 %exitcond.not.i.i, label %.loopexit1.i, label %.lr.ph.i.i, !llvm.loop !635

bb.r:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.bz = load ptr, ptr %3, align 8, !tbaa !174   ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !171 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !172 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %27, i64 32, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %27, i64 32, i1 false)
  store i8 1, ptr %25, align 8
  %.sroa.25.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.bz, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8
  store i8 1, ptr %26, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.bz, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i.i.i11.i = icmp slt i32 %i.cb, %i.cd
  br i1 %.not.i.i.i.i11.i, label %bb.s, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.ce = add i32 %i.cb, 63                       ; 2 uses
  %i.cf = srem i32 %i.ce, 64
  %i.cg = sub nsw i32 %i.ce, %i.cf                ; 6 uses
  %i.ch = and i32 %i.cd, -64                      ; 6 uses
  %i.ci = icmp slt i32 %i.ch, %i.cg
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = ashr i32 %i.cd, 6
  %i.ck = and i32 %i.cd, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.cl
  %i.cm = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.cn = sub nsw i32 %i.cg, %i.cb                ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.co
  %i.cp = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.cq = sub nsw i32 64, %i.cn
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl i64 %i.cp, %i.cr
  %i.ct = and i64 %i.cs, %i.cm
  %i.cu = sext i32 %i.cj to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !176
  %i.cx = and i64 %i.ct, %i.cw                    ; 2 uses
  %.not.i.i.i.i.i12.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i12.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.t, %.noexc13.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.dc, %.noexc13.i ], [ %i.cx, %bb.t ] ; 3 uses
  %i.cy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = or disjoint i32 %i.ch, %i.cz
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.da)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.i

.noexc13.i:                                       ; preds = %.preheader.i.i.i.i.i.i
  %i.db = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.dc = and i64 %i.db, %.011.i.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !636

bb.u:                                             ; preds = %bb.s
  %.not32.i.i.i.i.i = icmp eq i32 %i.cb, %i.cg
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = sdiv i32 %i.cb, 64                      ; 2 uses
  %i.de = sub nsw i32 %i.cg, %i.cb                ; 2 uses
  %i.df = zext nneg i32 %i.de to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.df
  %i.dg = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.dh = sub nsw i32 64, %i.de
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl i64 %i.dg, %i.di
  %i.dk = sext i32 %i.dd to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !176
  %i.dn = and i64 %i.dm, %i.dj                    ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.v
  %i.do = shl nsw i32 %i.dd, 6
  br label %bb.w

bb.w:                                             ; preds = %.noexc14.i, %.preheader.i37.i.i.i.i.i
  %.011.i38.i.i.i.i.i = phi i64 [ %i.dn, %.preheader.i37.i.i.i.i.i ], [ %i.dt, %.noexc14.i ] ; 3 uses
  %i.dp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.dr)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc14.i:                                       ; preds = %bb.w
  %i.ds = add i64 %.011.i38.i.i.i.i.i, -1
  %i.dt = and i64 %i.ds, %.011.i38.i.i.i.i.i      ; 2 uses
  %.not10.i39.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not10.i39.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.w, !llvm.loop !636

_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i: ; preds = %.noexc14.i, %bb.v, %bb.u
  %i.du = add nsw i32 %i.cg, 64                   ; 2 uses
  %.not3350.i.i.i.i.i = icmp sgt i32 %i.du, %i.ch
  br i1 %.not3350.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.cd, %i.ch
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %bb.aa

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  %i.dv = phi i32 [ %i.en, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.du, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i.i = phi i32 [ %i.dv, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.cg, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %i.dw = sdiv i32 %.051.i.i.i.i.i, 64            ; 3 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !176 ; 2 uses
  switch i64 %i.dz, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.x
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.ea = shl nsw i32 %i.dw, 6
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eb = shl nsw i32 %i.dw, 6                    ; 2 uses
  %i.ec = add i32 %i.eb, 64
  %i.ed = sext i32 %i.ec to i64
  %.0.off.i.i.i.i.i = add i32 %.051.i.i.i.i.i, 127
  %.not22.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph21.i.i.i.i.i.i

.lr.ph21.i.i.i.i.i.i:                             ; preds = %bb.x
  %i.ee = sext i32 %i.eb to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc15.i, %.lr.ph21.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph21.i.i.i.i.i.i ], [ %i.eg, %.noexc15.i ] ; 2 uses
  %i.ef = trunc i64 %.020.i.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i, i32 noundef %i.ef)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc15.i:                                       ; preds = %bb.y
  %i.eg = add nuw i64 %.020.i.i.i.i.i.i, 1        ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ed
  br i1 %i.eh, label %bb.y, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !637

bb.z:                                             ; preds = %.noexc16.i, %.lr.ph.i.i.i.i.i.i
  %.01519.i.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i ], [ %i.em, %.noexc16.i ] ; 3 uses
  %i.ei = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i.i, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = or disjoint i32 %i.ea, %i.ej
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i, i32 noundef %i.ek)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc16.i:                                       ; preds = %bb.z
  %i.el = add i64 %.01519.i.i.i.i.i.i, -1
  %i.em = and i64 %i.el, %.01519.i.i.i.i.i.i      ; 2 uses
  %.not.i41.i.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.i41.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.z, !llvm.loop !638

_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.noexc15.i, %.noexc16.i, %bb.x, %.lr.ph.i.i.i.i.i
  %i.en = add nsw i32 %i.dv, 64                   ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.en, %i.ch
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !639

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.eo = ashr i32 %i.cd, 6
  %i.ep = and i32 %i.cd, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i42.i.i.i.i.i = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i42.i.i.i.i.i, -1
  %i.es = sext i32 %i.eo to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !176
  %i.ev = and i64 %i.eu, %i.er                    ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i

.preheader.i44.i.i.i.i.i:                         ; preds = %bb.aa, %.noexc17.i
  %.011.i45.i.i.i.i.i = phi i64 [ %i.fa, %.noexc17.i ], [ %i.ev, %bb.aa ] ; 3 uses
  %i.ew = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = or disjoint i32 %i.ch, %i.ex
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.ey)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc17.i:                                       ; preds = %.preheader.i44.i.i.i.i.i
  %i.ez = add nsw i64 %.011.i45.i.i.i.i.i, -1
  %i.fa = and i64 %i.ez, %.011.i45.i.i.i.i.i      ; 2 uses
  %.not10.i46.i.i.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not10.i46.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i, !llvm.loop !636

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i: ; preds = %.noexc17.i, %.noexc13.i, %bb.aa, %._crit_edge.i.i.i.i.i, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %.loopexit1.i

.loopexit1.i:                                     ; preds = %.noexc.i, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  %i.fb = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit1.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.fd, align 8, !tbaa !81
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !82
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !71
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #37, !inline_history !640
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !71
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #37, !inline_history !640
  br label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i18.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i18.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i = phi i32 [ %i.fg, %bb.ae ], [ %i.fq, %bb.af ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fr, label %bb.ag, label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit, !prof !87

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #37
  br label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.preheader.i.i.i.i.i.i
  %lpad.loopexit2.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.preheader.i44.i.i.i.i.i
  %lpad.loopexit5.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.z
  %lpad.loopexit8.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.y
  %lpad.loopexit11.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit2.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit5.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit8.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit11.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @_ZNSt12__shared_ptrIKN8facebook5velox14BigintEnumTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %common.resume

_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIaEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit: ; preds = %.loopexit1.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %bb.eg

bb.ah:                                            ; preds = %bb.a
  %i.fs = load ptr, ptr %2, align 8, !tbaa !127   ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !149
  tail call void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.fv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.fw = load ptr, ptr %5, align 8, !tbaa !152   ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !71 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.fx, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIlEE, i64 16)
  br i1 %.not.i.i30, label %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i37, label %bb.ai, !prof !73

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !89 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !69
  %i.gd = icmp eq i8 %i.gc, 42
  %.idx.i.i.i31 = zext i1 %i.gd to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.idx.i.i.i31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37, !noalias !682
  store ptr @_ZTSN8facebook5velox10FlatVectorIlEE, ptr %22, align 16, !tbaa !69, !alias.scope !683, !noalias !682
  %i.gf = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %i.ge, ptr %i.gf, align 16, !tbaa !69, !alias.scope !683, !noalias !682
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull @.str.16, i64 39, i64 204, ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37, !noalias !682
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_vE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr nonnull @.str.16) #41
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = load ptr, ptr %23, align 8, !tbaa !72   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32: ; preds = %bb.ak
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !69
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %common.resume

_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i37: ; preds = %bb.ah
  store ptr %i.fw, ptr %i.e, align 8, !tbaa !154
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.fw, ptr noundef nonnull align 8 dereferenceable(38) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.gm = load ptr, ptr %4, align 8, !tbaa !95, !noalias !684 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i123, label %bb.al

bb.al:                                            ; preds = %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i37
  %i.go = tail call ptr @__dynamic_cast(ptr nonnull %i.gm, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox14BigintEnumTypeE, i64 0) #37, !noalias !684 ; 2 uses
  %.not.not.i.i38 = icmp eq ptr %i.go, null
  br i1 %.not.not.i.i38, label %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i123, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.go, ptr %24, align 8, !tbaa !157, !alias.scope !684
  %i.gp = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !85, !noalias !684 ; 3 uses
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !85, !alias.scope !684
  %.not.i.i.i.i.i39 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i39, label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i41, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 3 uses
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69, !noalias !684
  %.not.i.i.i.i.i.i40 = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i40, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !86, !noalias !684
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !86, !noalias !684
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i41

bb.ap:                                            ; preds = %bb.an
  %i.gw = atomicrmw volatile add ptr %i.gs, i32 1 acq_rel, align 4, !noalias !684 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i41

_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i123: ; preds = %bb.al, %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false), !alias.scope !684
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i41

_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i41: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i123, %bb.ap, %bb.ao, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.gx = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %1, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIsEE, i64 0) #37
  store ptr %i.gx, ptr %i.f, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %i.f, ptr %21, align 8
  %.sroa.2.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %24, ptr %.sroa.2.0..sroa_idx.i42, align 8
  %.sroa.3.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i43, align 8
  %.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx.i44, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 37
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !161, !range !77, !noundef !78
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i121, label %bb.aq

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i121: ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i41
  %.0.in.pre.i.i.i122 = load i8, ptr %i.gy, align 4, !tbaa !162, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i47

bb.aq:                                            ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i41
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !171
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ar, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45

bb.ar:                                            ; preds = %bb.aq
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !172 ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !173
  %i.hj = icmp eq i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.as, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45

bb.as:                                            ; preds = %bb.ar
  %i.hk = load ptr, ptr %3, align 8, !tbaa !174   ; 2 uses
  %.not.i.i.i.i113 = icmp sgt i32 %i.hg, 0
  br i1 %.not.i.i.i.i113, label %bb.at, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45

bb.at:                                            ; preds = %bb.as
  %i.hl = and i32 %i.hg, 2147483584               ; 3 uses
  %i.hm = zext nneg i32 %i.hl to i64
  %.not37.i.i.not.i.i.i115478.not = icmp eq i32 %i.hl, 0
  br i1 %.not37.i.i.not.i.i.i115478.not, label %.critedge.i.i.i.i.i116, label %.lr.ph480

bb.au:                                            ; preds = %.lr.ph480
  %indvars.iv.next.i.i.i120 = add nuw nsw i64 %indvars.iv.i.i.i114479, 64 ; 2 uses
  %.not37.i.i.not.i.i.i115 = icmp samesign ult i64 %indvars.iv.next.i.i.i120, %i.hm
  br i1 %.not37.i.i.not.i.i.i115, label %.lr.ph480, label %.critedge.i.i.i.i.i116, !llvm.loop !2

.lr.ph480:                                        ; preds = %bb.at, %bb.au
  %indvars.iv.i.i.i114479 = phi i64 [ %indvars.iv.next.i.i.i120, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.hn = lshr exact i64 %indvars.iv.i.i.i114479, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !176
  %i.hq = icmp eq i64 %i.hp, -1
  br i1 %i.hq, label %bb.au, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45, !llvm.loop !2

.critedge.i.i.i.i.i116:                           ; preds = %bb.au, %bb.at
  %.not38.i.i.i.i.i117 = icmp eq i32 %i.hg, %i.hl
  br i1 %.not38.i.i.i.i.i117, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45, label %bb.av

bb.av:                                            ; preds = %.critedge.i.i.i.i.i116
  %i.hr = lshr i32 %i.hg, 6
  %i.hs = and i32 %i.hg, 63
  %i.ht = zext nneg i32 %i.hs to i64
  %notmask.i40.i.i.i.i.i118 = shl nsw i64 -1, %i.ht
  %i.hu = zext nneg i32 %i.hr to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hu
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !176
  %.demorgan.i.i.i119 = or i64 %i.hw, %notmask.i40.i.i.i.i.i118
  %i.hx = icmp eq i64 %.demorgan.i.i.i119, -1
  %i.hy = zext i1 %i.hx to i16
  %i.hz = or disjoint i16 %i.hy, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45: ; preds = %.lr.ph480, %bb.av, %.critedge.i.i.i.i.i116, %bb.as, %bb.ar, %bb.aq
  %.sroa.0.0.insert.ext.i.i.i46 = phi i16 [ 256, %bb.ar ], [ 256, %bb.aq ], [ 257, %bb.as ], [ 257, %.critedge.i.i.i.i.i116 ], [ %i.hz, %bb.av ], [ 256, %.lr.ph480 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i46, ptr %i.gy, align 4
  %i.ia = trunc i16 %.sroa.0.0.insert.ext.i.i.i46 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i47

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i47: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i121
  %.0.in.i.i.i48 = phi i8 [ %.0.in.pre.i.i.i122, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i121 ], [ %i.ia, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i45 ]
  %.0.i.i.i49 = trunc nuw i8 %.0.in.i.i.i48 to i1
  br i1 %.0.i.i.i49, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i47
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !172 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !171 ; 2 uses
  %i.if = icmp slt i32 %i.ie, %i.ic
  br i1 %i.if, label %.lr.ph.i.i107, label %.loopexit1.i55

.lr.ph.i.i107:                                    ; preds = %bb.aw, %.noexc.i111
  %.06.i.i108 = phi i32 [ %i.ig, %.noexc.i111 ], [ %i.ie, %bb.aw ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %21, i32 noundef %.06.i.i108)
          to label %.noexc.i111 unwind label %.loopexit.i109

.noexc.i111:                                      ; preds = %.lr.ph.i.i107
  %i.ig = add i32 %.06.i.i108, 1                  ; 2 uses
  %exitcond.not.i.i112 = icmp eq i32 %i.ig, %i.ic
  br i1 %exitcond.not.i.i112, label %.loopexit1.i55, label %.lr.ph.i.i107, !llvm.loop !647

bb.ax:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i47
  %i.ih = load ptr, ptr %3, align 8, !tbaa !174   ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !171 ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !172 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i50 = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i50, ptr noundef nonnull readonly align 8 dereferenceable(32) %21, i64 32, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i.i51 = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i51, ptr noundef nonnull readonly align 8 dereferenceable(32) %21, i64 32, i1 false)
  store i8 1, ptr %19, align 8
  %.sroa.25.0..sroa_idx.i.i.i.i52 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ih, ptr %.sroa.25.0..sroa_idx.i.i.i.i52, align 8
  store i8 1, ptr %20, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i53 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.ih, ptr %.sroa.28.0..sroa_idx.i.i.i.i53, align 8
  %.not.i.i.i.i11.i54 = icmp slt i32 %i.ij, %i.il
  br i1 %.not.i.i.i.i11.i54, label %bb.ay, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.im = add i32 %i.ij, 63                       ; 2 uses
  %i.in = srem i32 %i.im, 64
  %i.io = sub nsw i32 %i.im, %i.in                ; 6 uses
  %i.ip = and i32 %i.il, -64                      ; 6 uses
  %i.iq = icmp slt i32 %i.ip, %i.io
  br i1 %i.iq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ir = ashr i32 %i.il, 6
  %i.is = and i32 %i.il, 63
  %i.it = zext nneg i32 %i.is to i64
  %notmask.i.i.i.i.i.i98 = shl nsw i64 -1, %i.it
  %i.iu = xor i64 %notmask.i.i.i.i.i.i98, -1
  %i.iv = sub nsw i32 %i.io, %i.ij                ; 2 uses
  %i.iw = zext nneg i32 %i.iv to i64
  %notmask.i.i.i.i.i.i.i99 = shl nsw i64 -1, %i.iw
  %i.ix = xor i64 %notmask.i.i.i.i.i.i.i99, -1
  %i.iy = sub nsw i32 64, %i.iv
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl i64 %i.ix, %i.iz
  %i.jb = and i64 %i.ja, %i.iu
  %i.jc = sext i32 %i.ir to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !176
  %i.jf = and i64 %i.jb, %i.je                    ; 2 uses
  %.not.i.i.i.i.i12.i100 = icmp eq i64 %i.jf, 0
  br i1 %.not.i.i.i.i.i12.i100, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i101

.preheader.i.i.i.i.i.i101:                        ; preds = %bb.az, %.noexc13.i105
  %.011.i.i.i.i.i.i102 = phi i64 [ %i.jk, %.noexc13.i105 ], [ %i.jf, %bb.az ] ; 3 uses
  %i.jg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i102, i1 true)
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = or disjoint i32 %i.ip, %i.jh
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i50, i32 noundef %i.ji)
          to label %.noexc13.i105 unwind label %.loopexit.split-lp.loopexit.i103

.noexc13.i105:                                    ; preds = %.preheader.i.i.i.i.i.i101
  %i.jj = add nsw i64 %.011.i.i.i.i.i.i102, -1
  %i.jk = and i64 %i.jj, %.011.i.i.i.i.i.i102     ; 2 uses
  %.not10.i.i.i.i.i.i106 = icmp eq i64 %i.jk, 0
  br i1 %.not10.i.i.i.i.i.i106, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i101, !llvm.loop !648

bb.ba:                                            ; preds = %bb.ay
  %.not32.i.i.i.i.i60 = icmp eq i32 %i.ij, %i.io
  br i1 %.not32.i.i.i.i.i60, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jl = sdiv i32 %i.ij, 64                      ; 2 uses
  %i.jm = sub nsw i32 %i.io, %i.ij                ; 2 uses
  %i.jn = zext nneg i32 %i.jm to i64
  %notmask.i.i35.i.i.i.i.i61 = shl nsw i64 -1, %i.jn
  %i.jo = xor i64 %notmask.i.i35.i.i.i.i.i61, -1
  %i.jp = sub nsw i32 64, %i.jm
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl i64 %i.jo, %i.jq
  %i.js = sext i32 %i.jl to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.js
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !176
  %i.jv = and i64 %i.ju, %i.jr                    ; 2 uses
  %.not.i36.i.i.i.i.i62 = icmp eq i64 %i.jv, 0
  br i1 %.not.i36.i.i.i.i.i62, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i63

.preheader.i37.i.i.i.i.i63:                       ; preds = %bb.bb
  %i.jw = shl nsw i32 %i.jl, 6
  br label %bb.bc

bb.bc:                                            ; preds = %.noexc14.i69, %.preheader.i37.i.i.i.i.i63
  %.011.i38.i.i.i.i.i64 = phi i64 [ %i.jv, %.preheader.i37.i.i.i.i.i63 ], [ %i.kb, %.noexc14.i69 ] ; 3 uses
  %i.jx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i64, i1 true)
  %i.jy = trunc nuw nsw i64 %i.jx to i32
  %i.jz = or disjoint i32 %i.jw, %i.jy
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i50, i32 noundef %i.jz)
          to label %.noexc14.i69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i65

.noexc14.i69:                                     ; preds = %bb.bc
  %i.ka = add i64 %.011.i38.i.i.i.i.i64, -1
  %i.kb = and i64 %i.ka, %.011.i38.i.i.i.i.i64    ; 2 uses
  %.not10.i39.i.i.i.i.i70 = icmp eq i64 %i.kb, 0
  br i1 %.not10.i39.i.i.i.i.i70, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.bc, !llvm.loop !648

_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i: ; preds = %.noexc14.i69, %bb.bb, %bb.ba
  %i.kc = add nsw i32 %i.io, 64                   ; 2 uses
  %.not3350.i.i.i.i.i71 = icmp sgt i32 %i.kc, %i.ip
  br i1 %.not3350.i.i.i.i.i71, label %._crit_edge.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i72

._crit_edge.i.i.i.i.i75:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i
  %.not34.i.i.i.i.i76 = icmp eq i32 %i.il, %i.ip
  br i1 %.not34.i.i.i.i.i76, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %bb.bg

.lr.ph.i.i.i.i.i72:                               ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  %i.kd = phi i32 [ %i.kv, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.kc, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i.i73 = phi i32 [ %i.kd, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.io, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %i.ke = sdiv i32 %.051.i.i.i.i.i73, 64          ; 3 uses
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !176 ; 2 uses
  switch i64 %i.kh, label %.lr.ph.i.i.i.i.i.i92 [
    i64 -1, label %bb.bd
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i92:                             ; preds = %.lr.ph.i.i.i.i.i72
  %i.ki = shl nsw i32 %i.ke, 6
  br label %bb.bf

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i72
  %i.kj = shl nsw i32 %i.ke, 6                    ; 2 uses
  %i.kk = add i32 %i.kj, 64
  %i.kl = sext i32 %i.kk to i64
  %.0.off.i.i.i.i.i85 = add i32 %.051.i.i.i.i.i73, 127
  %.not22.i.i.i.i.i.i86 = icmp ult i32 %.0.off.i.i.i.i.i85, 64
  br i1 %.not22.i.i.i.i.i.i86, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph21.i.i.i.i.i.i87

.lr.ph21.i.i.i.i.i.i87:                           ; preds = %bb.bd
  %i.km = sext i32 %i.kj to i64
  br label %bb.be

bb.be:                                            ; preds = %.noexc15.i91, %.lr.ph21.i.i.i.i.i.i87
  %.020.i.i.i.i.i.i88 = phi i64 [ %i.km, %.lr.ph21.i.i.i.i.i.i87 ], [ %i.ko, %.noexc15.i91 ] ; 2 uses
  %i.kn = trunc i64 %.020.i.i.i.i.i.i88 to i32
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i51, i32 noundef %i.kn)
          to label %.noexc15.i91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i89

.noexc15.i91:                                     ; preds = %bb.be
  %i.ko = add nuw i64 %.020.i.i.i.i.i.i88, 1      ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.kl
  br i1 %i.kp, label %bb.be, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !649

bb.bf:                                            ; preds = %.noexc16.i96, %.lr.ph.i.i.i.i.i.i92
  %.01519.i.i.i.i.i.i93 = phi i64 [ %i.kh, %.lr.ph.i.i.i.i.i.i92 ], [ %i.ku, %.noexc16.i96 ] ; 3 uses
  %i.kq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i.i93, i1 true)
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = or disjoint i32 %i.ki, %i.kr
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i51, i32 noundef %i.ks)
          to label %.noexc16.i96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i94

.noexc16.i96:                                     ; preds = %bb.bf
  %i.kt = add i64 %.01519.i.i.i.i.i.i93, -1
  %i.ku = and i64 %i.kt, %.01519.i.i.i.i.i.i93    ; 2 uses
  %.not.i41.i.i.i.i.i97 = icmp eq i64 %i.ku, 0
  br i1 %.not.i41.i.i.i.i.i97, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.bf, !llvm.loop !650

_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.noexc15.i91, %.noexc16.i96, %bb.bd, %.lr.ph.i.i.i.i.i72
  %i.kv = add nsw i32 %i.kd, 64                   ; 2 uses
  %.not33.i.i.i.i.i74 = icmp sgt i32 %i.kv, %i.ip
  br i1 %.not33.i.i.i.i.i74, label %._crit_edge.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i72, !llvm.loop !651

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i.i75
  %i.kw = ashr i32 %i.il, 6
  %i.kx = and i32 %i.il, 63
  %i.ky = zext nneg i32 %i.kx to i64
  %notmask.i42.i.i.i.i.i77 = shl nsw i64 -1, %i.ky
  %i.kz = xor i64 %notmask.i42.i.i.i.i.i77, -1
  %i.la = sext i32 %i.kw to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.la
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !176
  %i.ld = and i64 %i.lc, %i.kz                    ; 2 uses
  %.not.i43.i.i.i.i.i78 = icmp eq i64 %i.ld, 0
  br i1 %.not.i43.i.i.i.i.i78, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i79

.preheader.i44.i.i.i.i.i79:                       ; preds = %bb.bg, %.noexc17.i83
  %.011.i45.i.i.i.i.i80 = phi i64 [ %i.li, %.noexc17.i83 ], [ %i.ld, %bb.bg ] ; 3 uses
  %i.le = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i80, i1 true)
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = or disjoint i32 %i.ip, %i.lf
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i50, i32 noundef %i.lg)
          to label %.noexc17.i83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i81

.noexc17.i83:                                     ; preds = %.preheader.i44.i.i.i.i.i79
  %i.lh = add nsw i64 %.011.i45.i.i.i.i.i80, -1
  %i.li = and i64 %i.lh, %.011.i45.i.i.i.i.i80    ; 2 uses
  %.not10.i46.i.i.i.i.i84 = icmp eq i64 %i.li, 0
  br i1 %.not10.i46.i.i.i.i.i84, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i79, !llvm.loop !648

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i: ; preds = %.noexc17.i83, %.noexc13.i105, %bb.bg, %._crit_edge.i.i.i.i.i75, %bb.az, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %.loopexit1.i55

.loopexit1.i55:                                   ; preds = %.noexc.i111, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  %i.lj = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i56 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i56, label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit, label %bb.bh

bb.bh:                                            ; preds = %.loopexit1.i55
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 4 uses
  %i.lm = load atomic i64, ptr %i.ll acquire, align 8 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 4294967297
  %i.lo = trunc i64 %i.lm to i32                  ; 2 uses
  br i1 %i.ln, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ll, align 8, !tbaa !81
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 0, ptr %i.lp, align 4, !tbaa !82
  %i.lq = load ptr, ptr %i.lk, align 8, !tbaa !71
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #37, !inline_history !652
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !71
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #37, !inline_history !652
  br label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit

bb.bj:                                            ; preds = %bb.bh
  %i.lw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i18.i57 = icmp eq i8 %i.lw, 0
  br i1 %.not.i.i.i18.i57, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lx = add nsw i32 %i.lo, -1
  store i32 %i.lx, ptr %i.ll, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58

bb.bl:                                            ; preds = %bb.bj
  %i.ly = atomicrmw volatile add ptr %i.ll, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i59 = phi i32 [ %i.lo, %bb.bk ], [ %i.ly, %bb.bl ]
  %i.lz = icmp eq i32 %.0.i.i.i.i.i59, 1
  br i1 %i.lz, label %bb.bm, label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit, !prof !87

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #37
  br label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit

.loopexit.i109:                                   ; preds = %.lr.ph.i.i107
  %lpad.loopexit.i110 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i67

.loopexit.split-lp.loopexit.i103:                 ; preds = %.preheader.i.i.i.i.i.i101
  %lpad.loopexit2.i104 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i67

.loopexit.split-lp.loopexit.split-lp.loopexit.i81: ; preds = %.preheader.i44.i.i.i.i.i79
  %lpad.loopexit5.i82 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i67

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i94: ; preds = %bb.bf
  %lpad.loopexit8.i95 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i67

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i89: ; preds = %bb.be
  %lpad.loopexit11.i90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i67

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i65: ; preds = %bb.bc
  %lpad.loopexit.split-lp.i66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i67

.loopexit.split-lp.i67:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i65, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i89, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i94, %.loopexit.split-lp.loopexit.split-lp.loopexit.i81, %.loopexit.split-lp.loopexit.i103, %.loopexit.i109
  %lpad.phi.i68 = phi { ptr, i32 } [ %lpad.loopexit.i110, %.loopexit.i109 ], [ %lpad.loopexit2.i104, %.loopexit.split-lp.loopexit.i103 ], [ %lpad.loopexit5.i82, %.loopexit.split-lp.loopexit.split-lp.loopexit.i81 ], [ %lpad.loopexit8.i95, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i94 ], [ %lpad.loopexit11.i90, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i89 ], [ %lpad.loopexit.split-lp.i66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @_ZNSt12__shared_ptrIKN8facebook5velox14BigintEnumTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %common.resume

_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIsEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit: ; preds = %.loopexit1.i55, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i58, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %bb.eg

bb.bn:                                            ; preds = %bb.a
  %i.ma = load ptr, ptr %2, align 8, !tbaa !127   ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !148
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 80
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !149
  tail call void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.mb, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.md)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.me = load ptr, ptr %5, align 8, !tbaa !152   ; 3 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !71 ; 2 uses
  %.not.i.i124 = icmp eq ptr %i.mf, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIlEE, i64 16)
  br i1 %.not.i.i124, label %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i131, label %bb.bo, !prof !73

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -8
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !89 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !69
  %i.ml = icmp eq i8 %i.mk, 42
  %.idx.i.i.i125 = zext i1 %i.ml to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.idx.i.i.i125
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37, !noalias !685
  store ptr @_ZTSN8facebook5velox10FlatVectorIlEE, ptr %16, align 16, !tbaa !69, !alias.scope !686, !noalias !685
  %i.mn = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.mm, ptr %i.mn, align 16, !tbaa !69, !alias.scope !686, !noalias !685
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.16, i64 39, i64 204, ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37, !noalias !685
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_vE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr nonnull @.str.16) #41
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = load ptr, ptr %17, align 8, !tbaa !72   ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126: ; preds = %bb.bq
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !69
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i127: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %common.resume

_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i131: ; preds = %bb.bn
  store ptr %i.me, ptr %i.c, align 8, !tbaa !154
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.me, ptr noundef nonnull align 8 dereferenceable(38) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.mu = load ptr, ptr %4, align 8, !tbaa !95, !noalias !687 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i217, label %bb.br

bb.br:                                            ; preds = %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i131
  %i.mw = tail call ptr @__dynamic_cast(ptr nonnull %i.mu, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox14BigintEnumTypeE, i64 0) #37, !noalias !687 ; 2 uses
  %.not.not.i.i132 = icmp eq ptr %i.mw, null
  br i1 %.not.not.i.i132, label %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i217, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store ptr %i.mw, ptr %18, align 8, !tbaa !157, !alias.scope !687
  %i.mx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !85, !noalias !687 ; 3 uses
  store ptr %i.mz, ptr %i.mx, align 8, !tbaa !85, !alias.scope !687
  %.not.i.i.i.i.i133 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i.i.i133, label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i135, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 3 uses
  %i.nb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69, !noalias !687
  %.not.i.i.i.i.i.i134 = icmp eq i8 %i.nb, 0
  br i1 %.not.i.i.i.i.i.i134, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nc = load i32, ptr %i.na, align 4, !tbaa !86, !noalias !687
  %i.nd = add nsw i32 %i.nc, 1
  store i32 %i.nd, ptr %i.na, align 4, !tbaa !86, !noalias !687
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i135

bb.bv:                                            ; preds = %bb.bt
  %i.ne = atomicrmw volatile add ptr %i.na, i32 1 acq_rel, align 4, !noalias !687 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i135

_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i217: ; preds = %bb.br, %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !alias.scope !687
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i135

_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i135: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i217, %bb.bv, %bb.bu, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.nf = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %1, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIiEE, i64 0) #37
  store ptr %i.nf, ptr %i.d, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %i.d, ptr %15, align 8
  %.sroa.2.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %18, ptr %.sroa.2.0..sroa_idx.i136, align 8
  %.sroa.3.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i137, align 8
  %.sroa.4.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i138, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 37
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !161, !range !77, !noundef !78
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i215, label %bb.bw

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i215: ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i135
  %.0.in.pre.i.i.i216 = load i8, ptr %i.ng, align 4, !tbaa !162, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i141

bb.bw:                                            ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i135
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !171
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.bx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139

bb.bx:                                            ; preds = %bb.bw
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !172 ; 6 uses
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !173
  %i.nr = icmp eq i32 %i.no, %i.nq
  br i1 %i.nr, label %bb.by, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139

bb.by:                                            ; preds = %bb.bx
  %i.ns = load ptr, ptr %3, align 8, !tbaa !174   ; 2 uses
  %.not.i.i.i.i207 = icmp sgt i32 %i.no, 0
  br i1 %.not.i.i.i.i207, label %bb.bz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139

bb.bz:                                            ; preds = %bb.by
  %i.nt = and i32 %i.no, 2147483584               ; 3 uses
  %i.nu = zext nneg i32 %i.nt to i64
  %.not37.i.i.not.i.i.i209475.not = icmp eq i32 %i.nt, 0
  br i1 %.not37.i.i.not.i.i.i209475.not, label %.critedge.i.i.i.i.i210, label %.lr.ph477

bb.ca:                                            ; preds = %.lr.ph477
  %indvars.iv.next.i.i.i214 = add nuw nsw i64 %indvars.iv.i.i.i208476, 64 ; 2 uses
  %.not37.i.i.not.i.i.i209 = icmp samesign ult i64 %indvars.iv.next.i.i.i214, %i.nu
  br i1 %.not37.i.i.not.i.i.i209, label %.lr.ph477, label %.critedge.i.i.i.i.i210, !llvm.loop !2

.lr.ph477:                                        ; preds = %bb.bz, %bb.ca
  %indvars.iv.i.i.i208476 = phi i64 [ %indvars.iv.next.i.i.i214, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.nv = lshr exact i64 %indvars.iv.i.i.i208476, 3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nv
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !176
  %i.ny = icmp eq i64 %i.nx, -1
  br i1 %i.ny, label %bb.ca, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139, !llvm.loop !2

.critedge.i.i.i.i.i210:                           ; preds = %bb.ca, %bb.bz
  %.not38.i.i.i.i.i211 = icmp eq i32 %i.no, %i.nt
  br i1 %.not38.i.i.i.i.i211, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139, label %bb.cb

bb.cb:                                            ; preds = %.critedge.i.i.i.i.i210
  %i.nz = lshr i32 %i.no, 6
  %i.oa = and i32 %i.no, 63
  %i.ob = zext nneg i32 %i.oa to i64
  %notmask.i40.i.i.i.i.i212 = shl nsw i64 -1, %i.ob
  %i.oc = zext nneg i32 %i.nz to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.oc
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !176
  %.demorgan.i.i.i213 = or i64 %i.oe, %notmask.i40.i.i.i.i.i212
  %i.of = icmp eq i64 %.demorgan.i.i.i213, -1
  %i.og = zext i1 %i.of to i16
  %i.oh = or disjoint i16 %i.og, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139: ; preds = %.lr.ph477, %bb.cb, %.critedge.i.i.i.i.i210, %bb.by, %bb.bx, %bb.bw
  %.sroa.0.0.insert.ext.i.i.i140 = phi i16 [ 256, %bb.bx ], [ 256, %bb.bw ], [ 257, %bb.by ], [ 257, %.critedge.i.i.i.i.i210 ], [ %i.oh, %bb.cb ], [ 256, %.lr.ph477 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i140, ptr %i.ng, align 4
  %i.oi = trunc i16 %.sroa.0.0.insert.ext.i.i.i140 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i141

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i141: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i215
  %.0.in.i.i.i142 = phi i8 [ %.0.in.pre.i.i.i216, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i215 ], [ %i.oi, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i139 ]
  %.0.i.i.i143 = trunc nuw i8 %.0.in.i.i.i142 to i1
  br i1 %.0.i.i.i143, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i141
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !172 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !171 ; 2 uses
  %i.on = icmp slt i32 %i.om, %i.ok
  br i1 %i.on, label %.lr.ph.i.i201, label %.loopexit1.i149

.lr.ph.i.i201:                                    ; preds = %bb.cc, %.noexc.i205
  %.06.i.i202 = phi i32 [ %i.oo, %.noexc.i205 ], [ %i.om, %bb.cc ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %15, i32 noundef %.06.i.i202)
          to label %.noexc.i205 unwind label %.loopexit.i203

.noexc.i205:                                      ; preds = %.lr.ph.i.i201
  %i.oo = add i32 %.06.i.i202, 1                  ; 2 uses
  %exitcond.not.i.i206 = icmp eq i32 %i.oo, %i.ok
  br i1 %exitcond.not.i.i206, label %.loopexit1.i149, label %.lr.ph.i.i201, !llvm.loop !659

bb.cd:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i141
  %i.op = load ptr, ptr %3, align 8, !tbaa !174   ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !171 ; 6 uses
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !172 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i144 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i144, ptr noundef nonnull readonly align 8 dereferenceable(32) %15, i64 32, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i.i145 = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i145, ptr noundef nonnull readonly align 8 dereferenceable(32) %15, i64 32, i1 false)
  store i8 1, ptr %13, align 8
  %.sroa.25.0..sroa_idx.i.i.i.i146 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.op, ptr %.sroa.25.0..sroa_idx.i.i.i.i146, align 8
  store i8 1, ptr %14, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.op, ptr %.sroa.28.0..sroa_idx.i.i.i.i147, align 8
  %.not.i.i.i.i11.i148 = icmp slt i32 %i.or, %i.ot
  br i1 %.not.i.i.i.i11.i148, label %bb.ce, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.ou = add i32 %i.or, 63                       ; 2 uses
  %i.ov = srem i32 %i.ou, 64
  %i.ow = sub nsw i32 %i.ou, %i.ov                ; 6 uses
  %i.ox = and i32 %i.ot, -64                      ; 6 uses
  %i.oy = icmp slt i32 %i.ox, %i.ow
  br i1 %i.oy, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.oz = ashr i32 %i.ot, 6
  %i.pa = and i32 %i.ot, 63
  %i.pb = zext nneg i32 %i.pa to i64
  %notmask.i.i.i.i.i.i192 = shl nsw i64 -1, %i.pb
  %i.pc = xor i64 %notmask.i.i.i.i.i.i192, -1
  %i.pd = sub nsw i32 %i.ow, %i.or                ; 2 uses
  %i.pe = zext nneg i32 %i.pd to i64
  %notmask.i.i.i.i.i.i.i193 = shl nsw i64 -1, %i.pe
  %i.pf = xor i64 %notmask.i.i.i.i.i.i.i193, -1
  %i.pg = sub nsw i32 64, %i.pd
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl i64 %i.pf, %i.ph
  %i.pj = and i64 %i.pi, %i.pc
  %i.pk = sext i32 %i.oz to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.op, i64 %i.pk
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !176
  %i.pn = and i64 %i.pj, %i.pm                    ; 2 uses
  %.not.i.i.i.i.i12.i194 = icmp eq i64 %i.pn, 0
  br i1 %.not.i.i.i.i.i12.i194, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i195

.preheader.i.i.i.i.i.i195:                        ; preds = %bb.cf, %.noexc13.i199
  %.011.i.i.i.i.i.i196 = phi i64 [ %i.ps, %.noexc13.i199 ], [ %i.pn, %bb.cf ] ; 3 uses
  %i.po = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i196, i1 true)
  %i.pp = trunc nuw nsw i64 %i.po to i32
  %i.pq = or disjoint i32 %i.ox, %i.pp
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i144, i32 noundef %i.pq)
          to label %.noexc13.i199 unwind label %.loopexit.split-lp.loopexit.i197

.noexc13.i199:                                    ; preds = %.preheader.i.i.i.i.i.i195
  %i.pr = add nsw i64 %.011.i.i.i.i.i.i196, -1
  %i.ps = and i64 %i.pr, %.011.i.i.i.i.i.i196     ; 2 uses
  %.not10.i.i.i.i.i.i200 = icmp eq i64 %i.ps, 0
  br i1 %.not10.i.i.i.i.i.i200, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i195, !llvm.loop !660

bb.cg:                                            ; preds = %bb.ce
  %.not32.i.i.i.i.i154 = icmp eq i32 %i.or, %i.ow
  br i1 %.not32.i.i.i.i.i154, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pt = sdiv i32 %i.or, 64                      ; 2 uses
  %i.pu = sub nsw i32 %i.ow, %i.or                ; 2 uses
  %i.pv = zext nneg i32 %i.pu to i64
  %notmask.i.i35.i.i.i.i.i155 = shl nsw i64 -1, %i.pv
  %i.pw = xor i64 %notmask.i.i35.i.i.i.i.i155, -1
  %i.px = sub nsw i32 64, %i.pu
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = shl i64 %i.pw, %i.py
  %i.qa = sext i32 %i.pt to i64
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.op, i64 %i.qa
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !176
  %i.qd = and i64 %i.qc, %i.pz                    ; 2 uses
  %.not.i36.i.i.i.i.i156 = icmp eq i64 %i.qd, 0
  br i1 %.not.i36.i.i.i.i.i156, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i157

.preheader.i37.i.i.i.i.i157:                      ; preds = %bb.ch
  %i.qe = shl nsw i32 %i.pt, 6
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc14.i163, %.preheader.i37.i.i.i.i.i157
  %.011.i38.i.i.i.i.i158 = phi i64 [ %i.qd, %.preheader.i37.i.i.i.i.i157 ], [ %i.qj, %.noexc14.i163 ] ; 3 uses
  %i.qf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i158, i1 true)
  %i.qg = trunc nuw nsw i64 %i.qf to i32
  %i.qh = or disjoint i32 %i.qe, %i.qg
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i144, i32 noundef %i.qh)
          to label %.noexc14.i163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i159

.noexc14.i163:                                    ; preds = %bb.ci
  %i.qi = add i64 %.011.i38.i.i.i.i.i158, -1
  %i.qj = and i64 %i.qi, %.011.i38.i.i.i.i.i158   ; 2 uses
  %.not10.i39.i.i.i.i.i164 = icmp eq i64 %i.qj, 0
  br i1 %.not10.i39.i.i.i.i.i164, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.ci, !llvm.loop !660

_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i: ; preds = %.noexc14.i163, %bb.ch, %bb.cg
  %i.qk = add nsw i32 %i.ow, 64                   ; 2 uses
  %.not3350.i.i.i.i.i165 = icmp sgt i32 %i.qk, %i.ox
  br i1 %.not3350.i.i.i.i.i165, label %._crit_edge.i.i.i.i.i169, label %.lr.ph.i.i.i.i.i166

._crit_edge.i.i.i.i.i169:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i
  %.not34.i.i.i.i.i170 = icmp eq i32 %i.ot, %i.ox
  br i1 %.not34.i.i.i.i.i170, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %bb.cm

.lr.ph.i.i.i.i.i166:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  %i.ql = phi i32 [ %i.rd, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.qk, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i.i167 = phi i32 [ %i.ql, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.ow, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %i.qm = sdiv i32 %.051.i.i.i.i.i167, 64         ; 3 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.op, i64 %i.qn
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !176 ; 2 uses
  switch i64 %i.qp, label %.lr.ph.i.i.i.i.i.i186 [
    i64 -1, label %bb.cj
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i186:                            ; preds = %.lr.ph.i.i.i.i.i166
  %i.qq = shl nsw i32 %i.qm, 6
  br label %bb.cl

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i166
  %i.qr = shl nsw i32 %i.qm, 6                    ; 2 uses
  %i.qs = add i32 %i.qr, 64
  %i.qt = sext i32 %i.qs to i64
  %.0.off.i.i.i.i.i179 = add i32 %.051.i.i.i.i.i167, 127
  %.not22.i.i.i.i.i.i180 = icmp ult i32 %.0.off.i.i.i.i.i179, 64
  br i1 %.not22.i.i.i.i.i.i180, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph21.i.i.i.i.i.i181

.lr.ph21.i.i.i.i.i.i181:                          ; preds = %bb.cj
  %i.qu = sext i32 %i.qr to i64
  br label %bb.ck

bb.ck:                                            ; preds = %.noexc15.i185, %.lr.ph21.i.i.i.i.i.i181
  %.020.i.i.i.i.i.i182 = phi i64 [ %i.qu, %.lr.ph21.i.i.i.i.i.i181 ], [ %i.qw, %.noexc15.i185 ] ; 2 uses
  %i.qv = trunc i64 %.020.i.i.i.i.i.i182 to i32
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i145, i32 noundef %i.qv)
          to label %.noexc15.i185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i183

.noexc15.i185:                                    ; preds = %bb.ck
  %i.qw = add nuw i64 %.020.i.i.i.i.i.i182, 1     ; 2 uses
  %i.qx = icmp ult i64 %i.qw, %i.qt
  br i1 %i.qx, label %bb.ck, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !661

bb.cl:                                            ; preds = %.noexc16.i190, %.lr.ph.i.i.i.i.i.i186
  %.01519.i.i.i.i.i.i187 = phi i64 [ %i.qp, %.lr.ph.i.i.i.i.i.i186 ], [ %i.rc, %.noexc16.i190 ] ; 3 uses
  %i.qy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i.i187, i1 true)
  %i.qz = trunc nuw nsw i64 %i.qy to i32
  %i.ra = or disjoint i32 %i.qq, %i.qz
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i145, i32 noundef %i.ra)
          to label %.noexc16.i190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i188

.noexc16.i190:                                    ; preds = %bb.cl
  %i.rb = add i64 %.01519.i.i.i.i.i.i187, -1
  %i.rc = and i64 %i.rb, %.01519.i.i.i.i.i.i187   ; 2 uses
  %.not.i41.i.i.i.i.i191 = icmp eq i64 %i.rc, 0
  br i1 %.not.i41.i.i.i.i.i191, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.cl, !llvm.loop !662

_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.noexc15.i185, %.noexc16.i190, %bb.cj, %.lr.ph.i.i.i.i.i166
  %i.rd = add nsw i32 %i.ql, 64                   ; 2 uses
  %.not33.i.i.i.i.i168 = icmp sgt i32 %i.rd, %i.ox
  br i1 %.not33.i.i.i.i.i168, label %._crit_edge.i.i.i.i.i169, label %.lr.ph.i.i.i.i.i166, !llvm.loop !663

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i.i169
  %i.re = ashr i32 %i.ot, 6
  %i.rf = and i32 %i.ot, 63
  %i.rg = zext nneg i32 %i.rf to i64
  %notmask.i42.i.i.i.i.i171 = shl nsw i64 -1, %i.rg
  %i.rh = xor i64 %notmask.i42.i.i.i.i.i171, -1
  %i.ri = sext i32 %i.re to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.op, i64 %i.ri
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !176
  %i.rl = and i64 %i.rk, %i.rh                    ; 2 uses
  %.not.i43.i.i.i.i.i172 = icmp eq i64 %i.rl, 0
  br i1 %.not.i43.i.i.i.i.i172, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i173

.preheader.i44.i.i.i.i.i173:                      ; preds = %bb.cm, %.noexc17.i177
  %.011.i45.i.i.i.i.i174 = phi i64 [ %i.rq, %.noexc17.i177 ], [ %i.rl, %bb.cm ] ; 3 uses
  %i.rm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i174, i1 true)
  %i.rn = trunc nuw nsw i64 %i.rm to i32
  %i.ro = or disjoint i32 %i.ox, %i.rn
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i144, i32 noundef %i.ro)
          to label %.noexc17.i177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i175

.noexc17.i177:                                    ; preds = %.preheader.i44.i.i.i.i.i173
  %i.rp = add nsw i64 %.011.i45.i.i.i.i.i174, -1
  %i.rq = and i64 %i.rp, %.011.i45.i.i.i.i.i174   ; 2 uses
  %.not10.i46.i.i.i.i.i178 = icmp eq i64 %i.rq, 0
  br i1 %.not10.i46.i.i.i.i.i178, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i173, !llvm.loop !660

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i: ; preds = %.noexc17.i177, %.noexc13.i199, %bb.cm, %._crit_edge.i.i.i.i.i169, %bb.cf, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %.loopexit1.i149

.loopexit1.i149:                                  ; preds = %.noexc.i205, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.rr = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i150 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i.i150, label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit, label %bb.cn

bb.cn:                                            ; preds = %.loopexit1.i149
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 4 uses
  %i.ru = load atomic i64, ptr %i.rt acquire, align 8 ; 2 uses
  %i.rv = icmp eq i64 %i.ru, 4294967297
  %i.rw = trunc i64 %i.ru to i32                  ; 2 uses
  br i1 %i.rv, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.rt, align 8, !tbaa !81
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 12
  store i32 0, ptr %i.rx, align 4, !tbaa !82
  %i.ry = load ptr, ptr %i.rs, align 8, !tbaa !71
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8
  call void %i.sa(ptr noundef nonnull align 8 dereferenceable(16) %i.rs) #37, !inline_history !664
  %i.sb = load ptr, ptr %i.rs, align 8, !tbaa !71
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(16) %i.rs) #37, !inline_history !664
  br label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit

bb.cp:                                            ; preds = %bb.cn
  %i.se = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i18.i151 = icmp eq i8 %i.se, 0
  br i1 %.not.i.i.i18.i151, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.sf = add nsw i32 %i.rw, -1
  store i32 %i.sf, ptr %i.rt, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152

bb.cr:                                            ; preds = %bb.cp
  %i.sg = atomicrmw volatile add ptr %i.rt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i.i153 = phi i32 [ %i.rw, %bb.cq ], [ %i.sg, %bb.cr ]
  %i.sh = icmp eq i32 %.0.i.i.i.i.i153, 1
  br i1 %i.sh, label %bb.cs, label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit, !prof !87

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rs) #37
  br label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit

.loopexit.i203:                                   ; preds = %.lr.ph.i.i201
  %lpad.loopexit.i204 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i161

.loopexit.split-lp.loopexit.i197:                 ; preds = %.preheader.i.i.i.i.i.i195
  %lpad.loopexit2.i198 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i161

.loopexit.split-lp.loopexit.split-lp.loopexit.i175: ; preds = %.preheader.i44.i.i.i.i.i173
  %lpad.loopexit5.i176 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i161

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i188: ; preds = %bb.cl
  %lpad.loopexit8.i189 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i161

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i183: ; preds = %bb.ck
  %lpad.loopexit11.i184 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i161

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i159: ; preds = %bb.ci
  %lpad.loopexit.split-lp.i160 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i161

.loopexit.split-lp.i161:                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i159, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i183, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i188, %.loopexit.split-lp.loopexit.split-lp.loopexit.i175, %.loopexit.split-lp.loopexit.i197, %.loopexit.i203
  %lpad.phi.i162 = phi { ptr, i32 } [ %lpad.loopexit.i204, %.loopexit.i203 ], [ %lpad.loopexit2.i198, %.loopexit.split-lp.loopexit.i197 ], [ %lpad.loopexit5.i176, %.loopexit.split-lp.loopexit.split-lp.loopexit.i175 ], [ %lpad.loopexit8.i189, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i188 ], [ %lpad.loopexit11.i184, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i183 ], [ %lpad.loopexit.split-lp.i160, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @_ZNSt12__shared_ptrIKN8facebook5velox14BigintEnumTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %common.resume

_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIiEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit: ; preds = %.loopexit1.i149, %bb.co, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.eg

bb.ct:                                            ; preds = %bb.a
  %i.si = load ptr, ptr %2, align 8, !tbaa !127   ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !148
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 80
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !149
  tail call void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.sj, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.sl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.sm = load ptr, ptr %5, align 8, !tbaa !152   ; 3 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !71 ; 2 uses
  %.not.i.i218 = icmp eq ptr %i.sn, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIlEE, i64 16)
  br i1 %.not.i.i218, label %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i225, label %bb.cu, !prof !73

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.so = getelementptr inbounds i8, ptr %i.sn, i64 -8
  %i.sp = load ptr, ptr %i.so, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !89 ; 2 uses
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !69
  %i.st = icmp eq i8 %i.ss, 42
  %.idx.i.i.i219 = zext i1 %i.st to i64
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.idx.i.i.i219
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37, !noalias !688
  store ptr @_ZTSN8facebook5velox10FlatVectorIlEE, ptr %10, align 16, !tbaa !69, !alias.scope !689, !noalias !688
  %i.sv = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.su, ptr %i.sv, align 16, !tbaa !69, !alias.scope !689, !noalias !688
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.16, i64 39, i64 204, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37, !noalias !688
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_vE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.16) #41
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.sw = landingpad { ptr, i32 }
          cleanup
  %i.sx = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i220: ; preds = %bb.cw
  %i.ta = load i64, ptr %i.sy, align 8, !tbaa !69
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.tb) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i221: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %common.resume

_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i225: ; preds = %bb.ct
  store ptr %i.sm, ptr %i.a, align 8, !tbaa !154
  tail call void @_ZN8facebook5velox10BaseVector10clearNullsERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.sm, ptr noundef nonnull align 8 dereferenceable(38) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.tc = load ptr, ptr %4, align 8, !tbaa !95, !noalias !690 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i311, label %bb.cx

bb.cx:                                            ; preds = %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i225
  %i.te = tail call ptr @__dynamic_cast(ptr nonnull %i.tc, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox14BigintEnumTypeE, i64 0) #37, !noalias !690 ; 2 uses
  %.not.not.i.i226 = icmp eq ptr %i.te, null
  br i1 %.not.not.i.i226, label %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i311, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.te, ptr %12, align 8, !tbaa !157, !alias.scope !690
  %i.tf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !85, !noalias !690 ; 3 uses
  store ptr %i.th, ptr %i.tf, align 8, !tbaa !85, !alias.scope !690
  %.not.i.i.i.i.i227 = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i.i.i227, label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i229, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8 ; 3 uses
  %i.tj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69, !noalias !690
  %.not.i.i.i.i.i.i228 = icmp eq i8 %i.tj, 0
  br i1 %.not.i.i.i.i.i.i228, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.tk = load i32, ptr %i.ti, align 4, !tbaa !86, !noalias !690
  %i.tl = add nsw i32 %i.tk, 1
  store i32 %i.tl, ptr %i.ti, align 4, !tbaa !86, !noalias !690
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i229

bb.db:                                            ; preds = %bb.cz
  %i.tm = atomicrmw volatile add ptr %i.ti, i32 1 acq_rel, align 4, !noalias !690 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i229

_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i311: ; preds = %bb.cx, %_ZN8facebook5velox10BaseVector9asCheckedINS0_10FlatVectorIlEEEEPT_v.exit.i225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !690
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i229

_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i229: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox14BigintEnumTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i311, %bb.db, %bb.da, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.tn = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %1, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #37
  store ptr %i.tn, ptr %i.b, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.b, ptr %9, align 8
  %.sroa.2.0..sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %12, ptr %.sroa.2.0..sroa_idx.i230, align 8
  %.sroa.3.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i231, align 8
  %.sroa.4.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i232, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %3, i64 37
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !161, !range !77, !noundef !78
  %i.tr = trunc nuw i8 %i.tq to i1
  br i1 %i.tr, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i309, label %bb.dc

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i309: ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i229
  %.0.in.pre.i.i.i310 = load i8, ptr %i.to, align 4, !tbaa !162, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i235

bb.dc:                                            ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox14BigintEnumTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i229
  %i.ts = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !171
  %i.tu = icmp eq i32 %i.tt, 0
  br i1 %i.tu, label %bb.dd, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233

bb.dd:                                            ; preds = %bb.dc
  %i.tv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !172 ; 6 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !173
  %i.tz = icmp eq i32 %i.tw, %i.ty
  br i1 %i.tz, label %bb.de, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233

bb.de:                                            ; preds = %bb.dd
  %i.ua = load ptr, ptr %3, align 8, !tbaa !174   ; 2 uses
  %.not.i.i.i.i301 = icmp sgt i32 %i.tw, 0
  br i1 %.not.i.i.i.i301, label %bb.df, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233

bb.df:                                            ; preds = %bb.de
  %i.ub = and i32 %i.tw, 2147483584               ; 3 uses
  %i.uc = zext nneg i32 %i.ub to i64
  %.not37.i.i.not.i.i.i303473.not = icmp eq i32 %i.ub, 0
  br i1 %.not37.i.i.not.i.i.i303473.not, label %.critedge.i.i.i.i.i304, label %.lr.ph

bb.dg:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i308 = add nuw nsw i64 %indvars.iv.i.i.i302474, 64 ; 2 uses
  %.not37.i.i.not.i.i.i303 = icmp samesign ult i64 %indvars.iv.next.i.i.i308, %i.uc
  br i1 %.not37.i.i.not.i.i.i303, label %.lr.ph, label %.critedge.i.i.i.i.i304, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.df, %bb.dg
  %indvars.iv.i.i.i302474 = phi i64 [ %indvars.iv.next.i.i.i308, %bb.dg ], [ 0, %bb.df ] ; 2 uses
  %i.ud = lshr exact i64 %indvars.iv.i.i.i302474, 3
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.ud
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !176
  %i.ug = icmp eq i64 %i.uf, -1
  br i1 %i.ug, label %bb.dg, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233, !llvm.loop !2

.critedge.i.i.i.i.i304:                           ; preds = %bb.dg, %bb.df
  %.not38.i.i.i.i.i305 = icmp eq i32 %i.tw, %i.ub
  br i1 %.not38.i.i.i.i.i305, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233, label %bb.dh

bb.dh:                                            ; preds = %.critedge.i.i.i.i.i304
  %i.uh = lshr i32 %i.tw, 6
  %i.ui = and i32 %i.tw, 63
  %i.uj = zext nneg i32 %i.ui to i64
  %notmask.i40.i.i.i.i.i306 = shl nsw i64 -1, %i.uj
  %i.uk = zext nneg i32 %i.uh to i64
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %i.uk
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !176
  %.demorgan.i.i.i307 = or i64 %i.um, %notmask.i40.i.i.i.i.i306
  %i.un = icmp eq i64 %.demorgan.i.i.i307, -1
  %i.uo = zext i1 %i.un to i16
  %i.up = or disjoint i16 %i.uo, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233: ; preds = %.lr.ph, %bb.dh, %.critedge.i.i.i.i.i304, %bb.de, %bb.dd, %bb.dc
  %.sroa.0.0.insert.ext.i.i.i234 = phi i16 [ 256, %bb.dd ], [ 256, %bb.dc ], [ 257, %bb.de ], [ 257, %.critedge.i.i.i.i.i304 ], [ %i.up, %bb.dh ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i234, ptr %i.to, align 4
  %i.uq = trunc i16 %.sroa.0.0.insert.ext.i.i.i234 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i235

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i235: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i309
  %.0.in.i.i.i236 = phi i8 [ %.0.in.pre.i.i.i310, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i309 ], [ %i.uq, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i233 ]
  %.0.i.i.i237 = trunc nuw i8 %.0.in.i.i.i236 to i1
  br i1 %.0.i.i.i237, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i235
  %i.ur = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !172 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !171 ; 2 uses
  %i.uv = icmp slt i32 %i.uu, %i.us
  br i1 %i.uv, label %.lr.ph.i.i295, label %.loopexit1.i243

.lr.ph.i.i295:                                    ; preds = %bb.di, %.noexc.i299
  %.06.i.i296 = phi i32 [ %i.uw, %.noexc.i299 ], [ %i.uu, %bb.di ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i32 noundef %.06.i.i296)
          to label %.noexc.i299 unwind label %.loopexit.i297

.noexc.i299:                                      ; preds = %.lr.ph.i.i295
  %i.uw = add i32 %.06.i.i296, 1                  ; 2 uses
  %exitcond.not.i.i300 = icmp eq i32 %i.uw, %i.us
  br i1 %exitcond.not.i.i300, label %.loopexit1.i243, label %.lr.ph.i.i295, !llvm.loop !671

bb.dj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i235
  %i.ux = load ptr, ptr %3, align 8, !tbaa !174   ; 6 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !171 ; 6 uses
  %i.va = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !172 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i238 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i238, ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i64 32, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i.i239 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i239, ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i64 32, i1 false)
  store i8 1, ptr %7, align 8
  %.sroa.25.0..sroa_idx.i.i.i.i240 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ux, ptr %.sroa.25.0..sroa_idx.i.i.i.i240, align 8
  store i8 1, ptr %8, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i241 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ux, ptr %.sroa.28.0..sroa_idx.i.i.i.i241, align 8
  %.not.i.i.i.i11.i242 = icmp slt i32 %i.uz, %i.vb
  br i1 %.not.i.i.i.i11.i242, label %bb.dk, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.vc = add i32 %i.uz, 63                       ; 2 uses
  %i.vd = srem i32 %i.vc, 64
  %i.ve = sub nsw i32 %i.vc, %i.vd                ; 6 uses
  %i.vf = and i32 %i.vb, -64                      ; 6 uses
  %i.vg = icmp slt i32 %i.vf, %i.ve
  br i1 %i.vg, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.vh = ashr i32 %i.vb, 6
  %i.vi = and i32 %i.vb, 63
  %i.vj = zext nneg i32 %i.vi to i64
  %notmask.i.i.i.i.i.i286 = shl nsw i64 -1, %i.vj
  %i.vk = xor i64 %notmask.i.i.i.i.i.i286, -1
  %i.vl = sub nsw i32 %i.ve, %i.uz                ; 2 uses
  %i.vm = zext nneg i32 %i.vl to i64
  %notmask.i.i.i.i.i.i.i287 = shl nsw i64 -1, %i.vm
  %i.vn = xor i64 %notmask.i.i.i.i.i.i.i287, -1
  %i.vo = sub nsw i32 64, %i.vl
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = shl i64 %i.vn, %i.vp
  %i.vr = and i64 %i.vq, %i.vk
  %i.vs = sext i32 %i.vh to i64
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.vs
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !176
  %i.vv = and i64 %i.vr, %i.vu                    ; 2 uses
  %.not.i.i.i.i.i12.i288 = icmp eq i64 %i.vv, 0
  br i1 %.not.i.i.i.i.i12.i288, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i289

.preheader.i.i.i.i.i.i289:                        ; preds = %bb.dl, %.noexc13.i293
  %.011.i.i.i.i.i.i290 = phi i64 [ %i.wa, %.noexc13.i293 ], [ %i.vv, %bb.dl ] ; 3 uses
  %i.vw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i290, i1 true)
  %i.vx = trunc nuw nsw i64 %i.vw to i32
  %i.vy = or disjoint i32 %i.vf, %i.vx
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i238, i32 noundef %i.vy)
          to label %.noexc13.i293 unwind label %.loopexit.split-lp.loopexit.i291

.noexc13.i293:                                    ; preds = %.preheader.i.i.i.i.i.i289
  %i.vz = add nsw i64 %.011.i.i.i.i.i.i290, -1
  %i.wa = and i64 %i.vz, %.011.i.i.i.i.i.i290     ; 2 uses
  %.not10.i.i.i.i.i.i294 = icmp eq i64 %i.wa, 0
  br i1 %.not10.i.i.i.i.i.i294, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i289, !llvm.loop !672

bb.dm:                                            ; preds = %bb.dk
  %.not32.i.i.i.i.i248 = icmp eq i32 %i.uz, %i.ve
  br i1 %.not32.i.i.i.i.i248, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wb = sdiv i32 %i.uz, 64                      ; 2 uses
  %i.wc = sub nsw i32 %i.ve, %i.uz                ; 2 uses
  %i.wd = zext nneg i32 %i.wc to i64
  %notmask.i.i35.i.i.i.i.i249 = shl nsw i64 -1, %i.wd
  %i.we = xor i64 %notmask.i.i35.i.i.i.i.i249, -1
  %i.wf = sub nsw i32 64, %i.wc
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = shl i64 %i.we, %i.wg
  %i.wi = sext i32 %i.wb to i64
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.wi
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !176
  %i.wl = and i64 %i.wk, %i.wh                    ; 2 uses
  %.not.i36.i.i.i.i.i250 = icmp eq i64 %i.wl, 0
  br i1 %.not.i36.i.i.i.i.i250, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i251

.preheader.i37.i.i.i.i.i251:                      ; preds = %bb.dn
  %i.wm = shl nsw i32 %i.wb, 6
  br label %bb.do

bb.do:                                            ; preds = %.noexc14.i257, %.preheader.i37.i.i.i.i.i251
  %.011.i38.i.i.i.i.i252 = phi i64 [ %i.wl, %.preheader.i37.i.i.i.i.i251 ], [ %i.wr, %.noexc14.i257 ] ; 3 uses
  %i.wn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i252, i1 true)
  %i.wo = trunc nuw nsw i64 %i.wn to i32
  %i.wp = or disjoint i32 %i.wm, %i.wo
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i238, i32 noundef %i.wp)
          to label %.noexc14.i257 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i253

.noexc14.i257:                                    ; preds = %bb.do
  %i.wq = add i64 %.011.i38.i.i.i.i.i252, -1
  %i.wr = and i64 %i.wq, %.011.i38.i.i.i.i.i252   ; 2 uses
  %.not10.i39.i.i.i.i.i258 = icmp eq i64 %i.wr, 0
  br i1 %.not10.i39.i.i.i.i.i258, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.do, !llvm.loop !672

_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i: ; preds = %.noexc14.i257, %bb.dn, %bb.dm
  %i.ws = add nsw i32 %i.ve, 64                   ; 2 uses
  %.not3350.i.i.i.i.i259 = icmp sgt i32 %i.ws, %i.vf
  br i1 %.not3350.i.i.i.i.i259, label %._crit_edge.i.i.i.i.i263, label %.lr.ph.i.i.i.i.i260

._crit_edge.i.i.i.i.i263:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i
  %.not34.i.i.i.i.i264 = icmp eq i32 %i.vb, %i.vf
  br i1 %.not34.i.i.i.i.i264, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %bb.ds

.lr.ph.i.i.i.i.i260:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  %i.wt = phi i32 [ %i.xl, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.ws, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i.i261 = phi i32 [ %i.wt, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.ve, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %i.wu = sdiv i32 %.051.i.i.i.i.i261, 64         ; 3 uses
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.wv
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !176 ; 2 uses
  switch i64 %i.wx, label %.lr.ph.i.i.i.i.i.i280 [
    i64 -1, label %bb.dp
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i280:                            ; preds = %.lr.ph.i.i.i.i.i260
  %i.wy = shl nsw i32 %i.wu, 6
  br label %bb.dr

bb.dp:                                            ; preds = %.lr.ph.i.i.i.i.i260
  %i.wz = shl nsw i32 %i.wu, 6                    ; 2 uses
  %i.xa = add i32 %i.wz, 64
  %i.xb = sext i32 %i.xa to i64
  %.0.off.i.i.i.i.i273 = add i32 %.051.i.i.i.i.i261, 127
  %.not22.i.i.i.i.i.i274 = icmp ult i32 %.0.off.i.i.i.i.i273, 64
  br i1 %.not22.i.i.i.i.i.i274, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph21.i.i.i.i.i.i275

.lr.ph21.i.i.i.i.i.i275:                          ; preds = %bb.dp
  %i.xc = sext i32 %i.wz to i64
  br label %bb.dq

bb.dq:                                            ; preds = %.noexc15.i279, %.lr.ph21.i.i.i.i.i.i275
  %.020.i.i.i.i.i.i276 = phi i64 [ %i.xc, %.lr.ph21.i.i.i.i.i.i275 ], [ %i.xe, %.noexc15.i279 ] ; 2 uses
  %i.xd = trunc i64 %.020.i.i.i.i.i.i276 to i32
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i239, i32 noundef %i.xd)
          to label %.noexc15.i279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i277

.noexc15.i279:                                    ; preds = %bb.dq
  %i.xe = add nuw i64 %.020.i.i.i.i.i.i276, 1     ; 2 uses
  %i.xf = icmp ult i64 %i.xe, %i.xb
  br i1 %i.xf, label %bb.dq, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !673

bb.dr:                                            ; preds = %.noexc16.i284, %.lr.ph.i.i.i.i.i.i280
  %.01519.i.i.i.i.i.i281 = phi i64 [ %i.wx, %.lr.ph.i.i.i.i.i.i280 ], [ %i.xk, %.noexc16.i284 ] ; 3 uses
  %i.xg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i.i281, i1 true)
  %i.xh = trunc nuw nsw i64 %i.xg to i32
  %i.xi = or disjoint i32 %i.wy, %i.xh
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i.i239, i32 noundef %i.xi)
          to label %.noexc16.i284 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i282

.noexc16.i284:                                    ; preds = %bb.dr
  %i.xj = add i64 %.01519.i.i.i.i.i.i281, -1
  %i.xk = and i64 %i.xj, %.01519.i.i.i.i.i.i281   ; 2 uses
  %.not.i41.i.i.i.i.i285 = icmp eq i64 %i.xk, 0
  br i1 %.not.i41.i.i.i.i.i285, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.dr, !llvm.loop !674

_ZZN8facebook5velox4bits10forEachBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.noexc15.i279, %.noexc16.i284, %bb.dp, %.lr.ph.i.i.i.i.i260
  %i.xl = add nsw i32 %i.wt, 64                   ; 2 uses
  %.not33.i.i.i.i.i262 = icmp sgt i32 %i.xl, %i.vf
  br i1 %.not33.i.i.i.i.i262, label %._crit_edge.i.i.i.i.i263, label %.lr.ph.i.i.i.i.i260, !llvm.loop !675

bb.ds:                                            ; preds = %._crit_edge.i.i.i.i.i263
  %i.xm = ashr i32 %i.vb, 6
  %i.xn = and i32 %i.vb, 63
  %i.xo = zext nneg i32 %i.xn to i64
  %notmask.i42.i.i.i.i.i265 = shl nsw i64 -1, %i.xo
  %i.xp = xor i64 %notmask.i42.i.i.i.i.i265, -1
  %i.xq = sext i32 %i.xm to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.xq
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !176
  %i.xt = and i64 %i.xs, %i.xp                    ; 2 uses
  %.not.i43.i.i.i.i.i266 = icmp eq i64 %i.xt, 0
  br i1 %.not.i43.i.i.i.i.i266, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i267

.preheader.i44.i.i.i.i.i267:                      ; preds = %bb.ds, %.noexc17.i271
  %.011.i45.i.i.i.i.i268 = phi i64 [ %i.xy, %.noexc17.i271 ], [ %i.xt, %bb.ds ] ; 3 uses
  %i.xu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i268, i1 true)
  %i.xv = trunc nuw nsw i64 %i.xu to i32
  %i.xw = or disjoint i32 %i.vf, %i.xv
  invoke fastcc void @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_EENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.39.0..sroa_idx.i.i.i.i238, i32 noundef %i.xw)
          to label %.noexc17.i271 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i269

.noexc17.i271:                                    ; preds = %.preheader.i44.i.i.i.i.i267
  %i.xx = add nsw i64 %.011.i45.i.i.i.i.i268, -1
  %i.xy = and i64 %i.xx, %.011.i45.i.i.i.i.i268   ; 2 uses
  %.not10.i46.i.i.i.i.i272 = icmp eq i64 %i.xy, 0
  br i1 %.not10.i46.i.i.i.i.i272, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i267, !llvm.loop !672

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i: ; preds = %.noexc17.i271, %.noexc13.i293, %bb.ds, %._crit_edge.i.i.i.i.i263, %bb.dl, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit1.i243

.loopexit1.i243:                                  ; preds = %.noexc.i299, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS6_EEUliE_EEvPKmiiT_.exit.i.i, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.xz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !85 ; 8 uses
  %.not.i.i.i244 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i.i244, label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit, label %bb.dt

bb.dt:                                            ; preds = %.loopexit1.i243
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8 ; 4 uses
  %i.yc = load atomic i64, ptr %i.yb acquire, align 8 ; 2 uses
  %i.yd = icmp eq i64 %i.yc, 4294967297
  %i.ye = trunc i64 %i.yc to i32                  ; 2 uses
  br i1 %i.yd, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 0, ptr %i.yb, align 8, !tbaa !81
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ya, i64 12
  store i32 0, ptr %i.yf, align 4, !tbaa !82
  %i.yg = load ptr, ptr %i.ya, align 8, !tbaa !71
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8
  call void %i.yi(ptr noundef nonnull align 8 dereferenceable(16) %i.ya) #37, !inline_history !676
  %i.yj = load ptr, ptr %i.ya, align 8, !tbaa !71
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  %i.yl = load ptr, ptr %i.yk, align 8
  call void %i.yl(ptr noundef nonnull align 8 dereferenceable(16) %i.ya) #37, !inline_history !676
  br label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit

bb.dv:                                            ; preds = %bb.dt
  %i.ym = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i18.i245 = icmp eq i8 %i.ym, 0
  br i1 %.not.i.i.i18.i245, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.yn = add nsw i32 %i.ye, -1
  store i32 %i.yn, ptr %i.yb, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i246

bb.dx:                                            ; preds = %bb.dv
  %i.yo = atomicrmw volatile add ptr %i.yb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i246

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i246: ; preds = %bb.dx, %bb.dw
  %.0.i.i.i.i.i247 = phi i32 [ %i.ye, %bb.dw ], [ %i.yo, %bb.dx ]
  %i.yp = icmp eq i32 %.0.i.i.i.i.i247, 1
  br i1 %i.yp, label %bb.dy, label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit, !prof !87

bb.dy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i246
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ya) #37
  br label %_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit

.loopexit.i297:                                   ; preds = %.lr.ph.i.i295
  %lpad.loopexit.i298 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i255

.loopexit.split-lp.loopexit.i291:                 ; preds = %.preheader.i.i.i.i.i.i289
  %lpad.loopexit2.i292 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i255

.loopexit.split-lp.loopexit.split-lp.loopexit.i269: ; preds = %.preheader.i44.i.i.i.i.i267
  %lpad.loopexit5.i270 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i255

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i282: ; preds = %bb.dr
  %lpad.loopexit8.i283 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i255

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i277: ; preds = %bb.dq
  %lpad.loopexit11.i278 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i255

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i253: ; preds = %bb.do
  %lpad.loopexit.split-lp.i254 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i255

.loopexit.split-lp.i255:                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i253, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i277, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i282, %.loopexit.split-lp.loopexit.split-lp.loopexit.i269, %.loopexit.split-lp.loopexit.i291, %.loopexit.i297
  %lpad.phi.i256 = phi { ptr, i32 } [ %lpad.loopexit.i298, %.loopexit.i297 ], [ %lpad.loopexit2.i292, %.loopexit.split-lp.loopexit.i291 ], [ %lpad.loopexit5.i270, %.loopexit.split-lp.loopexit.split-lp.loopexit.i269 ], [ %lpad.loopexit8.i283, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i282 ], [ %lpad.loopexit11.i278, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i277 ], [ %lpad.loopexit.split-lp.i254, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @_ZNSt12__shared_ptrIKN8facebook5velox14BigintEnumTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %common.resume

_ZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator15castFromIntegerIlEEvRKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS4_E.exit: ; preds = %.loopexit1.i243, %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i246, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.eg

bb.dz:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !95 ; 2 uses
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !71
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 80
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(18) %i.yr)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.yv = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !71
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 80
  %i.yy = load ptr, ptr %i.yx, align 8
  invoke void %i.yy(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(18) %i.yv)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37, !noalias !691
  %i.yz = load ptr, ptr %32, align 8, !tbaa !72, !noalias !691
  %i.za = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !68, !noalias !691
  store ptr %i.yz, ptr %6, align 16, !tbaa !69, !noalias !691
  %i.zc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.zb, ptr %i.zc, align 8, !tbaa !69, !noalias !691
  %i.zd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ze = load ptr, ptr %33, align 8, !tbaa !72, !noalias !691
  %i.zf = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !68, !noalias !691
  store ptr %i.ze, ptr %i.zd, align 16, !tbaa !69, !noalias !691
  %i.zh = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.zg, ptr %i.zh, align 8, !tbaa !69, !noalias !691
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr nonnull @.str.12, i64 25, i64 221, ptr nonnull %6)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37, !noalias !691
  %i.zi = load ptr, ptr %33, align 8, !tbaa !72   ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.zk = icmp eq ptr %i.zi, %i.zj
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.eb
  %i.zl = load i64, ptr %i.zj, align 8, !tbaa !69
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zi, i64 noundef %i.zm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  %i.zn = load ptr, ptr %32, align 8, !tbaa !72   ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.zp = icmp eq ptr %i.zn, %i.zo
  br i1 %i.zp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.zq = load i64, ptr %i.zo, align 8, !tbaa !69
  %i.zr = add i64 %i.zq, 1
  call void @_ZdlPvm(ptr noundef %i.zn, i64 noundef %i.zr) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12_GLOBAL__N_122BigintEnumCastOperator6castToERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSC_IS3_EE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr nonnull @.str.12) #41
          to label %bb.ec unwind label %bb.ef

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  unreachable

bb.ed:                                            ; preds = %bb.dz
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.ee:                                            ; preds = %bb.ea
  %i.zt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zu = load ptr, ptr %33, align 8, !tbaa !72   ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.zw = icmp eq ptr %i.zu, %i.zv
  br i1 %i.zw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.ee
  %i.zx = load i64, ptr %i.zv, align 8, !tbaa !69
  %i.zy = add i64 %i.zx, 1
  call void @_ZdlPvm(ptr noundef %i.zu, i64 noundef %i.zy) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %bb.ed
  %.pn = phi { ptr, i32 } [ %i.zs, %bb.ed ], [ %i.zt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ], [ %i.zt, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  %i.zz = load ptr, ptr %32, align 8, !tbaa !72   ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.aab = icmp eq ptr %i.zz, %i.aaa
  br i1 %i.aab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0112152 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0112151, %.loopexit ] ; 2 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !192
  %i.ei = and i64 %i.eh, 255
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.w
  %.0.in = phi i64 [ %i.ej, %._crit_edge ], [ %.0, %bb.w ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112152, i64 %.0
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !69  ; 3 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.x, !llvm.loop !1338

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %0, align 8, !tbaa !188
  %i.eo = getelementptr inbounds nuw [128 x i8], ptr %i.en, i64 %.0 ; 2 uses
  %i.ep = zext nneg i8 %i.el to i64
  %i.eq = add nsw i64 %i.ep, -1                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = icmp ne ptr %i.eo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp ult i8 %i.el, 17
  call void @llvm.assume(i1 %i.eu)
  %i.ev = lshr i64 %i.eq, 1
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = or i64 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !176
  br i1 %.not, label %bb.y, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %.0112152, i64 noundef %4) #39
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !162
  %i.ez = load i64, ptr %i.d, align 8, !tbaa !176
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !411 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !176
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fb) #37
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !413, !range !77, !noundef !78
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1347, !nonnull !78
  %i.e = load i8, ptr %i.d, align 1, !tbaa !162, !range !77, !noundef !78
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !73

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1348, !nonnull !78, !align !301
  %i.i = load i64, ptr %i.h, align 8, !tbaa !176
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1349, !nonnull !78, !align !301
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !411
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1350, !nonnull !78, !align !301
  %i.o = load i64, ptr %i.n, align 8, !tbaa !176
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1351 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1352, !nonnull !78, !align !301
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !314
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1353, !nonnull !78, !align !301
  %i.w = load i64, ptr %i.v, align 8, !tbaa !176
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1349, !nonnull !78, !align !301
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !411
  store ptr %i.z, ptr %i.q, align 8, !tbaa !188
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1354, !nonnull !78, !align !301
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !176 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !192
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !192
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #37
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #29

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #29

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.361") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !188   ; 3 uses
  br i1 %.not, label %.thread64, label %bb.b

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
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.w = add nsw i32 %.sroa.040.0, -1
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !393
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !393
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !73, !llvm.loop !1355

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !73

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !1356

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !69
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !188
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !192
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !69
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.at, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !418 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !418
  br label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.028                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bh, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !1357

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !392
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !69
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.11) #43
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !393
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !393
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !1358
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !176
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !192
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !1360
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !176
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !1363
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #31

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !192
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits8andRangeILb1EEEvPmPKmS5_ii:bb.a

bb.g:                                             ; preds = %._crit_edge.i
  %i.bj = ashr i32 %4, 6
  %i.bk = and i32 %4, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %notmask.i36.i = shl nsw i64 -1, %i.bl          ; 2 uses
  %i.bm = sext i32 %i.bj to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !176
  %i.bp = and i64 %i.bo, %notmask.i36.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !176
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bm
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !176
  %i.bu = or i64 %i.bt, %notmask.i36.i
  %i.bv = xor i64 %i.bu, -1
  %i.bw = and i64 %i.br, %i.bv
  %i.bx = or disjoint i64 %i.bw, %i.bp
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !176
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.430", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !287
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !69
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !289
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !69
  %i.e = load ptr, ptr %1, align 8, !tbaa !291    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !292  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !69
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !291
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !292
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !291
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !292
  %i.t = load i8, ptr %0, align 1, !tbaa !252
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !287
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !294
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !287    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !86
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !86
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !294
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.434) align 8 %2, ptr noundef byval(%class.anon.435) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !467, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !468
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1578
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1579, !nonnull !78, !align !301
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !209
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1580, !nonnull !78, !align !301
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !386
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !86
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !176
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !176
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1574

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !467, !range !77, !noundef !78
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !468
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !176
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1578
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1579, !nonnull !78, !align !301
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !209
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1580, !nonnull !78, !align !301
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !216
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !386
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !86
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !176
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !176
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1574

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !470, !range !77, !noundef !78
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !471
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !78, !align !301 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !78, !align !301 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !176
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !209
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !216
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !386
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !209
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !216
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !386
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !86
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !176
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !176
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1575

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !86
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !176
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !176
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1576

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1577

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !467, !range !77, !noundef !78
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !468
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !176
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1578
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1579, !nonnull !78, !align !301
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !209
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1580, !nonnull !78, !align !301
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !216
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !386
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !86
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !176
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !176
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1574

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.436) align 8 %2, ptr noundef byval(%class.anon.437) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !474, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !475
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1587
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1588, !nonnull !78, !align !301
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !216
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !386
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !176
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !176
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1581

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !474, !range !77, !noundef !78
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !475
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !176
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1587
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1588, !nonnull !78, !align !301
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !216
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !386
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !176
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !176
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1581

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !477, !range !77, !noundef !78
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !478
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !78, !align !301 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !176
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !216
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !386
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !216 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !386 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !176
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !176
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !176
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !176
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !176
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !176
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !176
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !176
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !176
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1583

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !176
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !176
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1584

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !176
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !176
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1585

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1586

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !474, !range !77, !noundef !78
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !475
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !176
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1587
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1588, !nonnull !78, !align !301
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !216
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !386
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !176
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !176
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1581

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.440) align 8 %2, ptr noundef byval(%class.anon.441) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

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
  %i.q = load i8, ptr %2, align 8, !tbaa !498, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !499
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !494, !nonnull !78, !align !301
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !495, !nonnull !78, !align !301
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !496, !nonnull !78, !align !301
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !209
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !86
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !216
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !176
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !69
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1589

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !498, !range !77, !noundef !78
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !499
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !176
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !494, !nonnull !78, !align !301
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !495, !nonnull !78, !align !301
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !496, !nonnull !78, !align !301
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !209
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !86
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !216
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !216
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !176
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !69
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !69
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1589

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1590

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !498, !range !77, !noundef !78
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !499
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !176
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !494, !nonnull !78, !align !301
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !495, !nonnull !78, !align !301
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !496, !nonnull !78, !align !301
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !209
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !86
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !216
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !216
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !176
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !69
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !69
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1589

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !501, !range !77, !noundef !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !502
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !176
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !494, !nonnull !78, !align !301
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !86
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !495, !nonnull !78, !align !301
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !216
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !496, !nonnull !78, !align !301
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !216
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !176
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !69
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1591

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !494, !nonnull !78, !align !301
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !86
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !495, !nonnull !78, !align !301
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !216
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !496, !nonnull !78, !align !301
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !216
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !176
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !69
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !69
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1592

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.442) align 8 %2, ptr noundef byval(%class.anon.443) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !481, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !482
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1599
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1600, !nonnull !78, !align !301
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !386
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !176
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !176
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1593

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !481, !range !77, !noundef !78
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !482
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !176
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1599
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1600, !nonnull !78, !align !301
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !386
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !176
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !176
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !1593

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !484, !range !77, !noundef !78
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !485
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !78, !align !301 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !176
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !386
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !176
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !386 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !176 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !176
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !176
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !176
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !176
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1595

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !176
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1596

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !176
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1597

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1598

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !481, !range !77, !noundef !78
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !482
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !176
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1599
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1600, !nonnull !78, !align !301
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !386
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !176
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !176
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1593

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.445, align 8            ; 7 uses
  %7 = alloca %class.anon.444, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1601

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1604, !range !77, !noundef !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1605
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !176
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !520
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !521, !nonnull !78, !align !301 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !511  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !512, !range !77
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !513  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !386 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !176
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !176
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1602

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !514, !range !77, !noundef !78
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !515
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !176
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !176
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1602

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !516
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_:bb.a
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !525, !range !77, !noundef !78
  %i.s = load ptr, ptr %2, align 8, !tbaa !524
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !525, !range !77, !noundef !78
  %i.al = load ptr, ptr %2, align 8, !tbaa !524
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !176
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !77
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !176 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !525, !range !77, !noundef !78
  %i.bw = load ptr, ptr %2, align 8, !tbaa !524
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !176
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !209, !nonnull !78, !align !302
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !86
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.476) align 8 %2, ptr noundef byval(%class.anon.477) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !398, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !399
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1662
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !386
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1663, !nonnull !78, !align !301
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !176
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !176
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1656

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !398, !range !77, !noundef !78
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !399
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !176
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1662
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !386
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !1663, !nonnull !78, !align !301
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !216
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !176
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !176
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1656

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !401, !range !77, !noundef !78
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !402
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !78, !align !301 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !176
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !386
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !216
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !386 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !216 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !176
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !176
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !176
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !176
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !176
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !176
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !176
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !1657

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !176
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !176
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1658

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !176
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !176
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1659

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !176
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !176
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1660

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1661

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !398, !range !77, !noundef !78
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !399
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !176
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1662
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !386
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !1663, !nonnull !78, !align !301
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !216
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !176
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !176
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1656

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #13 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !404
  %i.c = load i64, ptr %0, align 8, !tbaa !176
  %i.d = tail call noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.c)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %0, align 8, !tbaa !176
  %i.f = load ptr, ptr %1, align 8, !tbaa !404    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.g = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.e) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68   ; 5 uses
  %i.j = sub i64 9223372036854775807, %i.i
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #41
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.l = add i64 %i.i, %i.g                       ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !69
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.a, align 16, !tbaa !69
  store i8 %i.t, ptr %i.s, align 1, !tbaa !69
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.g)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !68
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !87

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #38 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !72     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.p = load i8, ptr %i.l, align 1, !tbaa !69
  store i8 %i.p, ptr %i.k, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  %i.q = icmp eq ptr %i.l, %i.b
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.r = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.s = load i64, ptr %i.b, align 8, !tbaa !69
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !72
  store i64 %.0, ptr %i.b, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !176
  %i.b = icmp ult i64 %0, %i.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.d = icmp ult i64 %0, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !526
  br i1 %or.cond, label %.loopexit, label %bb.b, !prof !526

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !176
  %i.f = icmp ult i64 %0, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c, !prof !87

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !176
  %i.h = icmp ult i64 %0, %i.g
  br i1 %i.h, label %.loopexit, label %bb.d, !prof !87

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !176
  %i.j = icmp ult i64 %0, %i.i
  br i1 %i.j, label %.loopexit, label %bb.e, !prof !87

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !176
  %i.l = icmp ult i64 %0, %i.k
  br i1 %i.l, label %.loopexit, label %bb.f, !prof !87

end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !513 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.ao, align 1, !range !77
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.pre10, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !176
  %i.bi = and i64 %i.be, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.ap, align 1, !tbaa !514, !range !77, !noundef !78 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !516
  %i.bo = sext i32 %i.az to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !86
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !176
  %i.bv = and i64 %i.br, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not.i7.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !176
  %i.bz = and i64 %i.by, 1
  %.not.i6.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !513
  br label %bb.l

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %.split.i
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !513 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cc = phi ptr [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.pre = load i8, ptr %i.ap, align 1, !tbaa !514, !range !77
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cd = phi i8 [ %i.bl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.ce = phi ptr [ %i.ca, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !515
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !516
  %i.ci = sext i32 %i.az to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !86
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cl = phi ptr [ %i.ce, %bb.n ], [ %i.ce, %bb.m ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.ck, %bb.n ], [ %i.cg, %bb.m ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.az, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cm = sext i32 %.0.i.i.i to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !176
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !235
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %indvars.iv
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !176
  %i.cr = load ptr, ptr %i.at, align 8, !tbaa !216 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i
  %i.cs = trunc i64 %indvars.iv to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = lshr i64 %indvars.iv, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !69
  %i.cz = or i8 %i.cy, %i.cu
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !69
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i, %.split.i
  %i.da = load ptr, ptr %i.at, align 8, !tbaa !216
  %i.db = and i64 %indvars.iv, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !69
  %i.de = lshr i64 %indvars.iv, 3
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !69
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !69
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1752

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !174
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !171
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !172
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.491) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.492) align 8 %2, ptr noundef byval(%class.anon.493) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !529, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !530
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1757
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1758, !nonnull !78, !align !301
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !209
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1759, !nonnull !78, !align !301
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !235
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !86
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !176
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !176
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1753

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !529, !range !77, !noundef !78
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !530
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !176
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1757
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1758, !nonnull !78, !align !301
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !209
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1759, !nonnull !78, !align !301
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !216
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !235
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !86
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !176
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !176
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1753

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !532, !range !77, !noundef !78
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !533
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !78, !align !301 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !78, !align !301 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !176
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !209
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !216
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !235
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !209
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !216
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !235
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !86
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !176
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !176
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1754

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !86
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !176
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !176
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1755

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1756

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !529, !range !77, !noundef !78
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !530
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !176
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1757
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1758, !nonnull !78, !align !301
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !209
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1759, !nonnull !78, !align !301
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !216
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !235
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !86
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !176
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !176
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1753

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.494) align 8 %2, ptr noundef byval(%class.anon.495) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !536, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !537
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1766
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1767, !nonnull !78, !align !301
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !216
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !235
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !176
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !176
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1760

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !536, !range !77, !noundef !78
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !537
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !176
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1766
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1767, !nonnull !78, !align !301
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !216
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !235
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !176
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !176
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1760

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !539, !range !77, !noundef !78
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !540
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !78, !align !301 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !176
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !216
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !235
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !216 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !235 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !176
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !176
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !176
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !176
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !176
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !176
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !176
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1761

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !176
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !176
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1762

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !176
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !176
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1763

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !176
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !176
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1764

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1765

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !536, !range !77, !noundef !78
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !537
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !176
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1766
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1767, !nonnull !78, !align !301
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !216
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !235
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !176
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !176
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1760

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.496) align 8 %2, ptr noundef byval(%class.anon.497) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

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
  %i.q = load i8, ptr %2, align 8, !tbaa !555, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !556
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !551, !nonnull !78, !align !301
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !552, !nonnull !78, !align !301
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !553, !nonnull !78, !align !301
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !209
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !86
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !216
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !176
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !69
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1768

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !555, !range !77, !noundef !78
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !556
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !176
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !551, !nonnull !78, !align !301
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !552, !nonnull !78, !align !301
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !553, !nonnull !78, !align !301
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !209
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !86
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !216
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !216
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !176
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !69
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !69
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1768

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1769

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !555, !range !77, !noundef !78
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !556
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !176
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !551, !nonnull !78, !align !301
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !552, !nonnull !78, !align !301
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !553, !nonnull !78, !align !301
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !209
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !86
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !216
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !216
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !176
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !69
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !69
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1768

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !558, !range !77, !noundef !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !559
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !176
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !551, !nonnull !78, !align !301
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !86
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !552, !nonnull !78, !align !301
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !216
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !553, !nonnull !78, !align !301
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !216
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !176
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !69
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1770

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !551, !nonnull !78, !align !301
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !209
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !86
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !552, !nonnull !78, !align !301
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !216
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !553, !nonnull !78, !align !301
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !216
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !176
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !69  ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !69
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !69
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1771

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.498) align 8 %2, ptr noundef byval(%class.anon.499) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !543, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !544
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1778
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1779, !nonnull !78, !align !301
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !235
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !176
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !176
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1772

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !543, !range !77, !noundef !78
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !544
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !176
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1778
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1779, !nonnull !78, !align !301
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !235
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !176
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !176
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !1772

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !546, !range !77, !noundef !78
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !547
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !78, !align !301 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !176
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !235
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !176
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !235 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !176 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !176
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !176
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !176
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1773

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !176
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1774

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !176
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1775

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !176
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1776

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1777

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !543, !range !77, !noundef !78
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !544
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !176
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1778
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1779, !nonnull !78, !align !301
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !235
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !176
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !176
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1772

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.501, align 8            ; 7 uses
  %7 = alloca %class.anon.500, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1780

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1783, !range !77, !noundef !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1784
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !176
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !563
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !564, !nonnull !78, !align !301 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !511  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !512, !range !77
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !513  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !235 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !176
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !176
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1781

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !514, !range !77, !noundef !78
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !515
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !176
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !176
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1781

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !516
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10BaseVectorD2Ev:bb.a
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #37
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIlED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIlE6resizeEib(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIlE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.85) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIlE8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIlEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !259
  %i.b = load ptr, ptr %3, align 8, !tbaa !197
  store ptr %i.b, ptr %7, align 8, !tbaa !197
  store ptr null, ptr %3, align 8, !tbaa !197
  %i.c = load i32, ptr %4, align 4, !tbaa !86
  %i.d = load ptr, ptr %5, align 8, !tbaa !197
  store ptr %i.d, ptr %8, align 8, !tbaa !197
  store ptr null, ptr %5, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !243
  invoke void @_ZN8facebook5velox10FlatVectorIlEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIlEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.g = load ptr, ptr %8, align 8, !tbaa !197    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !3

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !71
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !3

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !197    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !3

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !202
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !71
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !3

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  resume { ptr, i32 } %i.ai
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.517) align 8 %2, ptr noundef byval(%class.anon.518) align 8 %3) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !269, !range !77, !noundef !78
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !270
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !176
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1827
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !235
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1828, !nonnull !78, !align !301
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !176
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !176
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1821

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !269, !range !77, !noundef !78
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !270
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !176
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1827
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !235
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !1828, !nonnull !78, !align !301
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !216
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !176
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !176
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1821

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !273, !range !77, !noundef !78
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !274
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !78, !align !301 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !176
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !235
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !216
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !235 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !216 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !176
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !176
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !176
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !176
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !176
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !176
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !176
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !1822

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !176
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !176
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1823

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !176
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !176
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1824

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !176
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !176
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1825

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1826

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !269, !range !77, !noundef !78
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !270
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !176
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1827
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !235
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !1828, !nonnull !78, !align !301
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !216
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !176
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !176
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1821

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4Type13valueToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox16ShortDecimalTypeE, i64 16)
  %i.c = icmp eq ptr %i.a, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox15LongDecimalTypeE, i64 16)
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %_ZNK8facebook5velox4Type9isDecimalEv.exit.thread, label %bb.b

_ZNK8facebook5velox4Type9isDecimalEv.exit.thread: ; preds = %bb.a
  %i.d = sext i64 %2 to i128
  tail call void @_ZN8facebook5velox15LongDecimalType8toStringB5cxx11EnRKNS0_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i128 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(18) %1)
  br label %_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !65, !alias.scope !1833
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !68, !alias.scope !1833
  store i8 0, ptr %i.e, align 8, !tbaa !69, !alias.scope !1833
  %i.g = tail call i64 @llvm.abs.i64(i64 %2, i1 false)
  %i.h = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.g)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  %.lobit.i.i.i.i.i = lshr i64 %2, 63
  %i.i = add i64 %i.h, %.lobit.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i)
          to label %.noexc3.i.i unwind label %bb.c

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %2, ptr noundef nonnull align 8 %0)
          to label %_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc3.i.i, %.noexc.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %0, align 8, !tbaa !72, !alias.scope !1833 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8, !tbaa !69, !alias.scope !1833
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.j

_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit: ; preds = %.noexc3.i.i, %_ZNK8facebook5velox4Type9isDecimalEv.exit.thread
  ret void
}

declare void @_ZN8facebook5velox15LongDecimalType8toStringB5cxx11EnRKNS0_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i128 noundef, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox16ShortDecimalTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE4EEE, i64 16), ptr %0, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE4EEE, i64 192), ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.c) #37, !inline_history !566
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(544) %i.b) #37, !inline_history !566
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 568) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE7childAtEj(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE7childAtEjE18veloxCheckFailArgs, ptr noundef nonnull @.str.141) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8TypeBaseILNS0_8TypeKindE4EE15isPrimitiveTypeEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE12isComparableEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE11isOrderableEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE4nameEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret ptr @.str.142
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i64 } @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE10parametersEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8facebook5velox8TypeBaseILNS0_8TypeKindE4EE8kindNameEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret ptr @.str.143
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(568) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.542", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !243, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.e = load i8, ptr %i.d, align 8, !tbaa !243, !range !77, !noundef !78
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE5scaleEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE5scaleEv.exit: ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE9precisionEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !176
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.k = load i64, ptr %i.j, align 8, !tbaa !176
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !1836
  %i.m = and i32 %i.i, 255
  store i32 %i.m, ptr %2, align 16, !tbaa !69, !noalias !1836
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = and i32 %i.l, 255
  store i32 %i.o, ptr %i.n, align 16, !tbaa !69, !noalias !1836
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.144, i64 15, i64 34, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !1836
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE10equivalentERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !71
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89   ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.h, align 1, !tbaa !69
  %.not.i = icmp eq i8 %i.l, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread9, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !tbaa !69
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.o) #37
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread9
end_hunk_5
