inline.NumInlined: 39046
inline.NumDeleted: 11423
begin_hunk_0_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_:bb.a
  %.not91.i = icmp ult i32 %.0.off, 64
  br i1 %.not91.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %bb.k
  %i.fa = sext i32 %i.ex to i64                   ; 23 uses
  %.pre93.i = load ptr, ptr %.phi.trans.insert.i51, align 8, !tbaa !9617 ; 2 uses
  %.phi.trans.insert94.i = getelementptr inbounds nuw i8, ptr %.pre93.i, i64 120
  %.pre95.i = load ptr, ptr %.phi.trans.insert94.i, align 8, !tbaa !9621 ; 4 uses
  %.phi.trans.insert96.i = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 58
  %.pre97.i = load i8, ptr %.phi.trans.insert96.i, align 2, !tbaa !965, !range !182
  %i.fb = trunc nuw i8 %.pre97.i to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %.pre93.i, i64 144
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !9610 ; 9 uses
  %i.fg = load ptr, ptr %i.ef, align 8, !tbaa !9622, !nonnull !183, !align !321
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !9623, !nonnull !183, !align !321
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !768 ; 8 uses
  br i1 %i.fb, label %iter.check, label %.lr.ph90.i.split

iter.check:                                       ; preds = %.lr.ph90.i
  %i.fk = or disjoint i64 %i.fa, 1
  %umax119 = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.ez) ; 2 uses
  %i.fl = sub i64 %umax119, %i.fa                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.fl, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fm = or disjoint i64 %i.fa, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 %i.ez)
  %i.fn = xor i64 %i.fa, -1
  %i.fo = add i64 %umax, %i.fn                    ; 2 uses
  %i.fp = sext i32 %i.ex to i34                   ; 2 uses
  %i.fq = shl nsw i34 %i.fp, 2
  %i.fr = trunc i64 %i.fo to i34
  %i.fs = add i34 %i.fp, %i.fr
  %i.ft = shl i34 %i.fs, 2
  %i.fu = icmp slt i34 %i.ft, %i.fq
  %i.fv = icmp ugt i64 %i.fo, 4294967295
  %i.fw = or i1 %i.fu, %i.fv
  br i1 %i.fw, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check120 = icmp ult i64 %i.fl, 16
  %n.mod.vf124 = and i64 %umax119, 1              ; 3 uses
  %n.vec125 = sub i64 %i.fl, %n.mod.vf124         ; 3 uses
  %i.fx = add i64 %n.vec125, %i.fa                ; 2 uses
  br i1 %min.iters.check120, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fy = add i64 %index, %i.fa                   ; 2 uses
  %i.fz = shl i64 %i.fy, 32
  %i.ga = ashr exact i64 %i.fz, 30
  %i.gb = getelementptr inbounds i8, ptr %i.ff, i64 %i.ga ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %wide.load = load <4 x i32>, ptr %i.gb, align 4, !tbaa !3
  %wide.load121 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !3
  %wide.load122 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !3
  %wide.load123 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !3
  %i.gf = sext <4 x i32> %wide.load to <4 x i64>
  %i.gg = sext <4 x i32> %wide.load121 to <4 x i64>
  %i.gh = sext <4 x i32> %wide.load122 to <4 x i64>
  %i.gi = sext <4 x i32> %wide.load123 to <4 x i64>
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fy ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  store <4 x i64> %i.gf, ptr %i.gj, align 8, !tbaa !243
  store <4 x i64> %i.gg, ptr %i.gk, align 8, !tbaa !243
  store <4 x i64> %i.gh, ptr %i.gl, align 8, !tbaa !243
  store <4 x i64> %i.gi, ptr %i.gm, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec125
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !9633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf124, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index126 = phi i64 [ %index.next128, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.go = add i64 %index126, %i.fa                ; 2 uses
  %i.gp = shl i64 %i.go, 32
  %i.gq = ashr exact i64 %i.gp, 30
  %i.gr = getelementptr inbounds i8, ptr %i.ff, i64 %i.gq
  %wide.load127 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !3
  %i.gs = sext <4 x i32> %wide.load127 to <4 x i64>
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.go
  store <4 x i64> %i.gs, ptr %i.gt, align 8, !tbaa !243
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next128, %n.vec125
  br i1 %i.gu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9634

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %n.mod.vf124, 0
  br i1 %cmp.n129, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.089.i.us.ph = phi i64 [ %i.fx, %middle.block ], [ %i.fa, %vector.scevcheck ], [ %i.fa, %iter.check ], [ %i.fx, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us

_ZN8facebook5velox6StatusD2Ev.exit39.i.us:        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us
  %.089.i.us = phi i64 [ %i.ha, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us ], [ %.089.i.us.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader ] ; 3 uses
  %sext = shl i64 %.089.i.us, 32
  %i.gv = ashr exact i64 %sext, 30
  %i.gw = getelementptr inbounds i8, ptr %i.ff, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.089.i.us
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !243
  %i.ha = add nuw i64 %.089.i.us, 1               ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.ez
  br i1 %i.hb, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, !llvm.loop !9635

.lr.ph90.i.split:                                 ; preds = %.lr.ph90.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre95.i, i64 59
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !966, !range !182, !noundef !183
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %iter.check144, label %.lr.ph90.i.split.split

iter.check144:                                    ; preds = %.lr.ph90.i.split
  %i.hf = load i32, ptr %i.fd, align 8, !tbaa !967
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = or disjoint i64 %i.fa, 1
  %umax131 = tail call i64 @llvm.umax.i64(i64 %i.hk, i64 %i.ez) ; 2 uses
  %i.hl = sub i64 %umax131, %i.fa                 ; 3 uses
  %min.iters.check132 = icmp ult i64 %i.hl, 4
  br i1 %min.iters.check132, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader, label %vector.main.loop.iter.check133

vector.main.loop.iter.check133:                   ; preds = %iter.check144
  %min.iters.check134 = icmp ult i64 %i.hl, 16
  %n.mod.vf149 = and i64 %umax131, 1              ; 3 uses
  %n.vec150 = sub nuw i64 %i.hl, %n.mod.vf149     ; 3 uses
  %i.hm = add i64 %n.vec150, %i.fa                ; 2 uses
  %broadcast.splatinsert151 = insertelement <4 x i64> poison, i64 %i.hj, i64 0
  %broadcast.splat152 = shufflevector <4 x i64> %broadcast.splatinsert151, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check134, label %vec.epilog.vector.body153.preheader, label %vector.body138.preheader

vector.body138.preheader:                         ; preds = %vector.main.loop.iter.check133
  %invariant.gep = getelementptr [8 x i8], ptr %i.fj, i64 %i.fa
  br label %vector.body138

vec.epilog.vector.body153.preheader:              ; preds = %vector.main.loop.iter.check133
  %invariant.gep182 = getelementptr [8 x i8], ptr %i.fj, i64 %i.fa
  br label %vec.epilog.vector.body153

vector.body138:                                   ; preds = %vector.body138.preheader, %vector.body138
  %index139 = phi i64 [ %index.next140, %vector.body138 ], [ 0, %vector.body138.preheader ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index139 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.hp = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat152, ptr %gep, align 8, !tbaa !243
  store <4 x i64> %broadcast.splat152, ptr %i.hn, align 8, !tbaa !243
  store <4 x i64> %broadcast.splat152, ptr %i.ho, align 8, !tbaa !243
  store <4 x i64> %broadcast.splat152, ptr %i.hp, align 8, !tbaa !243
  %index.next140 = add nuw i64 %index139, 16      ; 2 uses
  %i.hq = icmp eq i64 %index.next140, %n.vec150
  br i1 %i.hq, label %middle.block141, label %vector.body138, !llvm.loop !9636

middle.block141:                                  ; preds = %vector.body138
  %cmp.n142 = icmp eq i64 %n.mod.vf149, 0
  br i1 %cmp.n142, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader

vec.epilog.vector.body153:                        ; preds = %vec.epilog.vector.body153.preheader, %vec.epilog.vector.body153
  %index154 = phi i64 [ %index.next155, %vec.epilog.vector.body153 ], [ 0, %vec.epilog.vector.body153.preheader ] ; 2 uses
  %gep183 = getelementptr [8 x i8], ptr %invariant.gep182, i64 %index154
  store <4 x i64> %broadcast.splat152, ptr %gep183, align 8, !tbaa !243
  %index.next155 = add nuw i64 %index154, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.hr, label %vec.epilog.middle.block156, label %vec.epilog.vector.body153, !llvm.loop !9637

vec.epilog.middle.block156:                       ; preds = %vec.epilog.vector.body153
  %cmp.n157 = icmp eq i64 %n.mod.vf149, 0
  br i1 %cmp.n157, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader: ; preds = %middle.block141, %iter.check144, %vec.epilog.middle.block156
  %.089.i.us75.ph = phi i64 [ %i.hm, %middle.block141 ], [ %i.fa, %iter.check144 ], [ %i.hm, %vec.epilog.middle.block156 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76

_ZN8facebook5velox6StatusD2Ev.exit39.i.us76:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76
  %.089.i.us75 = phi i64 [ %i.ht, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76 ], [ %.089.i.us75.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.089.i.us75
  store i64 %i.hj, ptr %i.hs, align 8, !tbaa !243
  %i.ht = add nuw i64 %.089.i.us75, 1             ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.ez
  br i1 %i.hu, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, !llvm.loop !9638

.lr.ph90.i.split.split:                           ; preds = %.lr.ph90.i.split
  %i.hv = load ptr, ptr %i.fc, align 8, !tbaa !968 ; 5 uses
  %i.hw = or disjoint i64 %i.fa, 1
  %umax164 = tail call i64 @llvm.umax.i64(i64 %i.hw, i64 %i.ez) ; 2 uses
  %i.hx = sub i64 %umax164, %i.fa                 ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.hx, 40
  br i1 %min.iters.check165, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.scevcheck159

vector.scevcheck159:                              ; preds = %.lr.ph90.i.split.split
  %i.hy = or disjoint i64 %i.fa, 1
  %umax160 = tail call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.ez)
  %i.hz = xor i64 %i.fa, -1
  %i.ia = add i64 %umax160, %i.hz                 ; 2 uses
  %i.ib = sext i32 %i.ex to i34                   ; 2 uses
  %i.ic = shl nsw i34 %i.ib, 2
  %i.id = trunc i64 %i.ia to i34
  %i.ie = add i34 %i.ib, %i.id
  %i.if = shl i34 %i.ie, 2
  %i.ig = icmp slt i34 %i.if, %i.ic
  %i.ih = icmp ugt i64 %i.ia, 4294967295
  %i.ii = or i1 %i.ig, %i.ih
  br i1 %i.ii, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %vector.scevcheck159
  %n.mod.vf167 = and i64 %umax164, 1              ; 2 uses
  %n.vec168 = sub i64 %i.hx, %n.mod.vf167         ; 2 uses
  %i.ij = add i64 %n.vec168, %i.fa
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next171, %vector.body169 ] ; 2 uses
  %i.ik = add i64 %index170, %i.fa                ; 5 uses
  %i.il = shl i64 %i.ik, 32
  %i.im = shl i64 %i.ik, 32
  %i.in = shl i64 %i.ik, 32
  %i.io = shl i64 %i.ik, 32
  %i.ip = ashr exact i64 %i.il, 30
  %i.iq = ashr exact i64 %i.im, 30
  %i.ir = ashr exact i64 %i.in, 30
  %i.is = ashr exact i64 %i.io, 30
  %i.it = getelementptr inbounds i8, ptr %i.hv, i64 %i.ip
  %i.iu = getelementptr i8, ptr %i.hv, i64 %i.iq
  %i.iv = getelementptr i8, ptr %i.iu, i64 4
  %i.iw = getelementptr i8, ptr %i.hv, i64 %i.ir
  %i.ix = getelementptr i8, ptr %i.iw, i64 8
  %i.iy = getelementptr i8, ptr %i.hv, i64 %i.is
  %i.iz = getelementptr i8, ptr %i.iy, i64 12
  %i.ja = load i32, ptr %i.it, align 4, !tbaa !3
  %i.jb = load i32, ptr %i.iv, align 4, !tbaa !3
  %i.jc = load i32, ptr %i.ix, align 4, !tbaa !3
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !3
  %i.je = sext i32 %i.ja to i64
  %i.jf = sext i32 %i.jb to i64
  %i.jg = sext i32 %i.jc to i64
  %i.jh = sext i32 %i.jd to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.je
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jf
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jg
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jh
  %i.jm = load i32, ptr %i.ji, align 4, !tbaa !3
  %i.jn = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jo = load i32, ptr %i.jk, align 4, !tbaa !3
  %i.jp = load i32, ptr %i.jl, align 4, !tbaa !3
  %i.jq = insertelement <4 x i32> poison, i32 %i.jm, i64 0
  %i.jr = insertelement <4 x i32> %i.jq, i32 %i.jn, i64 1
  %i.js = insertelement <4 x i32> %i.jr, i32 %i.jo, i64 2
  %i.jt = insertelement <4 x i32> %i.js, i32 %i.jp, i64 3
  %i.ju = sext <4 x i32> %i.jt to <4 x i64>
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.ik
  store <4 x i64> %i.ju, ptr %i.jv, align 8, !tbaa !243
  %index.next171 = add nuw i64 %index170, 4       ; 2 uses
  %i.jw = icmp eq i64 %index.next171, %n.vec168
  br i1 %i.jw, label %middle.block172, label %vector.body169, !llvm.loop !9639

middle.block172:                                  ; preds = %vector.body169
  %cmp.n173 = icmp eq i64 %n.mod.vf167, 0
  br i1 %cmp.n173, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader: ; preds = %vector.scevcheck159, %.lr.ph90.i.split.split, %middle.block172
  %.089.i.ph = phi i64 [ %i.fa, %vector.scevcheck159 ], [ %i.fa, %.lr.ph90.i.split.split ], [ %i.ij, %middle.block172 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i

_ZN8facebook5velox6StatusD2Ev.exit39.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i
  %.089.i = phi i64 [ %i.kf, %_ZN8facebook5velox6StatusD2Ev.exit39.i ], [ %.089.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader ] ; 3 uses
  %sext.i.i = shl i64 %.089.i, 32
  %i.jx = ashr exact i64 %sext.i.i, 30
  %i.jy = getelementptr inbounds i8, ptr %i.hv, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.089.i
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !243
  %i.kf = add nuw i64 %.089.i, 1                  ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.ez
  br i1 %i.kg, label %_ZN8facebook5velox6StatusD2Ev.exit39.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, !llvm.loop !9640

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67.i, %.lr.ph.i
  %.01588.i = phi i64 [ %i.el, %.lr.ph.i ], [ %i.ky, %_ZN8facebook5velox6StatusD2Ev.exit67.i ] ; 3 uses
  %i.kh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01588.i, i1 true)
  %i.ki = trunc nuw nsw i64 %i.kh to i32
  %i.kj = or disjoint i32 %i.em, %i.ki            ; 2 uses
  %i.kk = sext i32 %i.kj to i64                   ; 2 uses
  br i1 %i.en, label %_ZN8facebook5velox6StatusD2Ev.exit67.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kl = load i8, ptr %i.eo, align 1, !tbaa !966, !range !182, !noundef !183
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.kn = load i32, ptr %i.eq, align 8, !tbaa !967
  br label %_ZN8facebook5velox6StatusD2Ev.exit67.i

bb.o:                                             ; preds = %bb.m
  %i.ko = load ptr, ptr %i.ep, align 8, !tbaa !968
  %i.kp = shl nsw i64 %i.kk, 2
  %i.kq = getelementptr inbounds i8, ptr %i.ko, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !3
  br label %_ZN8facebook5velox6StatusD2Ev.exit67.i

_ZN8facebook5velox6StatusD2Ev.exit67.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i48.i = phi i32 [ %i.kr, %bb.o ], [ %i.kn, %bb.n ], [ %i.kj, %bb.l ]
  %i.ks = sext i32 %.0.i.i48.i to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.kk
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !243
  %i.kx = add i64 %.01588.i, -1
  %i.ky = and i64 %i.kx, %.01588.i                ; 2 uses
  %.not.i53 = icmp eq i64 %i.ky, 0
  br i1 %.not.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !9641

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us76, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, %_ZN8facebook5velox6StatusD2Ev.exit67.i, %middle.block172, %middle.block141, %vec.epilog.middle.block156, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.k
  %i.kz = add nsw i32 %i.eg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.kz, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !9642

bb.p:                                             ; preds = %._crit_edge
  %i.la = ashr i32 %1, 6
  %i.lb = and i32 %1, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %notmask.i54 = shl nsw i64 -1, %i.lc
  %i.ld = xor i64 %notmask.i54, -1
  %i.le = load i8, ptr %2, align 8, !tbaa !9626, !range !182, !noundef !183
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !9628
  %i.lh = sext i32 %i.la to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !243
  %i.lk = xor i8 %i.le, 1
  %i.ll = zext nneg i8 %i.lk to i64
  %i.lm = sub nsw i64 0, %i.ll
  %i.ln = xor i64 %i.lj, %i.lm
  %i.lo = and i64 %i.ln, %i.ld                    ; 4 uses
  %.not.i55 = icmp eq i64 %i.lo, 0
  br i1 %.not.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %.preheader.i56

.preheader.i56:                                   ; preds = %bb.p
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i57 = load ptr, ptr %i.lp, align 8, !tbaa !9616 ; 2 uses
  %.phi.trans.insert.i58 = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 8
  %.pre34.i59 = load ptr, ptr %.phi.trans.insert.i58, align 8, !tbaa !9617 ; 2 uses
  %.phi.trans.insert35.i60 = getelementptr inbounds nuw i8, ptr %.pre34.i59, i64 120
  %.pre36.i61 = load ptr, ptr %.phi.trans.insert35.i60, align 8, !tbaa !9621 ; 4 uses
  %.phi.trans.insert37.i62 = getelementptr inbounds nuw i8, ptr %.pre36.i61, i64 58
  %.pre38.i63 = load i8, ptr %.phi.trans.insert37.i62, align 2, !tbaa !965, !range !182
  %i.lq = trunc nuw i8 %.pre38.i63 to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %.pre36.i61, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.pre36.i61, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %.pre34.i59, i64 144
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !9610 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !9622, !nonnull !183, !align !321
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !9623, !nonnull !183, !align !321
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !768 ; 3 uses
  br i1 %i.lq, label %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us, label %.preheader.i56.split

_ZN8facebook5velox6StatusD2Ev.exit24.i65.us:      ; preds = %.preheader.i56, %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us
  %.033.i64.us = phi i64 [ %i.mj, %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us ], [ %i.lo, %.preheader.i56 ] ; 3 uses
  %i.ma = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i64.us, i1 true)
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = or disjoint i32 %i.d, %i.mb
  %i.md = sext i32 %i.mc to i64                   ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !3
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.md
  store i64 %i.mg, ptr %i.mh, align 8, !tbaa !243
  %i.mi = add nsw i64 %.033.i64.us, -1
  %i.mj = and i64 %i.mi, %.033.i64.us             ; 2 uses
  %.not10.i67.us = icmp eq i64 %i.mj, 0
  br i1 %.not10.i67.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i65.us, !llvm.loop !9632

.preheader.i56.split:                             ; preds = %.preheader.i56
  %i.mk = getelementptr inbounds nuw i8, ptr %.pre36.i61, i64 59
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !966, !range !182, !noundef !183
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %.preheader.i56.split.split.us, label %.preheader.i56.split.split

.preheader.i56.split.split.us:                    ; preds = %.preheader.i56.split
  %i.mn = load i32, ptr %i.ls, align 8, !tbaa !967
  %i.mo = sext i32 %i.mn to i64
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSG_INSH_ILm2EEELb0ELb0EEEEEEEEJSM_EEEE7iterateIJNS4_12VectorReaderISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISZ_EEvRKNS0_17SelectivityVectorESY_EUlSY_E_EEvS13_SY_T0_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS16_EEvS18_iibSY_EUliE_EEviiSY_S15_:bb.a
  %.0.off = add i32 %.077, 127
  %.not87.i = icmp ult i32 %.0.off, 64
  br i1 %.not87.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.k
  %i.fa = sext i32 %i.ex to i64                   ; 23 uses
  %.pre89.i = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !9841 ; 2 uses
  %.pre90.i = load ptr, ptr %.pre89.i, align 8, !tbaa !9845, !noalias !9869 ; 4 uses
  %.phi.trans.insert91.i = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 58
  %.pre92.i = load i8, ptr %.phi.trans.insert91.i, align 2, !tbaa !965, !range !182, !noalias !9869
  %i.fb = trunc nuw i8 %.pre92.i to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %.pre89.i, i64 264
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !9725, !noalias !9869 ; 9 uses
  %i.fg = load ptr, ptr %i.ef, align 8, !tbaa !9849, !nonnull !183, !align !321
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !9850, !nonnull !183, !align !321
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !768 ; 8 uses
  br i1 %i.fb, label %iter.check, label %.lr.ph86.i.split

iter.check:                                       ; preds = %.lr.ph86.i
  %i.fk = or disjoint i64 %i.fa, 1
  %umax117 = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.ez) ; 2 uses
  %i.fl = sub i64 %umax117, %i.fa                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.fl, 4
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fm = or disjoint i64 %i.fa, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 %i.ez)
  %i.fn = xor i64 %i.fa, -1
  %i.fo = add i64 %umax, %i.fn                    ; 2 uses
  %i.fp = sext i32 %i.ex to i34                   ; 2 uses
  %i.fq = shl nsw i34 %i.fp, 2
  %i.fr = trunc i64 %i.fo to i34
  %i.fs = add i34 %i.fp, %i.fr
  %i.ft = shl i34 %i.fs, 2
  %i.fu = icmp slt i34 %i.ft, %i.fq
  %i.fv = icmp ugt i64 %i.fo, 4294967295
  %i.fw = or i1 %i.fu, %i.fv
  br i1 %i.fw, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check118 = icmp ult i64 %i.fl, 16
  %n.mod.vf122 = and i64 %umax117, 1              ; 3 uses
  %n.vec123 = sub i64 %i.fl, %n.mod.vf122         ; 3 uses
  %i.fx = add i64 %n.vec123, %i.fa                ; 2 uses
  br i1 %min.iters.check118, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.fy = add i64 %index, %i.fa                   ; 2 uses
  %i.fz = shl i64 %i.fy, 32
  %i.ga = ashr exact i64 %i.fz, 30
  %i.gb = getelementptr inbounds i8, ptr %i.ff, i64 %i.ga ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %wide.load = load <4 x i32>, ptr %i.gb, align 4, !tbaa !3, !noalias !9869
  %wide.load119 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !3, !noalias !9869
  %wide.load120 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !3, !noalias !9869
  %wide.load121 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !3, !noalias !9869
  %i.gf = sext <4 x i32> %wide.load to <4 x i64>
  %i.gg = sext <4 x i32> %wide.load119 to <4 x i64>
  %i.gh = sext <4 x i32> %wide.load120 to <4 x i64>
  %i.gi = sext <4 x i32> %wide.load121 to <4 x i64>
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fy ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  store <4 x i64> %i.gf, ptr %i.gj, align 8, !tbaa !243
  store <4 x i64> %i.gg, ptr %i.gk, align 8, !tbaa !243
  store <4 x i64> %i.gh, ptr %i.gl, align 8, !tbaa !243
  store <4 x i64> %i.gi, ptr %i.gm, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec123
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !9872

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf122, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index124 = phi i64 [ %index.next126, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.go = add i64 %index124, %i.fa                ; 2 uses
  %i.gp = shl i64 %i.go, 32
  %i.gq = ashr exact i64 %i.gp, 30
  %i.gr = getelementptr inbounds i8, ptr %i.ff, i64 %i.gq
  %wide.load125 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !3, !noalias !9869
  %i.gs = sext <4 x i32> %wide.load125 to <4 x i64>
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.go
  store <4 x i64> %i.gs, ptr %i.gt, align 8, !tbaa !243
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.gu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9873

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %n.mod.vf122, 0
  br i1 %cmp.n127, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.085.i.us.ph = phi i64 [ %i.fx, %middle.block ], [ %i.fa, %vector.scevcheck ], [ %i.fa, %iter.check ], [ %i.fx, %vec.epilog.middle.block ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us

_ZN8facebook5velox6StatusD2Ev.exit39.i.us:        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us
  %.085.i.us = phi i64 [ %i.ha, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us ], [ %.085.i.us.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us.preheader ] ; 3 uses
  %sext = shl i64 %.085.i.us, 32
  %i.gv = ashr exact i64 %sext, 30
  %i.gw = getelementptr inbounds i8, ptr %i.ff, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3, !noalias !9869
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.085.i.us
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !243
  %i.ha = add nuw i64 %.085.i.us, 1               ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.ez
  br i1 %i.hb, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, !llvm.loop !9874

.lr.ph86.i.split:                                 ; preds = %.lr.ph86.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre90.i, i64 59
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !966, !range !182, !noalias !9869, !noundef !183
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %iter.check142, label %.lr.ph86.i.split.split

iter.check142:                                    ; preds = %.lr.ph86.i.split
  %i.hf = load i32, ptr %i.fd, align 8, !tbaa !967, !noalias !9869
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3, !noalias !9869
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = or disjoint i64 %i.fa, 1
  %umax129 = tail call i64 @llvm.umax.i64(i64 %i.hk, i64 %i.ez) ; 2 uses
  %i.hl = sub i64 %umax129, %i.fa                 ; 3 uses
  %min.iters.check130 = icmp ult i64 %i.hl, 4
  br i1 %min.iters.check130, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader, label %vector.main.loop.iter.check131

vector.main.loop.iter.check131:                   ; preds = %iter.check142
  %min.iters.check132 = icmp ult i64 %i.hl, 16
  %n.mod.vf147 = and i64 %umax129, 1              ; 3 uses
  %n.vec148 = sub nuw i64 %i.hl, %n.mod.vf147     ; 3 uses
  %i.hm = add i64 %n.vec148, %i.fa                ; 2 uses
  %broadcast.splatinsert149 = insertelement <4 x i64> poison, i64 %i.hj, i64 0
  %broadcast.splat150 = shufflevector <4 x i64> %broadcast.splatinsert149, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check132, label %vec.epilog.vector.body151.preheader, label %vector.body136.preheader

vector.body136.preheader:                         ; preds = %vector.main.loop.iter.check131
  %invariant.gep = getelementptr [8 x i8], ptr %i.fj, i64 %i.fa
  br label %vector.body136

vec.epilog.vector.body151.preheader:              ; preds = %vector.main.loop.iter.check131
  %invariant.gep180 = getelementptr [8 x i8], ptr %i.fj, i64 %i.fa
  br label %vec.epilog.vector.body151

vector.body136:                                   ; preds = %vector.body136.preheader, %vector.body136
  %index137 = phi i64 [ %index.next138, %vector.body136 ], [ 0, %vector.body136.preheader ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index137 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.hp = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x i64> %broadcast.splat150, ptr %gep, align 8, !tbaa !243
  store <4 x i64> %broadcast.splat150, ptr %i.hn, align 8, !tbaa !243
  store <4 x i64> %broadcast.splat150, ptr %i.ho, align 8, !tbaa !243
  store <4 x i64> %broadcast.splat150, ptr %i.hp, align 8, !tbaa !243
  %index.next138 = add nuw i64 %index137, 16      ; 2 uses
  %i.hq = icmp eq i64 %index.next138, %n.vec148
  br i1 %i.hq, label %middle.block139, label %vector.body136, !llvm.loop !9875

middle.block139:                                  ; preds = %vector.body136
  %cmp.n140 = icmp eq i64 %n.mod.vf147, 0
  br i1 %cmp.n140, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader

vec.epilog.vector.body151:                        ; preds = %vec.epilog.vector.body151.preheader, %vec.epilog.vector.body151
  %index152 = phi i64 [ %index.next153, %vec.epilog.vector.body151 ], [ 0, %vec.epilog.vector.body151.preheader ] ; 2 uses
  %gep181 = getelementptr [8 x i8], ptr %invariant.gep180, i64 %index152
  store <4 x i64> %broadcast.splat150, ptr %gep181, align 8, !tbaa !243
  %index.next153 = add nuw i64 %index152, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.hr, label %vec.epilog.middle.block154, label %vec.epilog.vector.body151, !llvm.loop !9876

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body151
  %cmp.n155 = icmp eq i64 %n.mod.vf147, 0
  br i1 %cmp.n155, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader: ; preds = %middle.block139, %iter.check142, %vec.epilog.middle.block154
  %.085.i.us73.ph = phi i64 [ %i.hm, %middle.block139 ], [ %i.fa, %iter.check142 ], [ %i.hm, %vec.epilog.middle.block154 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74

_ZN8facebook5velox6StatusD2Ev.exit39.i.us74:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74
  %.085.i.us73 = phi i64 [ %i.ht, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74 ], [ %.085.i.us73.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.085.i.us73
  store i64 %i.hj, ptr %i.hs, align 8, !tbaa !243
  %i.ht = add nuw i64 %.085.i.us73, 1             ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.ez
  br i1 %i.hu, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, !llvm.loop !9877

.lr.ph86.i.split.split:                           ; preds = %.lr.ph86.i.split
  %i.hv = load ptr, ptr %i.fc, align 8, !tbaa !968, !noalias !9869 ; 5 uses
  %i.hw = or disjoint i64 %i.fa, 1
  %umax162 = tail call i64 @llvm.umax.i64(i64 %i.hw, i64 %i.ez) ; 2 uses
  %i.hx = sub i64 %umax162, %i.fa                 ; 2 uses
  %min.iters.check163 = icmp ult i64 %i.hx, 40
  br i1 %min.iters.check163, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.scevcheck157

vector.scevcheck157:                              ; preds = %.lr.ph86.i.split.split
  %i.hy = or disjoint i64 %i.fa, 1
  %umax158 = tail call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.ez)
  %i.hz = xor i64 %i.fa, -1
  %i.ia = add i64 %umax158, %i.hz                 ; 2 uses
  %i.ib = sext i32 %i.ex to i34                   ; 2 uses
  %i.ic = shl nsw i34 %i.ib, 2
  %i.id = trunc i64 %i.ia to i34
  %i.ie = add i34 %i.ib, %i.id
  %i.if = shl i34 %i.ie, 2
  %i.ig = icmp slt i34 %i.if, %i.ic
  %i.ih = icmp ugt i64 %i.ia, 4294967295
  %i.ii = or i1 %i.ig, %i.ih
  br i1 %i.ii, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %vector.scevcheck157
  %n.mod.vf165 = and i64 %umax162, 1              ; 2 uses
  %n.vec166 = sub i64 %i.hx, %n.mod.vf165         ; 2 uses
  %i.ij = add i64 %n.vec166, %i.fa
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next169, %vector.body167 ] ; 2 uses
  %i.ik = add i64 %index168, %i.fa                ; 5 uses
  %i.il = shl i64 %i.ik, 32
  %i.im = shl i64 %i.ik, 32
  %i.in = shl i64 %i.ik, 32
  %i.io = shl i64 %i.ik, 32
  %i.ip = ashr exact i64 %i.il, 30
  %i.iq = ashr exact i64 %i.im, 30
  %i.ir = ashr exact i64 %i.in, 30
  %i.is = ashr exact i64 %i.io, 30
  %i.it = getelementptr inbounds i8, ptr %i.hv, i64 %i.ip
  %i.iu = getelementptr i8, ptr %i.hv, i64 %i.iq
  %i.iv = getelementptr i8, ptr %i.iu, i64 4
  %i.iw = getelementptr i8, ptr %i.hv, i64 %i.ir
  %i.ix = getelementptr i8, ptr %i.iw, i64 8
  %i.iy = getelementptr i8, ptr %i.hv, i64 %i.is
  %i.iz = getelementptr i8, ptr %i.iy, i64 12
  %i.ja = load i32, ptr %i.it, align 4, !tbaa !3, !noalias !9869
  %i.jb = load i32, ptr %i.iv, align 4, !tbaa !3, !noalias !9869
  %i.jc = load i32, ptr %i.ix, align 4, !tbaa !3, !noalias !9869
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !3, !noalias !9869
  %i.je = sext i32 %i.ja to i64
  %i.jf = sext i32 %i.jb to i64
  %i.jg = sext i32 %i.jc to i64
  %i.jh = sext i32 %i.jd to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.je
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jf
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jg
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.jh
  %i.jm = load i32, ptr %i.ji, align 4, !tbaa !3, !noalias !9869
  %i.jn = load i32, ptr %i.jj, align 4, !tbaa !3, !noalias !9869
  %i.jo = load i32, ptr %i.jk, align 4, !tbaa !3, !noalias !9869
  %i.jp = load i32, ptr %i.jl, align 4, !tbaa !3, !noalias !9869
  %i.jq = insertelement <4 x i32> poison, i32 %i.jm, i64 0
  %i.jr = insertelement <4 x i32> %i.jq, i32 %i.jn, i64 1
  %i.js = insertelement <4 x i32> %i.jr, i32 %i.jo, i64 2
  %i.jt = insertelement <4 x i32> %i.js, i32 %i.jp, i64 3
  %i.ju = sext <4 x i32> %i.jt to <4 x i64>
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.ik
  store <4 x i64> %i.ju, ptr %i.jv, align 8, !tbaa !243
  %index.next169 = add nuw i64 %index168, 4       ; 2 uses
  %i.jw = icmp eq i64 %index.next169, %n.vec166
  br i1 %i.jw, label %middle.block170, label %vector.body167, !llvm.loop !9878

middle.block170:                                  ; preds = %vector.body167
  %cmp.n171 = icmp eq i64 %n.mod.vf165, 0
  br i1 %cmp.n171, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader: ; preds = %vector.scevcheck157, %.lr.ph86.i.split.split, %middle.block170
  %.085.i.ph = phi i64 [ %i.fa, %vector.scevcheck157 ], [ %i.fa, %.lr.ph86.i.split.split ], [ %i.ij, %middle.block170 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i

_ZN8facebook5velox6StatusD2Ev.exit39.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i
  %.085.i = phi i64 [ %i.kf, %_ZN8facebook5velox6StatusD2Ev.exit39.i ], [ %.085.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader ] ; 3 uses
  %sext.i.i = shl i64 %.085.i, 32
  %i.jx = ashr exact i64 %sext.i.i, 30
  %i.jy = getelementptr inbounds i8, ptr %i.hv, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3, !noalias !9869
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3, !noalias !9869
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.085.i
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !243
  %i.kf = add nuw i64 %.085.i, 1                  ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.ez
  br i1 %i.kg, label %_ZN8facebook5velox6StatusD2Ev.exit39.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, !llvm.loop !9879

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit61.i, %.lr.ph.i
  %.01584.i = phi i64 [ %i.el, %.lr.ph.i ], [ %i.ky, %_ZN8facebook5velox6StatusD2Ev.exit61.i ] ; 3 uses
  %i.kh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01584.i, i1 true)
  %i.ki = trunc nuw nsw i64 %i.kh to i32
  %i.kj = or disjoint i32 %i.em, %i.ki            ; 2 uses
  %i.kk = sext i32 %i.kj to i64                   ; 2 uses
  br i1 %i.en, label %_ZN8facebook5velox6StatusD2Ev.exit61.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kl = load i8, ptr %i.eo, align 1, !tbaa !966, !range !182, !noalias !9866, !noundef !183
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.kn = load i32, ptr %i.eq, align 8, !tbaa !967, !noalias !9866
  br label %_ZN8facebook5velox6StatusD2Ev.exit61.i

bb.o:                                             ; preds = %bb.m
  %i.ko = load ptr, ptr %i.ep, align 8, !tbaa !968, !noalias !9866
  %i.kp = shl nsw i64 %i.kk, 2
  %i.kq = getelementptr inbounds i8, ptr %i.ko, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !3, !noalias !9866
  br label %_ZN8facebook5velox6StatusD2Ev.exit61.i

_ZN8facebook5velox6StatusD2Ev.exit61.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i48.i = phi i32 [ %i.kr, %bb.o ], [ %i.kn, %bb.n ], [ %i.kj, %bb.l ]
  %i.ks = sext i32 %.0.i.i48.i to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3, !noalias !9866
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.kk
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !243
  %i.kx = add i64 %.01584.i, -1
  %i.ky = and i64 %i.kx, %.01584.i                ; 2 uses
  %.not.i52 = icmp eq i64 %i.ky, 0
  br i1 %.not.i52, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !9880

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us74, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, %_ZN8facebook5velox6StatusD2Ev.exit61.i, %middle.block170, %middle.block139, %vec.epilog.middle.block154, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.k
  %i.kz = add nsw i32 %i.eg, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.kz, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !9881

bb.p:                                             ; preds = %._crit_edge
  %i.la = ashr i32 %1, 6
  %i.lb = and i32 %1, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %notmask.i53 = shl nsw i64 -1, %i.lc
  %i.ld = xor i64 %notmask.i53, -1
  %i.le = load i8, ptr %2, align 8, !tbaa !9853, !range !182, !noundef !183
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !9855
  %i.lh = sext i32 %i.la to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !243
  %i.lk = xor i8 %i.le, 1
  %i.ll = zext nneg i8 %i.lk to i64
  %i.lm = sub nsw i64 0, %i.ll
  %i.ln = xor i64 %i.lj, %i.lm
  %i.lo = and i64 %i.ln, %i.ld                    ; 4 uses
  %.not.i54 = icmp eq i64 %i.lo, 0
  br i1 %.not.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.p
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i56 = load ptr, ptr %i.lp, align 8, !tbaa !9840 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 8
  %.pre34.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !9841 ; 2 uses
  %.pre35.i59 = load ptr, ptr %.pre34.i58, align 8, !tbaa !9845, !noalias !9882 ; 4 uses
  %.phi.trans.insert36.i60 = getelementptr inbounds nuw i8, ptr %.pre35.i59, i64 58
  %.pre37.i61 = load i8, ptr %.phi.trans.insert36.i60, align 2, !tbaa !965, !range !182, !noalias !9882
  %i.lq = trunc nuw i8 %.pre37.i61 to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %.pre35.i59, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.pre35.i59, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %.pre34.i58, i64 264
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !9725, !noalias !9882 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !9849, !nonnull !183, !align !321
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !9850, !nonnull !183, !align !321
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !768 ; 3 uses
  br i1 %i.lq, label %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us, label %.preheader.i55.split

_ZN8facebook5velox6StatusD2Ev.exit24.i63.us:      ; preds = %.preheader.i55, %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us
  %.033.i62.us = phi i64 [ %i.mj, %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us ], [ %i.lo, %.preheader.i55 ] ; 3 uses
  %i.ma = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i62.us, i1 true)
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = or disjoint i32 %i.d, %i.mb
  %i.md = sext i32 %i.mc to i64                   ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !3, !noalias !9882
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.md
  store i64 %i.mg, ptr %i.mh, align 8, !tbaa !243
  %i.mi = add nsw i64 %.033.i62.us, -1
  %i.mj = and i64 %i.mi, %.033.i62.us             ; 2 uses
  %.not10.i65.us = icmp eq i64 %i.mj, 0
  br i1 %.not10.i65.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i63.us, !llvm.loop !9862

.preheader.i55.split:                             ; preds = %.preheader.i55
  %i.mk = getelementptr inbounds nuw i8, ptr %.pre35.i59, i64 59
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !966, !range !182, !noalias !9882, !noundef !183
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %.preheader.i55.split.split.us, label %.preheader.i55.split.split

.preheader.i55.split.split.us:                    ; preds = %.preheader.i55.split
  %i.mn = load i32, ptr %i.ls, align 8, !tbaa !967, !noalias !9882
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.mo
end_hunk_1
