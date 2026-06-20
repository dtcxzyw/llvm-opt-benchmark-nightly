inline.NumInlined: 2563
inline.NumDeleted: 1210
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
bb.s:                                             ; preds = %bb.r
  %i.ca = and i32 %i.bw, 2147483584               ; 3 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %.not37.i.i.not.i.i761.not = icmp eq i32 %i.ca, 0
  br i1 %.not37.i.i.not.i.i761.not, label %.critedge.i.i.i.i, label %.lr.ph764

bb.t:                                             ; preds = %.lr.ph764
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i762, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.cb
  br i1 %.not37.i.i.not.i.i, label %.lr.ph764, label %.critedge.i.i.i.i, !llvm.loop !226

.lr.ph764:                                        ; preds = %bb.s, %bb.t
  %indvars.iv.i.i762 = phi i64 [ %indvars.iv.next.i.i, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.cc = lshr exact i64 %indvars.iv.i.i762, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !153
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !226

.critedge.i.i.i.i:                                ; preds = %bb.t, %bb.s
  %.not38.i.i.i.i = icmp eq i32 %i.bw, %i.ca
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i.i.i
  %i.cg = lshr i32 %i.bw, 6
  %i.ch = and i32 %i.bw, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ci
  %i.cj = zext nneg i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !153
  %.demorgan.i.i = or i64 %i.cl, %notmask.i40.i.i.i.i
  %i.cm = icmp eq i64 %.demorgan.i.i, -1
  %i.cn = zext i1 %i.cm to i16
  %i.co = or disjoint i16 %i.cn, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph764, %bb.u, %.critedge.i.i.i.i, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.q ], [ 256, %bb.p ], [ 257, %bb.r ], [ 257, %.critedge.i.i.i.i ], [ %i.co, %bb.u ], [ 256, %.lr.ph764 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bc, align 4
  %i.cp = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.cp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.cq = load i32, ptr %i.be, align 4, !tbaa !218 ; 9 uses
  br i1 %.0.i.i, label %bb.v, label %bb.af

bb.v:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cr = load i32, ptr %i.bf, align 8, !tbaa !223 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit

.lr.ph.i:                                         ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 58
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !227, !range !90, !noundef !91
  %i.cv = trunc nuw i8 %i.cu to i1                ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bm, i64 59 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 3 uses
  %i.cz = sext i32 %i.cq to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.cr to i64      ; 3 uses
  %i.da = sub nsw i64 %wide.trip.count.i, %i.cz
  %xtraiter = and i64 %i.da, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  br i1 %i.cv, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol, label %bb.w

bb.w:                                             ; preds = %.prol.preheader
  %i.db = load i8, ptr %i.cw, align 1, !tbaa !228, !range !90, !noundef !91
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !229
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.cz
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol

bb.y:                                             ; preds = %bb.w
  %i.dg = load i32, ptr %i.cy, align 8, !tbaa !230
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol: ; preds = %bb.y, %bb.x, %.prol.preheader
  %.0.i.i.i.prol = phi i32 [ %i.df, %bb.x ], [ %i.dg, %bb.y ], [ %i.cq, %.prol.preheader ]
  %i.dh = sext i32 %.0.i.i.i.prol to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = add nsw i32 %i.dj, %.0410494            ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.cz, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol, %.lr.ph.i
  %.lcssa963.unr = phi i32 [ poison, %.lr.ph.i ], [ %i.dk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol ]
  %.5415.unr = phi i32 [ %.0410494, %.lr.ph.i ], [ %i.dk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.cz, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol ]
  %i.dl = add nsw i64 %wide.trip.count.i, -1
  %i.dm = icmp eq i64 %i.dl, %i.cz
  br i1 %i.dm, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1
  %.5415 = phi i32 [ %i.ei, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1 ], [ %.5415.unr, %.prol.loopexit ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1 ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 4 uses
  %i.dn = trunc nsw i64 %indvars.iv.i to i32
  br i1 %i.cv, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.new
  %i.do = load i8, ptr %i.cw, align 1, !tbaa !228, !range !90, !noundef !91
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = load i32, ptr %i.cy, align 8, !tbaa !230
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.dr = load ptr, ptr %i.cx, align 8, !tbaa !229
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %indvars.iv.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.i.new
  %.0.i.i.i = phi i32 [ %i.dt, %bb.ab ], [ %i.dq, %bb.aa ], [ %i.dn, %.lr.ph.i.new ]
  %i.du = sext i32 %.0.i.i.i to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = add nsw i32 %i.dw, %.5415
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dy = trunc nsw i64 %indvars.iv.next.i to i32
  br i1 %i.cv, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1, label %bb.ac

bb.ac:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i
  %i.dz = load i8, ptr %i.cw, align 1, !tbaa !228, !range !90, !noundef !91
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr %i.cx, align 8, !tbaa !229
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1

bb.ae:                                            ; preds = %bb.ac
  %i.ee = load i32, ptr %i.cy, align 8, !tbaa !230
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1: ; preds = %bb.ae, %bb.ad, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i
  %.0.i.i.i.1 = phi i32 [ %i.ed, %bb.ad ], [ %i.ee, %bb.ae ], [ %i.dy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i ]
  %i.ef = sext i32 %.0.i.i.i.1 to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = add nsw i32 %i.eh, %i.dx                ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.lr.ph.i.new, !llvm.loop !231

bb.af:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ej = load ptr, ptr %1, align 8, !tbaa !225   ; 4 uses
  %i.ek = load i32, ptr %i.bf, align 8, !tbaa !223 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.cq, %i.ek
  br i1 %.not.i.i.i.i, label %bb.ag, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit

bb.ag:                                            ; preds = %bb.af
  %i.el = add i32 %i.cq, 63                       ; 2 uses
  %i.em = srem i32 %i.el, 64
  %i.en = sub nsw i32 %i.el, %i.em                ; 6 uses
  %i.eo = and i32 %i.ek, -64                      ; 8 uses
  %i.ep = icmp slt i32 %i.eo, %i.en
  br i1 %i.ep, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eq = ashr i32 %i.ek, 6
  %i.er = and i32 %i.ek, 63
  %i.es = zext nneg i32 %i.er to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.es
  %i.et = xor i64 %notmask.i.i.i.i.i, -1
  %i.eu = sub nsw i32 %i.en, %i.cq                ; 2 uses
  %i.ev = zext nneg i32 %i.eu to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ev
  %i.ew = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ex = sub nsw i32 64, %i.eu
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl i64 %i.ew, %i.ey
  %i.fa = and i64 %i.ez, %i.et
  %i.fb = sext i32 %i.eq to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !153
  %i.fe = and i64 %i.fa, %i.fd                    ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ah
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bm, i64 58
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !227, !range !90, !noundef !91
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  br i1 %i.fh, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i, label %.preheader.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i
  %.011.us.i.i.i.i.i = phi i64 [ %i.fq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i ], [ %i.fe, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.fk = phi i32 [ %i.fo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i ], [ %.0410494, %.preheader.i.i.i.i.i ]
  %i.fl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i.i.i.i.i, i1 true)
  %38 = trunc nuw nsw i64 %i.fl to i32
  %39 = or disjoint i32 %i.eo, %38
  %40 = sext i32 %39 to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.br, i64 %40
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = add nsw i32 %i.fn, %i.fk                ; 2 uses
  %i.fp = add nsw i64 %.011.us.i.i.i.i.i, -1
  %i.fq = and i64 %i.fp, %.011.us.i.i.i.i.i       ; 2 uses
  %.not10.us.i.i.i.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not10.us.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i, !llvm.loop !232

.preheader.split.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bm, i64 59
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !228, !range !90, !noundef !91
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader, label %.preheader.split.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader: ; preds = %.preheader.split.i.i.i.i.i
  %i.fu = load i32, ptr %i.fj, align 8, !tbaa !230
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i
  %.011.us12.i.i.i.i.i = phi i64 [ %i.gb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i ], [ %i.fe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader ] ; 2 uses
  %i.fy = phi i32 [ %i.fz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i ], [ %.0410494, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader ]
  %i.fz = add nsw i32 %i.fx, %i.fy                ; 2 uses
  %i.ga = add nsw i64 %.011.us12.i.i.i.i.i, -1
  %i.gb = and i64 %i.ga, %.011.us12.i.i.i.i.i     ; 2 uses
  %.not10.us15.i.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not10.us15.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i, !llvm.loop !232

.preheader.split.split.i.i.i.i.i:                 ; preds = %.preheader.split.i.i.i.i.i
  %i.gc = load ptr, ptr %i.fi, align 8, !tbaa !229
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, %.preheader.split.split.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.fe, %.preheader.split.split.i.i.i.i.i ], [ %i.gm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.gd = phi i32 [ %.0410494, %.preheader.split.split.i.i.i.i.i ], [ %i.gk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ]
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %41 = trunc nuw nsw i64 %i.ge to i32
  %42 = or disjoint i32 %i.eo, %41
  %43 = sext i32 %42 to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %43
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = add nsw i32 %i.gj, %i.gd                ; 2 uses
  %i.gl = add nsw i64 %.011.i.i.i.i.i, -1
  %i.gm = and i64 %i.gl, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !232

bb.ai:                                            ; preds = %bb.ag
  %.not32.i.i.i.i = icmp eq i32 %i.cq, %i.en
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gn = sdiv i32 %i.cq, 64                      ; 2 uses
  %i.go = sub nsw i32 %i.en, %i.cq                ; 2 uses
  %i.gp = zext nneg i32 %i.go to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.gp
  %i.gq = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.gr = sub nsw i32 64, %i.go
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl i64 %i.gq, %i.gs
  %i.gu = sext i32 %i.gn to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !153
  %i.gx = and i64 %i.gw, %i.gt                    ; 4 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.aj
  %i.gy = shl nsw i32 %i.gn, 6                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bm, i64 58
  %i.ha = load i8, ptr %i.gz, align 2, !tbaa !227, !range !90, !noundef !91
  %i.hb = trunc nuw i8 %i.ha to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  br i1 %i.hb, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i, label %.preheader.split.i39.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i: ; preds = %.preheader.i37.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i
  %.011.us.i48.i.i.i.i = phi i64 [ %i.hk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i ], [ %i.gx, %.preheader.i37.i.i.i.i ] ; 3 uses
  %i.he = phi i32 [ %i.hi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i ], [ %.0410494, %.preheader.i37.i.i.i.i ]
  %i.hf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i48.i.i.i.i, i1 true)
  %44 = trunc nuw nsw i64 %i.hf to i32
  %45 = or disjoint i32 %i.gy, %44
  %46 = sext i32 %45 to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.br, i64 %46
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.hi = add nsw i32 %i.hh, %i.he                ; 2 uses
  %i.hj = add i64 %.011.us.i48.i.i.i.i, -1
  %i.hk = and i64 %i.hj, %.011.us.i48.i.i.i.i     ; 2 uses
  %.not10.us.i49.i.i.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not10.us.i49.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i, !llvm.loop !232

.preheader.split.i39.i.i.i.i:                     ; preds = %.preheader.i37.i.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bm, i64 59
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !228, !range !90, !noundef !91
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader, label %.preheader.split.split.i40.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader: ; preds = %.preheader.split.i39.i.i.i.i
  %i.ho = load i32, ptr %i.hd, align 8, !tbaa !230
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i
  %.011.us12.i45.i.i.i.i = phi i64 [ %i.hv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i ], [ %i.gx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader ] ; 2 uses
  %i.hs = phi i32 [ %i.ht, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i ], [ %.0410494, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader ]
  %i.ht = add nsw i32 %i.hr, %i.hs                ; 2 uses
  %i.hu = add i64 %.011.us12.i45.i.i.i.i, -1
  %i.hv = and i64 %i.hu, %.011.us12.i45.i.i.i.i   ; 2 uses
  %.not10.us15.i46.i.i.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not10.us15.i46.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i, !llvm.loop !232

.preheader.split.split.i40.i.i.i.i:               ; preds = %.preheader.split.i39.i.i.i.i
  %i.hw = load ptr, ptr %i.hc, align 8, !tbaa !229
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i, %.preheader.split.split.i40.i.i.i.i
  %.011.i42.i.i.i.i = phi i64 [ %i.gx, %.preheader.split.split.i40.i.i.i.i ], [ %i.ig, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i ] ; 3 uses
  %i.hx = phi i32 [ %.0410494, %.preheader.split.split.i40.i.i.i.i ], [ %i.ie, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i ]
  %i.hy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i42.i.i.i.i, i1 true)
  %47 = trunc nuw nsw i64 %i.hy to i32
  %48 = or disjoint i32 %i.gy, %47
  %49 = sext i32 %48 to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %49
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3
  %i.ie = add nsw i32 %i.id, %i.hx                ; 2 uses
  %i.if = add i64 %.011.i42.i.i.i.i, -1
  %i.ig = and i64 %i.if, %.011.i42.i.i.i.i        ; 2 uses
  %.not10.i43.i.i.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not10.i43.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i, !llvm.loop !232

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i, %bb.aj, %bb.ai
  %.1411 = phi i32 [ %.0410494, %bb.ai ], [ %.0410494, %bb.aj ], [ %i.hi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i ], [ %i.ht, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i ], [ %i.ie, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i ] ; 2 uses
  %i.ih = add nsw i32 %i.en, 64                   ; 2 uses
  %.not3383.i.i.i.i = icmp sgt i32 %i.ih, %i.eo
  br i1 %.not3383.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bm, i64 58 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.bm, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i
  %.4414 = phi i32 [ %.1411, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i ], [ %.3413, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 5 uses
  %.not34.i.i.i.i = icmp eq i32 %i.ek, %i.eo
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %bb.al

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.2412 = phi i32 [ %.3413, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.1411, %.lr.ph.i.i.i.i.preheader ] ; 12 uses
  %i.im = phi i32 [ %i.abi, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ih, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.084.i.i.i.i = phi i32 [ %i.im, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.en, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.in = sdiv i32 %.084.i.i.i.i, 64              ; 3 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !153 ; 4 uses
  switch i64 %i.iq, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.ak
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ir = shl nsw i32 %i.in, 6                    ; 2 uses
  %i.is = load i8, ptr %i.ii, align 2, !tbaa !227, !range !90, !noundef !91
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i
  %i.iu = phi i32 [ %i.iy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ], [ %.2412, %.lr.ph.i.i.i.i.i ]
  %.01521.us.i.i.i.i.i = phi i64 [ %i.ja, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ], [ %i.iq, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.iv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.us.i.i.i.i.i, i1 true)
  %50 = trunc nuw nsw i64 %i.iv to i32
  %51 = or disjoint i32 %i.ir, %50
  %52 = sext i32 %51 to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.br, i64 %52
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = add nsw i32 %i.ix, %i.iu                ; 2 uses
  %i.iz = add i64 %.01521.us.i.i.i.i.i, -1
  %i.ja = and i64 %i.iz, %.01521.us.i.i.i.i.i     ; 2 uses
  %.not.us.i.i.i.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, !llvm.loop !233

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.jb = load i8, ptr %i.il, align 1, !tbaa !228, !range !90, !noundef !91
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i
  %i.jd = load i32, ptr %i.ik, align 8, !tbaa !230
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i
  %i.jh = phi i32 [ %i.ji, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %.2412, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader ]
  %.01521.us22.i.i.i.i.i = phi i64 [ %i.jk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %i.iq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader ] ; 2 uses
  %i.ji = add nsw i32 %i.jg, %i.jh                ; 2 uses
  %i.jj = add i64 %.01521.us22.i.i.i.i.i, -1
  %i.jk = and i64 %i.jj, %.01521.us22.i.i.i.i.i   ; 2 uses
  %.not.us25.i.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not.us25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i, !llvm.loop !233

.lr.ph.split.split.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i
  %i.jl = load ptr, ptr %i.ij, align 8, !tbaa !229
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jm = shl nsw i32 %i.in, 6                    ; 5 uses
  %i.jn = sext i32 %i.jm to i64                   ; 19 uses
  %i.jo = add i32 %i.jm, 64
  %i.jp = sext i32 %i.jo to i64                   ; 7 uses
  %.0.off.i.i.i.i = add i32 %.084.i.i.i.i, 127
  %.not34.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not34.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph28.i.i.i.i.i

.lr.ph28.i.i.i.i.i:                               ; preds = %bb.ak
  %i.jq = load i8, ptr %i.ii, align 2, !tbaa !227, !range !90, !noundef !91
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %iter.check, label %.lr.ph28.split.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph28.i.i.i.i.i
  %i.js = or disjoint i64 %i.jn, 1
  %umax782 = call i64 @llvm.umax.i64(i64 %i.js, i64 %i.jp) ; 2 uses
  %i.jt = sub i64 %umax782, %i.jn                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.jt, 8
  br i1 %min.iters.check, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ju = or disjoint i64 %i.jn, 1
  %umax781 = call i64 @llvm.umax.i64(i64 %i.ju, i64 %i.jp)
  %i.jv = xor i64 %i.jn, -1
  %i.jw = add i64 %umax781, %i.jv                 ; 2 uses
  %i.jx = sext i32 %i.jm to i34                   ; 2 uses
  %i.jy = shl nsw i34 %i.jx, 2
  %i.jz = trunc i64 %i.jw to i34
  %i.ka = add i34 %i.jx, %i.jz
  %i.kb = shl i34 %i.ka, 2
  %i.kc = icmp slt i34 %i.kb, %i.jy
  %i.kd = icmp ugt i64 %i.jw, 4294967295
  %i.ke = or i1 %i.kc, %i.kd
  br i1 %i.ke, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check783 = icmp ult i64 %i.jt, 32
  %n.mod.vf792 = and i64 %umax782, 1              ; 3 uses
  %n.vec793 = sub i64 %i.jt, %n.mod.vf792         ; 3 uses
  %i.kf = add i64 %n.vec793, %i.jn                ; 2 uses
  %i.kg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2412, i64 0 ; 2 uses
  br i1 %min.iters.check783, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.ko, %vector.body ], [ %i.kg, %vector.main.loop.iter.check ]
  %vec.phi784 = phi <8 x i32> [ %i.kp, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi785 = phi <8 x i32> [ %i.kq, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi786 = phi <8 x i32> [ %i.kr, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.kh = add i64 %index, %i.jn
  %i.ki = shl i64 %i.kh, 32
  %i.kj = ashr exact i64 %i.ki, 30
  %i.kk = getelementptr inbounds i8, ptr %i.br, i64 %i.kj ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 96
  %wide.load = load <8 x i32>, ptr %i.kk, align 4, !tbaa !3
  %wide.load787 = load <8 x i32>, ptr %i.kl, align 4, !tbaa !3
  %wide.load788 = load <8 x i32>, ptr %i.km, align 4, !tbaa !3
  %wide.load789 = load <8 x i32>, ptr %i.kn, align 4, !tbaa !3
  %i.ko = add <8 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.kp = add <8 x i32> %wide.load787, %vec.phi784 ; 2 uses
  %i.kq = add <8 x i32> %wide.load788, %vec.phi785 ; 2 uses
  %i.kr = add <8 x i32> %wide.load789, %vec.phi786 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec793
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.kp, %i.ko
  %bin.rdx790 = add <8 x i32> %i.kq, %bin.rdx
  %bin.rdx791 = add <8 x i32> %i.kr, %bin.rdx790
  %i.kt = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx791) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf792, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index794 = phi i64 [ %index.next797, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi795 = phi <8 x i32> [ %i.ky, %vec.epilog.vector.body ], [ %i.kg, %vector.main.loop.iter.check ]
  %i.ku = add i64 %index794, %i.jn
  %i.kv = shl i64 %i.ku, 32
  %i.kw = ashr exact i64 %i.kv, 30
  %i.kx = getelementptr inbounds i8, ptr %i.br, i64 %i.kw
  %wide.load796 = load <8 x i32>, ptr %i.kx, align 4, !tbaa !3
  %i.ky = add <8 x i32> %wide.load796, %vec.phi795 ; 2 uses
  %index.next797 = add nuw i64 %index794, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next797, %n.vec793
  br i1 %i.kz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !237

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.la = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ky) ; 2 uses
  %cmp.n798 = icmp eq i64 %n.mod.vf792, 0
  br i1 %cmp.n798, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %i.kt, %middle.block ], [ %.2412, %vector.scevcheck ], [ %.2412, %iter.check ], [ %i.la, %vec.epilog.middle.block ]
  %.027.us.i.i.i.i.i.ph = phi i64 [ %i.kf, %middle.block ], [ %i.jn, %vector.scevcheck ], [ %i.jn, %iter.check ], [ %i.kf, %vec.epilog.middle.block ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i
  %i.lb = phi i32 [ %i.lf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i ], [ %.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader ]
  %.027.us.i.i.i.i.i = phi i64 [ %i.lg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i ], [ %.027.us.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader ] ; 2 uses
  %sext35.i.i.i.i.i = shl i64 %.027.us.i.i.i.i.i, 32
  %i.lc = ashr exact i64 %sext35.i.i.i.i.i, 30
  %i.ld = getelementptr inbounds i8, ptr %i.br, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !3
  %i.lf = add nsw i32 %i.le, %i.lb                ; 2 uses
  %i.lg = add nuw i64 %.027.us.i.i.i.i.i, 1       ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.jp
  br i1 %i.lh, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !238

.lr.ph28.split.i.i.i.i.i:                         ; preds = %.lr.ph28.i.i.i.i.i
  %i.li = load i8, ptr %i.il, align 1, !tbaa !228, !range !90, !noundef !91
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader, label %iter.check827

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader: ; preds = %.lr.ph28.split.i.i.i.i.i
  %i.lk = load i32, ptr %i.ik, align 8, !tbaa !230
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3
  %i.lo = or disjoint i64 %i.jn, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.lo, i64 %i.jp)
  %i.lp = trunc i64 %umax to i32
  %i.lq = sub i32 %i.lp, %i.jm
  %i.lr = mul i32 %i.ln, %i.lq
  %i.ls = add i32 %.2412, %i.lr
  br label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i

iter.check827:                                    ; preds = %.lr.ph28.split.i.i.i.i.i
  %i.lt = load ptr, ptr %i.ij, align 8, !tbaa !229 ; 41 uses
  %i.lu = or disjoint i64 %i.jn, 1
  %umax806 = call i64 @llvm.umax.i64(i64 %i.lu, i64 %i.jp) ; 2 uses
  %i.lv = sub i64 %umax806, %i.jn                 ; 3 uses
  %min.iters.check807 = icmp ult i64 %i.lv, 8
  br i1 %min.iters.check807, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader, label %vector.scevcheck801

vector.scevcheck801:                              ; preds = %iter.check827
  %i.lw = or disjoint i64 %i.jn, 1
  %umax802 = call i64 @llvm.umax.i64(i64 %i.lw, i64 %i.jp)
  %i.lx = xor i64 %i.jn, -1
  %i.ly = add i64 %umax802, %i.lx                 ; 2 uses
  %i.lz = sext i32 %i.jm to i34                   ; 2 uses
  %i.ma = shl nsw i34 %i.lz, 2
  %i.mb = trunc i64 %i.ly to i34
  %i.mc = add i34 %i.lz, %i.mb
  %i.md = shl i34 %i.mc, 2
  %i.me = icmp slt i34 %i.md, %i.ma
  %i.mf = icmp ugt i64 %i.ly, 4294967295
  %i.mg = or i1 %i.me, %i.mf
  br i1 %i.mg, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader, label %vector.main.loop.iter.check808

vector.main.loop.iter.check808:                   ; preds = %vector.scevcheck801
  %min.iters.check809 = icmp ult i64 %i.lv, 32
  %n.mod.vf832 = and i64 %umax806, 1              ; 3 uses
  %n.vec833 = sub i64 %i.lv, %n.mod.vf832         ; 3 uses
  %i.mh = add i64 %n.vec833, %i.jn                ; 2 uses
  %i.mi = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2412, i64 0 ; 2 uses
  br i1 %min.iters.check809, label %vec.epilog.vector.body834, label %vector.body813

vector.body813:                                   ; preds = %vector.main.loop.iter.check808, %vector.body813
  %index814 = phi i64 [ %index.next819, %vector.body813 ], [ 0, %vector.main.loop.iter.check808 ] ; 2 uses
  %vec.phi815 = phi <8 x i32> [ %i.xl, %vector.body813 ], [ %i.mi, %vector.main.loop.iter.check808 ]
  %vec.phi816 = phi <8 x i32> [ %i.xm, %vector.body813 ], [ zeroinitializer, %vector.main.loop.iter.check808 ]
  %vec.phi817 = phi <8 x i32> [ %i.xn, %vector.body813 ], [ zeroinitializer, %vector.main.loop.iter.check808 ]
  %vec.phi818 = phi <8 x i32> [ %i.xo, %vector.body813 ], [ zeroinitializer, %vector.main.loop.iter.check808 ]
  %i.mj = add i64 %index814, %i.jn                ; 32 uses
  %i.mk = shl i64 %i.mj, 32
  %i.ml = shl i64 %i.mj, 32
  %i.mm = shl i64 %i.mj, 32
  %i.mn = shl i64 %i.mj, 32
  %i.mo = shl i64 %i.mj, 32
  %i.mp = shl i64 %i.mj, 32
  %i.mq = shl i64 %i.mj, 32
  %i.mr = shl i64 %i.mj, 32
  %i.ms = shl i64 %i.mj, 32
  %i.mt = shl i64 %i.mj, 32
  %i.mu = shl i64 %i.mj, 32
  %i.mv = shl i64 %i.mj, 32
  %i.mw = shl i64 %i.mj, 32
  %i.mx = shl i64 %i.mj, 32
  %i.my = shl i64 %i.mj, 32
  %i.mz = shl i64 %i.mj, 32
  %i.na = shl i64 %i.mj, 32
  %i.nb = shl i64 %i.mj, 32
  %i.nc = shl i64 %i.mj, 32
  %i.nd = shl i64 %i.mj, 32
  %i.ne = shl i64 %i.mj, 32
  %i.nf = shl i64 %i.mj, 32
  %i.ng = shl i64 %i.mj, 32
  %i.nh = shl i64 %i.mj, 32
  %i.ni = shl i64 %i.mj, 32
  %i.nj = shl i64 %i.mj, 32
  %i.nk = shl i64 %i.mj, 32
  %i.nl = shl i64 %i.mj, 32
  %i.nm = shl i64 %i.mj, 32
  %i.nn = shl i64 %i.mj, 32
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ti
  %i.up = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tj
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tk
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tl
  %i.us = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tm
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tn
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.to
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tp
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tq
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tr
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ts
  %i.uz = load i32, ptr %i.tt, align 4, !tbaa !3
  %i.va = load i32, ptr %i.tu, align 4, !tbaa !3
  %i.vb = load i32, ptr %i.tv, align 4, !tbaa !3
  %i.vc = load i32, ptr %i.tw, align 4, !tbaa !3
  %i.vd = load i32, ptr %i.tx, align 4, !tbaa !3
  %i.ve = load i32, ptr %i.ty, align 4, !tbaa !3
  %i.vf = load i32, ptr %i.tz, align 4, !tbaa !3
  %i.vg = load i32, ptr %i.ua, align 4, !tbaa !3
  %i.vh = insertelement <8 x i32> poison, i32 %i.uz, i64 0
  %i.vi = insertelement <8 x i32> %i.vh, i32 %i.va, i64 1
  %i.vj = insertelement <8 x i32> %i.vi, i32 %i.vb, i64 2
  %i.vk = insertelement <8 x i32> %i.vj, i32 %i.vc, i64 3
  %i.vl = insertelement <8 x i32> %i.vk, i32 %i.vd, i64 4
  %i.vm = insertelement <8 x i32> %i.vl, i32 %i.ve, i64 5
  %i.vn = insertelement <8 x i32> %i.vm, i32 %i.vf, i64 6
  %i.vo = insertelement <8 x i32> %i.vn, i32 %i.vg, i64 7
  %i.vp = load i32, ptr %i.ub, align 4, !tbaa !3
  %i.vq = load i32, ptr %i.uc, align 4, !tbaa !3
  %i.vr = load i32, ptr %i.ud, align 4, !tbaa !3
  %i.vs = load i32, ptr %i.ue, align 4, !tbaa !3
  %i.vt = load i32, ptr %i.uf, align 4, !tbaa !3
  %i.vu = load i32, ptr %i.ug, align 4, !tbaa !3
  %i.vv = load i32, ptr %i.uh, align 4, !tbaa !3
  %i.vw = load i32, ptr %i.ui, align 4, !tbaa !3
  %i.vx = insertelement <8 x i32> poison, i32 %i.vp, i64 0
  %i.vy = insertelement <8 x i32> %i.vx, i32 %i.vq, i64 1
  %i.vz = insertelement <8 x i32> %i.vy, i32 %i.vr, i64 2
  %i.wa = insertelement <8 x i32> %i.vz, i32 %i.vs, i64 3
  %i.wb = insertelement <8 x i32> %i.wa, i32 %i.vt, i64 4
  %i.wc = insertelement <8 x i32> %i.wb, i32 %i.vu, i64 5
  %i.wd = insertelement <8 x i32> %i.wc, i32 %i.vv, i64 6
  %i.we = insertelement <8 x i32> %i.wd, i32 %i.vw, i64 7
  %i.wf = load i32, ptr %i.uj, align 4, !tbaa !3
  %i.wg = load i32, ptr %i.uk, align 4, !tbaa !3
  %i.wh = load i32, ptr %i.ul, align 4, !tbaa !3
  %i.wi = load i32, ptr %i.um, align 4, !tbaa !3
  %i.wj = load i32, ptr %i.un, align 4, !tbaa !3
  %i.wk = load i32, ptr %i.uo, align 4, !tbaa !3
  %i.wl = load i32, ptr %i.up, align 4, !tbaa !3
  %i.wm = load i32, ptr %i.uq, align 4, !tbaa !3
  %i.wn = insertelement <8 x i32> poison, i32 %i.wf, i64 0
  %i.wo = insertelement <8 x i32> %i.wn, i32 %i.wg, i64 1
  %i.wp = insertelement <8 x i32> %i.wo, i32 %i.wh, i64 2
  %i.wq = insertelement <8 x i32> %i.wp, i32 %i.wi, i64 3
  %i.wr = insertelement <8 x i32> %i.wq, i32 %i.wj, i64 4
  %i.ws = insertelement <8 x i32> %i.wr, i32 %i.wk, i64 5
  %i.wt = insertelement <8 x i32> %i.ws, i32 %i.wl, i64 6
  %i.wu = insertelement <8 x i32> %i.wt, i32 %i.wm, i64 7
  %i.wv = load i32, ptr %i.ur, align 4, !tbaa !3
  %i.ww = load i32, ptr %i.us, align 4, !tbaa !3
  %i.wx = load i32, ptr %i.ut, align 4, !tbaa !3
  %i.wy = load i32, ptr %i.uu, align 4, !tbaa !3
  %i.wz = load i32, ptr %i.uv, align 4, !tbaa !3
  %i.xa = load i32, ptr %i.uw, align 4, !tbaa !3
  %i.xb = load i32, ptr %i.ux, align 4, !tbaa !3
  %i.xc = load i32, ptr %i.uy, align 4, !tbaa !3
  %i.xd = insertelement <8 x i32> poison, i32 %i.wv, i64 0
  %i.xe = insertelement <8 x i32> %i.xd, i32 %i.ww, i64 1
  %i.xf = insertelement <8 x i32> %i.xe, i32 %i.wx, i64 2
  %i.xg = insertelement <8 x i32> %i.xf, i32 %i.wy, i64 3
  %i.xh = insertelement <8 x i32> %i.xg, i32 %i.wz, i64 4
  %i.xi = insertelement <8 x i32> %i.xh, i32 %i.xa, i64 5
  %i.xj = insertelement <8 x i32> %i.xi, i32 %i.xb, i64 6
  %i.xk = insertelement <8 x i32> %i.xj, i32 %i.xc, i64 7
  %i.xl = add <8 x i32> %i.vo, %vec.phi815        ; 2 uses
  %i.xm = add <8 x i32> %i.we, %vec.phi816        ; 2 uses
  %i.xn = add <8 x i32> %i.wu, %vec.phi817        ; 2 uses
  %i.xo = add <8 x i32> %i.xk, %vec.phi818        ; 2 uses
  %index.next819 = add nuw i64 %index814, 32      ; 2 uses
  %i.xp = icmp eq i64 %index.next819, %n.vec833
  br i1 %i.xp, label %middle.block820, label %vector.body813, !llvm.loop !239

middle.block820:                                  ; preds = %vector.body813
  %bin.rdx821 = add <8 x i32> %i.xm, %i.xl
  %bin.rdx822 = add <8 x i32> %i.xn, %bin.rdx821
  %bin.rdx823 = add <8 x i32> %i.xo, %bin.rdx822
  %i.xq = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx823) ; 2 uses
  %cmp.n824 = icmp eq i64 %n.mod.vf832, 0
  br i1 %cmp.n824, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader

vec.epilog.vector.body834:                        ; preds = %vector.main.loop.iter.check808, %vec.epilog.vector.body834
  %index835 = phi i64 [ %index.next837, %vec.epilog.vector.body834 ], [ 0, %vector.main.loop.iter.check808 ] ; 2 uses
  %vec.phi836 = phi <8 x i32> [ %i.aal, %vec.epilog.vector.body834 ], [ %i.mi, %vector.main.loop.iter.check808 ]
  %i.xr = add i64 %index835, %i.jn                ; 8 uses
  %i.xs = shl i64 %i.xr, 32
  %i.xt = shl i64 %i.xr, 32
  %i.xu = shl i64 %i.xr, 32
  %i.xv = shl i64 %i.xr, 32
  %i.xw = shl i64 %i.xr, 32
  %i.xx = shl i64 %i.xr, 32
  %i.xy = shl i64 %i.xr, 32
  %i.xz = shl i64 %i.xr, 32
  %i.ya = ashr exact i64 %i.xs, 30
  %i.yb = ashr exact i64 %i.xt, 30
  %i.yc = ashr exact i64 %i.xu, 30
  %i.yd = ashr exact i64 %i.xv, 30
  %i.ye = ashr exact i64 %i.xw, 30
  %i.yf = ashr exact i64 %i.xx, 30
  %i.yg = ashr exact i64 %i.xy, 30
  %i.yh = ashr exact i64 %i.xz, 30
  %i.yi = getelementptr inbounds i8, ptr %i.lt, i64 %i.ya
  %i.yj = getelementptr i8, ptr %i.lt, i64 %i.yb
  %i.yk = getelementptr i8, ptr %i.yj, i64 4
  %i.yl = getelementptr i8, ptr %i.lt, i64 %i.yc
  %i.ym = getelementptr i8, ptr %i.yl, i64 8
  %i.yn = getelementptr i8, ptr %i.lt, i64 %i.yd
  %i.yo = getelementptr i8, ptr %i.yn, i64 12
  %i.yp = getelementptr i8, ptr %i.lt, i64 %i.ye
  %i.yq = getelementptr i8, ptr %i.yp, i64 16
  %i.yr = getelementptr i8, ptr %i.lt, i64 %i.yf
  %i.ys = getelementptr i8, ptr %i.yr, i64 20
  %i.yt = getelementptr i8, ptr %i.lt, i64 %i.yg
  %i.yu = getelementptr i8, ptr %i.yt, i64 24
  %i.yv = getelementptr i8, ptr %i.lt, i64 %i.yh
  %i.yw = getelementptr i8, ptr %i.yv, i64 28
  %i.yx = load i32, ptr %i.yi, align 4, !tbaa !3
  %i.yy = load i32, ptr %i.yk, align 4, !tbaa !3
  %i.yz = load i32, ptr %i.ym, align 4, !tbaa !3
  %i.za = load i32, ptr %i.yo, align 4, !tbaa !3
  %i.zb = load i32, ptr %i.yq, align 4, !tbaa !3
  %i.zc = load i32, ptr %i.ys, align 4, !tbaa !3
  %i.zd = load i32, ptr %i.yu, align 4, !tbaa !3
  %i.ze = load i32, ptr %i.yw, align 4, !tbaa !3
  %i.zf = sext i32 %i.yx to i64
  %i.zg = sext i32 %i.yy to i64
  %i.zh = sext i32 %i.yz to i64
  %i.zi = sext i32 %i.za to i64
  %i.zj = sext i32 %i.zb to i64
  %i.zk = sext i32 %i.zc to i64
  %i.zl = sext i32 %i.zd to i64
  %i.zm = sext i32 %i.ze to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.zf
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.zg
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.zh
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.zi
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.zj
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.zk
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.zl
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.zm
  %i.zv = load i32, ptr %i.zn, align 4, !tbaa !3
  %i.zw = load i32, ptr %i.zo, align 4, !tbaa !3
  %i.zx = load i32, ptr %i.zp, align 4, !tbaa !3
  %i.zy = load i32, ptr %i.zq, align 4, !tbaa !3
  %i.zz = load i32, ptr %i.zr, align 4, !tbaa !3
  %i.aaa = load i32, ptr %i.zs, align 4, !tbaa !3
  %i.aab = load i32, ptr %i.zt, align 4, !tbaa !3
  %i.aac = load i32, ptr %i.zu, align 4, !tbaa !3
  %i.aad = insertelement <8 x i32> poison, i32 %i.zv, i64 0
  %i.aae = insertelement <8 x i32> %i.aad, i32 %i.zw, i64 1
  %i.aaf = insertelement <8 x i32> %i.aae, i32 %i.zx, i64 2
  %i.aag = insertelement <8 x i32> %i.aaf, i32 %i.zy, i64 3
  %i.aah = insertelement <8 x i32> %i.aag, i32 %i.zz, i64 4
  %i.aai = insertelement <8 x i32> %i.aah, i32 %i.aaa, i64 5
  %i.aaj = insertelement <8 x i32> %i.aai, i32 %i.aab, i64 6
  %i.aak = insertelement <8 x i32> %i.aaj, i32 %i.aac, i64 7
  %i.aal = add <8 x i32> %i.aak, %vec.phi836      ; 2 uses
  %index.next837 = add nuw i64 %index835, 8       ; 2 uses
  %i.aam = icmp eq i64 %index.next837, %n.vec833
  br i1 %i.aam, label %vec.epilog.middle.block838, label %vec.epilog.vector.body834, !llvm.loop !240

vec.epilog.middle.block838:                       ; preds = %vec.epilog.vector.body834
  %i.aan = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aal) ; 2 uses
  %cmp.n839 = icmp eq i64 %n.mod.vf832, 0
  br i1 %cmp.n839, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader: ; preds = %middle.block820, %vector.scevcheck801, %iter.check827, %vec.epilog.middle.block838
  %.ph929 = phi i32 [ %i.xq, %middle.block820 ], [ %.2412, %vector.scevcheck801 ], [ %.2412, %iter.check827 ], [ %i.aan, %vec.epilog.middle.block838 ]
  %.027.i.i.i.i.i.ph = phi i64 [ %i.mh, %middle.block820 ], [ %i.jn, %vector.scevcheck801 ], [ %i.jn, %iter.check827 ], [ %i.mh, %vec.epilog.middle.block838 ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i
  %i.aao = phi i32 [ %i.aav, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i ], [ %.ph929, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader ]
  %.027.i.i.i.i.i = phi i64 [ %i.aaw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i ], [ %.027.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader ] ; 2 uses
  %sext.i.i.i.i.i = shl i64 %.027.i.i.i.i.i, 32
  %i.aap = ashr exact i64 %sext.i.i.i.i.i, 30
  %i.aaq = getelementptr inbounds i8, ptr %i.lt, i64 %i.aap
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !3
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.aas
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !3
  %i.aav = add nsw i32 %i.aau, %i.aao             ; 2 uses
  %i.aaw = add nuw i64 %.027.i.i.i.i.i, 1         ; 2 uses
  %i.aax = icmp ult i64 %i.aaw, %i.jp
  br i1 %i.aax, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !241

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i
  %i.aay = phi i32 [ %.2412, %.lr.ph.split.split.i.i.i.i.i ], [ %i.abf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i ]
  %.01521.i.i.i.i.i = phi i64 [ %i.iq, %.lr.ph.split.split.i.i.i.i.i ], [ %i.abh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i ] ; 3 uses
  %i.aaz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.i.i.i.i.i, i1 true)
  %53 = trunc nuw nsw i64 %i.aaz to i32
  %54 = or disjoint i32 %i.ir, %53
  %55 = sext i32 %54 to i64
  %i.aba = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %55
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !3
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.abc
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !3
  %i.abf = add nsw i32 %i.abe, %i.aay             ; 2 uses
  %i.abg = add i64 %.01521.i.i.i.i.i, -1
  %i.abh = and i64 %i.abg, %.01521.i.i.i.i.i      ; 2 uses
  %.not.i54.i.i.i.i = icmp eq i64 %i.abh, 0
  br i1 %.not.i54.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i, !llvm.loop !233

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, %middle.block820, %vec.epilog.middle.block838, %middle.block, %vec.epilog.middle.block, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader, %bb.ak, %.lr.ph.i.i.i.i
  %.3413 = phi i32 [ %.2412, %.lr.ph.i.i.i.i ], [ %i.iy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ], [ %i.ls, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader ], [ %.2412, %bb.ak ], [ %i.ji, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %i.abf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i ], [ %i.lf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i ], [ %i.la, %vec.epilog.middle.block ], [ %i.kt, %middle.block ], [ %i.aan, %vec.epilog.middle.block838 ], [ %i.xq, %middle.block820 ], [ %i.aav, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i ] ; 2 uses
  %i.abi = add nsw i32 %i.im, 64                  ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.abi, %i.eo
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !242

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  %i.abj = ashr i32 %i.ek, 6
  %i.abk = and i32 %i.ek, 63
  %i.abl = zext nneg i32 %i.abk to i64
  %notmask.i55.i.i.i.i = shl nsw i64 -1, %i.abl
  %i.abm = xor i64 %notmask.i55.i.i.i.i, -1
  %i.abn = sext i32 %i.abj to i64
  %i.abo = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.abn
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !153
  %i.abq = and i64 %i.abp, %i.abm                 ; 4 uses
  %.not.i56.i.i.i.i = icmp eq i64 %i.abq, 0
  br i1 %.not.i56.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.preheader.i57.i.i.i.i

.preheader.i57.i.i.i.i:                           ; preds = %bb.al
  %i.abr = getelementptr inbounds nuw i8, ptr %i.bm, i64 58
  %i.abs = load i8, ptr %i.abr, align 2, !tbaa !227, !range !90, !noundef !91
  %i.abt = trunc nuw i8 %i.abs to i1
  %i.abu = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  br i1 %i.abt, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i, label %.preheader.split.i59.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i: ; preds = %.preheader.i57.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i
  %.011.us.i68.i.i.i.i = phi i64 [ %i.acc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i ], [ %i.abq, %.preheader.i57.i.i.i.i ] ; 3 uses
  %i.abw = phi i32 [ %i.aca, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i ], [ %.4414, %.preheader.i57.i.i.i.i ]
  %i.abx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i68.i.i.i.i, i1 true)
  %56 = trunc nuw nsw i64 %i.abx to i32
  %57 = or disjoint i32 %i.eo, %56
  %58 = sext i32 %57 to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.br, i64 %58
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !3
  %i.aca = add nsw i32 %i.abz, %i.abw             ; 2 uses
  %i.acb = add nsw i64 %.011.us.i68.i.i.i.i, -1
  %i.acc = and i64 %i.acb, %.011.us.i68.i.i.i.i   ; 2 uses
  %.not10.us.i69.i.i.i.i = icmp eq i64 %i.acc, 0
  br i1 %.not10.us.i69.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i, !llvm.loop !232

.preheader.split.i59.i.i.i.i:                     ; preds = %.preheader.i57.i.i.i.i
  %i.acd = getelementptr inbounds nuw i8, ptr %i.bm, i64 59
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !228, !range !90, !noundef !91
  %i.acf = trunc nuw i8 %i.ace to i1
  br i1 %i.acf, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader, label %.preheader.split.split.i60.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader: ; preds = %.preheader.split.i59.i.i.i.i
  %i.acg = load i32, ptr %i.abv, align 8, !tbaa !230
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.ach
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i
  %.011.us12.i65.i.i.i.i = phi i64 [ %i.acn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i ], [ %i.abq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader ] ; 2 uses
  %i.ack = phi i32 [ %i.acl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i ], [ %.4414, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader ]
  %i.acl = add nsw i32 %i.acj, %i.ack             ; 2 uses
  %i.acm = add nsw i64 %.011.us12.i65.i.i.i.i, -1
  %i.acn = and i64 %i.acm, %.011.us12.i65.i.i.i.i ; 2 uses
  %.not10.us15.i66.i.i.i.i = icmp eq i64 %i.acn, 0
  br i1 %.not10.us15.i66.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i, !llvm.loop !232

.preheader.split.split.i60.i.i.i.i:               ; preds = %.preheader.split.i59.i.i.i.i
  %i.aco = load ptr, ptr %i.abu, align 8, !tbaa !229
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i, %.preheader.split.split.i60.i.i.i.i
  %.011.i62.i.i.i.i = phi i64 [ %i.abq, %.preheader.split.split.i60.i.i.i.i ], [ %i.acy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i ] ; 3 uses
  %i.acp = phi i32 [ %.4414, %.preheader.split.split.i60.i.i.i.i ], [ %i.acw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i ]
  %i.acq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i62.i.i.i.i, i1 true)
  %59 = trunc nuw nsw i64 %i.acq to i32
  %60 = or disjoint i32 %i.eo, %59
  %61 = sext i32 %60 to i64
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.aco, i64 %61
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !3
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.act
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !3
  %i.acw = add nsw i32 %i.acv, %i.acp             ; 2 uses
  %i.acx = add nsw i64 %.011.i62.i.i.i.i, -1
  %i.acy = and i64 %i.acx, %.011.i62.i.i.i.i      ; 2 uses
  %.not10.i63.i.i.i.i = icmp eq i64 %i.acy, 0
  br i1 %.not10.i63.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i, !llvm.loop !232

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i, %.prol.loopexit, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1, %bb.al, %._crit_edge.i.i.i.i, %bb.ah, %bb.af, %bb.v
  %.6416 = phi i32 [ %.0410494, %bb.af ], [ %.0410494, %bb.v ], [ %.0410494, %bb.ah ], [ %i.gk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.aca, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i ], [ %i.acl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i ], [ %.4414, %._crit_edge.i.i.i.i ], [ %.4414, %bb.al ], [ %i.ei, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1 ], [ %i.fo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i ], [ %i.fz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i ], [ %.lcssa963.unr, %.prol.loopexit ], [ %i.acw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.acz = load i64, ptr %i.e, align 8, !tbaa !153
  %i.ada = icmp ugt i64 %i.acz, %indvars.iv.next
  br i1 %i.ada, label %bb.o, label %._crit_edge498, !llvm.loop !243

bb.am:                                            ; preds = %bb.o
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.an:                                            ; preds = %._crit_edge498
  %i.adc = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.add = load ptr, ptr %4, align 8, !tbaa !244
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !259 ; 2 uses
  store ptr %i.ade, ptr %i.f, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !281
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.85") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %i.adc, i32 noundef %.0410.lcssa, ptr noundef %i.ade)
          to label %bb.ao unwind label %bb.db

bb.ao:                                            ; preds = %bb.an
  %i.adf = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.adg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.adh = load <2 x ptr>, ptr %18, align 16, !tbaa !40, !noalias !287
  store <2 x ptr> %i.adh, ptr %24, align 16, !tbaa !40, !alias.scope !287
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.adi = load ptr, ptr %i.f, align 8, !tbaa !280
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !288
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.85") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %i.adf, i32 noundef %.0410.lcssa, ptr noundef %i.adi)
          to label %bb.ap unwind label %bb.dc

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.adj = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  %i.adk = load <2 x ptr>, ptr %17, align 16, !tbaa !40, !noalias !294
  store <2 x ptr> %i.adk, ptr %25, align 16, !tbaa !40, !alias.scope !294
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !288
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !223
  %i.adn = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.ado = sext i32 %i.adm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !295
  store i32 0, ptr %16, align 4, !tbaa !30, !noalias !295
  %i.adp = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i8 1, ptr %i.adp, align 4, !tbaa !298, !noalias !295
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %26, i64 noundef %i.ado, ptr noundef %i.adn, ptr noundef nonnull align 4 dereferenceable(8) %16, i1 noundef zeroext false)
          to label %bb.aq unwind label %bb.dd

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.adq = load ptr, ptr %26, align 8, !tbaa !299 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 44
  %i.ads = load i8, ptr %i.adr, align 4, !tbaa !300
  %i.adt = and i8 %i.ads, 2
  %.not.i = icmp eq i8 %i.adt, 0
  br i1 %.not.i, label %bb.as, label %bb.ar, !prof !86

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc106 unwind label %bb.de

.noexc106:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !305
  store ptr %i.adv, ptr %i.g, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  %i.adw = load i32, ptr %i.adl, align 8, !tbaa !223
  %i.adx = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.ady = sext i32 %i.adw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !307
  store i32 0, ptr %15, align 4, !tbaa !30, !noalias !307
  %i.adz = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i8 1, ptr %i.adz, align 4, !tbaa !298, !noalias !307
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %27, i64 noundef %i.ady, ptr noundef %i.adx, ptr noundef nonnull align 4 dereferenceable(8) %15, i1 noundef zeroext false)
          to label %bb.at unwind label %bb.df

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.aea = load ptr, ptr %27, align 8, !tbaa !299 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 44
  %i.aec = load i8, ptr %i.aeb, align 4, !tbaa !300
  %i.aed = and i8 %i.aec, 2
  %.not.i108 = icmp eq i8 %i.aed, 0
  br i1 %.not.i108, label %bb.av, label %bb.au, !prof !86

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc109 unwind label %bb.dg

.noexc109:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !305
  store ptr %i.aef, ptr %i.h, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i32 0, ptr %i.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.g, ptr %14, align 8
  %.sroa.2366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.i, ptr %.sroa.2366.0..sroa_idx, align 8
  %.sroa.3367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.e, ptr %.sroa.3367.0..sroa_idx, align 8
  %.sroa.4368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %23, ptr %.sroa.4368.0..sroa_idx, align 8
  %.sroa.5369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %24, ptr %.sroa.5369.0..sroa_idx, align 8
  %.sroa.6370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %25, ptr %.sroa.6370.0..sroa_idx, align 8
  %.sroa.7371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.h, ptr %.sroa.7371.0..sroa_idx, align 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 2 uses
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !216, !range !90, !noundef !91
  %i.aej = trunc nuw i8 %i.aei to i1
  br i1 %i.aej, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i143, label %bb.aw

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i143: ; preds = %bb.av
  %.0.in.pre.i.i144 = load i8, ptr %i.aeg, align 4, !tbaa !56, !range !90
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i113

bb.aw:                                            ; preds = %bb.av
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !218
  %i.aem = icmp eq i32 %i.ael, 0
  br i1 %i.aem, label %bb.ax, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111

bb.ax:                                            ; preds = %bb.aw
  %i.aen = load i32, ptr %i.adl, align 8, !tbaa !223 ; 6 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aep = load i32, ptr %i.aeo, align 8, !tbaa !224
  %i.aeq = icmp eq i32 %i.aen, %i.aep
  br i1 %i.aeq, label %bb.ay, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111

bb.ay:                                            ; preds = %bb.ax
  %i.aer = load ptr, ptr %1, align 8, !tbaa !225  ; 2 uses
  %.not.i.i.i135 = icmp sgt i32 %i.aen, 0
  br i1 %.not.i.i.i135, label %bb.az, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111

bb.az:                                            ; preds = %bb.ay
  %i.aes = and i32 %i.aen, 2147483584             ; 3 uses
  %i.aet = zext nneg i32 %i.aes to i64
  %.not37.i.i.not.i.i137765.not = icmp eq i32 %i.aes, 0
  br i1 %.not37.i.i.not.i.i137765.not, label %.critedge.i.i.i.i138, label %.lr.ph768

bb.ba:                                            ; preds = %.lr.ph768
  %indvars.iv.next.i.i142 = add nuw nsw i64 %indvars.iv.i.i136766, 64 ; 2 uses
  %.not37.i.i.not.i.i137 = icmp samesign ult i64 %indvars.iv.next.i.i142, %i.aet
  br i1 %.not37.i.i.not.i.i137, label %.lr.ph768, label %.critedge.i.i.i.i138, !llvm.loop !226

.lr.ph768:                                        ; preds = %bb.az, %bb.ba
  %indvars.iv.i.i136766 = phi i64 [ %indvars.iv.next.i.i142, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.aeu = lshr exact i64 %indvars.iv.i.i136766, 3
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aeu
  %i.aew = load i64, ptr %i.aev, align 8, !tbaa !153
  %i.aex = icmp eq i64 %i.aew, -1
  br i1 %i.aex, label %bb.ba, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111, !llvm.loop !226

.critedge.i.i.i.i138:                             ; preds = %bb.ba, %bb.az
  %.not38.i.i.i.i139 = icmp eq i32 %i.aen, %i.aes
  br i1 %.not38.i.i.i.i139, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111, label %bb.bb

bb.bb:                                            ; preds = %.critedge.i.i.i.i138
  %i.aey = lshr i32 %i.aen, 6
  %i.aez = and i32 %i.aen, 63
  %i.afa = zext nneg i32 %i.aez to i64
  %notmask.i40.i.i.i.i140 = shl nsw i64 -1, %i.afa
  %i.afb = zext nneg i32 %i.aey to i64
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.afb
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !153
  %.demorgan.i.i141 = or i64 %i.afd, %notmask.i40.i.i.i.i140
  %i.afe = icmp eq i64 %.demorgan.i.i141, -1
  %i.aff = zext i1 %i.afe to i16
  %i.afg = or disjoint i16 %i.aff, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111: ; preds = %.lr.ph768, %bb.bb, %.critedge.i.i.i.i138, %bb.ay, %bb.ax, %bb.aw
  %.sroa.0.0.insert.ext.i.i112 = phi i16 [ 256, %bb.ax ], [ 256, %bb.aw ], [ 257, %bb.ay ], [ 257, %.critedge.i.i.i.i138 ], [ %i.afg, %bb.bb ], [ 256, %.lr.ph768 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i112, ptr %i.aeg, align 4
  %i.afh = trunc i16 %.sroa.0.0.insert.ext.i.i112 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i113

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i113: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i143
  %.0.in.i.i114 = phi i8 [ %.0.in.pre.i.i144, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i143 ], [ %i.afh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i111 ]
  %.0.i.i115 = trunc nuw i8 %.0.in.i.i114 to i1
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !218 ; 8 uses
  br i1 %.0.i.i115, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i113
  %i.afk = load i32, ptr %i.adl, align 8, !tbaa !223 ; 2 uses
  %i.afl = icmp slt i32 %i.afj, %i.afk
  br i1 %i.afl, label %.lr.ph.i133, label %.loopexit440

.lr.ph.i133:                                      ; preds = %bb.bc, %.noexc145
  %.08.i = phi i32 [ %i.afm, %.noexc145 ], [ %i.afj, %bb.bc ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %14, i32 noundef %.08.i)
          to label %.noexc145 unwind label %.loopexit436

.noexc145:                                        ; preds = %.lr.ph.i133
  %i.afm = add i32 %.08.i, 1                      ; 2 uses
  %exitcond.not.i134 = icmp eq i32 %i.afm, %i.afk
  br i1 %exitcond.not.i134, label %.loopexit440, label %.lr.ph.i133, !llvm.loop !310

bb.bd:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i113
  %i.afn = load ptr, ptr %1, align 8, !tbaa !225  ; 6 uses
  %i.afo = load i32, ptr %i.adl, align 8, !tbaa !223 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %14, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %14, i64 56, i1 false)
  store i8 1, ptr %12, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.afn, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %13, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.afn, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i116 = icmp slt i32 %i.afj, %i.afo
  br i1 %.not.i.i.i.i116, label %bb.be, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiiT_.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.afp = add i32 %i.afj, 63                     ; 2 uses
  %i.afq = srem i32 %i.afp, 64
  %i.afr = sub nsw i32 %i.afp, %i.afq             ; 6 uses
  %i.afs = and i32 %i.afo, -64                    ; 6 uses
  %i.aft = icmp slt i32 %i.afs, %i.afr
  br i1 %i.aft, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.afu = ashr i32 %i.afo, 6
  %i.afv = and i32 %i.afo, 63
  %i.afw = zext nneg i32 %i.afv to i64
  %notmask.i.i.i.i.i127 = shl nsw i64 -1, %i.afw
  %i.afx = xor i64 %notmask.i.i.i.i.i127, -1
  %i.afy = sub nsw i32 %i.afr, %i.afj             ; 2 uses
  %i.afz = zext nneg i32 %i.afy to i64
  %notmask.i.i.i.i.i.i128 = shl nsw i64 -1, %i.afz
  %i.aga = xor i64 %notmask.i.i.i.i.i.i128, -1
  %i.agb = sub nsw i32 64, %i.afy
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = shl i64 %i.aga, %i.agc
  %i.age = and i64 %i.agd, %i.afx
  %i.agf = sext i32 %i.afu to i64
  %i.agg = getelementptr inbounds [8 x i8], ptr %i.afn, i64 %i.agf
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !153
  %i.agi = and i64 %i.age, %i.agh                 ; 2 uses
  %.not.i.i.i.i.i129 = icmp eq i64 %i.agi, 0
  br i1 %.not.i.i.i.i.i129, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i130

.preheader.i.i.i.i.i130:                          ; preds = %bb.bf, %.noexc146
  %.011.i.i.i.i.i131 = phi i64 [ %i.agn, %.noexc146 ], [ %i.agi, %bb.bf ] ; 3 uses
  %i.agj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i131, i1 true)
  %i.agk = trunc nuw nsw i64 %i.agj to i32
  %i.agl = or disjoint i32 %i.afs, %i.agk
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.agl)
          to label %.noexc146 unwind label %.loopexit.split-lp437.loopexit

.noexc146:                                        ; preds = %.preheader.i.i.i.i.i130
  %i.agm = add nsw i64 %.011.i.i.i.i.i131, -1
  %i.agn = and i64 %i.agm, %.011.i.i.i.i.i131     ; 2 uses
  %.not10.i.i.i.i.i132 = icmp eq i64 %i.agn, 0
  br i1 %.not10.i.i.i.i.i132, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i130, !llvm.loop !311

bb.bg:                                            ; preds = %bb.be
  %.not32.i.i.i.i117 = icmp eq i32 %i.afj, %i.afr
  br i1 %.not32.i.i.i.i117, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ago = sdiv i32 %i.afj, 64                    ; 2 uses
  %i.agp = sub nsw i32 %i.afr, %i.afj             ; 2 uses
  %i.agq = zext nneg i32 %i.agp to i64
  %notmask.i.i35.i.i.i.i118 = shl nsw i64 -1, %i.agq
  %i.agr = xor i64 %notmask.i.i35.i.i.i.i118, -1
  %i.ags = sub nsw i32 64, %i.agp
  %i.agt = zext nneg i32 %i.ags to i64
  %i.agu = shl i64 %i.agr, %i.agt
  %i.agv = sext i32 %i.ago to i64
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.afn, i64 %i.agv
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !153
  %i.agy = and i64 %i.agx, %i.agu                 ; 2 uses
  %.not.i36.i.i.i.i119 = icmp eq i64 %i.agy, 0
  br i1 %.not.i36.i.i.i.i119, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i120

.preheader.i37.i.i.i.i120:                        ; preds = %bb.bh
  %i.agz = shl nsw i32 %i.ago, 6
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc147, %.preheader.i37.i.i.i.i120
  %.011.i38.i.i.i.i = phi i64 [ %i.agy, %.preheader.i37.i.i.i.i120 ], [ %i.ahe, %.noexc147 ] ; 3 uses
  %i.aha = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ahb = trunc nuw nsw i64 %i.aha to i32
  %i.ahc = or disjoint i32 %i.agz, %i.ahb
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ahc)
          to label %.noexc147 unwind label %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc147:                                        ; preds = %bb.bi
  %i.ahd = add i64 %.011.i38.i.i.i.i, -1
  %i.ahe = and i64 %i.ahd, %.011.i38.i.i.i.i      ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.ahe, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.bi, !llvm.loop !311

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc147, %bb.bh, %bb.bg
  %i.ahf = add nsw i32 %i.afr, 64                 ; 2 uses
  %.not3354.i.i.i.i = icmp sgt i32 %i.ahf, %i.afs
  br i1 %.not3354.i.i.i.i, label %._crit_edge.i.i.i.i123, label %.lr.ph.i.i.i.i121

.lr.ph.i.i.i.i121:                                ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %i.ahg = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ahh = load ptr, ptr %i.ahg, align 8, !nonnull !91, !align !312 ; 6 uses
  %i.ahi = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ahk = load ptr, ptr %i.ahj, align 8, !nonnull !91, !align !313 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ahm = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ahn = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.aho = load ptr, ptr %i.ahl, align 8, !nonnull !91, !align !313
  %i.ahp = load ptr, ptr %i.ahm, align 8, !nonnull !91, !align !313
  %i.ahq = load ptr, ptr %i.ahn, align 8, !nonnull !91, !align !313
  %i.ahr = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ahs = load ptr, ptr %i.ahr, align 8, !nonnull !91, !align !313 ; 2 uses
  br label %bb.bj

._crit_edge.i.i.i.i123:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i124 = icmp eq i32 %i.afo, %i.afs
  br i1 %.not34.i.i.i.i124, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiiT_.exit.i, label %bb.bw

bb.bj:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i121
  %i.aht = phi i32 [ %i.ahf, %.lr.ph.i.i.i.i121 ], [ %i.amd, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.055.i.i.i.i = phi i32 [ %i.afr, %.lr.ph.i.i.i.i121 ], [ %i.aht, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.ahu = sdiv i32 %.055.i.i.i.i, 64             ; 3 uses
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.afn, i64 %i.ahv
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !153 ; 3 uses
  switch i64 %i.ahx, label %.lr.ph.i.i.i.i.i126 [
    i64 -1, label %bb.bk
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i126:                              ; preds = %bb.bj
  %i.ahy = shl nsw i32 %i.ahu, 6                  ; 2 uses
  %i.ahz = load i64, ptr %i.ahk, align 8, !tbaa !153
  %i.aia = icmp eq i64 %i.ahz, 0
  %i.aib = load ptr, ptr %i.ahi, align 8, !tbaa !306 ; 2 uses
  br i1 %i.aia, label %.lr.ph.i.split.us.i.i.i.i, label %.lr.ph.i.split.i.i.i.i

.lr.ph.i.split.us.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i126
  %i.aic = load ptr, ptr %i.ahs, align 8, !tbaa !306
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i
  %.01519.i.us.i.i.i.i = phi i64 [ %i.ahx, %.lr.ph.i.split.us.i.i.i.i ], [ %i.aii, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i ] ; 3 uses
  %i.aid = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.us.i.i.i.i, i1 true)
  %62 = trunc nuw nsw i64 %i.aid to i32
  %63 = or disjoint i32 %i.ahy, %62
  %i.aie = load i32, ptr %i.ahh, align 4, !tbaa !3
  %64 = sext i32 %63 to i64                       ; 2 uses
  %i.aif = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %64
  store i32 %i.aie, ptr %i.aif, align 4, !tbaa !3
  %i.aig = getelementptr inbounds [4 x i8], ptr %i.aic, i64 %64
  store i32 0, ptr %i.aig, align 4, !tbaa !3
  %i.aih = add i64 %.01519.i.us.i.i.i.i, -1
  %i.aii = and i64 %i.aih, %.01519.i.us.i.i.i.i   ; 2 uses
  %.not.i41.us.i.i.i.i = icmp eq i64 %i.aii, 0
  br i1 %.not.i41.us.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i, !llvm.loop !314

bb.bk:                                            ; preds = %bb.bj
  %i.aij = shl nsw i32 %i.ahu, 6                  ; 2 uses
  %i.aik = add i32 %i.aij, 64
  %i.ail = sext i32 %i.aik to i64
  %.0.off.i.i.i.i125 = add i32 %.055.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i125, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.bk
  %i.aim = sext i32 %i.aij to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc148, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.aim, %.lr.ph21.i.i.i.i.i ], [ %i.aio, %.noexc148 ] ; 2 uses
  %i.ain = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.ain)
          to label %.noexc148 unwind label %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc148:                                        ; preds = %bb.bl
  %i.aio = add nuw i64 %.020.i.i.i.i.i, 1         ; 2 uses
  %i.aip = icmp ult i64 %i.aio, %i.ail
  br i1 %i.aip, label %bb.bl, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !315

.lr.ph.i.split.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i126, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i
  %i.aiq = phi i64 [ %i.alu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i126 ]
  %i.air = phi ptr [ %i.alv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i ], [ %i.aib, %.lr.ph.i.i.i.i.i126 ] ; 2 uses
  %.01519.i.i.i.i.i = phi i64 [ %i.amc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i ], [ %i.ahx, %.lr.ph.i.i.i.i.i126 ] ; 3 uses
  %i.ais = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.ait = trunc nuw nsw i64 %i.ais to i32
  %i.aiu = or disjoint i32 %i.ahy, %i.ait         ; 2 uses
  %i.aiv = load i32, ptr %i.ahh, align 4, !tbaa !3 ; 3 uses
  %i.aiw = sext i32 %i.aiu to i64                 ; 4 uses
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.air, i64 %i.aiw
  store i32 %i.aiv, ptr %i.aix, align 4, !tbaa !3
  %.not.i48.i.i.i.i = icmp eq i64 %i.aiq, 0
  br i1 %.not.i48.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i, label %.lr.ph.i49.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.noexc152
  %.pre22.i.i.i.i.i = load ptr, ptr %i.ahi, align 8, !tbaa !306 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %.pre22.i.i.i.i.i, i64 %i.aiw
  %.pre23.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i

.lr.ph.i49.i.i.i.i:                               ; preds = %.lr.ph.i.split.i.i.i.i, %.noexc152
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.noexc152 ], [ 0, %.lr.ph.i.split.i.i.i.i ] ; 2 uses
  %i.aiy = load ptr, ptr %i.aho, align 8, !tbaa !184
  %i.aiz = getelementptr inbounds nuw [16 x i8], ptr %i.aiy, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8 ; 5 uses
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !316 ; 2 uses
  %.not2.i.i.i.i.i = icmp eq ptr %i.ajb, null
  br i1 %.not2.i.i.i.i.i, label %bb.bm, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

bb.bm:                                            ; preds = %.lr.ph.i49.i.i.i.i
  %i.ajc = load ptr, ptr %i.aiz, align 8, !tbaa !318 ; 4 uses
  %.not.i50.i.i.i.i = icmp eq ptr %i.ajc, null
  br i1 %.not.i50.i.i.i.i, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 16
  %i.aje = load i8, ptr %i.ajd, align 8, !tbaa !326, !range !90, !noalias !327, !noundef !91
  %i.ajf = trunc nuw i8 %i.aje to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajc, i64 32
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !330, !noalias !327
  %.phi.trans.insert2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajc, i64 40 ; 2 uses
  %.pre3.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert2.i.i.i.i.i.i, align 8, !tbaa !330, !noalias !327 ; 2 uses
  %i.ajg = icmp eq ptr %.pre.i.i.i.i.i.i, %.pre3.i.i.i.i.i.i ; 2 uses
  br i1 %i.ajf, label %.critedge.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.ajg, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i, label %bb.bp, !prof !86

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #30
          to label %.noexc149 unwind label %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc149:                                        ; preds = %bb.bp
  unreachable

.critedge.i.i.i.i.i.i:                            ; preds = %bb.bn
  br i1 %i.ajg, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.bo, %bb.bm
  %i.ajh = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #27
          to label %.noexc150 unwind label %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.noexc150:                                        ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ajh, i8 0, i64 72, i1 false), !noalias !91
  store i8 1, ptr %i.aji, align 8, !tbaa !331, !noalias !91
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 48
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ajj, i8 0, i64 13, i1 false), !noalias !91
  store i8 1, ptr %i.ajk, align 1, !tbaa !332, !noalias !91
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ajl, i8 0, i64 48, i1 false), !noalias !91
  store ptr %i.ajh, ptr %i.aja, align 8, !tbaa !316
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i
  %i.ajm = getelementptr inbounds i8, ptr %.pre3.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ajn = load i64, ptr %i.ajm, align 8, !tbaa !316, !noalias !327
  store ptr null, ptr %i.ajm, align 8, !tbaa !316, !noalias !327
  store ptr %i.ajm, ptr %.phi.trans.insert2.i.i.i.i.i.i, align 8, !tbaa !333, !noalias !327
  %i.ajo = inttoptr i64 %i.ajn to ptr             ; 2 uses
  %.pre.i51.i.i.i.i = load ptr, ptr %i.aja, align 8, !tbaa !316 ; 6 uses
  store ptr %i.ajo, ptr %i.aja, align 8, !tbaa !316
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i51.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i
  %i.ajp = getelementptr inbounds nuw i8, ptr %.pre.i51.i.i.i.i, i64 96
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ajr = getelementptr inbounds nuw i8, ptr %.pre.i51.i.i.i.i, i64 112
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !334
  %i.ajt = ptrtoint ptr %i.ajs to i64
  %i.aju = ptrtoint ptr %i.ajq to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  call void @_ZdlPvm(ptr noundef nonnull %i.ajq, i64 noundef %i.ajv) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %i.ajw = getelementptr inbounds nuw i8, ptr %.pre.i51.i.i.i.i, i64 72
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajx, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ajy = getelementptr inbounds nuw i8, ptr %.pre.i51.i.i.i.i, i64 88
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !336
  %i.aka = ptrtoint ptr %i.ajz to i64
  %i.akb = ptrtoint ptr %i.ajx to i64
  %i.akc = sub i64 %i.aka, %i.akb
  call void @_ZdlPvm(ptr noundef nonnull %i.ajx, i64 noundef %i.akc) #28
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bs, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i51.i.i.i.i, i64 noundef 120) #28
  %.pre3.i.i.i.i.i = load ptr, ptr %i.aja, align 8, !tbaa !316
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i, %.noexc150, %.lr.ph.i49.i.i.i.i
  %i.akd = phi ptr [ %i.ajo, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ajb, %.lr.ph.i49.i.i.i.i ], [ %i.ajh, %.noexc150 ] ; 5 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 48
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !187
  %i.akg = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.akf, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9MapVectorE, i64 0) #26 ; 4 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akd, i64 58
  %i.aki = load i8, ptr %i.akh, align 2, !tbaa !227, !range !90, !noundef !91
  %i.akj = trunc nuw i8 %i.aki to i1
  br i1 %i.akj, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akd, i64 59
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !228, !range !90, !noundef !91
  %i.akm = trunc nuw i8 %i.akl to i1
  br i1 %i.akm, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akd, i64 64
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !230
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !229
  %i.akr = getelementptr inbounds [4 x i8], ptr %i.akq, i64 %i.aiw
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i: ; preds = %bb.bv, %bb.bu, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aks, %bb.bv ], [ %i.ako, %bb.bu ], [ %i.aiu, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i ]
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akg, i64 104
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !337
  %i.akv = sext i32 %.0.i.i.i.i.i.i to i64        ; 2 uses
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.aku, i64 %i.akv
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !3 ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akg, i64 120
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !202
  %i.ala = getelementptr inbounds [4 x i8], ptr %i.akz, i64 %i.akv
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !3 ; 3 uses
  %i.alc = load ptr, ptr %i.ahp, align 8, !tbaa !164 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akg, i64 128
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !164
  %i.alf = load i32, ptr %i.ahh, align 4, !tbaa !3
  %i.alg = load ptr, ptr %i.alc, align 8, !tbaa !45
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 208
  %i.ali = load ptr, ptr %i.alh, align 8
  invoke void %i.ali(ptr noundef nonnull align 8 dereferenceable(94) %i.alc, ptr noundef %i.ale, i32 noundef %i.alf, i32 noundef %i.akx, i32 noundef %i.alb)
          to label %.noexc151 unwind label %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !338

.noexc151:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bs = and i32 %i.bo, 2147483584               ; 3 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %.not37.i.i.not.i.i748.not = icmp eq i32 %i.bs, 0
  br i1 %.not37.i.i.not.i.i748.not, label %.critedge.i.i.i.i, label %.lr.ph751

bb.p:                                             ; preds = %.lr.ph751
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i749, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.bt
  br i1 %.not37.i.i.not.i.i, label %.lr.ph751, label %.critedge.i.i.i.i, !llvm.loop !226

.lr.ph751:                                        ; preds = %bb.o, %bb.p
  %indvars.iv.i.i749 = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bu = lshr exact i64 %indvars.iv.i.i749, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !153
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.p, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !226

.critedge.i.i.i.i:                                ; preds = %bb.p, %bb.o
  %.not38.i.i.i.i = icmp eq i32 %i.bo, %i.bs
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.critedge.i.i.i.i
  %i.by = lshr i32 %i.bo, 6
  %i.bz = and i32 %i.bo, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ca
  %i.cb = zext nneg i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !153
  %.demorgan.i.i = or i64 %i.cd, %notmask.i40.i.i.i.i
  %i.ce = icmp eq i64 %.demorgan.i.i, -1
  %i.cf = zext i1 %i.ce to i16
  %i.cg = or disjoint i16 %i.cf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph751, %bb.q, %.critedge.i.i.i.i, %bb.n, %bb.m, %bb.l
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.m ], [ 256, %bb.l ], [ 257, %bb.n ], [ 257, %.critedge.i.i.i.i ], [ %i.cg, %bb.q ], [ 256, %.lr.ph751 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.au, align 4
  %i.ch = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ch, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.ci = load i32, ptr %i.aw, align 4, !tbaa !218 ; 9 uses
  br i1 %.0.i.i, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.cj = load i32, ptr %i.ax, align 8, !tbaa !223 ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit

.lr.ph.i:                                         ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 58
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !227, !range !90, !noundef !91
  %i.cn = trunc nuw i8 %i.cm to i1                ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 59 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 3 uses
  %i.cr = sext i32 %i.ci to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.cj to i64      ; 3 uses
  %i.cs = sub nsw i64 %wide.trip.count.i, %i.cr
  %xtraiter = and i64 %i.cs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  br i1 %i.cn, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol, label %bb.s

bb.s:                                             ; preds = %.prol.preheader
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !228, !range !90, !noundef !91
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !229
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cr
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol

bb.u:                                             ; preds = %bb.s
  %i.cy = load i32, ptr %i.cq, align 8, !tbaa !230
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol: ; preds = %bb.u, %bb.t, %.prol.preheader
  %.0.i.i.i.prol = phi i32 [ %i.cx, %bb.t ], [ %i.cy, %bb.u ], [ %i.ci, %.prol.preheader ]
  %i.cz = sext i32 %.0.i.i.i.prol to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = add nsw i32 %i.db, %.0400484            ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.cr, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol, %.lr.ph.i
  %.lcssa950.unr = phi i32 [ poison, %.lr.ph.i ], [ %i.dc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol ]
  %.5405.unr = phi i32 [ %.0400484, %.lr.ph.i ], [ %i.dc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.cr, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.prol ]
  %i.dd = add nsw i64 %wide.trip.count.i, -1
  %i.de = icmp eq i64 %i.dd, %i.cr
  br i1 %i.de, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1
  %.5405 = phi i32 [ %i.ea, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1 ], [ %.5405.unr, %.prol.loopexit ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1 ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 4 uses
  %i.df = trunc nsw i64 %indvars.iv.i to i32
  br i1 %i.cn, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.new
  %i.dg = load i8, ptr %i.co, align 1, !tbaa !228, !range !90, !noundef !91
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.di = load i32, ptr %i.cq, align 8, !tbaa !230
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !229
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i: ; preds = %bb.x, %bb.w, %.lr.ph.i.new
  %.0.i.i.i = phi i32 [ %i.dl, %bb.x ], [ %i.di, %bb.w ], [ %i.df, %.lr.ph.i.new ]
  %i.dm = sext i32 %.0.i.i.i to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = add nsw i32 %i.do, %.5405
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dq = trunc nsw i64 %indvars.iv.next.i to i32
  br i1 %i.cn, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1, label %bb.y

bb.y:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i
  %i.dr = load i8, ptr %i.co, align 1, !tbaa !228, !range !90, !noundef !91
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = load ptr, ptr %i.cp, align 8, !tbaa !229
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %indvars.iv.next.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1

bb.aa:                                            ; preds = %bb.y
  %i.dw = load i32, ptr %i.cq, align 8, !tbaa !230
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1: ; preds = %bb.aa, %bb.z, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i
  %.0.i.i.i.1 = phi i32 [ %i.dv, %bb.z ], [ %i.dw, %bb.aa ], [ %i.dq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i ]
  %i.dx = sext i32 %.0.i.i.i.1 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = add nsw i32 %i.dz, %i.dp                ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.lr.ph.i.new, !llvm.loop !754

bb.ab:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.eb = load ptr, ptr %1, align 8, !tbaa !225   ; 4 uses
  %i.ec = load i32, ptr %i.ax, align 8, !tbaa !223 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.ci, %i.ec
  br i1 %.not.i.i.i.i, label %bb.ac, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ed = add i32 %i.ci, 63                       ; 2 uses
  %i.ee = srem i32 %i.ed, 64
  %i.ef = sub nsw i32 %i.ed, %i.ee                ; 6 uses
  %i.eg = and i32 %i.ec, -64                      ; 8 uses
  %i.eh = icmp slt i32 %i.eg, %i.ef
  br i1 %i.eh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ei = ashr i32 %i.ec, 6
  %i.ej = and i32 %i.ec, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i.i.i.i.i, -1
  %i.em = sub nsw i32 %i.ef, %i.ci                ; 2 uses
  %i.en = zext nneg i32 %i.em to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.en
  %i.eo = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ep = sub nsw i32 64, %i.em
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl i64 %i.eo, %i.eq
  %i.es = and i64 %i.er, %i.el
  %i.et = sext i32 %i.ei to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !153
  %i.ew = and i64 %i.es, %i.ev                    ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %i.be, i64 58
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !227, !range !90, !noundef !91
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  br i1 %i.ez, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i, label %.preheader.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i
  %.011.us.i.i.i.i.i = phi i64 [ %i.fi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i ], [ %i.ew, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.fc = phi i32 [ %i.fg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i ], [ %.0400484, %.preheader.i.i.i.i.i ]
  %i.fd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i.i.i.i.i, i1 true)
  %36 = trunc nuw nsw i64 %i.fd to i32
  %37 = or disjoint i32 %i.eg, %36
  %38 = sext i32 %37 to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %38
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fg = add nsw i32 %i.ff, %i.fc                ; 2 uses
  %i.fh = add nsw i64 %.011.us.i.i.i.i.i, -1
  %i.fi = and i64 %i.fh, %.011.us.i.i.i.i.i       ; 2 uses
  %.not10.us.i.i.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not10.us.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i, !llvm.loop !755

.preheader.split.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.be, i64 59
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !228, !range !90, !noundef !91
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader, label %.preheader.split.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader: ; preds = %.preheader.split.i.i.i.i.i
  %i.fm = load i32, ptr %i.fb, align 8, !tbaa !230
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i
  %.011.us12.i.i.i.i.i = phi i64 [ %i.ft, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i ], [ %i.ew, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader ] ; 2 uses
  %i.fq = phi i32 [ %i.fr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i ], [ %.0400484, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i.preheader ]
  %i.fr = add nsw i32 %i.fp, %i.fq                ; 2 uses
  %i.fs = add nsw i64 %.011.us12.i.i.i.i.i, -1
  %i.ft = and i64 %i.fs, %.011.us12.i.i.i.i.i     ; 2 uses
  %.not10.us15.i.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not10.us15.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i, !llvm.loop !755

.preheader.split.split.i.i.i.i.i:                 ; preds = %.preheader.split.i.i.i.i.i
  %i.fu = load ptr, ptr %i.fa, align 8, !tbaa !229
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, %.preheader.split.split.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.ew, %.preheader.split.split.i.i.i.i.i ], [ %i.ge, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.fv = phi i32 [ %.0400484, %.preheader.split.split.i.i.i.i.i ], [ %i.gc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ]
  %i.fw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %39 = trunc nuw nsw i64 %i.fw to i32
  %40 = or disjoint i32 %i.eg, %39
  %41 = sext i32 %40 to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %41
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = add nsw i32 %i.gb, %i.fv                ; 2 uses
  %i.gd = add nsw i64 %.011.i.i.i.i.i, -1
  %i.ge = and i64 %i.gd, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !755

bb.ae:                                            ; preds = %bb.ac
  %.not32.i.i.i.i = icmp eq i32 %i.ci, %i.ef
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = sdiv i32 %i.ci, 64                      ; 2 uses
  %i.gg = sub nsw i32 %i.ef, %i.ci                ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.gh
  %i.gi = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.gj = sub nsw i32 64, %i.gg
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = shl i64 %i.gi, %i.gk
  %i.gm = sext i32 %i.gf to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !153
  %i.gp = and i64 %i.go, %i.gl                    ; 4 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.af
  %i.gq = shl nsw i32 %i.gf, 6                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.be, i64 58
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !227, !range !90, !noundef !91
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  br i1 %i.gt, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i, label %.preheader.split.i39.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i: ; preds = %.preheader.i37.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i
  %.011.us.i48.i.i.i.i = phi i64 [ %i.hc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i ], [ %i.gp, %.preheader.i37.i.i.i.i ] ; 3 uses
  %i.gw = phi i32 [ %i.ha, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i ], [ %.0400484, %.preheader.i37.i.i.i.i ]
  %i.gx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i48.i.i.i.i, i1 true)
  %42 = trunc nuw nsw i64 %i.gx to i32
  %43 = or disjoint i32 %i.gq, %42
  %44 = sext i32 %43 to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %44
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = add nsw i32 %i.gz, %i.gw                ; 2 uses
  %i.hb = add i64 %.011.us.i48.i.i.i.i, -1
  %i.hc = and i64 %i.hb, %.011.us.i48.i.i.i.i     ; 2 uses
  %.not10.us.i49.i.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not10.us.i49.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i, !llvm.loop !755

.preheader.split.i39.i.i.i.i:                     ; preds = %.preheader.i37.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.be, i64 59
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !228, !range !90, !noundef !91
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader, label %.preheader.split.split.i40.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader: ; preds = %.preheader.split.i39.i.i.i.i
  %i.hg = load i32, ptr %i.gv, align 8, !tbaa !230
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i
  %.011.us12.i45.i.i.i.i = phi i64 [ %i.hn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i ], [ %i.gp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader ] ; 2 uses
  %i.hk = phi i32 [ %i.hl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i ], [ %.0400484, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i.preheader ]
  %i.hl = add nsw i32 %i.hj, %i.hk                ; 2 uses
  %i.hm = add i64 %.011.us12.i45.i.i.i.i, -1
  %i.hn = and i64 %i.hm, %.011.us12.i45.i.i.i.i   ; 2 uses
  %.not10.us15.i46.i.i.i.i = icmp eq i64 %i.hn, 0
  br i1 %.not10.us15.i46.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i, !llvm.loop !755

.preheader.split.split.i40.i.i.i.i:               ; preds = %.preheader.split.i39.i.i.i.i
  %i.ho = load ptr, ptr %i.gu, align 8, !tbaa !229
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i, %.preheader.split.split.i40.i.i.i.i
  %.011.i42.i.i.i.i = phi i64 [ %i.gp, %.preheader.split.split.i40.i.i.i.i ], [ %i.hy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i ] ; 3 uses
  %i.hp = phi i32 [ %.0400484, %.preheader.split.split.i40.i.i.i.i ], [ %i.hw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i ]
  %i.hq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i42.i.i.i.i, i1 true)
  %45 = trunc nuw nsw i64 %i.hq to i32
  %46 = or disjoint i32 %i.gq, %45
  %47 = sext i32 %46 to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %47
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = add nsw i32 %i.hv, %i.hp                ; 2 uses
  %i.hx = add i64 %.011.i42.i.i.i.i, -1
  %i.hy = and i64 %i.hx, %.011.i42.i.i.i.i        ; 2 uses
  %.not10.i43.i.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not10.i43.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i, !llvm.loop !755

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i, %bb.af, %bb.ae
  %.1401 = phi i32 [ %.0400484, %bb.ae ], [ %.0400484, %bb.af ], [ %i.ha, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i47.i.i.i.i ], [ %i.hl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i44.i.i.i.i ], [ %i.hw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i41.i.i.i.i ] ; 2 uses
  %i.hz = add nsw i32 %i.ef, 64                   ; 2 uses
  %.not3383.i.i.i.i = icmp sgt i32 %i.hz, %i.eg
  br i1 %.not3383.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.be, i64 58 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.be, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i
  %.4404 = phi i32 [ %.1401, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i ], [ %.3403, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 5 uses
  %.not34.i.i.i.i = icmp eq i32 %i.ec, %i.eg
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %bb.ah

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.2402 = phi i32 [ %.3403, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.1401, %.lr.ph.i.i.i.i.preheader ] ; 12 uses
  %i.ie = phi i32 [ %i.aba, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.hz, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.084.i.i.i.i = phi i32 [ %i.ie, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ef, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.if = sdiv i32 %.084.i.i.i.i, 64              ; 3 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !153 ; 4 uses
  switch i64 %i.ii, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.ag
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ij = shl nsw i32 %i.if, 6                    ; 2 uses
  %i.ik = load i8, ptr %i.ia, align 2, !tbaa !227, !range !90, !noundef !91
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i
  %i.im = phi i32 [ %i.iq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ], [ %.2402, %.lr.ph.i.i.i.i.i ]
  %.01521.us.i.i.i.i.i = phi i64 [ %i.is, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ], [ %i.ii, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.in = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.us.i.i.i.i.i, i1 true)
  %48 = trunc nuw nsw i64 %i.in to i32
  %49 = or disjoint i32 %i.ij, %48
  %50 = sext i32 %49 to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %50
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iq = add nsw i32 %i.ip, %i.im                ; 2 uses
  %i.ir = add i64 %.01521.us.i.i.i.i.i, -1
  %i.is = and i64 %i.ir, %.01521.us.i.i.i.i.i     ; 2 uses
  %.not.us.i.i.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, !llvm.loop !756

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.it = load i8, ptr %i.id, align 1, !tbaa !228, !range !90, !noundef !91
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i
  %i.iv = load i32, ptr %i.ic, align 8, !tbaa !230
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i
  %i.iz = phi i32 [ %i.ja, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %.2402, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader ]
  %.01521.us22.i.i.i.i.i = phi i64 [ %i.jc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %i.ii, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i.preheader ] ; 2 uses
  %i.ja = add nsw i32 %i.iy, %i.iz                ; 2 uses
  %i.jb = add i64 %.01521.us22.i.i.i.i.i, -1
  %i.jc = and i64 %i.jb, %.01521.us22.i.i.i.i.i   ; 2 uses
  %.not.us25.i.i.i.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not.us25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i, !llvm.loop !756

.lr.ph.split.split.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i
  %i.jd = load ptr, ptr %i.ib, align 8, !tbaa !229
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.je = shl nsw i32 %i.if, 6                    ; 5 uses
  %i.jf = sext i32 %i.je to i64                   ; 19 uses
  %i.jg = add i32 %i.je, 64
  %i.jh = sext i32 %i.jg to i64                   ; 7 uses
  %.0.off.i.i.i.i = add i32 %.084.i.i.i.i, 127
  %.not34.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not34.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph28.i.i.i.i.i

.lr.ph28.i.i.i.i.i:                               ; preds = %bb.ag
  %i.ji = load i8, ptr %i.ia, align 2, !tbaa !227, !range !90, !noundef !91
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %iter.check, label %.lr.ph28.split.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph28.i.i.i.i.i
  %i.jk = or disjoint i64 %i.jf, 1
  %umax769 = call i64 @llvm.umax.i64(i64 %i.jk, i64 %i.jh) ; 2 uses
  %i.jl = sub i64 %umax769, %i.jf                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.jl, 8
  br i1 %min.iters.check, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.jm = or disjoint i64 %i.jf, 1
  %umax768 = call i64 @llvm.umax.i64(i64 %i.jm, i64 %i.jh)
  %i.jn = xor i64 %i.jf, -1
  %i.jo = add i64 %umax768, %i.jn                 ; 2 uses
  %i.jp = sext i32 %i.je to i34                   ; 2 uses
  %i.jq = shl nsw i34 %i.jp, 2
  %i.jr = trunc i64 %i.jo to i34
  %i.js = add i34 %i.jp, %i.jr
  %i.jt = shl i34 %i.js, 2
  %i.ju = icmp slt i34 %i.jt, %i.jq
  %i.jv = icmp ugt i64 %i.jo, 4294967295
  %i.jw = or i1 %i.ju, %i.jv
  br i1 %i.jw, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check770 = icmp ult i64 %i.jl, 32
  %n.mod.vf779 = and i64 %umax769, 1              ; 3 uses
  %n.vec780 = sub i64 %i.jl, %n.mod.vf779         ; 3 uses
  %i.jx = add i64 %n.vec780, %i.jf                ; 2 uses
  %i.jy = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2402, i64 0 ; 2 uses
  br i1 %min.iters.check770, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.kg, %vector.body ], [ %i.jy, %vector.main.loop.iter.check ]
  %vec.phi771 = phi <8 x i32> [ %i.kh, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi772 = phi <8 x i32> [ %i.ki, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi773 = phi <8 x i32> [ %i.kj, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.jz = add i64 %index, %i.jf
  %i.ka = shl i64 %i.jz, 32
  %i.kb = ashr exact i64 %i.ka, 30
  %i.kc = getelementptr inbounds i8, ptr %i.bj, i64 %i.kb ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 96
  %wide.load = load <8 x i32>, ptr %i.kc, align 4, !tbaa !3
  %wide.load774 = load <8 x i32>, ptr %i.kd, align 4, !tbaa !3
  %wide.load775 = load <8 x i32>, ptr %i.ke, align 4, !tbaa !3
  %wide.load776 = load <8 x i32>, ptr %i.kf, align 4, !tbaa !3
  %i.kg = add <8 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.kh = add <8 x i32> %wide.load774, %vec.phi771 ; 2 uses
  %i.ki = add <8 x i32> %wide.load775, %vec.phi772 ; 2 uses
  %i.kj = add <8 x i32> %wide.load776, %vec.phi773 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec780
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !757

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.kh, %i.kg
  %bin.rdx777 = add <8 x i32> %i.ki, %bin.rdx
  %bin.rdx778 = add <8 x i32> %i.kj, %bin.rdx777
  %i.kl = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx778) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf779, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index781 = phi i64 [ %index.next784, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi782 = phi <8 x i32> [ %i.kq, %vec.epilog.vector.body ], [ %i.jy, %vector.main.loop.iter.check ]
  %i.km = add i64 %index781, %i.jf
  %i.kn = shl i64 %i.km, 32
  %i.ko = ashr exact i64 %i.kn, 30
  %i.kp = getelementptr inbounds i8, ptr %i.bj, i64 %i.ko
  %wide.load783 = load <8 x i32>, ptr %i.kp, align 4, !tbaa !3
  %i.kq = add <8 x i32> %wide.load783, %vec.phi782 ; 2 uses
  %index.next784 = add nuw i64 %index781, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next784, %n.vec780
  br i1 %i.kr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !758

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ks = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.kq) ; 2 uses
  %cmp.n785 = icmp eq i64 %n.mod.vf779, 0
  br i1 %cmp.n785, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %i.kl, %middle.block ], [ %.2402, %vector.scevcheck ], [ %.2402, %iter.check ], [ %i.ks, %vec.epilog.middle.block ]
  %.027.us.i.i.i.i.i.ph = phi i64 [ %i.jx, %middle.block ], [ %i.jf, %vector.scevcheck ], [ %i.jf, %iter.check ], [ %i.jx, %vec.epilog.middle.block ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i
  %i.kt = phi i32 [ %i.kx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i ], [ %.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader ]
  %.027.us.i.i.i.i.i = phi i64 [ %i.ky, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i ], [ %.027.us.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i.preheader ] ; 2 uses
  %sext35.i.i.i.i.i = shl i64 %.027.us.i.i.i.i.i, 32
  %i.ku = ashr exact i64 %sext35.i.i.i.i.i, 30
  %i.kv = getelementptr inbounds i8, ptr %i.bj, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !3
  %i.kx = add nsw i32 %i.kw, %i.kt                ; 2 uses
  %i.ky = add nuw i64 %.027.us.i.i.i.i.i, 1       ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.jh
  br i1 %i.kz, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !759

.lr.ph28.split.i.i.i.i.i:                         ; preds = %.lr.ph28.i.i.i.i.i
  %i.la = load i8, ptr %i.id, align 1, !tbaa !228, !range !90, !noundef !91
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader, label %iter.check814

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader: ; preds = %.lr.ph28.split.i.i.i.i.i
  %i.lc = load i32, ptr %i.ic, align 8, !tbaa !230
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3
  %i.lg = or disjoint i64 %i.jf, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.lg, i64 %i.jh)
  %i.lh = trunc i64 %umax to i32
  %i.li = sub i32 %i.lh, %i.je
  %i.lj = mul i32 %i.lf, %i.li
  %i.lk = add i32 %.2402, %i.lj
  br label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i

iter.check814:                                    ; preds = %.lr.ph28.split.i.i.i.i.i
  %i.ll = load ptr, ptr %i.ib, align 8, !tbaa !229 ; 41 uses
  %i.lm = or disjoint i64 %i.jf, 1
  %umax793 = call i64 @llvm.umax.i64(i64 %i.lm, i64 %i.jh) ; 2 uses
  %i.ln = sub i64 %umax793, %i.jf                 ; 3 uses
  %min.iters.check794 = icmp ult i64 %i.ln, 8
  br i1 %min.iters.check794, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader, label %vector.scevcheck788

vector.scevcheck788:                              ; preds = %iter.check814
  %i.lo = or disjoint i64 %i.jf, 1
  %umax789 = call i64 @llvm.umax.i64(i64 %i.lo, i64 %i.jh)
  %i.lp = xor i64 %i.jf, -1
  %i.lq = add i64 %umax789, %i.lp                 ; 2 uses
  %i.lr = sext i32 %i.je to i34                   ; 2 uses
  %i.ls = shl nsw i34 %i.lr, 2
  %i.lt = trunc i64 %i.lq to i34
  %i.lu = add i34 %i.lr, %i.lt
  %i.lv = shl i34 %i.lu, 2
  %i.lw = icmp slt i34 %i.lv, %i.ls
  %i.lx = icmp ugt i64 %i.lq, 4294967295
  %i.ly = or i1 %i.lw, %i.lx
  br i1 %i.ly, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader, label %vector.main.loop.iter.check795

vector.main.loop.iter.check795:                   ; preds = %vector.scevcheck788
  %min.iters.check796 = icmp ult i64 %i.ln, 32
  %n.mod.vf819 = and i64 %umax793, 1              ; 3 uses
  %n.vec820 = sub i64 %i.ln, %n.mod.vf819         ; 3 uses
  %i.lz = add i64 %n.vec820, %i.jf                ; 2 uses
  %i.ma = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.2402, i64 0 ; 2 uses
  br i1 %min.iters.check796, label %vec.epilog.vector.body821, label %vector.body800

vector.body800:                                   ; preds = %vector.main.loop.iter.check795, %vector.body800
  %index801 = phi i64 [ %index.next806, %vector.body800 ], [ 0, %vector.main.loop.iter.check795 ] ; 2 uses
  %vec.phi802 = phi <8 x i32> [ %i.xd, %vector.body800 ], [ %i.ma, %vector.main.loop.iter.check795 ]
  %vec.phi803 = phi <8 x i32> [ %i.xe, %vector.body800 ], [ zeroinitializer, %vector.main.loop.iter.check795 ]
  %vec.phi804 = phi <8 x i32> [ %i.xf, %vector.body800 ], [ zeroinitializer, %vector.main.loop.iter.check795 ]
  %vec.phi805 = phi <8 x i32> [ %i.xg, %vector.body800 ], [ zeroinitializer, %vector.main.loop.iter.check795 ]
  %i.mb = add i64 %index801, %i.jf                ; 32 uses
  %i.mc = shl i64 %i.mb, 32
  %i.md = shl i64 %i.mb, 32
  %i.me = shl i64 %i.mb, 32
  %i.mf = shl i64 %i.mb, 32
  %i.mg = shl i64 %i.mb, 32
  %i.mh = shl i64 %i.mb, 32
  %i.mi = shl i64 %i.mb, 32
  %i.mj = shl i64 %i.mb, 32
  %i.mk = shl i64 %i.mb, 32
  %i.ml = shl i64 %i.mb, 32
  %i.mm = shl i64 %i.mb, 32
  %i.mn = shl i64 %i.mb, 32
  %i.mo = shl i64 %i.mb, 32
  %i.mp = shl i64 %i.mb, 32
  %i.mq = shl i64 %i.mb, 32
  %i.mr = shl i64 %i.mb, 32
  %i.ms = shl i64 %i.mb, 32
  %i.mt = shl i64 %i.mb, 32
  %i.mu = shl i64 %i.mb, 32
  %i.mv = shl i64 %i.mb, 32
  %i.mw = shl i64 %i.mb, 32
  %i.mx = shl i64 %i.mb, 32
  %i.my = shl i64 %i.mb, 32
  %i.mz = shl i64 %i.mb, 32
  %i.na = shl i64 %i.mb, 32
  %i.nb = shl i64 %i.mb, 32
  %i.nc = shl i64 %i.mb, 32
  %i.nd = shl i64 %i.mb, 32
  %i.ne = shl i64 %i.mb, 32
  %i.nf = shl i64 %i.mb, 32
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ta
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.tb
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.tc
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.td
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.te
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.tf
  %i.um = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.tg
  %i.un = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.th
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ti
  %i.up = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.tj
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.tk
  %i.ur = load i32, ptr %i.tl, align 4, !tbaa !3
  %i.us = load i32, ptr %i.tm, align 4, !tbaa !3
  %i.ut = load i32, ptr %i.tn, align 4, !tbaa !3
  %i.uu = load i32, ptr %i.to, align 4, !tbaa !3
  %i.uv = load i32, ptr %i.tp, align 4, !tbaa !3
  %i.uw = load i32, ptr %i.tq, align 4, !tbaa !3
  %i.ux = load i32, ptr %i.tr, align 4, !tbaa !3
  %i.uy = load i32, ptr %i.ts, align 4, !tbaa !3
  %i.uz = insertelement <8 x i32> poison, i32 %i.ur, i64 0
  %i.va = insertelement <8 x i32> %i.uz, i32 %i.us, i64 1
  %i.vb = insertelement <8 x i32> %i.va, i32 %i.ut, i64 2
  %i.vc = insertelement <8 x i32> %i.vb, i32 %i.uu, i64 3
  %i.vd = insertelement <8 x i32> %i.vc, i32 %i.uv, i64 4
  %i.ve = insertelement <8 x i32> %i.vd, i32 %i.uw, i64 5
  %i.vf = insertelement <8 x i32> %i.ve, i32 %i.ux, i64 6
  %i.vg = insertelement <8 x i32> %i.vf, i32 %i.uy, i64 7
  %i.vh = load i32, ptr %i.tt, align 4, !tbaa !3
  %i.vi = load i32, ptr %i.tu, align 4, !tbaa !3
  %i.vj = load i32, ptr %i.tv, align 4, !tbaa !3
  %i.vk = load i32, ptr %i.tw, align 4, !tbaa !3
  %i.vl = load i32, ptr %i.tx, align 4, !tbaa !3
  %i.vm = load i32, ptr %i.ty, align 4, !tbaa !3
  %i.vn = load i32, ptr %i.tz, align 4, !tbaa !3
  %i.vo = load i32, ptr %i.ua, align 4, !tbaa !3
  %i.vp = insertelement <8 x i32> poison, i32 %i.vh, i64 0
  %i.vq = insertelement <8 x i32> %i.vp, i32 %i.vi, i64 1
  %i.vr = insertelement <8 x i32> %i.vq, i32 %i.vj, i64 2
  %i.vs = insertelement <8 x i32> %i.vr, i32 %i.vk, i64 3
  %i.vt = insertelement <8 x i32> %i.vs, i32 %i.vl, i64 4
  %i.vu = insertelement <8 x i32> %i.vt, i32 %i.vm, i64 5
  %i.vv = insertelement <8 x i32> %i.vu, i32 %i.vn, i64 6
  %i.vw = insertelement <8 x i32> %i.vv, i32 %i.vo, i64 7
  %i.vx = load i32, ptr %i.ub, align 4, !tbaa !3
  %i.vy = load i32, ptr %i.uc, align 4, !tbaa !3
  %i.vz = load i32, ptr %i.ud, align 4, !tbaa !3
  %i.wa = load i32, ptr %i.ue, align 4, !tbaa !3
  %i.wb = load i32, ptr %i.uf, align 4, !tbaa !3
  %i.wc = load i32, ptr %i.ug, align 4, !tbaa !3
  %i.wd = load i32, ptr %i.uh, align 4, !tbaa !3
  %i.we = load i32, ptr %i.ui, align 4, !tbaa !3
  %i.wf = insertelement <8 x i32> poison, i32 %i.vx, i64 0
  %i.wg = insertelement <8 x i32> %i.wf, i32 %i.vy, i64 1
  %i.wh = insertelement <8 x i32> %i.wg, i32 %i.vz, i64 2
  %i.wi = insertelement <8 x i32> %i.wh, i32 %i.wa, i64 3
  %i.wj = insertelement <8 x i32> %i.wi, i32 %i.wb, i64 4
  %i.wk = insertelement <8 x i32> %i.wj, i32 %i.wc, i64 5
  %i.wl = insertelement <8 x i32> %i.wk, i32 %i.wd, i64 6
  %i.wm = insertelement <8 x i32> %i.wl, i32 %i.we, i64 7
  %i.wn = load i32, ptr %i.uj, align 4, !tbaa !3
  %i.wo = load i32, ptr %i.uk, align 4, !tbaa !3
  %i.wp = load i32, ptr %i.ul, align 4, !tbaa !3
  %i.wq = load i32, ptr %i.um, align 4, !tbaa !3
  %i.wr = load i32, ptr %i.un, align 4, !tbaa !3
  %i.ws = load i32, ptr %i.uo, align 4, !tbaa !3
  %i.wt = load i32, ptr %i.up, align 4, !tbaa !3
  %i.wu = load i32, ptr %i.uq, align 4, !tbaa !3
  %i.wv = insertelement <8 x i32> poison, i32 %i.wn, i64 0
  %i.ww = insertelement <8 x i32> %i.wv, i32 %i.wo, i64 1
  %i.wx = insertelement <8 x i32> %i.ww, i32 %i.wp, i64 2
  %i.wy = insertelement <8 x i32> %i.wx, i32 %i.wq, i64 3
  %i.wz = insertelement <8 x i32> %i.wy, i32 %i.wr, i64 4
  %i.xa = insertelement <8 x i32> %i.wz, i32 %i.ws, i64 5
  %i.xb = insertelement <8 x i32> %i.xa, i32 %i.wt, i64 6
  %i.xc = insertelement <8 x i32> %i.xb, i32 %i.wu, i64 7
  %i.xd = add <8 x i32> %i.vg, %vec.phi802        ; 2 uses
  %i.xe = add <8 x i32> %i.vw, %vec.phi803        ; 2 uses
  %i.xf = add <8 x i32> %i.wm, %vec.phi804        ; 2 uses
  %i.xg = add <8 x i32> %i.xc, %vec.phi805        ; 2 uses
  %index.next806 = add nuw i64 %index801, 32      ; 2 uses
  %i.xh = icmp eq i64 %index.next806, %n.vec820
  br i1 %i.xh, label %middle.block807, label %vector.body800, !llvm.loop !760

middle.block807:                                  ; preds = %vector.body800
  %bin.rdx808 = add <8 x i32> %i.xe, %i.xd
  %bin.rdx809 = add <8 x i32> %i.xf, %bin.rdx808
  %bin.rdx810 = add <8 x i32> %i.xg, %bin.rdx809
  %i.xi = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx810) ; 2 uses
  %cmp.n811 = icmp eq i64 %n.mod.vf819, 0
  br i1 %cmp.n811, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader

vec.epilog.vector.body821:                        ; preds = %vector.main.loop.iter.check795, %vec.epilog.vector.body821
  %index822 = phi i64 [ %index.next824, %vec.epilog.vector.body821 ], [ 0, %vector.main.loop.iter.check795 ] ; 2 uses
  %vec.phi823 = phi <8 x i32> [ %i.aad, %vec.epilog.vector.body821 ], [ %i.ma, %vector.main.loop.iter.check795 ]
  %i.xj = add i64 %index822, %i.jf                ; 8 uses
  %i.xk = shl i64 %i.xj, 32
  %i.xl = shl i64 %i.xj, 32
  %i.xm = shl i64 %i.xj, 32
  %i.xn = shl i64 %i.xj, 32
  %i.xo = shl i64 %i.xj, 32
  %i.xp = shl i64 %i.xj, 32
  %i.xq = shl i64 %i.xj, 32
  %i.xr = shl i64 %i.xj, 32
  %i.xs = ashr exact i64 %i.xk, 30
  %i.xt = ashr exact i64 %i.xl, 30
  %i.xu = ashr exact i64 %i.xm, 30
  %i.xv = ashr exact i64 %i.xn, 30
  %i.xw = ashr exact i64 %i.xo, 30
  %i.xx = ashr exact i64 %i.xp, 30
  %i.xy = ashr exact i64 %i.xq, 30
  %i.xz = ashr exact i64 %i.xr, 30
  %i.ya = getelementptr inbounds i8, ptr %i.ll, i64 %i.xs
  %i.yb = getelementptr i8, ptr %i.ll, i64 %i.xt
  %i.yc = getelementptr i8, ptr %i.yb, i64 4
  %i.yd = getelementptr i8, ptr %i.ll, i64 %i.xu
  %i.ye = getelementptr i8, ptr %i.yd, i64 8
  %i.yf = getelementptr i8, ptr %i.ll, i64 %i.xv
  %i.yg = getelementptr i8, ptr %i.yf, i64 12
  %i.yh = getelementptr i8, ptr %i.ll, i64 %i.xw
  %i.yi = getelementptr i8, ptr %i.yh, i64 16
  %i.yj = getelementptr i8, ptr %i.ll, i64 %i.xx
  %i.yk = getelementptr i8, ptr %i.yj, i64 20
  %i.yl = getelementptr i8, ptr %i.ll, i64 %i.xy
  %i.ym = getelementptr i8, ptr %i.yl, i64 24
  %i.yn = getelementptr i8, ptr %i.ll, i64 %i.xz
  %i.yo = getelementptr i8, ptr %i.yn, i64 28
  %i.yp = load i32, ptr %i.ya, align 4, !tbaa !3
  %i.yq = load i32, ptr %i.yc, align 4, !tbaa !3
  %i.yr = load i32, ptr %i.ye, align 4, !tbaa !3
  %i.ys = load i32, ptr %i.yg, align 4, !tbaa !3
  %i.yt = load i32, ptr %i.yi, align 4, !tbaa !3
  %i.yu = load i32, ptr %i.yk, align 4, !tbaa !3
  %i.yv = load i32, ptr %i.ym, align 4, !tbaa !3
  %i.yw = load i32, ptr %i.yo, align 4, !tbaa !3
  %i.yx = sext i32 %i.yp to i64
  %i.yy = sext i32 %i.yq to i64
  %i.yz = sext i32 %i.yr to i64
  %i.za = sext i32 %i.ys to i64
  %i.zb = sext i32 %i.yt to i64
  %i.zc = sext i32 %i.yu to i64
  %i.zd = sext i32 %i.yv to i64
  %i.ze = sext i32 %i.yw to i64
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.yx
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.yy
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.yz
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.za
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.zb
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.zc
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.zd
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ze
  %i.zn = load i32, ptr %i.zf, align 4, !tbaa !3
  %i.zo = load i32, ptr %i.zg, align 4, !tbaa !3
  %i.zp = load i32, ptr %i.zh, align 4, !tbaa !3
  %i.zq = load i32, ptr %i.zi, align 4, !tbaa !3
  %i.zr = load i32, ptr %i.zj, align 4, !tbaa !3
  %i.zs = load i32, ptr %i.zk, align 4, !tbaa !3
  %i.zt = load i32, ptr %i.zl, align 4, !tbaa !3
  %i.zu = load i32, ptr %i.zm, align 4, !tbaa !3
  %i.zv = insertelement <8 x i32> poison, i32 %i.zn, i64 0
  %i.zw = insertelement <8 x i32> %i.zv, i32 %i.zo, i64 1
  %i.zx = insertelement <8 x i32> %i.zw, i32 %i.zp, i64 2
  %i.zy = insertelement <8 x i32> %i.zx, i32 %i.zq, i64 3
  %i.zz = insertelement <8 x i32> %i.zy, i32 %i.zr, i64 4
  %i.aaa = insertelement <8 x i32> %i.zz, i32 %i.zs, i64 5
  %i.aab = insertelement <8 x i32> %i.aaa, i32 %i.zt, i64 6
  %i.aac = insertelement <8 x i32> %i.aab, i32 %i.zu, i64 7
  %i.aad = add <8 x i32> %i.aac, %vec.phi823      ; 2 uses
  %index.next824 = add nuw i64 %index822, 8       ; 2 uses
  %i.aae = icmp eq i64 %index.next824, %n.vec820
  br i1 %i.aae, label %vec.epilog.middle.block825, label %vec.epilog.vector.body821, !llvm.loop !761

vec.epilog.middle.block825:                       ; preds = %vec.epilog.vector.body821
  %i.aaf = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aad) ; 2 uses
  %cmp.n826 = icmp eq i64 %n.mod.vf819, 0
  br i1 %cmp.n826, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader: ; preds = %middle.block807, %vector.scevcheck788, %iter.check814, %vec.epilog.middle.block825
  %.ph916 = phi i32 [ %i.xi, %middle.block807 ], [ %.2402, %vector.scevcheck788 ], [ %.2402, %iter.check814 ], [ %i.aaf, %vec.epilog.middle.block825 ]
  %.027.i.i.i.i.i.ph = phi i64 [ %i.lz, %middle.block807 ], [ %i.jf, %vector.scevcheck788 ], [ %i.jf, %iter.check814 ], [ %i.lz, %vec.epilog.middle.block825 ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i
  %i.aag = phi i32 [ %i.aan, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i ], [ %.ph916, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader ]
  %.027.i.i.i.i.i = phi i64 [ %i.aao, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i ], [ %.027.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i.preheader ] ; 2 uses
  %sext.i.i.i.i.i = shl i64 %.027.i.i.i.i.i, 32
  %i.aah = ashr exact i64 %sext.i.i.i.i.i, 30
  %i.aai = getelementptr inbounds i8, ptr %i.ll, i64 %i.aah
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !3
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !3
  %i.aan = add nsw i32 %i.aam, %i.aag             ; 2 uses
  %i.aao = add nuw i64 %.027.i.i.i.i.i, 1         ; 2 uses
  %i.aap = icmp ult i64 %i.aao, %i.jh
  br i1 %i.aap, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !762

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i
  %i.aaq = phi i32 [ %.2402, %.lr.ph.split.split.i.i.i.i.i ], [ %i.aax, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i ]
  %.01521.i.i.i.i.i = phi i64 [ %i.ii, %.lr.ph.split.split.i.i.i.i.i ], [ %i.aaz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i ] ; 3 uses
  %i.aar = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.i.i.i.i.i, i1 true)
  %51 = trunc nuw nsw i64 %i.aar to i32
  %52 = or disjoint i32 %i.ij, %51
  %53 = sext i32 %52 to i64
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %53
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !3
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.aau
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !3
  %i.aax = add nsw i32 %i.aaw, %i.aaq             ; 2 uses
  %i.aay = add i64 %.01521.i.i.i.i.i, -1
  %i.aaz = and i64 %i.aay, %.01521.i.i.i.i.i      ; 2 uses
  %.not.i54.i.i.i.i = icmp eq i64 %i.aaz, 0
  br i1 %.not.i54.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i, !llvm.loop !756

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i, %middle.block807, %vec.epilog.middle.block825, %middle.block, %vec.epilog.middle.block, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader, %bb.ag, %.lr.ph.i.i.i.i
  %.3403 = phi i32 [ %.2402, %.lr.ph.i.i.i.i ], [ %i.iq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us.i.i.i.i.i ], [ %i.lk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us30.i.i.i.i.i.preheader ], [ %.2402, %bb.ag ], [ %i.ja, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.us23.i.i.i.i.i ], [ %i.aax, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit18.i.i.i.i.i ], [ %i.kx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i52.i.i.i.i ], [ %i.ks, %vec.epilog.middle.block ], [ %i.kl, %middle.block ], [ %i.aaf, %vec.epilog.middle.block825 ], [ %i.xi, %middle.block807 ], [ %i.aan, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i51.i.i.i.i ] ; 2 uses
  %i.aba = add nsw i32 %i.ie, 64                  ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.aba, %i.eg
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !763

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i
  %i.abb = ashr i32 %i.ec, 6
  %i.abc = and i32 %i.ec, 63
  %i.abd = zext nneg i32 %i.abc to i64
  %notmask.i55.i.i.i.i = shl nsw i64 -1, %i.abd
  %i.abe = xor i64 %notmask.i55.i.i.i.i, -1
  %i.abf = sext i32 %i.abb to i64
  %i.abg = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.abf
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !153
  %i.abi = and i64 %i.abh, %i.abe                 ; 4 uses
  %.not.i56.i.i.i.i = icmp eq i64 %i.abi, 0
  br i1 %.not.i56.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.preheader.i57.i.i.i.i

.preheader.i57.i.i.i.i:                           ; preds = %bb.ah
  %i.abj = getelementptr inbounds nuw i8, ptr %i.be, i64 58
  %i.abk = load i8, ptr %i.abj, align 2, !tbaa !227, !range !90, !noundef !91
  %i.abl = trunc nuw i8 %i.abk to i1
  %i.abm = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  br i1 %i.abl, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i, label %.preheader.split.i59.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i: ; preds = %.preheader.i57.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i
  %.011.us.i68.i.i.i.i = phi i64 [ %i.abu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i ], [ %i.abi, %.preheader.i57.i.i.i.i ] ; 3 uses
  %i.abo = phi i32 [ %i.abs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i ], [ %.4404, %.preheader.i57.i.i.i.i ]
  %i.abp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.i68.i.i.i.i, i1 true)
  %54 = trunc nuw nsw i64 %i.abp to i32
  %55 = or disjoint i32 %i.eg, %54
  %56 = sext i32 %55 to i64
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %56
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !3
  %i.abs = add nsw i32 %i.abr, %i.abo             ; 2 uses
  %i.abt = add nsw i64 %.011.us.i68.i.i.i.i, -1
  %i.abu = and i64 %i.abt, %.011.us.i68.i.i.i.i   ; 2 uses
  %.not10.us.i69.i.i.i.i = icmp eq i64 %i.abu, 0
  br i1 %.not10.us.i69.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i, !llvm.loop !755

.preheader.split.i59.i.i.i.i:                     ; preds = %.preheader.i57.i.i.i.i
  %i.abv = getelementptr inbounds nuw i8, ptr %i.be, i64 59
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !228, !range !90, !noundef !91
  %i.abx = trunc nuw i8 %i.abw to i1
  br i1 %i.abx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader, label %.preheader.split.split.i60.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader: ; preds = %.preheader.split.i59.i.i.i.i
  %i.aby = load i32, ptr %i.abn, align 8, !tbaa !230
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i
  %.011.us12.i65.i.i.i.i = phi i64 [ %i.acf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i ], [ %i.abi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader ] ; 2 uses
  %i.acc = phi i32 [ %i.acd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i ], [ %.4404, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i.preheader ]
  %i.acd = add nsw i32 %i.acb, %i.acc             ; 2 uses
  %i.ace = add nsw i64 %.011.us12.i65.i.i.i.i, -1
  %i.acf = and i64 %i.ace, %.011.us12.i65.i.i.i.i ; 2 uses
  %.not10.us15.i66.i.i.i.i = icmp eq i64 %i.acf, 0
  br i1 %.not10.us15.i66.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i, !llvm.loop !755

.preheader.split.split.i60.i.i.i.i:               ; preds = %.preheader.split.i59.i.i.i.i
  %i.acg = load ptr, ptr %i.abm, align 8, !tbaa !229
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i, %.preheader.split.split.i60.i.i.i.i
  %.011.i62.i.i.i.i = phi i64 [ %i.abi, %.preheader.split.split.i60.i.i.i.i ], [ %i.acq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i ] ; 3 uses
  %i.ach = phi i32 [ %.4404, %.preheader.split.split.i60.i.i.i.i ], [ %i.aco, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i ]
  %i.aci = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i62.i.i.i.i, i1 true)
  %57 = trunc nuw nsw i64 %i.aci to i32
  %58 = or disjoint i32 %i.eg, %57
  %59 = sext i32 %58 to i64
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %59
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !3
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.acl
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !3
  %i.aco = add nsw i32 %i.acn, %i.ach             ; 2 uses
  %i.acp = add nsw i64 %.011.i62.i.i.i.i, -1
  %i.acq = and i64 %i.acp, %.011.i62.i.i.i.i      ; 2 uses
  %.not10.i63.i.i.i.i = icmp eq i64 %i.acq, 0
  br i1 %.not10.i63.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i, !llvm.loop !755

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i, %.prol.loopexit, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1, %bb.ah, %._crit_edge.i.i.i.i, %bb.ad, %bb.ab, %bb.r
  %.6406 = phi i32 [ %.0400484, %bb.ab ], [ %.0400484, %bb.r ], [ %.0400484, %bb.ad ], [ %i.gc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.abs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i67.i.i.i.i ], [ %i.acd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i64.i.i.i.i ], [ %.4404, %._crit_edge.i.i.i.i ], [ %.4404, %bb.ah ], [ %i.ea, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.1 ], [ %i.fg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us.i.i.i.i.i ], [ %i.fr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us13.i.i.i.i.i ], [ %.lcssa950.unr, %.prol.loopexit ], [ %i.aco, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i61.i.i.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.acr = load i64, ptr %i.e, align 8, !tbaa !153
  %i.acs = icmp ugt i64 %i.acr, %indvars.iv.next
  br i1 %i.acs, label %bb.k, label %._crit_edge488, !llvm.loop !764

bb.ai:                                            ; preds = %bb.k
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.aj:                                            ; preds = %._crit_edge488
  %i.acu = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.acv = load ptr, ptr %4, align 8, !tbaa !244
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !259 ; 2 uses
  store ptr %i.acw, ptr %i.f, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !765
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.85") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %i.acu, i32 noundef %.0400.lcssa, ptr noundef %i.acw)
          to label %bb.ak unwind label %bb.cx

bb.ak:                                            ; preds = %bb.aj
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.acy = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.acz = load <2 x ptr>, ptr %18, align 16, !tbaa !40, !noalias !771
  store <2 x ptr> %i.acz, ptr %22, align 16, !tbaa !40, !alias.scope !771
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !765
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.ada = load ptr, ptr %i.f, align 8, !tbaa !280
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !772
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.85") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %i.acx, i32 noundef %.0400.lcssa, ptr noundef %i.ada)
          to label %bb.al unwind label %bb.cy

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.adb = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.adc = load <2 x ptr>, ptr %17, align 16, !tbaa !40, !noalias !778
  store <2 x ptr> %i.adc, ptr %23, align 16, !tbaa !40, !alias.scope !778
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.ade = load i32, ptr %i.add, align 8, !tbaa !223
  %i.adf = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.adg = sext i32 %i.ade to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !779
  store i32 0, ptr %16, align 4, !tbaa !30, !noalias !779
  %i.adh = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i8 1, ptr %i.adh, align 4, !tbaa !298, !noalias !779
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %24, i64 noundef %i.adg, ptr noundef %i.adf, ptr noundef nonnull align 4 dereferenceable(8) %16, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.cz

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.adi = load ptr, ptr %24, align 8, !tbaa !299 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 44
  %i.adk = load i8, ptr %i.adj, align 4, !tbaa !300
  %i.adl = and i8 %i.adk, 2
  %.not.i = icmp eq i8 %i.adl, 0
  br i1 %.not.i, label %bb.ao, label %bb.an, !prof !86

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc100 unwind label %bb.da

.noexc100:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !305
  store ptr %i.adn, ptr %i.g, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.ado = load i32, ptr %i.add, align 8, !tbaa !223
  %i.adp = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.adq = sext i32 %i.ado to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !782
  store i32 0, ptr %15, align 4, !tbaa !30, !noalias !782
  %i.adr = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i8 1, ptr %i.adr, align 4, !tbaa !298, !noalias !782
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %25, i64 noundef %i.adq, ptr noundef %i.adp, ptr noundef nonnull align 4 dereferenceable(8) %15, i1 noundef zeroext false)
          to label %bb.ap unwind label %bb.db

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.ads = load ptr, ptr %25, align 8, !tbaa !299 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 44
  %i.adu = load i8, ptr %i.adt, align 4, !tbaa !300
  %i.adv = and i8 %i.adu, 2
  %.not.i102 = icmp eq i8 %i.adv, 0
  br i1 %.not.i102, label %bb.ar, label %bb.aq, !prof !86

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc103 unwind label %bb.dc

.noexc103:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !305
  store ptr %i.adx, ptr %i.h, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i32 0, ptr %i.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.g, ptr %14, align 8
  %.sroa.2360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.i, ptr %.sroa.2360.0..sroa_idx, align 8
  %.sroa.3361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.e, ptr %.sroa.3361.0..sroa_idx, align 8
  %.sroa.4362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %21, ptr %.sroa.4362.0..sroa_idx, align 8
  %.sroa.5363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %22, ptr %.sroa.5363.0..sroa_idx, align 8
  %.sroa.6364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %23, ptr %.sroa.6364.0..sroa_idx, align 8
  %.sroa.7365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.h, ptr %.sroa.7365.0..sroa_idx, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 2 uses
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !216, !range !90, !noundef !91
  %i.aeb = trunc nuw i8 %i.aea to i1
  br i1 %i.aeb, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i137, label %bb.as

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i137: ; preds = %bb.ar
  %.0.in.pre.i.i138 = load i8, ptr %i.ady, align 4, !tbaa !56, !range !90
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i107

bb.as:                                            ; preds = %bb.ar
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !218
  %i.aee = icmp eq i32 %i.aed, 0
  br i1 %i.aee, label %bb.at, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105

bb.at:                                            ; preds = %bb.as
  %i.aef = load i32, ptr %i.add, align 8, !tbaa !223 ; 6 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !224
  %i.aei = icmp eq i32 %i.aef, %i.aeh
  br i1 %i.aei, label %bb.au, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105

bb.au:                                            ; preds = %bb.at
  %i.aej = load ptr, ptr %1, align 8, !tbaa !225  ; 2 uses
  %.not.i.i.i129 = icmp sgt i32 %i.aef, 0
  br i1 %.not.i.i.i129, label %bb.av, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105

bb.av:                                            ; preds = %bb.au
  %i.aek = and i32 %i.aef, 2147483584             ; 3 uses
  %i.ael = zext nneg i32 %i.aek to i64
  %.not37.i.i.not.i.i131752.not = icmp eq i32 %i.aek, 0
  br i1 %.not37.i.i.not.i.i131752.not, label %.critedge.i.i.i.i132, label %.lr.ph755

bb.aw:                                            ; preds = %.lr.ph755
  %indvars.iv.next.i.i136 = add nuw nsw i64 %indvars.iv.i.i130753, 64 ; 2 uses
  %.not37.i.i.not.i.i131 = icmp samesign ult i64 %indvars.iv.next.i.i136, %i.ael
  br i1 %.not37.i.i.not.i.i131, label %.lr.ph755, label %.critedge.i.i.i.i132, !llvm.loop !226

.lr.ph755:                                        ; preds = %bb.av, %bb.aw
  %indvars.iv.i.i130753 = phi i64 [ %indvars.iv.next.i.i136, %bb.aw ], [ 0, %bb.av ] ; 2 uses
  %i.aem = lshr exact i64 %indvars.iv.i.i130753, 3
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aej, i64 %i.aem
  %i.aeo = load i64, ptr %i.aen, align 8, !tbaa !153
  %i.aep = icmp eq i64 %i.aeo, -1
  br i1 %i.aep, label %bb.aw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105, !llvm.loop !226

.critedge.i.i.i.i132:                             ; preds = %bb.aw, %bb.av
  %.not38.i.i.i.i133 = icmp eq i32 %i.aef, %i.aek
  br i1 %.not38.i.i.i.i133, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105, label %bb.ax

bb.ax:                                            ; preds = %.critedge.i.i.i.i132
  %i.aeq = lshr i32 %i.aef, 6
  %i.aer = and i32 %i.aef, 63
  %i.aes = zext nneg i32 %i.aer to i64
  %notmask.i40.i.i.i.i134 = shl nsw i64 -1, %i.aes
  %i.aet = zext nneg i32 %i.aeq to i64
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.aej, i64 %i.aet
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !153
  %.demorgan.i.i135 = or i64 %i.aev, %notmask.i40.i.i.i.i134
  %i.aew = icmp eq i64 %.demorgan.i.i135, -1
  %i.aex = zext i1 %i.aew to i16
  %i.aey = or disjoint i16 %i.aex, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105: ; preds = %.lr.ph755, %bb.ax, %.critedge.i.i.i.i132, %bb.au, %bb.at, %bb.as
  %.sroa.0.0.insert.ext.i.i106 = phi i16 [ 256, %bb.at ], [ 256, %bb.as ], [ 257, %bb.au ], [ 257, %.critedge.i.i.i.i132 ], [ %i.aey, %bb.ax ], [ 256, %.lr.ph755 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i106, ptr %i.ady, align 4
  %i.aez = trunc i16 %.sroa.0.0.insert.ext.i.i106 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i107

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i107: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i137
  %.0.in.i.i108 = phi i8 [ %.0.in.pre.i.i138, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i137 ], [ %i.aez, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i105 ]
  %.0.i.i109 = trunc nuw i8 %.0.in.i.i108 to i1
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !218 ; 8 uses
  br i1 %.0.i.i109, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i107
  %i.afc = load i32, ptr %i.add, align 8, !tbaa !223 ; 2 uses
  %i.afd = icmp slt i32 %i.afb, %i.afc
  br i1 %i.afd, label %.lr.ph.i127, label %.loopexit430

.lr.ph.i127:                                      ; preds = %bb.ay, %.noexc139
  %.08.i = phi i32 [ %i.afe, %.noexc139 ], [ %i.afb, %bb.ay ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %14, i32 noundef %.08.i)
          to label %.noexc139 unwind label %.loopexit426

.noexc139:                                        ; preds = %.lr.ph.i127
  %i.afe = add i32 %.08.i, 1                      ; 2 uses
  %exitcond.not.i128 = icmp eq i32 %i.afe, %i.afc
  br i1 %exitcond.not.i128, label %.loopexit430, label %.lr.ph.i127, !llvm.loop !785

bb.az:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i107
  %i.aff = load ptr, ptr %1, align 8, !tbaa !225  ; 6 uses
  %i.afg = load i32, ptr %i.add, align 8, !tbaa !223 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %14, i64 56, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %14, i64 56, i1 false)
  store i8 1, ptr %12, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.aff, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %13, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.aff, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i110 = icmp slt i32 %i.afb, %i.afg
  br i1 %.not.i.i.i.i110, label %bb.ba, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiiT_.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.afh = add i32 %i.afb, 63                     ; 2 uses
  %i.afi = srem i32 %i.afh, 64
  %i.afj = sub nsw i32 %i.afh, %i.afi             ; 6 uses
  %i.afk = and i32 %i.afg, -64                    ; 6 uses
  %i.afl = icmp slt i32 %i.afk, %i.afj
  br i1 %i.afl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.afm = ashr i32 %i.afg, 6
  %i.afn = and i32 %i.afg, 63
  %i.afo = zext nneg i32 %i.afn to i64
  %notmask.i.i.i.i.i121 = shl nsw i64 -1, %i.afo
  %i.afp = xor i64 %notmask.i.i.i.i.i121, -1
  %i.afq = sub nsw i32 %i.afj, %i.afb             ; 2 uses
  %i.afr = zext nneg i32 %i.afq to i64
  %notmask.i.i.i.i.i.i122 = shl nsw i64 -1, %i.afr
  %i.afs = xor i64 %notmask.i.i.i.i.i.i122, -1
  %i.aft = sub nsw i32 64, %i.afq
  %i.afu = zext nneg i32 %i.aft to i64
  %i.afv = shl i64 %i.afs, %i.afu
  %i.afw = and i64 %i.afv, %i.afp
  %i.afx = sext i32 %i.afm to i64
  %i.afy = getelementptr inbounds [8 x i8], ptr %i.aff, i64 %i.afx
  %i.afz = load i64, ptr %i.afy, align 8, !tbaa !153
  %i.aga = and i64 %i.afw, %i.afz                 ; 2 uses
  %.not.i.i.i.i.i123 = icmp eq i64 %i.aga, 0
  br i1 %.not.i.i.i.i.i123, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i124

.preheader.i.i.i.i.i124:                          ; preds = %bb.bb, %.noexc140
  %.011.i.i.i.i.i125 = phi i64 [ %i.agf, %.noexc140 ], [ %i.aga, %bb.bb ] ; 3 uses
  %i.agb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i125, i1 true)
  %i.agc = trunc nuw nsw i64 %i.agb to i32
  %i.agd = or disjoint i32 %i.afk, %i.agc
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.agd)
          to label %.noexc140 unwind label %.loopexit.split-lp427.loopexit

.noexc140:                                        ; preds = %.preheader.i.i.i.i.i124
  %i.age = add nsw i64 %.011.i.i.i.i.i125, -1
  %i.agf = and i64 %i.age, %.011.i.i.i.i.i125     ; 2 uses
  %.not10.i.i.i.i.i126 = icmp eq i64 %i.agf, 0
  br i1 %.not10.i.i.i.i.i126, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiiT_.exit.i, label %.preheader.i.i.i.i.i124, !llvm.loop !786

bb.bc:                                            ; preds = %bb.ba
  %.not32.i.i.i.i111 = icmp eq i32 %i.afb, %i.afj
  br i1 %.not32.i.i.i.i111, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.agg = sdiv i32 %i.afb, 64                    ; 2 uses
  %i.agh = sub nsw i32 %i.afj, %i.afb             ; 2 uses
  %i.agi = zext nneg i32 %i.agh to i64
  %notmask.i.i35.i.i.i.i112 = shl nsw i64 -1, %i.agi
  %i.agj = xor i64 %notmask.i.i35.i.i.i.i112, -1
  %i.agk = sub nsw i32 64, %i.agh
  %i.agl = zext nneg i32 %i.agk to i64
  %i.agm = shl i64 %i.agj, %i.agl
  %i.agn = sext i32 %i.agg to i64
  %i.ago = getelementptr inbounds [8 x i8], ptr %i.aff, i64 %i.agn
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !153
  %i.agq = and i64 %i.agp, %i.agm                 ; 2 uses
  %.not.i36.i.i.i.i113 = icmp eq i64 %i.agq, 0
  br i1 %.not.i36.i.i.i.i113, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i114

.preheader.i37.i.i.i.i114:                        ; preds = %bb.bd
  %i.agr = shl nsw i32 %i.agg, 6
  br label %bb.be

bb.be:                                            ; preds = %.noexc141, %.preheader.i37.i.i.i.i114
  %.011.i38.i.i.i.i = phi i64 [ %i.agq, %.preheader.i37.i.i.i.i114 ], [ %i.agw, %.noexc141 ] ; 3 uses
  %i.ags = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.agt = trunc nuw nsw i64 %i.ags to i32
  %i.agu = or disjoint i32 %i.agr, %i.agt
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.agu)
          to label %.noexc141 unwind label %.loopexit.split-lp427.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc141:                                        ; preds = %bb.be
  %i.agv = add i64 %.011.i38.i.i.i.i, -1
  %i.agw = and i64 %i.agv, %.011.i38.i.i.i.i      ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.agw, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.be, !llvm.loop !786

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc141, %bb.bd, %bb.bc
  %i.agx = add nsw i32 %i.afj, 64                 ; 2 uses
  %.not3354.i.i.i.i = icmp sgt i32 %i.agx, %i.afk
  br i1 %.not3354.i.i.i.i, label %._crit_edge.i.i.i.i117, label %.lr.ph.i.i.i.i115

.lr.ph.i.i.i.i115:                                ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %i.agy = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.agz = load ptr, ptr %i.agy, align 8, !nonnull !91, !align !312 ; 6 uses
  %i.aha = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ahc = load ptr, ptr %i.ahb, align 8, !nonnull !91, !align !313 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ahe = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ahf = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ahg = load ptr, ptr %i.ahd, align 8, !nonnull !91, !align !313
  %i.ahh = load ptr, ptr %i.ahe, align 8, !nonnull !91, !align !313
  %i.ahi = load ptr, ptr %i.ahf, align 8, !nonnull !91, !align !313
  %i.ahj = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ahk = load ptr, ptr %i.ahj, align 8, !nonnull !91, !align !313 ; 2 uses
  br label %bb.bf

._crit_edge.i.i.i.i117:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i118 = icmp eq i32 %i.afg, %i.afk
  br i1 %.not34.i.i.i.i118, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiiT_.exit.i, label %bb.bs

bb.bf:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i115
  %i.ahl = phi i32 [ %i.agx, %.lr.ph.i.i.i.i115 ], [ %i.alv, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.055.i.i.i.i = phi i32 [ %i.afj, %.lr.ph.i.i.i.i115 ], [ %i.ahl, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.ahm = sdiv i32 %.055.i.i.i.i, 64             ; 3 uses
  %i.ahn = sext i32 %i.ahm to i64
  %i.aho = getelementptr inbounds [8 x i8], ptr %i.aff, i64 %i.ahn
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !153 ; 3 uses
  switch i64 %i.ahp, label %.lr.ph.i.i.i.i.i120 [
    i64 -1, label %bb.bg
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i120:                              ; preds = %bb.bf
  %i.ahq = shl nsw i32 %i.ahm, 6                  ; 2 uses
  %i.ahr = load i64, ptr %i.ahc, align 8, !tbaa !153
  %i.ahs = icmp eq i64 %i.ahr, 0
  %i.aht = load ptr, ptr %i.aha, align 8, !tbaa !306 ; 2 uses
  br i1 %i.ahs, label %.lr.ph.i.split.us.i.i.i.i, label %.lr.ph.i.split.i.i.i.i

.lr.ph.i.split.us.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i120
  %i.ahu = load ptr, ptr %i.ahk, align 8, !tbaa !306
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i, %.lr.ph.i.split.us.i.i.i.i
  %.01519.i.us.i.i.i.i = phi i64 [ %i.ahp, %.lr.ph.i.split.us.i.i.i.i ], [ %i.aia, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i ] ; 3 uses
  %i.ahv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.us.i.i.i.i, i1 true)
  %60 = trunc nuw nsw i64 %i.ahv to i32
  %61 = or disjoint i32 %i.ahq, %60
  %i.ahw = load i32, ptr %i.agz, align 4, !tbaa !3
  %62 = sext i32 %61 to i64                       ; 2 uses
  %i.ahx = getelementptr inbounds [4 x i8], ptr %i.aht, i64 %62
  store i32 %i.ahw, ptr %i.ahx, align 4, !tbaa !3
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.ahu, i64 %62
  store i32 0, ptr %i.ahy, align 4, !tbaa !3
  %i.ahz = add i64 %.01519.i.us.i.i.i.i, -1
  %i.aia = and i64 %i.ahz, %.01519.i.us.i.i.i.i   ; 2 uses
  %.not.i41.us.i.i.i.i = icmp eq i64 %i.aia, 0
  br i1 %.not.i41.us.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.us.i.i.i.i, !llvm.loop !787

bb.bg:                                            ; preds = %bb.bf
  %i.aib = shl nsw i32 %i.ahm, 6                  ; 2 uses
  %i.aic = add i32 %i.aib, 64
  %i.aid = sext i32 %i.aic to i64
  %.0.off.i.i.i.i119 = add i32 %.055.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i119, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.bg
  %i.aie = sext i32 %i.aib to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc142, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.aie, %.lr.ph21.i.i.i.i.i ], [ %i.aig, %.noexc142 ] ; 2 uses
  %i.aif = trunc i64 %.020.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.aif)
          to label %.noexc142 unwind label %.loopexit.split-lp427.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc142:                                        ; preds = %bb.bh
  %i.aig = add nuw i64 %.020.i.i.i.i.i, 1         ; 2 uses
  %i.aih = icmp ult i64 %i.aig, %i.aid
  br i1 %i.aih, label %bb.bh, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !788

.lr.ph.i.split.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i120, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i
  %i.aii = phi i64 [ %i.alm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i120 ]
  %i.aij = phi ptr [ %i.aln, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i ], [ %i.aht, %.lr.ph.i.i.i.i.i120 ] ; 2 uses
  %.01519.i.i.i.i.i = phi i64 [ %i.alu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i ], [ %i.ahp, %.lr.ph.i.i.i.i.i120 ] ; 3 uses
  %i.aik = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.ail = trunc nuw nsw i64 %i.aik to i32
  %i.aim = or disjoint i32 %i.ahq, %i.ail         ; 2 uses
  %i.ain = load i32, ptr %i.agz, align 4, !tbaa !3 ; 3 uses
  %i.aio = sext i32 %i.aim to i64                 ; 4 uses
  %i.aip = getelementptr inbounds [4 x i8], ptr %i.aij, i64 %i.aio
  store i32 %i.ain, ptr %i.aip, align 4, !tbaa !3
  %.not.i48.i.i.i.i = icmp eq i64 %i.aii, 0
  br i1 %.not.i48.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i, label %.lr.ph.i49.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.noexc146
  %.pre22.i.i.i.i.i = load ptr, ptr %i.aha, align 8, !tbaa !306 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %.pre22.i.i.i.i.i, i64 %i.aio
  %.pre23.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb0ELb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i

.lr.ph.i49.i.i.i.i:                               ; preds = %.lr.ph.i.split.i.i.i.i, %.noexc146
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.noexc146 ], [ 0, %.lr.ph.i.split.i.i.i.i ] ; 2 uses
  %i.aiq = load ptr, ptr %i.ahg, align 8, !tbaa !184
  %i.air = getelementptr inbounds nuw [16 x i8], ptr %i.aiq, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 8 ; 5 uses
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !316 ; 2 uses
  %.not2.i.i.i.i.i = icmp eq ptr %i.ait, null
  br i1 %.not2.i.i.i.i.i, label %bb.bi, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

bb.bi:                                            ; preds = %.lr.ph.i49.i.i.i.i
  %i.aiu = load ptr, ptr %i.air, align 8, !tbaa !318 ; 4 uses
  %.not.i50.i.i.i.i = icmp eq ptr %i.aiu, null
  br i1 %.not.i50.i.i.i.i, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %i.aiw = load i8, ptr %i.aiv, align 8, !tbaa !326, !range !90, !noalias !789, !noundef !91
  %i.aix = trunc nuw i8 %i.aiw to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aiu, i64 32
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !330, !noalias !789
  %.phi.trans.insert2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aiu, i64 40 ; 2 uses
  %.pre3.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert2.i.i.i.i.i.i, align 8, !tbaa !330, !noalias !789 ; 2 uses
  %i.aiy = icmp eq ptr %.pre.i.i.i.i.i.i, %.pre3.i.i.i.i.i.i ; 2 uses
  br i1 %i.aix, label %.critedge.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.aiy, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i, label %bb.bl, !prof !86

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #30
          to label %.noexc143 unwind label %.loopexit.split-lp427.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %bb.bl
  unreachable

.critedge.i.i.i.i.i.i:                            ; preds = %bb.bj
  br i1 %i.aiy, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i, label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.bk, %bb.bi
  %i.aiz = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #27
          to label %.noexc144 unwind label %.loopexit.split-lp427.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.noexc144:                                        ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.thread.i.i.i.i.i
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aiz, i8 0, i64 72, i1 false), !noalias !91
  store i8 1, ptr %i.aja, align 8, !tbaa !331, !noalias !91
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiz, i64 48
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiz, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ajb, i8 0, i64 13, i1 false), !noalias !91
  store i8 1, ptr %i.ajc, align 1, !tbaa !332, !noalias !91
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiz, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ajd, i8 0, i64 48, i1 false), !noalias !91
  store ptr %i.aiz, ptr %i.ais, align 8, !tbaa !316
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i
  %i.aje = getelementptr inbounds i8, ptr %.pre3.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !316, !noalias !789
  store ptr null, ptr %i.aje, align 8, !tbaa !316, !noalias !789
  store ptr %i.aje, ptr %.phi.trans.insert2.i.i.i.i.i.i, align 8, !tbaa !333, !noalias !789
  %i.ajg = inttoptr i64 %i.ajf to ptr             ; 2 uses
  %.pre.i51.i.i.i.i = load ptr, ptr %i.ais, align 8, !tbaa !316 ; 6 uses
  store ptr %i.ajg, ptr %i.ais, align 8, !tbaa !316
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i51.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i
  %i.ajh = getelementptr inbounds nuw i8, ptr %.pre.i51.i.i.i.i, i64 96
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aji, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ajj = getelementptr inbounds nuw i8, ptr %.pre.i51.i.i.i.i, i64 112
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !334
  %i.ajl = ptrtoint ptr %i.ajk to i64
  %i.ajm = ptrtoint ptr %i.aji to i64
  %i.ajn = sub i64 %i.ajl, %i.ajm
  call void @_ZdlPvm(ptr noundef nonnull %i.aji, i64 noundef %i.ajn) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bn, %bb.bm
  %i.ajo = getelementptr inbounds nuw i8, ptr %.pre.i51.i.i.i.i, i64 72
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajp, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ajq = getelementptr inbounds nuw i8, ptr %.pre.i51.i.i.i.i, i64 88
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !336
  %i.ajs = ptrtoint ptr %i.ajr to i64
  %i.ajt = ptrtoint ptr %i.ajp to i64
  %i.aju = sub i64 %i.ajs, %i.ajt
  call void @_ZdlPvm(ptr noundef nonnull %i.ajp, i64 noundef %i.aju) #28
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bo, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i51.i.i.i.i, i64 noundef 120) #28
  %.pre3.i.i.i.i.i = load ptr, ptr %i.ais, align 8, !tbaa !316
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i, %.noexc144, %.lr.ph.i49.i.i.i.i
  %i.ajv = phi ptr [ %i.ajg, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ait, %.lr.ph.i49.i.i.i.i ], [ %i.aiz, %.noexc144 ] ; 5 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 48
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !187
  %i.ajy = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ajx, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9MapVectorE, i64 0) #26 ; 4 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajv, i64 58
  %i.aka = load i8, ptr %i.ajz, align 2, !tbaa !227, !range !90, !noundef !91
  %i.akb = trunc nuw i8 %i.aka to i1
  br i1 %i.akb, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajv, i64 59
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !228, !range !90, !noundef !91
  %i.ake = trunc nuw i8 %i.akd to i1
  br i1 %i.ake, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajv, i64 64
  %i.akg = load i32, ptr %i.akf, align 8, !tbaa !230
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !229
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.aki, i64 %i.aio
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i: ; preds = %bb.br, %bb.bq, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.akk, %bb.br ], [ %i.akg, %bb.bq ], [ %i.aim, %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i.i.i.i ]
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajy, i64 104
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !337
  %i.akn = sext i32 %.0.i.i.i.i.i.i to i64        ; 2 uses
  %i.ako = getelementptr inbounds [4 x i8], ptr %i.akm, i64 %i.akn
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !3 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ajy, i64 120
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !202
  %i.aks = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.akn
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !3 ; 3 uses
  %i.aku = load ptr, ptr %i.ahh, align 8, !tbaa !164 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.ajy, i64 128
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !164
  %i.akx = load i32, ptr %i.agz, align 4, !tbaa !3
  %i.aky = load ptr, ptr %i.aku, align 8, !tbaa !45
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 208
  %i.ala = load ptr, ptr %i.akz, align 8
  invoke void %i.ala(ptr noundef nonnull align 8 dereferenceable(94) %i.aku, ptr noundef %i.akw, i32 noundef %i.akx, i32 noundef %i.akp, i32 noundef %i.akt)
          to label %.noexc145 unwind label %.loopexit.split-lp427.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !792

.noexc145:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.hb = getelementptr [4 x i8], ptr %i.gi, i64 %indvars.iv28.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3
  %i.hh = add nsw i32 %i.hg, %i.ha                ; 2 uses
  store i32 %i.hh, ptr %i.f, align 4, !tbaa !3
  %i.hi = getelementptr [4 x i8], ptr %i.gi, i64 %indvars.iv28.i
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.ho = add nsw i32 %i.hn, %i.hh                ; 2 uses
  store i32 %i.ho, ptr %i.f, align 4, !tbaa !3
  %i.hp = getelementptr [4 x i8], ptr %i.gi, i64 %indvars.iv28.i
  %i.hq = getelementptr i8, ptr %i.hp, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = add nsw i32 %i.hu, %i.ho                ; 2 uses
  store i32 %i.hv, ptr %i.f, align 4, !tbaa !3
  %indvars.iv.next29.i.3 = add nsw i64 %indvars.iv28.i, 4 ; 2 uses
  %exitcond32.not.i.3 = icmp eq i64 %indvars.iv.next29.i.3, %wide.trip.count31.i
  br i1 %exitcond32.not.i.3, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.i, !llvm.loop !864

.lr.ph.split.i:                                   ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i, %.lr.ph.split.preheader.i
  %i.hw = phi i32 [ %.promoted, %.lr.ph.split.preheader.i ], [ %i.iz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %i.dd, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i ] ; 6 uses
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.split.i
  %i.hx = lshr i64 %indvars.iv.i, 6
  %i.hy = and i64 %i.hx, 67108863
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !153
  %i.ib = and i64 %indvars.iv.i, 63
  %i.ic = shl nuw i64 1, %i.ib
  %i.id = and i64 %i.ia, %i.ic
  %.not.i.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.ie = load i8, ptr %i.cz, align 1, !tbaa !228, !range !90, !noundef !91
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ig = load ptr, ptr %i.da, align 8, !tbaa !229
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %indvars.iv.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3  ; 2 uses
  %i.ij = zext i32 %i.ii to i64                   ; 2 uses
  %i.ik = lshr i64 %i.ij, 6
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8, !tbaa !153
  %i.in = and i64 %i.ij, 63
  %i.io = shl nuw i64 1, %i.in
  %i.ip = and i64 %i.io, %i.im
  %.not.i7.i.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i7.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i: ; preds = %bb.x
  %i.iq = load i64, ptr %i.cx, align 8, !tbaa !153
  %i.ir = and i64 %i.iq, 1
  %.not.i6.i.i.i = icmp eq i64 %i.ir, 0
  br i1 %.not.i6.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i: ; preds = %bb.w
  %i.is = trunc nsw i64 %indvars.iv.i to i32
  br i1 %i.cy, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i
  %.pre.i = load i8, ptr %i.cz, align 1, !tbaa !228, !range !90
  %i.it = trunc nuw i8 %.pre.i to i1
  br i1 %i.it, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread382_crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread382_crit_edge: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i
  %.pre495 = load ptr, ptr %i.da, align 8, !tbaa !229
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre495, i64 %indvars.iv.i
  %.pre496 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i
  %i.iu = load i32, ptr %i.db, align 8, !tbaa !230
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i: ; preds = %bb.y, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread382_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i
  %.0.i2.i.i = phi i32 [ %i.is, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i ], [ %i.iu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread ], [ %.pre496, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.thread382_crit_edge ], [ %i.ii, %bb.y ]
  %i.iv = sext i32 %.0.i2.i.i to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = add nsw i32 %i.hw, %i.ix                ; 2 uses
  store i32 %i.iy, ptr %i.f, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i, %bb.y, %bb.w
  %i.iz = phi i32 [ %i.iy, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i ], [ %i.hw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i ], [ %i.hw, %bb.y ], [ %i.hw, %bb.w ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE_EEvT_.exit, label %.lr.ph.split.i, !llvm.loop !864

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ja = load ptr, ptr %1, align 8, !tbaa !225   ; 2 uses
  %i.jb = load i32, ptr %i.bi, align 8, !tbaa !223 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr %i.g, ptr %.sroa.39.0..sroa_idx.i.i.i, align 8
  store ptr %i.f, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.h, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  store i8 1, ptr %19, align 8
  store ptr %i.ja, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i5.i = icmp slt i32 %i.ct, %i.jb
  br i1 %.not.i.i.i5.i, label %bb.aa, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiiT_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.jc = add i32 %i.ct, 63                       ; 2 uses
  %i.jd = srem i32 %i.jc, 64
  %i.je = sub nsw i32 %i.jc, %i.jd                ; 6 uses
  %i.jf = and i32 %i.jb, -64                      ; 4 uses
  %i.jg = icmp slt i32 %i.jf, %i.je
  br i1 %i.jg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jh = ashr i32 %i.jb, 6
  %i.ji = and i32 %i.jb, 63
  %i.jj = zext nneg i32 %i.ji to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.jj
  %i.jk = xor i64 %notmask.i.i.i.i.i, -1
  %i.jl = sub nsw i32 %i.je, %i.ct                ; 2 uses
  %i.jm = zext nneg i32 %i.jl to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.jm
  %i.jn = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.jo = sub nsw i32 64, %i.jl
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl i64 %i.jn, %i.jp
  %i.jr = and i64 %i.jq, %i.jk
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %19, i32 noundef %i.jh, i64 noundef %i.jr)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiiT_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.ct, %i.je
  br i1 %.not32.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.js = sdiv i32 %i.ct, 64
  %i.jt = sub nsw i32 %i.je, %i.ct                ; 2 uses
  %i.ju = zext nneg i32 %i.jt to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.ju
  %i.jv = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.jw = sub nsw i32 64, %i.jt
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = shl i64 %i.jv, %i.jx
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %19, i32 noundef %i.js, i64 noundef %i.jy)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jz = add nsw i32 %i.je, 64                   ; 2 uses
  %.not3342.i.i.i.i = icmp sgt i32 %i.jz, %i.jf
  br i1 %.not3342.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ae
  %.promoted434 = load i32, ptr %i.f, align 4
  %i.ka = load ptr, ptr %i.g, align 8             ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 58 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 57 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 59 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 64 ; 4 uses
  %i.kg = load ptr, ptr %i.h, align 8             ; 6 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %bb.ae
  %.not34.i.i.i.i = icmp eq i32 %i.jb, %i.jf
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiiT_.exit.i, label %bb.ao

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.promoted433442 = phi i32 [ %.promoted433435, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.promoted434, %.lr.ph.i.i.i.i.preheader ] ; 11 uses
  %i.kh = phi i32 [ %i.pm, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.jz, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.043.i.i.i.i = phi i32 [ %i.kh, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.je, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ki = sdiv i32 %.043.i.i.i.i, 64              ; 3 uses
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !153 ; 6 uses
  switch i64 %i.kl, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.af
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.km = shl nsw i32 %i.ki, 6                    ; 4 uses
  %i.kn = load ptr, ptr %i.kb, align 8, !tbaa !844 ; 5 uses
  %.not.i.i17.i.i.i.i.i = icmp eq ptr %i.kn, null
  %.pre.i19.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 2, !tbaa !227, !range !90
  %.pre.i19.fr.i.i.i.i.i = freeze i8 %.pre.i19.i.i.i.i.i
  %i.ko = trunc i8 %.pre.i19.fr.i.i.i.i.i to i1   ; 2 uses
  br i1 %.not.i.i17.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ko, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.i.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.i.i.i.i.i
  %i.kp = phi i32 [ %i.kt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.i.i.i.i.i ], [ %.promoted433442, %.lr.ph.split.us.i.i.i.i.i ]
  %.01533.us.us.i.i.i.i.i = phi i64 [ %i.kv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.i.i.i.i.i ], [ %i.kl, %.lr.ph.split.us.i.i.i.i.i ] ; 3 uses
  %i.kq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01533.us.us.i.i.i.i.i, i1 true)
  %39 = trunc nuw nsw i64 %i.kq to i32
  %40 = or disjoint i32 %i.km, %39
  %41 = sext i32 %40 to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %41
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !3
  %i.kt = add nsw i32 %i.ks, %i.kp                ; 3 uses
  store i32 %i.kt, ptr %i.f, align 4, !tbaa !3
  %i.ku = add i64 %.01533.us.us.i.i.i.i.i, -1
  %i.kv = and i64 %i.ku, %.01533.us.us.i.i.i.i.i  ; 2 uses
  %.not.us.us.i.i.i.i.i = icmp eq i64 %i.kv, 0
  br i1 %.not.us.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us.i.i.i.i.i, !llvm.loop !865

.lr.ph.split.us.split.i.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.kw = load i8, ptr %i.kd, align 1, !tbaa !228, !range !90, !noundef !91
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i.preheader, label %.lr.ph.split.us.split.split.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.split.i.i.i.i.i
  %.pre493 = load i32, ptr %i.kf, align 8, !tbaa !230
  %i.ky = sext i32 %.pre493 to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.ky
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i
  %i.la = phi i32 [ %i.lc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i ], [ %.promoted433442, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i.preheader ]
  %.01533.us.us42.i.i.i.i.i = phi i64 [ %i.le, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i ], [ %i.kl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i.preheader ] ; 2 uses
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !3
  %i.lc = add nsw i32 %i.lb, %i.la                ; 3 uses
  store i32 %i.lc, ptr %i.f, align 4, !tbaa !3
  %i.ld = add i64 %.01533.us.us42.i.i.i.i.i, -1
  %i.le = and i64 %i.ld, %.01533.us.us42.i.i.i.i.i ; 2 uses
  %.not.us.us45.i.i.i.i.i = icmp eq i64 %i.le, 0
  br i1 %.not.us.us45.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.us41.i.i.i.i.i, !llvm.loop !865

.lr.ph.split.us.split.split.i.i.i.i.i:            ; preds = %.lr.ph.split.us.split.i.i.i.i.i
  %i.lf = load ptr, ptr %i.ke, align 8, !tbaa !229
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.i.i.i.i.i, %.lr.ph.split.us.split.split.i.i.i.i.i
  %i.lg = phi i32 [ %.promoted433442, %.lr.ph.split.us.split.split.i.i.i.i.i ], [ %i.ln, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.i.i.i.i.i ]
  %.01533.us.i.i.i.i.i = phi i64 [ %i.kl, %.lr.ph.split.us.split.split.i.i.i.i.i ], [ %i.lp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.i.i.i.i.i ] ; 3 uses
  %i.lh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01533.us.i.i.i.i.i, i1 true)
  %42 = trunc nuw nsw i64 %i.lh to i32
  %43 = or disjoint i32 %i.km, %42
  %44 = sext i32 %43 to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %44
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !3
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !3
  %i.ln = add nsw i32 %i.lm, %i.lg                ; 3 uses
  store i32 %i.ln, ptr %i.f, align 4, !tbaa !3
  %i.lo = add i64 %.01533.us.i.i.i.i.i, -1
  %i.lp = and i64 %i.lo, %.01533.us.i.i.i.i.i     ; 2 uses
  %.not.us.i.i.i.i.i = icmp eq i64 %i.lp, 0
  br i1 %.not.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us.i.i.i.i.i, !llvm.loop !865

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ko, label %.lr.ph.split.split.us.split.us.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.preheader

.lr.ph.split.split.i.i.i.i.i.preheader:           ; preds = %.lr.ph.split.i.i.i.i.i
  %.pre492 = load i8, ptr %i.kc, align 1, !range !90
  %i.lq = trunc nuw i8 %.pre492 to i1
  br label %.lr.ph.split.split.i.i.i.i.i

.lr.ph.split.split.us.split.us.i.i.i.i.i:         ; preds = %.lr.ph.split.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.us38.us.i.i.i.i.i
  %.promoted433441 = phi i32 [ %.promoted433440, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.us38.us.i.i.i.i.i ], [ %.promoted433442, %.lr.ph.split.i.i.i.i.i ]
  %i.lr = phi i32 [ %i.mg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.us38.us.i.i.i.i.i ], [ %.promoted433442, %.lr.ph.split.i.i.i.i.i ] ; 2 uses
  %.01533.us34.us.i.i.i.i.i = phi i64 [ %i.mi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.us38.us.i.i.i.i.i ], [ %i.kl, %.lr.ph.split.i.i.i.i.i ] ; 3 uses
  %i.ls = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01533.us34.us.i.i.i.i.i, i1 true)
  %i.lt = trunc nuw nsw i64 %i.ls to i32
  %i.lu = or disjoint i32 %i.km, %i.lt            ; 2 uses
  %i.lv = zext i32 %i.lu to i64                   ; 2 uses
  %i.lw = lshr i64 %i.lv, 6
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.lw
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !153
  %i.lz = and i64 %i.lv, 63
  %i.ma = shl nuw i64 1, %i.lz
  %i.mb = and i64 %i.ma, %i.ly
  %.not.i.i.i27.us.us.i.i.i.i.i = icmp eq i64 %i.mb, 0
  br i1 %.not.i.i.i27.us.us.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.us38.us.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us35.us.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us35.us.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.split.us.i.i.i.i.i
  %i.mc = sext i32 %i.lu to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3
  %i.mf = add nsw i32 %i.lr, %i.me                ; 3 uses
  store i32 %i.mf, ptr %i.f, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.us38.us.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.us38.us.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us35.us.i.i.i.i.i, %.lr.ph.split.split.us.split.us.i.i.i.i.i
  %.promoted433440 = phi i32 [ %i.mf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us35.us.i.i.i.i.i ], [ %.promoted433441, %.lr.ph.split.split.us.split.us.i.i.i.i.i ] ; 2 uses
  %i.mg = phi i32 [ %i.mf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i28.us35.us.i.i.i.i.i ], [ %i.lr, %.lr.ph.split.split.us.split.us.i.i.i.i.i ]
  %i.mh = add i64 %.01533.us34.us.i.i.i.i.i, -1
  %i.mi = and i64 %i.mh, %.01533.us34.us.i.i.i.i.i ; 2 uses
  %.not.us39.us.i.i.i.i.i = icmp eq i64 %i.mi, 0
  br i1 %.not.us39.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph.split.split.us.split.us.i.i.i.i.i, !llvm.loop !865

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mj = shl nsw i32 %i.ki, 6                    ; 2 uses
  %i.mk = add i32 %i.mj, 64
  %i.ml = sext i32 %i.mk to i64
  %.0.off.i.i.i.i = add i32 %.043.i.i.i.i, 127
  %.not50.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not50.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph49.i.i.i.i.i

.lr.ph49.i.i.i.i.i:                               ; preds = %bb.af
  %i.mm = sext i32 %i.mj to i64
  %i.mn = load ptr, ptr %i.kb, align 8, !tbaa !844 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mn, null
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 2, !tbaa !227, !range !90
  %i.mo = trunc nuw i8 %.pre.i.i.i.i.i.i to i1    ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph49.i.i.i.i.i
  %.promoted433437 = phi i32 [ %.promoted433442, %.lr.ph49.i.i.i.i.i ], [ %.promoted433436, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.mp = phi i32 [ %.promoted433442, %.lr.ph49.i.i.i.i.i ], [ %i.nz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ] ; 4 uses
  %.047.i.i.i.i.i = phi i64 [ %i.mm, %.lr.ph49.i.i.i.i.i ], [ %i.oa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i ] ; 6 uses
  %i.mq = trunc i64 %.047.i.i.i.i.i to i32
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mr = load i8, ptr %i.kc, align 1, !range !90
  %i.ms = trunc nuw i8 %i.mr to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %i.mo, i1 true, i1 %i.ms
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.mt = lshr i64 %.047.i.i.i.i.i, 6
  %i.mu = and i64 %i.mt, 67108863
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mu
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !153
  %i.mx = and i64 %.047.i.i.i.i.i, 63
  %i.my = shl nuw i64 1, %i.mx
  %i.mz = and i64 %i.mw, %i.my
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.na = load i8, ptr %i.kd, align 1, !tbaa !228, !range !90, !noundef !91
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nc = load ptr, ptr %i.ke, align 8, !tbaa !229
  %sext.i.i.i.i.i = shl i64 %.047.i.i.i.i.i, 32
  %i.nd = ashr exact i64 %sext.i.i.i.i.i, 30
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3
  %i.ng = zext i32 %i.nf to i64                   ; 2 uses
  %i.nh = lshr i64 %i.ng, 6
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.nh
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !153
  %i.nk = and i64 %i.ng, 63
  %i.nl = shl nuw i64 1, %i.nk
  %i.nm = and i64 %i.nl, %i.nj
  %.not.i7.i.i.i.i.i.i.i = icmp eq i64 %i.nm, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread614

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.nn = load i64, ptr %i.mn, align 8, !tbaa !153
  %i.no = and i64 %i.nn, 1
  %.not.i6.i.i.i.i.i.i.i = icmp eq i64 %i.no, 0
  br i1 %.not.i6.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ag
  br i1 %i.mo, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load i8, ptr %i.kd, align 1, !tbaa !228, !range !90
  %i.np = trunc nuw i8 %.pre.i.i.i.i.i to i1
  br i1 %i.np, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread614

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i
  %i.nq = load i32, ptr %i.kf, align 8, !tbaa !230
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread614: ; preds = %bb.ak, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i
  %i.nr = load ptr, ptr %i.ke, align 8, !tbaa !229
  %sext30.i.i.i.i.i = shl i64 %.047.i.i.i.i.i, 32
  %i.ns = ashr exact i64 %sext30.i.i.i.i.i, 30
  %i.nt = getelementptr inbounds i8, ptr %i.nr, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread614, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i
  %.0.i2.i.i.i.i.i.i = phi i32 [ %i.nu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread614 ], [ %i.nq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i.i.thread ], [ %i.mq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i ]
  %i.nv = sext i32 %.0.i2.i.i.i.i.i.i to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !3
  %i.ny = add nsw i32 %i.mp, %i.nx                ; 3 uses
  store i32 %i.ny, ptr %i.f, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i, %bb.ak, %bb.ai
  %.promoted433436 = phi i32 [ %i.ny, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i ], [ %.promoted433437, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i ], [ %.promoted433437, %bb.ak ], [ %.promoted433437, %bb.ai ] ; 2 uses
  %i.nz = phi i32 [ %i.ny, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i ], [ %i.mp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i ], [ %i.mp, %bb.ak ], [ %i.mp, %bb.ai ]
  %i.oa = add nuw i64 %.047.i.i.i.i.i, 1          ; 2 uses
  %i.ob = icmp ult i64 %i.oa, %i.ml
  br i1 %i.ob, label %bb.ag, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !866

.lr.ph.split.split.i.i.i.i.i:                     ; preds = %.lr.ph.split.split.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.i.i.i.i.i
  %.promoted433439 = phi i32 [ %.promoted433438, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.i.i.i.i.i ], [ %.promoted433442, %.lr.ph.split.split.i.i.i.i.i.preheader ] ; 3 uses
  %i.oc = phi i32 [ %i.pj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.i.i.i.i.i ], [ %.promoted433442, %.lr.ph.split.split.i.i.i.i.i.preheader ] ; 4 uses
  %.01533.i.i.i.i.i = phi i64 [ %i.pl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.i.i.i.i.i ], [ %i.kl, %.lr.ph.split.split.i.i.i.i.i.preheader ] ; 3 uses
  %i.od = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01533.i.i.i.i.i, i1 true)
  %i.oe = trunc nuw nsw i64 %i.od to i32
  %i.of = or disjoint i32 %i.km, %i.oe            ; 3 uses
  br i1 %i.lq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.split.split.i.i.i.i.i
  %i.og = zext i32 %i.of to i64                   ; 2 uses
  %i.oh = lshr i64 %i.og, 6
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.oh
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !153
  %i.ok = and i64 %i.og, 63
  %i.ol = shl nuw i64 1, %i.ok
  %i.om = and i64 %i.oj, %i.ol
  %.not.i.i.i27.i.i.i.i.i = icmp eq i64 %i.om, 0
  br i1 %.not.i.i.i27.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i22.i.i.i.i.i

bb.am:                                            ; preds = %.lr.ph.split.split.i.i.i.i.i
  %i.on = load i8, ptr %i.kd, align 1, !tbaa !228, !range !90, !noundef !91
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.op = load ptr, ptr %i.ke, align 8, !tbaa !229 ; 2 uses
  %i.oq = sext i32 %i.of to i64                   ; 2 uses
  %i.or = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !3
  %i.ot = zext i32 %i.os to i64                   ; 2 uses
  %i.ou = lshr i64 %i.ot, 6
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ou
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !153
  %i.ox = and i64 %i.ot, 63
  %i.oy = shl nuw i64 1, %i.ox
  %i.oz = and i64 %i.oy, %i.ow
  %.not.i7.i.i21.i.i.i.i.i = icmp eq i64 %i.oz, 0
  br i1 %.not.i7.i.i21.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i22.thread64.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i25.i.i.i.i.i: ; preds = %bb.am
  %i.pa = load i64, ptr %i.kn, align 8, !tbaa !153
  %i.pb = and i64 %i.pa, 1
  %.not.i6.i.i26.i.i.i.i.i = icmp eq i64 %i.pb, 0
  br i1 %.not.i6.i.i26.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit29.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i23.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.asw = add nsw i32 %i.asn, -1
  store i32 %i.asw, ptr %i.ask, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i344

bb.hm:                                            ; preds = %bb.hk
  %i.asx = atomicrmw volatile add ptr %i.ask, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i344

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i344: ; preds = %bb.hm, %bb.hl
  %.0.i.i.i.i345 = phi i32 [ %i.asn, %bb.hl ], [ %i.asx, %bb.hm ]
  %i.asy = icmp eq i32 %.0.i.i.i.i345, 1
  br i1 %i.asy, label %bb.hn, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit346, !prof !48

bb.hn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i344
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.asj) #26
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit346

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit346: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit341, %bb.hj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i344, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.asz = load ptr, ptr %24, align 8, !tbaa !184 ; 3 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !385 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.asz, %i.atb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i347

.lr.ph.i.i.i.i347:                                ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit346, %.lr.ph.i.i.i.i347
  %.05.i.i.i.i = phi ptr [ %i.atc, %.lr.ph.i.i.i.i347 ], [ %i.asz, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit346 ] ; 2 uses
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i.i) #26
  %i.atc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i348 = icmp eq ptr %i.atc, %i.atb
  br i1 %.not.i.i.i.i348, label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i347, !llvm.loop !386

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i347
  %.pr.i.i = load ptr, ptr %24, align 8, !tbaa !184
  br label %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit346
  %i.atd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.asz, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit346 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.atd, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit, label %bb.ho

bb.ho:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ate = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !387
  %i.atg = ptrtoint ptr %i.atf to i64
  %i.ath = ptrtoint ptr %i.atd to i64
  %i.ati = sub i64 %i.atg, %i.ath
  call void @_ZdlPvm(ptr noundef nonnull %i.atd, i64 noundef %i.ati) #28
  br label %_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit

_ZN8facebook5velox4exec11DecodedArgsD2Ev.exit:    ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec18LocalDecodedVectorES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  ret void

bb.hp:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2INS1_9MapVectorEvEERKS_IT_E.exit
  %i.atj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.fw, %bb.gf, %bb.hp, %bb.dc
  %.pn74 = phi { ptr, i32 } [ %i.atj, %bb.hp ], [ %i.zd, %bb.dc ], [ %i.aor, %bb.fw ], [ %.pn.pn.pn.pn.pn, %bb.gf ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit387, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit390, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit393, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit396, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit399, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp400, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  %i.atk = load ptr, ptr %31, align 8, !tbaa !225 ; 2 uses
  %.not.i.i.i.i349 = icmp eq ptr %i.atk, null
  br i1 %.not.i.i.i.i349, label %.body165, label %.body165.sink.split

.body165.sink.split:                              ; preds = %.loopexit.split-lp, %bb.cp
  %.sink636 = phi ptr [ %i.yj, %bb.cp ], [ %i.atk, %.loopexit.split-lp ] ; 2 uses
  %.pn74.pn.ph = phi { ptr, i32 } [ %i.yi, %bb.cp ], [ %.pn74, %.loopexit.split-lp ]
  %i.atl = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !334
  %i.atn = ptrtoint ptr %i.atm to i64
  %i.ato = ptrtoint ptr %.sink636 to i64
  %i.atp = sub i64 %i.atn, %i.ato
  call void @_ZdlPvm(ptr noundef nonnull %.sink636, i64 noundef %i.atp) #28
  br label %.body165

.body165:                                         ; preds = %.body165.sink.split, %.loopexit.split-lp, %bb.cp
  %.pn74.pn = phi { ptr, i32 } [ %i.yi, %bb.cp ], [ %.pn74, %.loopexit.split-lp ], [ %.pn74.pn.ph, %.body165.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.hq

bb.hq:                                            ; preds = %.body165, %bb.db
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %.body165 ], [ %i.zc, %bb.db ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox9MapVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %29) #26
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.body
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn, %bb.hq ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %.loopexit.split-lp403

.loopexit.split-lp403:                            ; preds = %.loopexit402, %.loopexit.split-lp403.loopexit.split-lp.loopexit, %.loopexit.split-lp403.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp403.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp403.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp403.loopexit, %bb.hr
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn, %bb.hr ], [ %lpad.loopexit404, %.loopexit402 ], [ %lpad.loopexit407, %.loopexit.split-lp403.loopexit ], [ %lpad.loopexit410, %.loopexit.split-lp403.loopexit.split-lp.loopexit ], [ %lpad.loopexit413, %.loopexit.split-lp403.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit416, %.loopexit.split-lp403.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp403.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %bb.hs

bb.hs:                                            ; preds = %.loopexit.split-lp403, %bb.cz
  %.pn74.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn, %.loopexit.split-lp403 ], [ %i.za, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #26
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.cy
  %.pn74.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn, %bb.hs ], [ %i.yz, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.cx
  %.pn74.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn, %bb.ht ], [ %i.yy, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #26
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.cw
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn, %bb.hu ], [ %i.yx, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #26
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.cv
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hv ], [ %i.yw, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %25) #26
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.cu
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hw ], [ %i.yv, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.hy

bb.hy:                                            ; preds = %bb.ct, %bb.hx, %bb.ap
  %.pn89.pn = phi { ptr, i32 } [ %i.pt, %bb.ap ], [ %i.yu, %bb.ct ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @_ZN8facebook5velox4exec11DecodedArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.pn92 = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %.pn89.pn, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn94 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn92, %bb.hz ]
  resume { ptr, i32 } %.pn94
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE_EEvPKmiibT_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #22 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !917, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !921
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !153
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 4 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !922, !nonnull !91, !align !313
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !316  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !844  ; 5 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !227, !range !90
  %.pre.i.fr = freeze i8 %.pre.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 57
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 59 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !91, !align !313 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !91, !align !312 ; 10 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !306 ; 3 uses
  br i1 %i.w, label %.preheader.split.us.split.us, label %.preheader.split.us.split

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us
  %.promoted24 = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, %.preheader.split.us.split.us
  %i.ab = phi i32 [ %.promoted24, %.preheader.split.us.split.us ], [ %i.af, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ]
  %.011.us.us = phi i64 [ %i.k, %.preheader.split.us.split.us ], [ %i.ah, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %3 = trunc nuw nsw i64 %i.ac to i32
  %4 = or disjoint i32 %i.m, %3
  %5 = sext i32 %4 to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %5
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = add nsw i32 %i.ab, %i.ae                ; 2 uses
  store i32 %i.af, ptr %i.z, align 4, !tbaa !3
  %i.ag = add i64 %.011.us.us, -1
  %i.ah = and i64 %i.ag, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !923

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.ai = load i8, ptr %i.s, align 1, !tbaa !228, !range !90, !noundef !91
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader, label %.preheader.split.us.split.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader: ; preds = %.preheader.split.us.split
  %.pre30 = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19
  %i.ak = phi i32 [ %i.ap, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ], [ %.pre30, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader ]
  %.011.us.us20 = phi i64 [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader ] ; 2 uses
  %i.al = load i32, ptr %i.x, align 8, !tbaa !230
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ak, %i.ao                ; 2 uses
  store i32 %i.ap, ptr %i.z, align 4, !tbaa !3
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !923

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !229
  %.promoted = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %i.at = phi i32 [ %.promoted, %.preheader.split.us.split.split ], [ %i.ba, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ]
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %6 = trunc nuw nsw i64 %i.au to i32
  %7 = or disjoint i32 %i.m, %6
  %8 = sext i32 %7 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = add nsw i32 %i.at, %i.az                ; 2 uses
  store i32 %i.ba, ptr %i.z, align 4, !tbaa !3
  %i.bb = add i64 %.011.us, -1
  %i.bc = and i64 %i.bb, %.011.us                 ; 2 uses
  %.not10.us = icmp eq i64 %i.bc, 0
  br i1 %.not10.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, !llvm.loop !923

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.w, label %.preheader.split.split.us.split.us, label %.preheader.split.split

.preheader.split.split.us.split.us:               ; preds = %.preheader.split, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us16.us
  %.011.us12.us = phi i64 [ %i.bu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us16.us ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us12.us, i1 true)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = or disjoint i32 %i.m, %i.be             ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 6
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !153
  %i.bk = and i64 %i.bg, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bj, %i.bl
  %.not.i.i.i.us.us = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.us.us, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us16.us, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us: ; preds = %.preheader.split.split.us.split.us
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !306
  %i.bo = sext i32 %i.bf to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = load i32, ptr %i.z, align 4, !tbaa !3
  %i.bs = add nsw i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.z, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us16.us

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us16.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us13.us, %.preheader.split.split.us.split.us
  %i.bt = add i64 %.011.us12.us, -1
  %i.bu = and i64 %i.bt, %.011.us12.us            ; 2 uses
  %.not10.us17.us = icmp eq i64 %i.bu, 0
  br i1 %.not10.us17.us, label %.loopexit, label %.preheader.split.split.us.split.us, !llvm.loop !923

.preheader.split.split:                           ; preds = %.preheader.split, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit
  %.011 = phi i64 [ %i.dl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit ], [ %i.k, %.preheader.split ] ; 3 uses
  %i.bv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = or disjoint i32 %i.m, %i.bw             ; 3 uses
  %i.by = load i8, ptr %i.r, align 1, !range !90
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.split.split
  %i.ca = zext i32 %i.bx to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !153
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cd, %i.cf
  %.not.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

bb.c:                                             ; preds = %.preheader.split.split
  %i.ch = load i8, ptr %i.s, align 1, !tbaa !228, !range !90, !noundef !91
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !229
  %i.ck = sext i32 %i.bx to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = lshr i64 %i.cn, 6
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !153
  %i.cr = and i64 %i.cn, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, %i.cq
  %.not.i7.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i7.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35: ; preds = %bb.d
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !306
  br label %bb.e

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.c
  %i.cv = load i64, ptr %i.q, align 8, !tbaa !153
  %i.cw = and i64 %i.cv, 1
  %.not.i6.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i6.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !306
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %bb.b
  %.pre = load i8, ptr %i.s, align 1, !tbaa !228, !range !90
  %i.cy = load ptr, ptr %i.v, align 8, !tbaa !306 ; 2 uses
  %i.cz = trunc nuw i8 %.pre to i1
  br i1 %i.cz, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.da = phi ptr [ %i.cu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread35 ], [ %i.cy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !229
  %i.dc = sext i32 %i.bx to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dc
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread, %bb.e
  %i.de = phi ptr [ %i.da, %bb.e ], [ %i.cx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.cy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i2.i.in = phi ptr [ %i.dd, %bb.e ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.thread ], [ %i.x, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ]
  %.0.i2.i = load i32, ptr %.0.i2.i.in, align 4, !tbaa !3
  %i.df = sext i32 %.0.i2.i to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = load i32, ptr %i.z, align 4, !tbaa !3
  %i.dj = add nsw i32 %i.di, %i.dh
  store i32 %i.dj, ptr %i.z, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit: ; preds = %bb.b, %bb.d, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i
  %i.dk = add i64 %.011, -1
  %i.dl = and i64 %i.dk, %.011                    ; 2 uses
  %.not10 = icmp eq i64 %i.dl, 0
  br i1 %.not10, label %.loopexit, label %.preheader.split.split, !llvm.loop !923

.loopexit:                                        ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.us16.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapConcatFunctionILb1ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !924, !nonnull !91, !align !312
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !926, !nonnull !91, !align !313
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  store i32 %i.c, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !927, !nonnull !91, !align !313
  %i.j = load i64, ptr %i.i, align 8, !tbaa !153
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = lshr i64 %i.l, 6
  %i.n = and i64 %i.l, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !924
  %.pre27 = load i32, ptr %.pre26, align 4, !tbaa !3
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !926
  %.pre29 = load ptr, ptr %.pre28, align 8, !tbaa !306
  %.phi.trans.insert30 = getelementptr inbounds [4 x i8], ptr %.pre29, i64 %i.f
  %.pre31 = load i32, ptr %.phi.trans.insert30, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.r = phi i32 [ %.pre31, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %i.s = phi i32 [ %.pre27, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %i.t = sub nsw i32 %i.s, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !928, !nonnull !91, !align !313
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !306
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.f
  store i32 %i.t, ptr %i.x, align 4, !tbaa !3
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !929, !nonnull !91, !align !313
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !184
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = tail call noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !844 ; 4 uses
  %.not.i = icmp eq ptr %i.ad, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ab, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !227, !range !90 ; 2 uses
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = trunc nuw i8 %.pre to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 57
  %i.ag = load i8, ptr %i.af, align 1, !range !90
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond.i = select i1 %i.ae, i1 true, i1 %i.ah
end_hunk_5
