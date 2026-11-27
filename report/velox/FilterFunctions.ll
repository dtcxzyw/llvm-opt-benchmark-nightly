Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/FilterFunctions?download=true
inline.NumInlined: 3069
inline.NumDeleted: 1408
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.nh, %i.nl
  br i1 %.not34.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %bb.ch

.lr.ph.i.i.i.i.i129.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.px = phi i32 [ %i.sk, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.pw, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i ] ; 2 uses
  %.080.i.i.i.i.i.i = phi i32 [ %i.px, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.nk, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i ] ; 2 uses
  %i.py = sdiv i32 %.080.i.i.i.i.i.i, 64          ; 3 uses
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.pz
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !302 ; 3 uses
  switch i64 %i.qb, label %.lr.ph.i.i.i.i.i.i.i [
    i64 -1, label %bb.cg
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i129.i
  %i.qc = shl nsw i32 %i.py, 6
  %i.qd = sext i32 %i.qc to i64
  %invariant.gep98.i = getelementptr [4 x i8], ptr %i.ks, i64 %i.qd ; 2 uses
  br i1 %.not.i126.i, label %._crit_edge.i19.i.i.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.split

._crit_edge.i19.i.i.i.i.i.i.i.us:                 ; preds = %.lr.ph.i.i.i.i.i.i.i, %._crit_edge.i19.i.i.i.i.i.i.i.us
  %.01530.i.i.i.i.i.i.i.us = phi i64 [ %i.qn, %._crit_edge.i19.i.i.i.i.i.i.i.us ], [ %i.qb, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.qe = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01530.i.i.i.i.i.i.i.us, i1 true)
  %gep99.i.us = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %i.qe
  %.pre5.i25.i.i.i.i.i.i.i.us = load i32, ptr %gep99.i.us, align 4, !tbaa !238 ; 2 uses
  %.pre6.i26.i.i.i.i.i.i.i.us = sext i32 %.pre5.i25.i.i.i.i.i.i.i.us to i64
  %i.qf = trunc i32 %.pre5.i25.i.i.i.i.i.i.i.us to i8
  %i.qg = and i8 %i.qf, 7
  %i.qh = shl nuw i8 1, %i.qg
  %i.qi = lshr i64 %.pre6.i26.i.i.i.i.i.i.i.us, 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.qi ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !237
  %i.ql = or i8 %i.qk, %i.qh
  store i8 %i.ql, ptr %i.qj, align 1, !tbaa !237
  %i.qm = add i64 %.01530.i.i.i.i.i.i.i.us, -1
  %i.qn = and i64 %i.qm, %.01530.i.i.i.i.i.i.i.us ; 2 uses
  %.not.i60.i.i.i.i.i.i.us = icmp eq i64 %i.qn, 0
  br i1 %.not.i60.i.i.i.i.i.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, label %._crit_edge.i19.i.i.i.i.i.i.i.us, !llvm.loop !1104

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i129.i
  %i.qo = shl nsw i32 %i.py, 6                    ; 2 uses
  %i.qp = add i32 %i.qo, 64
  %i.qq = sext i32 %i.qp to i64                   ; 2 uses
  %.0.off.i.i.i.i.i.i = add i32 %.080.i.i.i.i.i.i, 127
  %.not33.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i, 64
  br i1 %.not33.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph32.i.i.i.i.i.i.i

.lr.ph32.i.i.i.i.i.i.i:                           ; preds = %bb.cg
  %i.qr = sext i32 %i.qo to i64                   ; 2 uses
  br i1 %.not.i126.i, label %._crit_edge.i.i54.i.i.i.i.i.i.us, label %.lr.ph32.i.i.i.i.i.i.i.split

._crit_edge.i.i54.i.i.i.i.i.i.us:                 ; preds = %.lr.ph32.i.i.i.i.i.i.i, %._crit_edge.i.i54.i.i.i.i.i.i.us
  %.031.i.i.i.i.i.i.i.us = phi i64 [ %i.rb, %._crit_edge.i.i54.i.i.i.i.i.i.us ], [ %i.qr, %.lr.ph32.i.i.i.i.i.i.i ] ; 2 uses
  %i.qs = shl i64 %.031.i.i.i.i.i.i.i.us, 32
  %i.qt = ashr exact i64 %i.qs, 30
  %.phi.trans.insert4.i.i57.i.i.i.i.i.i.us = getelementptr inbounds i8, ptr %i.ks, i64 %i.qt
  %.pre5.i.i58.i.i.i.i.i.i.us = load i32, ptr %.phi.trans.insert4.i.i57.i.i.i.i.i.i.us, align 4, !tbaa !238 ; 2 uses
  %.pre6.i.i59.i.i.i.i.i.i.us = sext i32 %.pre5.i.i58.i.i.i.i.i.i.us to i64
  %i.qu = trunc i32 %.pre5.i.i58.i.i.i.i.i.i.us to i8
  %i.qv = and i8 %i.qu, 7
  %i.qw = shl nuw i8 1, %i.qv
  %i.qx = lshr i64 %.pre6.i.i59.i.i.i.i.i.i.us, 3
  %i.qy = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.qx ; 2 uses
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !237
  %i.ra = or i8 %i.qz, %i.qw
  store i8 %i.ra, ptr %i.qy, align 1, !tbaa !237
  %i.rb = add nuw i64 %.031.i.i.i.i.i.i.i.us, 1   ; 2 uses
  %i.rc = icmp ult i64 %i.rb, %i.qq
  br i1 %i.rc, label %._crit_edge.i.i54.i.i.i.i.i.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !1105

.lr.ph32.i.i.i.i.i.i.i.split:                     ; preds = %.lr.ph32.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i
  %.031.i.i.i.i.i.i.i = phi i64 [ %i.rs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i ], [ %i.qr, %.lr.ph32.i.i.i.i.i.i.i ] ; 2 uses
  %i.rd = shl i64 %.031.i.i.i.i.i.i.i, 32
  %i.re = ashr exact i64 %i.rd, 30
  %.phi.trans.insert4.i.i57.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ks, i64 %i.re
  %.pre5.i.i58.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert4.i.i57.i.i.i.i.i.i, align 4, !tbaa !238 ; 2 uses
  %.pre6.i.i59.i.i.i.i.i.i = sext i32 %.pre5.i.i58.i.i.i.i.i.i to i64 ; 3 uses
  %i.rf = lshr i64 %.pre6.i.i59.i.i.i.i.i.i, 6
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.rf
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !302
  %i.ri = and i64 %.pre6.i.i59.i.i.i.i.i.i, 63
  %i.rj = shl nuw i64 1, %i.ri
  %i.rk = and i64 %i.rh, %i.rj
  %.not.i.i51.i.i.i.i.i.i = icmp eq i64 %i.rk, 0
  br i1 %.not.i.i51.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i, label %._crit_edge.i.i54.i.i.i.i.i.i

._crit_edge.i.i54.i.i.i.i.i.i:                    ; preds = %.lr.ph32.i.i.i.i.i.i.i.split
  %i.rl = trunc i32 %.pre5.i.i58.i.i.i.i.i.i to i8
  %i.rm = and i8 %i.rl, 7
  %i.rn = shl nuw i8 1, %i.rm
  %i.ro = lshr i64 %.pre6.i.i59.i.i.i.i.i.i, 3
  %i.rp = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.ro ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !237
  %i.rr = or i8 %i.rq, %i.rn
  store i8 %i.rr, ptr %i.rp, align 1, !tbaa !237
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i: ; preds = %._crit_edge.i.i54.i.i.i.i.i.i, %.lr.ph32.i.i.i.i.i.i.i.split
  %i.rs = add nuw i64 %.031.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.rt = icmp ult i64 %i.rs, %i.qq
  br i1 %i.rt, label %.lr.ph32.i.i.i.i.i.i.i.split, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !1105

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i
  %.01530.i.i.i.i.i.i.i = phi i64 [ %i.sj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i ], [ %i.qb, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ru = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01530.i.i.i.i.i.i.i, i1 true)
  %gep99.i = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %i.ru
  %.pre5.i25.i.i.i.i.i.i.i = load i32, ptr %gep99.i, align 4, !tbaa !238 ; 2 uses
  %.pre6.i26.i.i.i.i.i.i.i = sext i32 %.pre5.i25.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.rv = lshr i64 %.pre6.i26.i.i.i.i.i.i.i, 6
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !302
  %i.ry = and i64 %.pre6.i26.i.i.i.i.i.i.i, 63
  %i.rz = shl nuw i64 1, %i.ry
  %i.sa = and i64 %i.rx, %i.rz
  %.not.i17.i.i.i.i.i.i.i = icmp eq i64 %i.sa, 0
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i, label %._crit_edge.i19.i.i.i.i.i.i.i

._crit_edge.i19.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.split
  %i.sb = trunc i32 %.pre5.i25.i.i.i.i.i.i.i to i8
  %i.sc = and i8 %i.sb, 7
  %i.sd = shl nuw i8 1, %i.sc
  %i.se = lshr i64 %.pre6.i26.i.i.i.i.i.i.i, 3
  %i.sf = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.se ; 2 uses
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !237
  %i.sh = or i8 %i.sg, %i.sd
  store i8 %i.sh, ptr %i.sf, align 1, !tbaa !237
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i: ; preds = %._crit_edge.i19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %i.si = add i64 %.01530.i.i.i.i.i.i.i, -1
  %i.sj = and i64 %i.si, %.01530.i.i.i.i.i.i.i    ; 2 uses
  %.not.i60.i.i.i.i.i.i = icmp eq i64 %i.sj, 0
  br i1 %.not.i60.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.split, !llvm.loop !1104

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i, %._crit_edge.i.i54.i.i.i.i.i.i.us, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i, %._crit_edge.i19.i.i.i.i.i.i.i.us, %bb.cg, %.lr.ph.i.i.i.i.i129.i
  %i.sk = add nsw i32 %i.px, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.sk, %i.nl
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i129.i, !llvm.loop !1106

bb.ch:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.sl = ashr i32 %i.nh, 6
  %i.sm = and i32 %i.nh, 63
  %i.sn = zext nneg i32 %i.sm to i64
  %notmask.i61.i.i.i.i.i.i = shl nsw i64 -1, %i.sn
  %i.so = xor i64 %notmask.i61.i.i.i.i.i.i, -1
  %i.sp = sext i32 %i.sl to i64
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %i.sp
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !302
  %i.ss = and i64 %i.sr, %i.so                    ; 2 uses
  %.not.i62.i.i.i.i.i.i = icmp eq i64 %i.ss, 0
  br i1 %.not.i62.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %.preheader.i63.i.i.i.i.preheader.i.i

.preheader.i63.i.i.i.i.preheader.i.i:             ; preds = %bb.ch
  %i.st = sext i32 %i.nl to i64
  %invariant.gep100.i = getelementptr [4 x i8], ptr %i.ks, i64 %i.st
  br label %.preheader.i63.i.i.i.i.i.i

.preheader.i63.i.i.i.i.i.i:                       ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i, %.preheader.i63.i.i.i.i.preheader.i.i
  %.011.i64.i.i.i.i.i.i = phi i64 [ %i.tj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i ], [ %i.ss, %.preheader.i63.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.su = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i64.i.i.i.i.i.i, i1 true)
  %gep101.i = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %i.su
  %.pre5.i.i74.i.i.i.i.i.i = load i32, ptr %gep101.i, align 4, !tbaa !238 ; 2 uses
  %.pre6.i.i75.i.i.i.i.i.i = sext i32 %.pre5.i.i74.i.i.i.i.i.i to i64 ; 3 uses
  br i1 %.not.i126.i, label %._crit_edge.i.i69.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.preheader.i63.i.i.i.i.i.i
  %i.sv = lshr i64 %.pre6.i.i75.i.i.i.i.i.i, 6
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.sv
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !302
  %i.sy = and i64 %.pre6.i.i75.i.i.i.i.i.i, 63
  %i.sz = shl nuw i64 1, %i.sy
  %i.ta = and i64 %i.sx, %i.sz
  %.not.i.i65.i.i.i.i.i.i = icmp eq i64 %i.ta, 0
  br i1 %.not.i.i65.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i, label %._crit_edge.i.i69.i.i.i.i.i.i

._crit_edge.i.i69.i.i.i.i.i.i:                    ; preds = %bb.ci, %.preheader.i63.i.i.i.i.i.i
  %i.tb = trunc i32 %.pre5.i.i74.i.i.i.i.i.i to i8
  %i.tc = and i8 %i.tb, 7
  %i.td = shl nuw i8 1, %i.tc
  %i.te = lshr i64 %.pre6.i.i75.i.i.i.i.i.i, 3
  %i.tf = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.te ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !237
  %i.th = or i8 %i.tg, %i.td
  store i8 %i.th, ptr %i.tf, align 1, !tbaa !237
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i: ; preds = %._crit_edge.i.i69.i.i.i.i.i.i, %bb.ci
  %i.ti = add nuw i64 %.011.i64.i.i.i.i.i.i, 9223372036854775807
  %i.tj = and i64 %i.ti, %.011.i64.i.i.i.i.i.i    ; 2 uses
  %.not10.i68.i.i.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %.not10.i68.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %.preheader.i63.i.i.i.i.i.i, !llvm.loop !1103

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i, %bb.ch, %._crit_edge.i.i.i.i.i.i, %bb.ca, %bb.by, %bb.bv
  %i.tk = load ptr, ptr %43, align 8, !tbaa !409  ; 14 uses
  %i.tl = load i32, ptr %i.ga, align 8, !tbaa !445 ; 17 uses
  %.not.i.i.i10.i.i = icmp sgt i32 %i.tl, 0
  br i1 %.not.i.i.i10.i.i, label %bb.cj, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i

bb.cj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i
  %i.tm = and i32 %i.tl, 2147483584               ; 8 uses
  %.not3347.i.i.i.i.i = icmp eq i32 %i.tm, 0      ; 2 uses
  br i1 %.not3347.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.cj
  %i.tn = add nsw i32 %i.tl, -64
  %i.to = lshr i32 %i.tn, 3
  %i.tp = and i32 %i.to, 536870904
  %narrow.i.i.i = add nuw nsw i32 %i.tp, 8
  %i.tq = zext nneg i32 %narrow.i.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tk, i8 0, i64 %i.tq, i1 false), !tbaa !302
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.preheader.i.i.i, %bb.cj
  %.not34.i.i.i.i.i = icmp eq i32 %i.tl, %i.tm    ; 4 uses
  br i1 %.not34.i.i.i.i.i, label %.thread.i.i, label %bb.ck

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i.i.i
  store i16 256, ptr %i.gb, align 4
  br label %iter.check

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.tr = lshr i32 %i.tl, 6
  %i.ts = and i32 %i.tl, 63
  %i.tt = zext nneg i32 %i.ts to i64
  %notmask.i37.i.i.i.i.i = shl nsw i64 -1, %i.tt  ; 2 uses
  %i.tu = zext nneg i32 %i.tr to i64              ; 2 uses
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.tu ; 2 uses
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !302
  %i.tx = and i64 %i.tw, %notmask.i37.i.i.i.i.i
  store i64 %i.tx, ptr %i.tv, align 8, !tbaa !302
  store i16 256, ptr %i.gb, align 4
  br i1 %.not3347.i.i.i.i.i, label %._crit_edge.i.i.i12.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.ck, %.thread.i.i
  %i.ty = zext nneg i32 %i.tm to i64              ; 5 uses
  %i.tz = call i64 @llvm.usub.sat.i64(i64 %i.ty, i64 64)
  %i.ua = lshr exact i64 %i.tz, 6
  %i.ub = add nuw nsw i64 %i.ua, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i32 %i.tm, 256
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %66 = add nsw i64 %i.ty, -64
  %i.uc = lshr exact i64 %66, 3
  %i.ud = add nuw nsw i64 %i.uc, 8                ; 2 uses
  %i.ue = getelementptr i8, ptr %i.tk, i64 %i.ud
  %i.uf = getelementptr i8, ptr %i.kx, i64 %i.ud
  %bound0 = icmp ult ptr %i.tk, %i.uf
  %bound1 = icmp ult ptr %i.kx, %i.ue
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check403 = icmp samesign ult i32 %i.tm, 1024
  br i1 %min.iters.check403, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ug = and i64 %i.ub, 12
  %n.vec = and i64 %i.ub, 67108848                ; 4 uses
  %i.uh = shl nuw nsw i64 %n.vec, 6               ; 2 uses
  %i.ui = or disjoint i64 %i.uh, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %index ; 5 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 32 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 64 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.uj, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  %wide.load404 = load <4 x i64>, ptr %i.uk, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  %wide.load405 = load <4 x i64>, ptr %i.ul, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  %wide.load406 = load <4 x i64>, ptr %i.um, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %index ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 96
  %wide.load407 = load <4 x i64>, ptr %i.un, align 8, !tbaa !302, !alias.scope !1149
  %wide.load408 = load <4 x i64>, ptr %i.uo, align 8, !tbaa !302, !alias.scope !1149
  %wide.load409 = load <4 x i64>, ptr %i.up, align 8, !tbaa !302, !alias.scope !1149
  %wide.load410 = load <4 x i64>, ptr %i.uq, align 8, !tbaa !302, !alias.scope !1149
  %i.ur = or <4 x i64> %wide.load407, %wide.load
  %i.us = or <4 x i64> %wide.load408, %wide.load404
  %i.ut = or <4 x i64> %wide.load409, %wide.load405
  %i.uu = or <4 x i64> %wide.load410, %wide.load406
  store <4 x i64> %i.ur, ptr %i.uj, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  store <4 x i64> %i.us, ptr %i.uk, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  store <4 x i64> %i.ut, ptr %i.ul, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  store <4 x i64> %i.uu, ptr %i.um, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.uv = icmp eq i64 %index.next, %n.vec
  br i1 %i.uv, label %middle.block, label %vector.body, !llvm.loop !1110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ub, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i12.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ug, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !524

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec411 = and i64 %i.ub, 67108860             ; 3 uses
  %i.uw = shl nuw nsw i64 %n.vec411, 6            ; 2 uses
  %i.ux = or disjoint i64 %i.uw, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index412 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next415, %vec.epilog.vector.body ] ; 3 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %index412 ; 2 uses
  %wide.load413 = load <4 x i64>, ptr %i.uy, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %index412
  %wide.load414 = load <4 x i64>, ptr %i.uz, align 8, !tbaa !302, !alias.scope !1149
  %i.va = or <4 x i64> %wide.load414, %wide.load413
  store <4 x i64> %i.va, ptr %i.uy, align 8, !tbaa !302, !alias.scope !1148, !noalias !1149
  %index.next415 = add nuw i64 %index412, 4       ; 2 uses
  %i.vb = icmp eq i64 %index.next415, %n.vec411
  br i1 %i.vb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n416 = icmp eq i64 %i.ub, %n.vec411
  br i1 %cmp.n416, label %._crit_edge.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv37.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.uh, %vec.epilog.iter.check ], [ %i.uw, %vec.epilog.middle.block ]
  %indvars.iv.i.i.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.ui, %vec.epilog.iter.check ], [ %i.ux, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i12.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  br i1 %.not34.i.i.i.i.i, label %bb.cl, label %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i

._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i: ; preds = %._crit_edge.i.i.i12.i.i
  %.pre154.i = lshr i32 %i.tl, 6
  %.pre156.i = and i32 %i.tl, 63
  %.pre158.i = zext nneg i32 %.pre156.i to i64
  %.pre160.i = shl nsw i64 -1, %.pre158.i
  %.pre161.i = zext nneg i32 %.pre154.i to i64
  br label %._crit_edge.i.i.i12.thread.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv37.i.i = phi i64 [ %indvars.iv.next38.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv37.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.vc = lshr exact i64 %indvars.iv37.i.i, 6     ; 2 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.vc ; 2 uses
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !302
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.vc
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !302
  %i.vh = or i64 %i.vg, %i.ve
  store i64 %i.vh, ptr %i.vd, align 8, !tbaa !302
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64
  %.not33.i.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.ty
  %indvars.iv.next38.i.i = add nuw nsw i64 %indvars.iv37.i.i, 64
  br i1 %.not33.i.i.i.not.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i12.i.i, !llvm.loop !1112

._crit_edge.i.i.i12.thread.i.i:                   ; preds = %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i, %bb.ck
  %.pre152.pre-phi.i = phi i64 [ %i.ty, %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i ], [ 0, %bb.ck ]
  %.pre-phi162.i = phi i64 [ %.pre161.i, %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i ], [ %i.tu, %bb.ck ] ; 2 uses
  %notmask.i36.i.i.i.i.pre-phi.i = phi i64 [ %.pre160.i, %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i ], [ %notmask.i37.i.i.i.i.i, %bb.ck ] ; 2 uses
  %i.vi = xor i64 %notmask.i36.i.i.i.i.pre-phi.i, -1
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %.pre-phi162.i ; 2 uses
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !302 ; 2 uses
  %i.vl = and i64 %i.vk, %notmask.i36.i.i.i.i.pre-phi.i
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %.pre-phi162.i
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !302
  %i.vo = or i64 %i.vn, %i.vk
  %i.vp = and i64 %i.vo, %i.vi
  %i.vq = or disjoint i64 %i.vp, %i.vl
  store i64 %i.vq, ptr %i.vj, align 8, !tbaa !302
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.i.i.i12.thread.i.i, %._crit_edge.i.i.i12.i.i
  %.pre-phi153.i = phi i64 [ %.pre152.pre-phi.i, %._crit_edge.i.i.i12.thread.i.i ], [ %i.ty, %._crit_edge.i.i.i12.i.i ]
  br label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %indvars.iv.i15.i.i = phi i64 [ %indvars.iv.next.i16.i.i, %bb.cm ], [ 0, %bb.cl ] ; 4 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.i15.i.i, %.pre-phi153.i
  br i1 %.not37.i.i.not.i.i.i, label %bb.cm, label %.critedge.i.i.i.i.i

bb.cm:                                            ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i
  %indvars.iv.next.i16.i.i = add nuw nsw i64 %indvars.iv.i15.i.i, 64
  %i.vr = lshr exact i64 %indvars.iv.i15.i.i, 3
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.vr
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !302 ; 2 uses
  %.not.i42.i.i.i.i.i = icmp eq i64 %i.vt, 0
  br i1 %.not.i42.i.i.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i, !llvm.loop !20

.critedge.i.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i.i.i
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i
  %i.vu = lshr i32 %i.tl, 6
  %i.vv = and i32 %i.tl, 63
  %i.vw = zext nneg i32 %i.vv to i64
  %notmask.i43.i.i.i.i.i = shl nsw i64 -1, %i.vw
  %i.vx = xor i64 %notmask.i43.i.i.i.i.i, -1
  %i.vy = zext nneg i32 %i.vu to i64
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.vy
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !302
  %i.wb = and i64 %i.wa, %i.vx                    ; 2 uses
  %.not.i44.i.i.i.i.i = icmp eq i64 %i.wb, 0
  br i1 %.not.i44.i.i.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i: ; preds = %bb.cn, %.critedge.i.i.i.i.i, %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i
  store i32 0, ptr %i.fz, align 4, !tbaa !440
  store i32 0, ptr %i.fy, align 8, !tbaa !372
  store i16 256, ptr %i.gb, align 4
  br label %_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKi.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i: ; preds = %bb.cm
  %i.wc = trunc nuw nsw i64 %indvars.iv.i15.i.i to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i, %bb.cn
  %.sink67.i.i.i.i.i = phi i64 [ %i.wb, %bb.cn ], [ %i.vt, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i ]
  %.sink65.i.i.i.i.i = phi i32 [ %i.tm, %bb.cn ], [ %i.wc, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i.i.i ]
  %i.wd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i.i.i, i1 true)
  %i.we = trunc nuw nsw i64 %i.wd to i32
  %i.wf = or disjoint i32 %.sink65.i.i.i.i.i, %i.we ; 7 uses
  store i32 %i.wf, ptr %i.fz, align 4, !tbaa !440
  %.not.i361.i = icmp slt i32 %i.wf, %i.tl
  br i1 %.not.i361.i, label %bb.co, label %.noexc133.i

bb.co:                                            ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i.i.i
  %i.wg = add i32 %i.wf, 63                       ; 2 uses
  %i.wh = srem i32 %i.wg, 64
  %i.wi = sub nsw i32 %i.wg, %i.wh                ; 5 uses
  %i.wj = icmp slt i32 %i.tm, %i.wi
  br i1 %i.wj, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.wk = lshr i32 %i.tl, 6
  %i.wl = and i32 %i.tl, 63
  %i.wm = zext nneg i32 %i.wl to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.wm
  %i.wn = xor i64 %notmask.i.i.i, -1
  %i.wo = sub nsw i32 %i.wi, %i.wf                ; 2 uses
  %i.wp = zext nneg i32 %i.wo to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.wp
  %i.wq = xor i64 %notmask.i.i.i.i, -1
  %i.wr = sub nsw i32 64, %i.wo
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = shl i64 %i.wq, %i.ws
  %i.wu = and i64 %i.wt, %i.wn
  %i.wv = zext nneg i32 %i.wk to i64
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.wv
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !302
  %i.wy = and i64 %i.wu, %i.wx                    ; 2 uses
  %.not.i.i364.i = icmp eq i64 %i.wy, 0
  br i1 %.not.i.i364.i, label %.noexc133.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wz = or i32 %i.tl, 63
end_hunk_0
