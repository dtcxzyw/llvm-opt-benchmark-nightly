Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVCallingConv?download=true
inline.NumInlined: 566
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4llvm8CC_RISCVEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i.i, i64 %indvars.iv.next74
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !42 ; 2 uses
  %i.pa = zext i16 %i.oz to i32                   ; 3 uses
  %i.pb = lshr i32 %i.pa, 5
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !40
  %i.pf = and i32 %i.pa, 31
  %i.pg = shl nuw i32 1, %i.pf
  %i.ph = and i32 %i.pg, %i.pe
  %.not.i.i197.i.1 = icmp eq i32 %i.ph, 0
  br i1 %.not.i.i197.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i199.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %exitcond77.not.1 = icmp eq i64 %indvars.iv.next74.1, %spec.select.i.i
  br i1 %exitcond77.not.1, label %.critedge19.i, label %bb.ee, !llvm.loop !0

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i199.i: ; preds = %bb.ef, %bb.ee
  %indvars.iv73.lcssa = phi i64 [ %indvars.iv73, %bb.ee ], [ %indvars.iv.next74, %bb.ef ]
  %.lcssa157 = phi i16 [ %i.op, %bb.ee ], [ %i.oz, %bb.ef ] ; 2 uses
  %.lcssa155 = phi i32 [ %i.oq, %bb.ee ], [ %i.pa, %bb.ef ]
  %i.pi = icmp eq i64 %spec.select.i.i, %indvars.iv73.lcssa
  br i1 %i.pi, label %.critedge19.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit200.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit200.i: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i199.i
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa157) #10
  %.not158.i = icmp eq i16 %.lcssa157, 0
  br i1 %.not158.i, label %.critedge19.i, label %bb.eh

bb.eh:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit200.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.pj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.pj, align 8, !tbaa !44, !alias.scope !383
  %i.pk = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.pk, align 8, !tbaa !55, !alias.scope !383
  %i.pl = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 4, !alias.scope !383
  %i.pn = and i8 %i.pm, -128
  %i.po = trunc i32 %3 to i8
  %i.pp = shl i8 %i.po, 1
  %i.pq = and i8 %i.pp, 126
  %i.pr = or disjoint i8 %i.pn, %i.pq
  store i8 %i.pr, ptr %i.pl, align 4, !alias.scope !383
  %i.ps = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.ps, align 2, !tbaa !56, !alias.scope !383
  %i.pt = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 13, ptr %i.pt, align 8, !tbaa !56, !alias.scope !383
  store i32 %.lcssa155, ptr %11, align 8, !tbaa !40, !alias.scope !383
  %i.pu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 3 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !60 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 12
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !61
  %.not.i.i201.i = icmp ult i32 %i.px, %i.pz
  br i1 %.not.i.i201.i, label %bb.ej, label %bb.ei, !prof !62

bb.ei:                                            ; preds = %bb.eh
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.pv, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit202.i

bb.ej:                                            ; preds = %bb.eh
  %i.qa = zext i32 %i.px to i64
  %i.qb = load ptr, ptr %i.pv, align 8, !tbaa !39
  %i.qc = getelementptr inbounds nuw [32 x i8], ptr %i.qb, i64 %i.qa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.qc, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.qd = load i32, ptr %i.pw, align 8, !tbaa !60
  %i.qe = add i32 %i.qd, 1
  store i32 %i.qe, ptr %i.pw, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit202.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit202.i: ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %_ZL12CC_RISCV_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.critedge19.thread.i:                             ; preds = %bb.ed, %.critedge13.i
  %.ph177.i = phi i16 [ %i.oh, %bb.ed ], [ %i.og, %.critedge13.i ]
  %i.qf = and i32 %i.hk, -9
  %or.cond.i231186.i = icmp eq i32 %i.qf, 3       ; 2 uses
  %spec.select.i232187.i = select i1 %or.cond.i231186.i, i64 6, i64 12
  %spec.select3.i233188.i = select i1 %or.cond.i231186.i, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCIGPRs
  %i.qg = add nuw nsw i16 %2, -19
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i

.critedge15.thread181.i:                          ; preds = %bb.dd, %bb.cj
  %i.qh = getelementptr inbounds nuw i8, ptr %i.he, i64 656
  %i.qi = load i8, ptr %i.qh, align 8, !tbaa !324, !range !320, !noundef !58
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = select i1 %i.qj, i16 8, i16 7           ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.he, i64 491
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !322, !range !320, !noundef !58
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %.lr.ph.i.i209.i, label %.critedge19.i.thread

.lr.ph.i.i209.i:                                  ; preds = %.critedge15.thread181.i
  %i.qo = and i32 %i.hk, -9                       ; 4 uses
  %or.cond.i203.i = icmp eq i32 %i.qo, 3          ; 2 uses
  %spec.select.i204.i = select i1 %or.cond.i203.i, i64 6, i64 12 ; 2 uses
  %spec.select3.i205.i = select i1 %or.cond.i203.i, ptr @_ZZL19getFastCCArgGPRF32sN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZL19getFastCCArgGPRF32sN4llvm8RISCVABI3ABIEE11FastCCIGPRs ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !39 ; 2 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.em, %.lr.ph.i.i209.i
  %indvars.iv68 = phi i64 [ 0, %.lr.ph.i.i209.i ], [ %indvars.iv.next69.1, %bb.em ] ; 4 uses
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i205.i, i64 %indvars.iv68
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !42 ; 2 uses
  %i.qt = zext i16 %i.qs to i32                   ; 3 uses
  %i.qu = lshr i32 %i.qt, 5
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !40
  %i.qy = and i32 %i.qt, 31
  %i.qz = shl nuw i32 1, %i.qy
  %i.ra = and i32 %i.qz, %i.qx
  %.not.i.i211.i = icmp eq i32 %i.ra, 0
  br i1 %.not.i.i211.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i213.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %indvars.iv.next69 = or disjoint i64 %indvars.iv68, 1 ; 2 uses
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i205.i, i64 %indvars.iv.next69
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !42 ; 2 uses
  %i.rd = zext i16 %i.rc to i32                   ; 3 uses
  %i.re = lshr i32 %i.rd, 5
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !40
  %i.ri = and i32 %i.rd, 31
  %i.rj = shl nuw i32 1, %i.ri
  %i.rk = and i32 %i.rj, %i.rh
  %.not.i.i211.i.1 = icmp eq i32 %i.rk, 0
  br i1 %.not.i.i211.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i213.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %indvars.iv.next69.1 = add nuw nsw i64 %indvars.iv68, 2 ; 2 uses
  %exitcond72.not.1 = icmp eq i64 %indvars.iv.next69.1, %spec.select.i204.i
  br i1 %exitcond72.not.1, label %.critedge19.i, label %bb.ek, !llvm.loop !0

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i213.i: ; preds = %bb.el, %bb.ek
  %indvars.iv68.lcssa = phi i64 [ %indvars.iv68, %bb.ek ], [ %indvars.iv.next69, %bb.el ]
  %.lcssa163 = phi i16 [ %i.qs, %bb.ek ], [ %i.rc, %bb.el ] ; 2 uses
  %.lcssa161 = phi i32 [ %i.qt, %bb.ek ], [ %i.rd, %bb.el ]
  %i.rl = icmp eq i64 %spec.select.i204.i, %indvars.iv68.lcssa
  br i1 %i.rl, label %.critedge19.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit214.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit214.i: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i213.i
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa163) #10
  %.not159.i = icmp eq i16 %.lcssa163, 0
  br i1 %.not159.i, label %.critedge19.i, label %bb.en

bb.en:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit214.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.rm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.rm, align 8, !tbaa !44, !alias.scope !384
  %i.rn = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.rn, align 8, !tbaa !55, !alias.scope !384
  %i.ro = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.rp = load i8, ptr %i.ro, align 4, !alias.scope !384
  %i.rq = and i8 %i.rp, -128
  %i.rr = trunc i32 %3 to i8
  %i.rs = shl i8 %i.rr, 1
  %i.rt = and i8 %i.rs, 126
  %i.ru = or disjoint i8 %i.rq, %i.rt
  store i8 %i.ru, ptr %i.ro, align 4, !alias.scope !384
  %i.rv = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.rv, align 2, !tbaa !56, !alias.scope !384
  %i.rw = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 14, ptr %i.rw, align 8, !tbaa !56, !alias.scope !384
  store i32 %.lcssa161, ptr %12, align 8, !tbaa !40, !alias.scope !384
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 3 uses
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !60 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !61
  %.not.i.i215.i = icmp ult i32 %i.sa, %i.sc
  br i1 %.not.i.i215.i, label %bb.ep, label %bb.eo, !prof !62

bb.eo:                                            ; preds = %bb.en
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ry, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit216.i

bb.ep:                                            ; preds = %bb.en
  %i.sd = zext i32 %i.sa to i64
  %i.se = load ptr, ptr %i.ry, align 8, !tbaa !39
  %i.sf = getelementptr inbounds nuw [32 x i8], ptr %i.se, i64 %i.sd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.sf, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.sg = load i32, ptr %i.rz, align 8, !tbaa !60
  %i.sh = add i32 %i.sg, 1
  store i32 %i.sh, ptr %i.rz, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit216.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit216.i: ; preds = %bb.ep, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %_ZL12CC_RISCV_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.critedge17.thread.sink.split.i:                  ; preds = %bb.ea, %bb.dg
  %i.si = getelementptr inbounds nuw i8, ptr %i.he, i64 656 ; 2 uses
  %i.sj = load i8, ptr %i.si, align 8, !tbaa !324, !range !320, !noundef !58
  %i.sk = trunc nuw i8 %i.sj to i1                ; 2 uses
  %24 = select i1 %i.sk, i16 8, i16 7             ; 4 uses
  br i1 %i.sk, label %bb.eq, label %.critedge19.i.thread

bb.eq:                                            ; preds = %.critedge17.thread.sink.split.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.he, i64 486
  %i.sm = load i8, ptr %i.sl, align 2, !tbaa !323, !range !320, !noundef !58
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %.lr.ph.i.i223.i, label %.critedge19.i.thread

.lr.ph.i.i223.i:                                  ; preds = %bb.eq
  %i.so = and i32 %i.hk, -9                       ; 4 uses
  %or.cond.i217.i = icmp eq i32 %i.so, 3          ; 2 uses
  %spec.select.i218.i = select i1 %or.cond.i217.i, i64 6, i64 12 ; 2 uses
  %spec.select3.i219.i = select i1 %or.cond.i217.i, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCIGPRs ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !39 ; 2 uses
  br label %bb.er

bb.er:                                            ; preds = %bb.et, %.lr.ph.i.i223.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.i223.i ], [ %indvars.iv.next.1, %bb.et ] ; 4 uses
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i219.i, i64 %indvars.iv
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !42 ; 2 uses
  %i.st = zext i16 %i.ss to i32                   ; 3 uses
  %i.su = lshr i32 %i.st, 5
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sv
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !40
  %i.sy = and i32 %i.st, 31
  %i.sz = shl nuw i32 1, %i.sy
  %i.ta = and i32 %i.sz, %i.sx
  %.not.i.i225.i = icmp eq i32 %i.ta, 0
  br i1 %.not.i.i225.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i227.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i219.i, i64 %indvars.iv.next
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !42 ; 2 uses
  %i.td = zext i16 %i.tc to i32                   ; 3 uses
  %i.te = lshr i32 %i.td, 5
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.tf
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !40
  %i.ti = and i32 %i.td, 31
  %i.tj = shl nuw i32 1, %i.ti
  %i.tk = and i32 %i.tj, %i.th
  %.not.i.i225.i.1 = icmp eq i32 %i.tk, 0
  br i1 %.not.i.i225.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i227.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %spec.select.i218.i
  br i1 %exitcond.not.1, label %.critedge19.i, label %bb.er, !llvm.loop !0

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i227.i: ; preds = %bb.es, %bb.er
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.er ], [ %indvars.iv.next, %bb.es ]
  %.lcssa169 = phi i16 [ %i.ss, %bb.er ], [ %i.tc, %bb.es ] ; 2 uses
  %.lcssa167 = phi i32 [ %i.st, %bb.er ], [ %i.td, %bb.es ] ; 2 uses
  %i.tl = icmp eq i64 %spec.select.i218.i, %indvars.iv.lcssa
  br i1 %i.tl, label %.critedge19.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit228.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit228.i: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i227.i
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.lcssa169) #10
  %.not160.i = icmp eq i16 %.lcssa169, 0
  br i1 %.not160.i, label %.critedge19.i, label %_ZNK4llvm8TypeSizecvmEv.exit.i

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit228.i
  %i.tm = load i8, ptr %i.si, align 8, !tbaa !324, !range !320, !noundef !58
  %i.tn = trunc nuw i8 %i.tm to i1
  %i.to = trunc i32 %3 to i8
  %i.tp = shl i8 %i.to, 1
  %i.tq = and i8 %i.tp, 126                       ; 2 uses
  br i1 %i.tn, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.tr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.tr, align 8, !tbaa !44, !alias.scope !385
  %i.ts = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.ts, align 8, !tbaa !55, !alias.scope !385
  %i.tt = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.tu = load i8, ptr %i.tt, align 4, !alias.scope !385
  %i.tv = and i8 %i.tu, -128
  %i.tw = or disjoint i8 %i.tq, %i.tv
  %i.tx = or disjoint i8 %i.tw, 1
  store i8 %i.tx, ptr %i.tt, align 4, !alias.scope !385
  %i.ty = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.ty, align 2, !tbaa !56, !alias.scope !385
  %i.tz = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 %24, ptr %i.tz, align 8, !tbaa !56, !alias.scope !385
  store i32 %.lcssa167, ptr %13, align 8, !tbaa !40, !alias.scope !385
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  br label %_ZL12CC_RISCV_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.ev:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.ua = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.ua, align 8, !tbaa !44, !alias.scope !386
  %i.ub = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.ub, align 8, !tbaa !55, !alias.scope !386
  %i.uc = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 4, !alias.scope !386
  %i.ue = and i8 %i.ud, -128
  %i.uf = or disjoint i8 %i.ue, %i.tq
  store i8 %i.uf, ptr %i.uc, align 4, !alias.scope !386
  %i.ug = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.ug, align 2, !tbaa !56, !alias.scope !386
  %i.uh = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 15, ptr %i.uh, align 8, !tbaa !56, !alias.scope !386
  store i32 %.lcssa167, ptr %14, align 8, !tbaa !40, !alias.scope !386
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %_ZL12CC_RISCV_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.critedge19.i.thread:                             ; preds = %.critedge15.thread181.i, %bb.eq, %.critedge17.thread.sink.split.i
  %.ph = phi i16 [ %i.qk, %.critedge15.thread181.i ], [ 7, %.critedge17.thread.sink.split.i ], [ 8, %bb.eq ]
  %i.ui = and i32 %i.hk, -9
  %or.cond.i231.i49 = icmp eq i32 %i.ui, 3        ; 2 uses
  %spec.select.i232.i50 = select i1 %or.cond.i231.i49, i64 6, i64 12
  %spec.select3.i233.i51 = select i1 %or.cond.i231.i49, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCIGPRs
  %i.uj = add nuw nsw i16 %2, -19
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i

.critedge19.i:                                    ; preds = %bb.et, %bb.em, %bb.eg, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i199.i, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit200.i, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit214.i, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit228.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i227.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i213.i, %.critedge13.thread173.thread.thread.i
  %.pre-phi = phi i32 [ %i.qo, %bb.em ], [ %i.ol, %bb.eg ], [ %.pre, %.critedge13.thread173.thread.thread.i ], [ %i.ol, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i199.i ], [ %i.ol, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit200.i ], [ %i.qo, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit214.i ], [ %i.so, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit228.i ], [ %i.so, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i227.i ], [ %i.qo, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i213.i ], [ %i.so, %bb.et ]
  %i.uk = phi i16 [ %i.qk, %bb.em ], [ %i.oh, %bb.eg ], [ %i.oc, %.critedge13.thread173.thread.thread.i ], [ %i.oh, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i199.i ], [ %i.oh, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit200.i ], [ %i.qk, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit214.i ], [ %24, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit228.i ], [ %24, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i227.i ], [ %i.qk, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i213.i ], [ %24, %bb.et ] ; 5 uses
  %or.cond.i231.i = icmp eq i32 %.pre-phi, 3      ; 2 uses
  %spec.select.i232.i = select i1 %or.cond.i231.i, i64 6, i64 12 ; 7 uses
  %spec.select3.i233.i = select i1 %or.cond.i231.i, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCIGPRs ; 7 uses
  %i.ul = add i16 %2, -19                         ; 5 uses
  %spec.select.i236.i = icmp ult i16 %i.ul, 197
  br i1 %spec.select.i236.i, label %bb.ew, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i

bb.ew:                                            ; preds = %.critedge19.i
  %i.um = tail call fastcc i32 @_ZL14allocateRVVRegN4llvm3MVTEjRNS_7CCStateERKNS_19RISCVTargetLoweringE(i16 %1, ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(518448) %i.hi) ; 3 uses
  %.not162.i = icmp eq i32 %i.um, 0
  br i1 %.not162.i, label %.critedge178.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %spec.select.i237.i = icmp samesign ult i16 %i.ul, 144
  br i1 %spec.select.i237.i, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  %i.un = tail call i16 @_ZNK4llvm19RISCVTargetLowering32getContainerForFixedLengthVectorENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518448) %i.hi, i16 %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.uo = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.uo, align 8, !tbaa !44, !alias.scope !387
  %i.up = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.up, align 8, !tbaa !55, !alias.scope !387
  %i.uq = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.ur = load i8, ptr %i.uq, align 4, !alias.scope !387
  %i.us = and i8 %i.ur, -128
  %i.ut = trunc i32 %3 to i8
  %i.uu = shl i8 %i.ut, 1
  %i.uv = and i8 %i.uu, 126
  %i.uw = or disjoint i8 %i.uv, %i.us
  %i.ux = or disjoint i8 %i.uw, 1
  store i8 %i.ux, ptr %i.uq, align 4, !alias.scope !387
  %i.uy = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.uy, align 2, !tbaa !56, !alias.scope !387
  %i.uz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 %i.un, ptr %i.uz, align 8, !tbaa !56, !alias.scope !387
  store i32 %i.um, ptr %15, align 8, !tbaa !40, !alias.scope !387
  %i.va = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 3 uses
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !60 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 12
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !61
  %.not.i.i238.i = icmp ult i32 %i.vd, %i.vf
  br i1 %.not.i.i238.i, label %bb.fa, label %bb.ez, !prof !62

bb.ez:                                            ; preds = %bb.ey
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.vb, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit239.i

bb.fa:                                            ; preds = %bb.ey
  %i.vg = zext i32 %i.vd to i64
  %i.vh = load ptr, ptr %i.vb, align 8, !tbaa !39
  %i.vi = getelementptr inbounds nuw [32 x i8], ptr %i.vh, i64 %i.vg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.vi, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.vj = load i32, ptr %i.vc, align 8, !tbaa !60
  %i.vk = add i32 %i.vj, 1
  store i32 %i.vk, ptr %i.vc, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit239.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit239.i: ; preds = %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %_ZL12CC_RISCV_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.fb:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.vl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.vl, align 8, !tbaa !44, !alias.scope !388
  %i.vm = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.vm, align 8, !tbaa !55, !alias.scope !388
  %i.vn = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 4, !alias.scope !388
  %i.vp = and i8 %i.vo, -128
  %i.vq = trunc i32 %3 to i8
  %i.vr = shl i8 %i.vq, 1
  %i.vs = and i8 %i.vr, 126
  %i.vt = or disjoint i8 %i.vp, %i.vs
  store i8 %i.vt, ptr %i.vn, align 4, !alias.scope !388
  %i.vu = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.vu, align 2, !tbaa !56, !alias.scope !388
  %i.vv = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 %2, ptr %i.vv, align 8, !tbaa !56, !alias.scope !388
  store i32 %i.um, ptr %16, align 8, !tbaa !40, !alias.scope !388
  %i.vw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 3 uses
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !60 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 12
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !61
  %.not.i.i240.i = icmp ult i32 %i.vz, %i.wb
  br i1 %.not.i.i240.i, label %bb.fd, label %bb.fc, !prof !62

bb.fc:                                            ; preds = %bb.fb
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.vx, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit241.i

bb.fd:                                            ; preds = %bb.fb
  %i.wc = zext i32 %i.vz to i64
  %i.wd = load ptr, ptr %i.vx, align 8, !tbaa !39
  %i.we = getelementptr inbounds nuw [32 x i8], ptr %i.wd, i64 %i.wc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.we, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.wf = load i32, ptr %i.vy, align 8, !tbaa !60
  %i.wg = add i32 %i.wf, 1
  store i32 %i.wg, ptr %i.vy, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit241.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit241.i: ; preds = %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %_ZL12CC_RISCV_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.critedge178.i:                                   ; preds = %bb.ew
  %i.wh = add nsw i16 %2, -163
  %spec.select.i242.i = icmp ult i16 %i.wh, 53
  br i1 %spec.select.i242.i, label %.lr.ph.i.i249.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge178.i
  %i.wi = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !39 ; 2 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fg, %.lr.ph.i.i
  %indvars.iv78 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next79.1, %bb.fg ] ; 4 uses
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i233.i, i64 %indvars.iv78
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !42
  %i.wm = zext i16 %i.wl to i32                   ; 2 uses
  %i.wn = lshr i32 %i.wm, 5
  %i.wo = zext nneg i32 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !40
  %i.wr = and i32 %i.wm, 31
  %i.ws = shl nuw i32 1, %i.wr
  %i.wt = and i32 %i.ws, %i.wq
  %.not.i.i = icmp eq i32 %i.wt, 0
  br i1 %.not.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %indvars.iv.next79 = or disjoint i64 %indvars.iv78, 1 ; 2 uses
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i233.i, i64 %indvars.iv.next79
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !42
  %i.ww = zext i16 %i.wv to i32                   ; 2 uses
  %i.wx = lshr i32 %i.ww, 5
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !40
  %i.xb = and i32 %i.ww, 31
  %i.xc = shl nuw i32 1, %i.xb
  %i.xd = and i32 %i.xc, %i.xa
  %.not.i.i.1 = icmp eq i32 %i.xd, 0
  br i1 %.not.i.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %exitcond82.not.1 = icmp eq i64 %indvars.iv.next79.1, %spec.select.i232.i
  br i1 %exitcond82.not.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i, label %bb.fe, !llvm.loop !0

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i: ; preds = %bb.ff, %bb.fe
  %indvars.iv78.lcssa = phi i64 [ %indvars.iv78, %bb.fe ], [ %indvars.iv.next79, %bb.ff ]
  %i.xe = icmp eq i64 %spec.select.i232.i, %indvars.iv78.lcssa
  br i1 %i.xe, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i, label %.lr.ph.i.i249.i

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i: ; preds = %bb.fg, %.critedge19.i.thread, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, %.critedge19.i, %.critedge19.thread.i
  %i.xf = phi i16 [ %i.qg, %.critedge19.thread.i ], [ %i.ul, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ], [ %i.ul, %.critedge19.i ], [ %i.uj, %.critedge19.i.thread ], [ %i.ul, %bb.fg ]
  %spec.select3.i233193.i = phi ptr [ %spec.select3.i233188.i, %.critedge19.thread.i ], [ %spec.select3.i233.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ], [ %spec.select3.i233.i, %.critedge19.i ], [ %spec.select3.i233.i51, %.critedge19.i.thread ], [ %spec.select3.i233.i, %bb.fg ]
  %spec.select.i232191.i = phi i64 [ %spec.select.i232187.i, %.critedge19.thread.i ], [ %spec.select.i232.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ], [ %spec.select.i232.i, %.critedge19.i ], [ %spec.select.i232.i50, %.critedge19.i.thread ], [ %spec.select.i232.i, %bb.fg ]
  %i.xg = phi i16 [ %.ph177.i, %.critedge19.thread.i ], [ %i.uk, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ], [ %i.uk, %.critedge19.i ], [ %.ph, %.critedge19.i.thread ], [ %i.uk, %bb.fg ]
  %i.xh = icmp eq i16 %2, %i.xg
  br i1 %i.xh, label %.lr.ph.i.i249.i, label %.critedge180.thread.i

.lr.ph.i.i249.i:                                  ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, %.critedge178.i
  %spec.select3.i233192.i = phi ptr [ %spec.select3.i233193.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i ], [ %spec.select3.i233.i, %.critedge178.i ], [ %spec.select3.i233.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ]
  %spec.select.i232190.i = phi i64 [ %spec.select.i232191.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i ], [ %spec.select.i232.i, %.critedge178.i ], [ %spec.select.i232.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ] ; 2 uses
  %.0147114.i = phi i32 [ %3, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i ], [ 11, %.critedge178.i ], [ 11, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ] ; 4 uses
  %.sroa.047.4113.i = phi i16 [ %2, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread.i ], [ %i.uk, %.critedge178.i ], [ %i.uk, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ] ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !39
  %i.xk = trunc nuw nsw i64 %spec.select.i232190.i to i32
  %umax = tail call i32 @llvm.umax.i32(i32 %i.xk, i32 1)
  %wide.trip.count86 = zext nneg i32 %umax to i64
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fi, %.lr.ph.i.i249.i
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.fi ], [ 0, %.lr.ph.i.i249.i ] ; 3 uses
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i233192.i, i64 %indvars.iv83
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !42 ; 3 uses
  %i.xn = zext i16 %i.xm to i32                   ; 3 uses
  %i.xo = lshr i32 %i.xn, 5
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !40
  %i.xs = and i32 %i.xn, 31
  %i.xt = shl nuw i32 1, %i.xs
  %i.xu = and i32 %i.xt, %i.xr
  %.not.i.i251.i = icmp eq i32 %i.xu, 0
  br i1 %.not.i.i251.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i253.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.critedge21.i, label %bb.fh, !llvm.loop !0

end_hunk_0
