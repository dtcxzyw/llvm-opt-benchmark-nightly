Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-code-generator?download=true
inline.NumInlined: 32460
inline.NumDeleted: 3454
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2v88internal6maglev19MaglevCodeGenerator8EmitCodeEv:bb.a

_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %i.rj = phi i64 [ %.pre.i.i.i74.i.i.i.i, %bb.bm ], [ %i.rg, %bb.bl ] ; 2 uses
  %i.rk = inttoptr i64 %i.rj to ptr               ; 3 uses
  %i.rl = add i64 %i.rj, %i.ra
  store i64 %i.rl, ptr %i.rf, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rk, ptr nonnull align 8 %.sroa.5.0.i.i.i.i, i64 %i.ra, i1 false)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.ra ; 2 uses
  %.pre199.i.i.i.i = load ptr, ptr %i.bn, align 8 ; 2 uses
  %.pre208.i.i.i.i = ptrtoint ptr %.pre199.i.i.i.i to i64
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i, %bb.bi
  %.pre-phi.i.i.i.i = phi i64 [ %i.qd, %bb.bi ], [ %.pre208.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ]
  %i.rn = phi ptr [ %i.qb, %bb.bi ], [ %.pre199.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.4.1.i.i.i.i = phi ptr [ null, %bb.bi ], [ %i.rk, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.12.0.i.i.i.i = phi ptr [ %i.rb, %bb.bi ], [ %i.rm, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.17.0.i.i.i.i = phi ptr [ null, %bb.bi ], [ %i.rm, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ] ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 3 uses
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = ptrtoint ptr %i.rp to i64
  %i.rr = sub i64 %i.rq, %.pre-phi.i.i.i.i
  %i.rs = ptrtoint ptr %.sroa.12.0.i.i.i.i to i64
  %i.rt = ptrtoint ptr %.sroa.4.1.i.i.i.i to i64  ; 2 uses
  %i.ru = sub i64 %i.rs, %i.rt                    ; 4 uses
  %.not.i75.i.i.i.i = icmp ult i64 %i.rr, %i.ru
  br i1 %.not.i75.i.i.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i
  %i.rv = load ptr, ptr %i.op, align 8
  %i.rw = icmp eq ptr %i.rv, %i.pg
  br i1 %i.rw, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %.not24.i80.i.i.i.i = icmp eq ptr %.sroa.12.0.i.i.i.i, %.sroa.4.1.i.i.i.i
  br i1 %.not24.i80.i.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rn, ptr align 8 %.sroa.4.1.i.i.i.i, i64 %i.ru, i1 false)
  %.pre200.pre.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i

bb.bq:                                            ; preds = %bb.bn, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i
  %i.rx = ptrtoint ptr %.sroa.17.0.i.i.i.i to i64
  %i.ry = sub i64 %i.rx, %i.rt                    ; 5 uses
  %.not23.i76.i.i.i.i = icmp eq ptr %.sroa.17.0.i.i.i.i, %.sroa.4.1.i.i.i.i
  br i1 %.not23.i76.i.i.i.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rz = load ptr, ptr %i.op, align 8            ; 3 uses
  %i.sa = icmp sgt i64 %i.ry, -1
  br i1 %i.sa, label %bb.bt, label %bb.bs, !prof !19

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.84) #22
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 3 uses
  %i.se = load i64, ptr %i.sd, align 8            ; 2 uses
  %i.sf = sub i64 %i.sc, %i.se
  %i.sg = icmp ugt i64 %i.ry, %i.sf
  br i1 %i.sg, label %bb.bu, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i, !prof !17

bb.bu:                                            ; preds = %bb.bt
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.rz, i64 noundef %i.ry) #20
  %.pre.i.i.i79.i.i.i.i = load i64, ptr %i.sd, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i: ; preds = %bb.bu, %bb.bt
  %i.sh = phi i64 [ %.pre.i.i.i79.i.i.i.i, %bb.bu ], [ %i.se, %bb.bt ] ; 2 uses
  %i.si = inttoptr i64 %i.sh to ptr               ; 2 uses
  %i.sj = add i64 %i.sh, %i.ry
  store i64 %i.sj, ptr %i.sd, align 8
  store ptr %i.si, ptr %i.bn, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.1.i.i.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.si, ptr nonnull align 8 %.sroa.4.1.i.i.i.i, i64 %i.ru, i1 false)
  %.pre.i78.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bq
  store ptr null, ptr %i.bn, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i
  %i.sk = phi ptr [ null, %bb.bv ], [ %.pre.i78.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i ] ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.ry
  store ptr %i.sl, ptr %i.ro, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i: ; preds = %bb.bw, %bb.bp, %bb.bo
  %i.sm = phi ptr [ %i.sk, %bb.bw ], [ %.pre200.pre.i.i.i.i, %bb.bp ], [ %i.rn, %bb.bo ] ; 3 uses
  %.pn.i.i.i.i = phi ptr [ %i.sk, %bb.bw ], [ %i.rn, %bb.bp ], [ %i.rn, %bb.bo ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %i.ru ; 3 uses
  store ptr %i.sn, ptr %i.bp, align 8
  %.not192.i.i.i.i = icmp eq ptr %i.sn, %i.sm
  br i1 %.not192.i.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i, label %.lr.ph187.i.i.i.i

._crit_edge188.i.i.i.i:                           ; preds = %bb.cc
  %i.so = load ptr, ptr %i.ro, align 8
  %i.sp = ptrtoint ptr %i.so to i64
  %i.sq = sub i64 %i.sp, %i.wq
  %i.sr = ashr exact i64 %i.sq, 3
  %.not.i.i64.i.i.i.i = icmp ugt i64 %.1.i.i.i.i, %i.sr
  br i1 %.not.i.i64.i.i.i.i, label %bb.bx, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i, !prof !75

bb.bx:                                            ; preds = %._crit_edge188.i.i.i.i
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.op, i64 noundef %.1.i.i.i.i)
  %.pre.i67.i.i.i.i = load ptr, ptr %i.bn, align 8
  %.pre203.i.i.i.i = load ptr, ptr %i.bp, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i: ; preds = %bb.bx, %._crit_edge188.i.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i
  %.045.lcssa254.i.i.i.i = phi i64 [ %.1.i.i.i.i, %._crit_edge188.i.i.i.i ], [ %.1.i.i.i.i, %bb.bx ], [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 2 uses
  %i.ss = phi ptr [ %i.wo, %._crit_edge188.i.i.i.i ], [ %.pre203.i.i.i.i, %bb.bx ], [ %i.sn, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 3 uses
  %i.st = phi ptr [ %.pre202206.i.i.i.i, %._crit_edge188.i.i.i.i ], [ %.pre.i67.i.i.i.i, %bb.bx ], [ %i.sm, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %.045.lcssa254.i.i.i.i ; 2 uses
  %i.sv = icmp ult ptr %i.ss, %i.su
  br i1 %i.sv, label %.lr.ph.preheader.i66.i.i.i.i, label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE15PreProcessGraphEPNS1_5GraphE.exit.i

.lr.ph.preheader.i66.i.i.i.i:                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i
  %i.sw = ptrtoaddr ptr %i.ss to i64
  %i.sx = ptrtoaddr ptr %i.st to i64
  %i.sy = shl i64 %.045.lcssa254.i.i.i.i, 3
  %i.sz = xor i64 %i.sw, -1
  %i.ta = add i64 %i.sy, %i.sz
  %i.tb = add i64 %i.ta, %i.sx
  %i.tc = and i64 %i.tb, -8
  %i.td = add i64 %i.tc, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ss, i8 0, i64 %i.td, i1 false)
  br label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE15PreProcessGraphEPNS1_5GraphE.exit.i

.lr.ph187.i.i.i.i:                                ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i, %bb.cc
  %.pre202205.i.i.i.i = phi ptr [ %.pre202206.i.i.i.i, %bb.cc ], [ %i.sm, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 2 uses
  %.0186.i.i.i.i = phi i64 [ %i.wn, %bb.cc ], [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 2 uses
  %.045185.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.cc ], [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 3 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %.pre202205.i.i.i.i, i64 %.0186.i.i.i.i
  %i.tf = load ptr, ptr %i.te, align 8            ; 7 uses
  %.val55.i.i.i.i = load ptr, ptr %15, align 8
  %i.tg = getelementptr i8, ptr %.val55.i.i.i.i, i64 440
  %.val55.val.i.i.i.i = load ptr, ptr %i.tg, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %.val55.val.i.i.i.i, i64 152 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 4 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4
  %i.tk = zext i32 %i.tj to i64
  %i.tl = load ptr, ptr %i.th, align 8
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.tk ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8            ; 2 uses
  %.not.i68.i.i.i.i = icmp eq ptr %i.tn, null
  br i1 %.not.i68.i.i.i.i, label %.preheader.i69.preheader.i.i.i.i, label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i

.preheader.i69.preheader.i.i.i.i:                 ; preds = %.lr.ph187.i.i.i.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %i.tp = load ptr, ptr %i.to, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = icmp eq ptr %i.tp, %i.tr
  br i1 %i.ts, label %.lr.ph174.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

.lr.ph174.i.i.i.i:                                ; preds = %.preheader.i69.preheader.i.i.i.i, %.preheader.i69.backedge.i.i.i.i
  %.011.i.i173.i.i.i.i = phi ptr [ %i.ve, %.preheader.i69.backedge.i.i.i.i ], [ %i.tf, %.preheader.i69.preheader.i.i.i.i ] ; 11 uses
  %i.tt = load i8, ptr %.011.i.i173.i.i.i.i, align 8
  %i.tu = icmp eq i8 %i.tt, 0
  %i.tv = getelementptr inbounds nuw i8, ptr %.011.i.i173.i.i.i.i, i64 64
  %i.tw = load ptr, ptr %i.tv, align 8            ; 9 uses
  %i.tx = icmp ne ptr %i.tw, null
  %i.ty = select i1 %i.tu, i1 %i.tx, i1 false
  br i1 %i.ty, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph174.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 12
  %i.ua = load i32, ptr %i.tz, align 4            ; 2 uses
  %i.ub = and i32 %i.ua, 3
  %i.uc = icmp ne i32 %i.ub, 1
  %i.ud = and i32 %i.ua, 2
  %spec.select.i.i.not.i.i.i.i.i.i = icmp eq i32 %i.ud, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.uc, %spec.select.i.i.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i: ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  %i.uf = load ptr, ptr %i.ue, align 8
  %.not.i86.i.i.i.i = icmp eq ptr %i.uf, null
  br i1 %.not.i86.i.i.i.i, label %bb.by, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

bb.by:                                            ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tw, i64 56
  %i.uh = load i64, ptr %i.ug, align 8            ; 2 uses
  %i.ui = and i64 %i.uh, 2
  %.not54.i87.i.i.i.i = icmp eq i64 %i.ui, 0
  br i1 %.not54.i87.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i: ; preds = %bb.by
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tw, i64 64
  %.sroa.0.0.copyload.i9.1.i.i89.i.i.i.i = load i64, ptr %i.uj, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tw, i64 72
  %.sroa.0.0.copyload.i9.2.i.i90.i.i.i.i = load i64, ptr %i.uk, align 8
  %.not.i.i.i.2.i.i91.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i9.2.i.i90.i.i.i.i to i1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tw, i64 80
  %i.um = load <8 x i64>, ptr %i.ul, align 8
  %.fr129 = freeze <8 x i64> %i.um
  %i.un = getelementptr inbounds nuw i8, ptr %i.tw, i64 144
  %i.uo = load <8 x i64>, ptr %i.un, align 8
  %.fr128 = freeze <8 x i64> %i.uo
  %i.up = getelementptr inbounds nuw i8, ptr %i.tw, i64 208
  %i.uq = load <8 x i64>, ptr %i.up, align 8
  %.fr = freeze <8 x i64> %i.uq
  %i.ur = or i64 %.sroa.0.0.copyload.i9.1.i.i89.i.i.i.i, %i.uh
  %i.us = trunc i64 %i.ur to i1
  %i.ut = or <8 x i64> %.fr, %.fr128
  %i.uu = or <8 x i64> %i.ut, %.fr129
  %rdx.op125 = trunc <8 x i64> %i.uu to <8 x i1>
  %i.uv = bitcast <8 x i1> %rdx.op125 to i8
  %i.uw = icmp ne i8 %i.uv, 0
  %op.rdx126 = select i1 %i.uw, i1 true, i1 %.not.i.i.i.2.i.i91.i.i.i.i
  %op.rdx127 = select i1 %op.rdx126, i1 true, i1 %i.us
  br i1 %op.rdx127, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i: ; preds = %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i, %.lr.ph174.i.i.i.i
  %i.ux = getelementptr inbounds nuw i8, ptr %.011.i.i173.i.i.i.i, i64 40
  %i.uy = load ptr, ptr %i.ux, align 8            ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load i64, ptr %i.uz, align 8
  %i.vb = and i64 %i.va, 65535
  %i.vc = icmp ne i64 %i.vb, 317
  %.not17.i.i.i.i.i.i = icmp eq ptr %i.uy, null
  %.not.i.i71.i.i.i.i = or i1 %.not17.i.i.i.i.i.i, %i.vc
  br i1 %.not.i.i71.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8            ; 6 uses
  %i.vf = load i8, ptr %i.ve, align 8
  %i.vg = icmp eq i8 %i.vf, 0
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 64
  %i.vi = load ptr, ptr %i.vh, align 8            ; 8 uses
  %i.vj = icmp ne ptr %i.vi, null
  %i.vk = select i1 %i.vg, i1 %i.vj, i1 false
  br i1 %i.vk, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i, label %.preheader.i69.backedge.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i: ; preds = %bb.bz
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.vm = load ptr, ptr %i.vl, align 8
  %.not.i83.i.i.i.i = icmp eq ptr %i.vm, null
  br i1 %.not.i83.i.i.i.i, label %bb.ca, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

bb.ca:                                            ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 56
  %i.vo = load i64, ptr %i.vn, align 8            ; 2 uses
  %i.vp = and i64 %i.vo, 2
  %.not54.i.i.i.i.i = icmp eq i64 %i.vp, 0
  br i1 %.not54.i.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i: ; preds = %bb.ca
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 64
  %.sroa.0.0.copyload.i9.1.i.i.i.i.i.i = load i64, ptr %i.vq, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vi, i64 72
  %.sroa.0.0.copyload.i9.2.i.i.i.i.i.i = load i64, ptr %i.vr, align 8
  %.not.i.i.i.2.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i9.2.i.i.i.i.i.i to i1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vi, i64 80
  %i.vt = load <8 x i64>, ptr %i.vs, align 8
  %.fr132 = freeze <8 x i64> %i.vt
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vi, i64 144
  %i.vv = load <8 x i64>, ptr %i.vu, align 8
  %.fr131 = freeze <8 x i64> %i.vv
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vi, i64 208
  %i.vx = load <8 x i64>, ptr %i.vw, align 8
  %.fr130 = freeze <8 x i64> %i.vx
  %i.vy = or i64 %.sroa.0.0.copyload.i9.1.i.i.i.i.i.i, %i.vo
  %i.vz = trunc i64 %i.vy to i1
  %i.wa = or <8 x i64> %.fr130, %.fr131
  %i.wb = or <8 x i64> %i.wa, %.fr132
  %rdx.op122 = trunc <8 x i64> %i.wb to <8 x i1>
  %i.wc = bitcast <8 x i1> %rdx.op122 to i8
  %i.wd = icmp ne i8 %i.wc, 0
  %op.rdx = select i1 %i.wd, i1 true, i1 %.not.i.i.i.2.i.i.i.i.i.i
  %op.rdx123 = select i1 %op.rdx, i1 true, i1 %i.vz
  br i1 %op.rdx123, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %.preheader.i69.backedge.i.i.i.i

.preheader.i69.backedge.i.i.i.i:                  ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i, %bb.bz
  %i.we = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = icmp eq ptr %i.wf, %i.wh
  br i1 %i.wi, label %.lr.ph174.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i: ; preds = %.preheader.i69.backedge.i.i.i.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i, %bb.ca, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i, %bb.by, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i, %.preheader.i69.preheader.i.i.i.i
  %.011.i.i.lcssa.i.i.i.i = phi ptr [ %i.tf, %.preheader.i69.preheader.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %bb.ca ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %bb.by ], [ %.011.i.i173.i.i.i.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i ], [ %i.ve, %.preheader.i69.backedge.i.i.i.i ]
  store ptr %.011.i.i.lcssa.i.i.i.i, ptr %i.tm, align 8
  %.pre.i70.i.i.i.i = load i32, ptr %i.ti, align 4
  %.pre5.i.i.i.i.i = load ptr, ptr %i.th, align 8
  %.phi.trans.insert.i.i.i.i.i = zext i32 %.pre.i70.i.i.i.i to i64
  %.phi.trans.insert6.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre5.i.i.i.i.i, i64 %.phi.trans.insert.i.i.i.i.i
  %.pre7.i.i.i.i.i = load ptr, ptr %.phi.trans.insert6.i.i.i.i.i, align 8
  %.pre202.pre.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i

_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i: ; preds = %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, %.lr.ph187.i.i.i.i
  %.pre202.i.i.i.i = phi ptr [ %.pre202.pre.i.i.i.i, %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i ], [ %.pre202205.i.i.i.i, %.lr.ph187.i.i.i.i ] ; 2 uses
  %i.wj = phi ptr [ %.pre7.i.i.i.i.i, %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i ], [ %i.tn, %.lr.ph187.i.i.i.i ]
  %i.wk = icmp eq ptr %i.wj, %i.tf
  br i1 %i.wk, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i
  %i.wl = add i64 %.045185.i.i.i.i, 1
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %.pre202.i.i.i.i, i64 %.045185.i.i.i.i
  store ptr %i.tf, ptr %i.wm, align 8
  %.pre201.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i
  %.pre202206.i.i.i.i = phi ptr [ %.pre201.i.i.i.i, %bb.cb ], [ %.pre202.i.i.i.i, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi i64 [ %i.wl, %bb.cb ], [ %.045185.i.i.i.i, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i ] ; 5 uses
  %i.wn = add nuw i64 %.0186.i.i.i.i, 1           ; 2 uses
  %i.wo = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.wp = ptrtoint ptr %i.wo to i64
  %i.wq = ptrtoint ptr %.pre202206.i.i.i.i to i64 ; 2 uses
  %i.wr = sub i64 %i.wp, %i.wq
  %i.ws = ashr exact i64 %i.wr, 3
  %i.wt = icmp ult i64 %i.wn, %i.ws
  br i1 %i.wt, label %.lr.ph187.i.i.i.i, label %._crit_edge188.i.i.i.i, !llvm.loop !29

_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE15PreProcessGraphEPNS1_5GraphE.exit.i: ; preds = %.lr.ph.preheader.i66.i.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i
  store ptr %i.su, ptr %i.bp, align 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.am, i64 760
  %i.wv = load ptr, ptr %i.wu, align 8            ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.am, i64 744 ; 3 uses
  %i.wx = icmp eq ptr %i.wv, %i.ww
  br i1 %i.wx, label %_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_8compiler13HeapObjectRefEPNS1_8ConstantESt4lessISH_EEEEEDaSC_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE15PreProcessGraphEPNS1_5GraphE.exit.i
  %i.wy = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.wz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.xa = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.xb = getelementptr inbounds nuw i8, ptr %i.am, i64 776 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ch, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi ptr [ %i.wv, %.lr.ph.i.i ], [ %.sroa.01.1.i.i, %bb.ch ] ; 5 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 40
  %i.xd = load ptr, ptr %i.xc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %.val.i.i = load ptr, ptr %i.an, align 8
  %.val5.i.i = load ptr, ptr %i.wy, align 8
  %i.xe = getelementptr i8, ptr %.val.i.i, i64 40
  %.val.val.i.i = load ptr, ptr %i.xe, align 8
  store ptr %.val.val.i.i, ptr %10, align 8, !alias.scope !76
  store ptr %.val5.i.i, ptr %i.wz, align 8, !alias.scope !76
  store i32 0, ptr %i.xa, align 8, !alias.scope !76
  %i.xf = call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_8ConstantEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull readonly align 8 dereferenceable(56) %15, ptr noundef %i.xd, ptr noundef nonnull align 8 dereferenceable(20) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  switch i32 %i.xf, label %bb.ch [
    i32 0, label %bb.ce
    i32 1, label %bb.cf
    i32 2, label %bb.cg
    i32 3, label %bb.cg
    i32 4, label %bb.cg
  ], !prof !77

bb.ce:                                            ; preds = %bb.cd
  %i.xg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04.i.i) #23
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.xh = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04.i.i) #23
  %i.xi = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.01.04.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ww) #20 ; 0 uses
  %i.xj = load i64, ptr %i.xb, align 8
  %i.xk = add i64 %i.xj, -1
  store i64 %i.xk, ptr %i.xb, align 8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cd, %bb.cd, %bb.cd
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.30) #22
  unreachable

bb.ch:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %.sroa.01.1.i.i = phi ptr [ %.sroa.01.04.i.i, %bb.cd ], [ %i.xg, %bb.ce ], [ %i.xh, %bb.cf ] ; 2 uses
  %i.xl = icmp eq ptr %.sroa.01.1.i.i, %i.ww
  br i1 %i.xl, label %_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_8compiler13HeapObjectRefEPNS1_8ConstantESt4lessISH_EEEEEDaSC_.exit.i, label %bb.cd, !llvm.loop !32

_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_8compiler13HeapObjectRefEPNS1_8ConstantESt4lessISH_EEEEEDaSC_.exit.i: ; preds = %bb.ch, %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE15PreProcessGraphEPNS1_5GraphE.exit.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %i.xn = load ptr, ptr %i.xm, align 8            ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 3 uses
  %i.xp = icmp eq ptr %i.xn, %i.xo
  br i1 %i.xp, label %_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_9RootIndexEPNS1_12RootConstantESt4lessISG_EEEEEDaSC_.exit.i, label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_8compiler13HeapObjectRefEPNS1_8ConstantESt4lessISH_EEEEEDaSC_.exit.i
  %i.xq = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.xr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.xs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.xt = getelementptr inbounds nuw i8, ptr %i.am, i64 136 ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cm, %.lr.ph.i69.i
  %.sroa.01.04.i70.i = phi ptr [ %i.xn, %.lr.ph.i69.i ], [ %.sroa.01.1.i74.i, %bb.cm ] ; 5 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i70.i, i64 40
  %i.xv = load ptr, ptr %i.xu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %.val.i71.i = load ptr, ptr %i.an, align 8
  %.val5.i72.i = load ptr, ptr %i.xq, align 8
  %i.xw = getelementptr i8, ptr %.val.i71.i, i64 40
  %.val.val.i73.i = load ptr, ptr %i.xw, align 8
  store ptr %.val.val.i73.i, ptr %9, align 8, !alias.scope !78
  store ptr %.val5.i72.i, ptr %i.xr, align 8, !alias.scope !78
  store i32 0, ptr %i.xs, align 8, !alias.scope !78
  %i.xx = call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_12RootConstantEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull readonly align 8 dereferenceable(56) %15, ptr noundef %i.xv, ptr noundef nonnull align 8 dereferenceable(20) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  switch i32 %i.xx, label %bb.cm [
    i32 0, label %bb.cj
    i32 1, label %bb.ck
    i32 2, label %bb.cl
    i32 3, label %bb.cl
    i32 4, label %bb.cl
  ], !prof !77

bb.cj:                                            ; preds = %bb.ci
  %i.xy = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04.i70.i) #23
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %i.xz = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04.i70.i) #23
  %i.ya = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.01.04.i70.i, ptr noundef nonnull align 8 dereferenceable(32) %i.xo) #20 ; 0 uses
  %i.yb = load i64, ptr %i.xt, align 8
  %i.yc = add i64 %i.yb, -1
  store i64 %i.yc, ptr %i.xt, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ci, %bb.ci, %bb.ci
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.30) #22
  unreachable

bb.cm:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %.sroa.01.1.i74.i = phi ptr [ %.sroa.01.04.i70.i, %bb.ci ], [ %i.xy, %bb.cj ], [ %i.xz, %bb.ck ] ; 2 uses
  %i.yd = icmp eq ptr %.sroa.01.1.i74.i, %i.xo
  br i1 %i.yd, label %_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_9RootIndexEPNS1_12RootConstantESt4lessISG_EEEEEDaSC_.exit.i, label %bb.ci, !llvm.loop !35

_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_9RootIndexEPNS1_12RootConstantESt4lessISG_EEEEEDaSC_.exit.i: ; preds = %bb.cm, %_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_8compiler13HeapObjectRefEPNS1_8ConstantESt4lessISH_EEEEEDaSC_.exit.i
  %i.ye = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  %i.yf = load ptr, ptr %i.ye, align 8            ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 3 uses
  %i.yh = icmp eq ptr %i.yf, %i.yg
  br i1 %i.yh, label %_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapIiPNS1_11SmiConstantESt4lessIiEEEEEDaSC_.exit.i, label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %_ZZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE12ProcessGraphEPNS1_5GraphEENKUlRT_E_clINS0_7ZoneMapINS0_9RootIndexEPNS1_12RootConstantESt4lessISG_EEEEEDaSC_.exit.i
  %i.yi = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.yj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.yk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.yl = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cr, %.lr.ph.i75.i
  %.sroa.01.04.i76.i = phi ptr [ %i.yf, %.lr.ph.i75.i ], [ %.sroa.01.1.i80.i, %bb.cr ] ; 5 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i76.i, i64 40
  %i.yn = load ptr, ptr %i.ym, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %.val.i77.i = load ptr, ptr %i.an, align 8
  %.val5.i78.i = load ptr, ptr %i.yi, align 8
  %i.yo = getelementptr i8, ptr %.val.i77.i, i64 40
  %.val.val.i79.i = load ptr, ptr %i.yo, align 8
  store ptr %.val.val.i79.i, ptr %8, align 8, !alias.scope !79
  store ptr %.val5.i78.i, ptr %i.yj, align 8, !alias.scope !79
  store i32 0, ptr %i.yk, align 8, !alias.scope !79
  %i.yp = call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_11SmiConstantEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull readonly align 8 dereferenceable(56) %15, ptr noundef %i.yn, ptr noundef nonnull align 8 dereferenceable(20) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  switch i32 %i.yp, label %bb.cr [
    i32 0, label %bb.co
    i32 1, label %bb.cp
    i32 2, label %bb.cq
    i32 3, label %bb.cq
    i32 4, label %bb.cq
  ], !prof !77

bb.co:                                            ; preds = %bb.cn
  %i.yq = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04.i76.i) #23
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev14GraphProcessorINS1_18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS4_33MaglevCodeGeneratingNodeProcessorEEEEE15ProcessNodeBaseEPNS1_8NodeBaseERKNS1_15ProcessingStateE:bb.a

bb.ky:                                            ; preds = %bb.a
  %i.kw = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_22BranchIfReferenceEqualEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.kz:                                            ; preds = %bb.a
  %i.kx = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_20BranchIfInt32CompareEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.la:                                            ; preds = %bb.a
  %i.ky = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_21BranchIfUint32CompareEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lb:                                            ; preds = %bb.a
  %i.kz = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_22BranchIfFloat64CompareEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lc:                                            ; preds = %bb.a
  %i.la = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_23BranchIfUndefinedOrNullEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.ld:                                            ; preds = %bb.a
  %i.lb = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_20BranchIfUndetectableEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.le:                                            ; preds = %bb.a
  %i.lc = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_18BranchIfJSReceiverEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lf:                                            ; preds = %bb.a
  %i.ld = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_14BranchIfTypeOfEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lg:                                            ; preds = %bb.a
  %i.le = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_4JumpEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lh:                                            ; preds = %bb.a
  %i.lf = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_16CheckpointedJumpEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.li:                                            ; preds = %bb.a
  %i.lg = tail call fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_8JumpLoopEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.lk

bb.lj:                                            ; preds = %bb.a
  unreachable

bb.lk:                                            ; preds = %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hl, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ %i.k, %bb.i ], [ %i.l, %bb.j ], [ %i.m, %bb.k ], [ %i.n, %bb.l ], [ %i.o, %bb.m ], [ %i.p, %bb.n ], [ %i.q, %bb.o ], [ %i.r, %bb.p ], [ %i.s, %bb.q ], [ %i.t, %bb.r ], [ %i.u, %bb.s ], [ %i.v, %bb.t ], [ %i.w, %bb.u ], [ %i.x, %bb.v ], [ %i.y, %bb.w ], [ %i.z, %bb.x ], [ %i.aa, %bb.y ], [ %i.ab, %bb.z ], [ %i.ac, %bb.aa ], [ %i.ad, %bb.ab ], [ %i.ae, %bb.ac ], [ %i.af, %bb.ad ], [ %i.ag, %bb.ae ], [ %i.ah, %bb.af ], [ %i.ai, %bb.ag ], [ %i.ld, %bb.lf ], [ %i.aj, %bb.ai ], [ %i.ak, %bb.aj ], [ %i.al, %bb.ak ], [ %i.am, %bb.al ], [ %i.an, %bb.am ], [ %i.ao, %bb.an ], [ %i.ap, %bb.ao ], [ %i.aq, %bb.ap ], [ %i.ar, %bb.aq ], [ %i.as, %bb.ar ], [ %i.at, %bb.as ], [ %i.au, %bb.at ], [ %i.av, %bb.au ], [ %i.aw, %bb.av ], [ %i.ax, %bb.aw ], [ %i.ay, %bb.ax ], [ %i.az, %bb.ay ], [ %i.ba, %bb.az ], [ %i.bb, %bb.ba ], [ %i.bc, %bb.bb ], [ %i.bd, %bb.bc ], [ %i.be, %bb.bd ], [ %i.bf, %bb.be ], [ %i.bg, %bb.bf ], [ %i.bh, %bb.bg ], [ %i.bi, %bb.bh ], [ %i.bj, %bb.bi ], [ %i.bk, %bb.bj ], [ %i.bl, %bb.bk ], [ %i.bm, %bb.bl ], [ %i.bn, %bb.bm ], [ %i.bo, %bb.bn ], [ %i.bp, %bb.bo ], [ %i.bq, %bb.bp ], [ %i.le, %bb.lg ], [ %i.br, %bb.br ], [ %i.bs, %bb.bs ], [ %i.bt, %bb.bt ], [ %i.bu, %bb.bu ], [ %i.bv, %bb.bv ], [ %i.bw, %bb.bw ], [ %i.bx, %bb.bx ], [ %i.by, %bb.by ], [ %i.bz, %bb.bz ], [ %i.ca, %bb.ca ], [ %i.cb, %bb.cb ], [ %i.cc, %bb.cc ], [ %i.cd, %bb.cd ], [ %i.ce, %bb.ce ], [ %i.cf, %bb.cf ], [ %i.cg, %bb.cg ], [ %i.ch, %bb.ch ], [ %i.ci, %bb.ci ], [ %i.cj, %bb.cj ], [ %i.ck, %bb.ck ], [ %i.cl, %bb.cl ], [ %i.cm, %bb.cm ], [ %i.cn, %bb.cn ], [ %i.co, %bb.co ], [ %i.cp, %bb.cp ], [ %i.cq, %bb.cq ], [ %i.cr, %bb.cr ], [ %i.cs, %bb.cs ], [ %i.ct, %bb.ct ], [ %i.cu, %bb.cu ], [ %i.cv, %bb.cv ], [ %i.cw, %bb.cw ], [ %i.cx, %bb.cx ], [ %i.cy, %bb.cy ], [ %i.cz, %bb.cz ], [ %i.da, %bb.da ], [ %i.db, %bb.db ], [ %i.dc, %bb.dc ], [ %i.dd, %bb.dd ], [ %i.de, %bb.de ], [ %i.df, %bb.df ], [ %i.dg, %bb.dg ], [ %i.dh, %bb.dh ], [ %i.di, %bb.di ], [ %i.dj, %bb.dj ], [ %i.dk, %bb.dk ], [ %i.dl, %bb.dl ], [ %i.dm, %bb.dm ], [ %i.dn, %bb.dn ], [ %i.do, %bb.do ], [ %i.dp, %bb.dp ], [ %i.dq, %bb.dq ], [ %i.dr, %bb.dr ], [ %i.ds, %bb.ds ], [ %i.dt, %bb.dt ], [ %i.du, %bb.du ], [ %i.dv, %bb.dv ], [ %i.dw, %bb.dw ], [ %i.dx, %bb.dx ], [ %i.dy, %bb.dy ], [ %i.dz, %bb.dz ], [ %i.ea, %bb.ea ], [ %i.eb, %bb.eb ], [ %i.ec, %bb.ec ], [ %i.ed, %bb.ed ], [ %i.ee, %bb.ee ], [ %i.ef, %bb.ef ], [ %i.eg, %bb.eg ], [ %i.eh, %bb.eh ], [ %i.ei, %bb.ei ], [ %i.ej, %bb.ej ], [ %i.ek, %bb.ek ], [ %i.el, %bb.el ], [ %i.em, %bb.em ], [ %i.en, %bb.en ], [ %i.eo, %bb.eo ], [ %i.ep, %bb.ep ], [ %i.eq, %bb.eq ], [ %i.er, %bb.er ], [ %i.es, %bb.es ], [ %i.et, %bb.et ], [ %i.eu, %bb.eu ], [ %i.ev, %bb.ev ], [ %i.ew, %bb.ew ], [ %i.ex, %bb.ex ], [ %i.ey, %bb.ey ], [ %i.ez, %bb.ez ], [ %i.fa, %bb.fa ], [ %i.fb, %bb.fb ], [ %i.fc, %bb.fc ], [ %i.fd, %bb.fd ], [ %i.fe, %bb.fe ], [ %i.ff, %bb.ff ], [ %i.fg, %bb.fg ], [ %i.fh, %bb.fh ], [ %i.fi, %bb.fi ], [ %i.fj, %bb.fj ], [ %i.fk, %bb.fk ], [ %i.fl, %bb.fl ], [ %i.fm, %bb.fm ], [ %i.fn, %bb.fn ], [ %i.fo, %bb.fo ], [ %i.fp, %bb.fp ], [ %i.fq, %bb.fq ], [ %i.fr, %bb.fr ], [ %i.fs, %bb.fs ], [ %i.ft, %bb.ft ], [ %i.fu, %bb.fu ], [ %i.fv, %bb.fv ], [ %i.fw, %bb.fw ], [ %i.fx, %bb.fx ], [ %i.fy, %bb.fy ], [ %i.fz, %bb.fz ], [ %i.ga, %bb.ga ], [ %i.gb, %bb.gb ], [ %i.gc, %bb.gc ], [ %i.gd, %bb.gd ], [ %i.ge, %bb.ge ], [ %i.gf, %bb.gf ], [ %i.gg, %bb.gg ], [ %i.gh, %bb.gh ], [ %i.gi, %bb.gi ], [ %i.gj, %bb.gj ], [ %i.gk, %bb.gk ], [ %i.gl, %bb.gl ], [ %i.gm, %bb.gm ], [ %i.gn, %bb.gn ], [ %i.go, %bb.go ], [ %i.gp, %bb.gp ], [ %i.gq, %bb.gq ], [ %i.gr, %bb.gr ], [ %i.gs, %bb.gs ], [ %i.gt, %bb.gt ], [ %i.gu, %bb.gu ], [ %i.gv, %bb.gv ], [ %i.gw, %bb.gw ], [ %i.gx, %bb.gx ], [ %i.gy, %bb.gy ], [ %i.gz, %bb.gz ], [ %i.ha, %bb.ha ], [ %i.hb, %bb.hb ], [ %i.hc, %bb.hc ], [ %i.hd, %bb.hd ], [ %i.he, %bb.he ], [ %i.hf, %bb.hf ], [ %i.hg, %bb.hg ], [ %i.hh, %bb.hh ], [ %i.hi, %bb.hi ], [ %i.hj, %bb.hj ], [ %i.lf, %bb.lh ], [ %i.hk, %bb.hl ], [ %i.lg, %bb.li ], [ %i.hl, %bb.hn ], [ %i.hm, %bb.ho ], [ %i.hn, %bb.hp ], [ %i.ho, %bb.hq ], [ %i.hp, %bb.hr ], [ %i.hq, %bb.hs ], [ %i.hr, %bb.ht ], [ %i.hs, %bb.hu ], [ %i.ht, %bb.hv ], [ %i.hu, %bb.hw ], [ %i.hv, %bb.hx ], [ %i.hw, %bb.hy ], [ %i.hx, %bb.hz ], [ %i.hy, %bb.ia ], [ %i.hz, %bb.ib ], [ %i.ia, %bb.ic ], [ %i.ib, %bb.id ], [ %i.ic, %bb.ie ], [ %i.id, %bb.if ], [ %i.ie, %bb.ig ], [ %i.if, %bb.ih ], [ %i.ig, %bb.ii ], [ %i.ih, %bb.ij ], [ %i.ii, %bb.ik ], [ %i.ij, %bb.il ], [ %i.ik, %bb.im ], [ %i.il, %bb.in ], [ %i.im, %bb.io ], [ %i.in, %bb.ip ], [ %i.io, %bb.iq ], [ %i.ip, %bb.ir ], [ %i.iq, %bb.is ], [ %i.ir, %bb.it ], [ %i.is, %bb.iu ], [ %i.it, %bb.iv ], [ %i.iu, %bb.iw ], [ %i.iv, %bb.ix ], [ %i.iw, %bb.iy ], [ %i.ix, %bb.iz ], [ %i.iy, %bb.ja ], [ %i.iz, %bb.jb ], [ %i.ja, %bb.jc ], [ %i.jb, %bb.jd ], [ %i.jc, %bb.je ], [ %i.jd, %bb.jf ], [ %i.je, %bb.jg ], [ %i.jf, %bb.jh ], [ %i.jg, %bb.ji ], [ %i.jh, %bb.jj ], [ %i.ji, %bb.jk ], [ %i.jj, %bb.jl ], [ %i.jk, %bb.jm ], [ %i.jl, %bb.jn ], [ %i.jm, %bb.jo ], [ %i.jn, %bb.jp ], [ %i.jo, %bb.jq ], [ %i.jp, %bb.jr ], [ %i.jq, %bb.js ], [ %i.jr, %bb.jt ], [ %i.js, %bb.ju ], [ %i.jt, %bb.jv ], [ %i.ju, %bb.jw ], [ %i.jv, %bb.jx ], [ %i.jw, %bb.jy ], [ %i.jx, %bb.jz ], [ %i.jy, %bb.ka ], [ %i.jz, %bb.kb ], [ %i.ka, %bb.kc ], [ %i.kb, %bb.kd ], [ %i.kc, %bb.ke ], [ %i.kd, %bb.kf ], [ %i.ke, %bb.kg ], [ %i.kf, %bb.kh ], [ %i.kg, %bb.ki ], [ %i.kh, %bb.kj ], [ %i.ki, %bb.kk ], [ %i.kj, %bb.kl ], [ %i.kk, %bb.km ], [ %i.kl, %bb.kn ], [ %i.km, %bb.ko ], [ %i.kn, %bb.kp ], [ %i.ko, %bb.kq ], [ %i.kp, %bb.kr ], [ %i.kq, %bb.ks ], [ %i.kr, %bb.kt ], [ %i.ks, %bb.ku ], [ %i.kt, %bb.kv ], [ %i.ku, %bb.kw ], [ %i.kv, %bb.kx ], [ %i.kw, %bb.ky ], [ %i.kx, %bb.kz ], [ %i.ky, %bb.la ], [ %i.kz, %bb.lb ], [ %i.la, %bb.lc ], [ %i.lb, %bb.ld ], [ %i.lc, %bb.le ]
  ret i32 %.0
}

declare void @_ZN2v88internal14MacroAssembler10DebugBreakEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #1

declare void @_ZN2v88internal6maglev15MaglevAssembler11OSRPrologueEPNS1_5GraphE(ptr noundef nonnull align 8 dereferenceable(456), ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal6maglev15MaglevAssembler8PrologueEPNS1_5GraphE(ptr noundef nonnull align 8 dereferenceable(456), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = icmp ult i64 %spec.select.i.i, 1152921504606846976
  br i1 %i.n, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.84) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.o) #20
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit: ; preds = %bb.c, %bb.d
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 5 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.44) #22
  unreachable

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE22AllocateDynamicStorageEm.exit
  %i.z = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, 8
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.z, i64 %i.ad, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i64 %i.ad, 8
  br i1 %i.af, label %bb.i, label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.z, align 8
  store ptr %i.ag, ptr %i.w, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.h
  %i.aj = shl nuw i64 1, %i.l
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  store ptr %i.w, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ai
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aj
  store ptr %i.al, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm32ENS2_13ZoneAllocatorIS5_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #11 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit:
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #14 comdat {
bb.a:
  tail call void @abort() #22
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = icmp eq i8 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit, label %bb.c

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not54 = icmp eq i64 %i.k, 0
  br i1 %.not54, label %bb.c, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i9.1.i = load i64, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.0.0.copyload.i9.2.i = load i64, ptr %i.m, align 8
  %.not.i.i.i.2.i = trunc i64 %.sroa.0.0.copyload.i9.2.i to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.o = load <8 x i64>, ptr %i.n, align 8
  %.fr58 = freeze <8 x i64> %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.q = load <8 x i64>, ptr %i.p, align 8
  %.fr57 = freeze <8 x i64> %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.s = load <8 x i64>, ptr %i.r, align 8
  %.fr = freeze <8 x i64> %i.s
  %i.t = or i64 %.sroa.0.0.copyload.i9.1.i, %i.j
  %i.u = trunc i64 %i.t to i1
  %i.v = or <8 x i64> %.fr, %.fr57
  %i.w = or <8 x i64> %i.v, %.fr58
  %rdx.op55 = trunc <8 x i64> %i.w to <8 x i1>
  %i.x = bitcast <8 x i1> %rdx.op55 to i8
  %i.y = icmp ne i8 %i.x, 0
  %op.rdx = select i1 %i.y, i1 true, i1 %.not.i.i.i.2.i
  %op.rdx56 = select i1 %op.rdx, i1 true, i1 %i.u
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i, %bb.b, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit ], [ %op.rdx56, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.84) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #20
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_8ConstantEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.e = load atomic i8, ptr %i.d monotonic, align 1 ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = and i8 %i.e, 6
  %i.h = icmp eq i8 %i.g, 0
  %.not1.i.i = or i1 %i.h, %i.f
  br i1 %.not1.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.i) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit

_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !15, !noundef !16
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit
  %.val49.i.i = load ptr, ptr %0, align 8
  %i.m = getelementptr i8, ptr %.val49.i.i, i64 440
  %.val49.val.i.i = load ptr, ptr %i.m, align 8
  %.val49.val.val.i.i = load ptr, ptr %.val49.val.i.i, align 8
  %i.n = getelementptr i8, ptr %.val49.val.val.i.i, i64 104
  %.val49.val.val.val.i.i = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapIPKN2v88internal6maglev8NodeBaseENS2_19MaglevGraphLabeller8NodeInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(52) %.val49.val.val.val.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val48.i.i = load ptr, ptr %0, align 8         ; 3 uses
  %i.r = getelementptr i8, ptr %.val48.i.i, i64 440
  %.val48.val.i.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val48.val.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = shl i64 %i.aa, 32
  %i.ac = ashr exact i64 %i.ab, 32
  call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 noundef %i.ac, i64 %i.q, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %.val44.i.i = load ptr, ptr %0, align 8         ; 2 uses
  store ptr %.val44.i.i, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 448 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 6 uses
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not.i.i68.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i68.i.i, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %bb.e
  store i16 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  store i16 0, ptr %i.ah, align 2
  store ptr %3, ptr %i.ae, align 8
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i16, ptr %i.ai, align 8            ; 2 uses
  store i16 %i.aj, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  %i.al = load i16, ptr %i.ak, align 2            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  store i16 %i.al, ptr %i.am, align 2
  store ptr %3, ptr %i.ae, align 8
  %.phi.trans.insert145.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 21
  %.pre146.i.i = load i8, ptr %.phi.trans.insert145.i.i, align 1, !range !15
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !range !15
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i: ; preds = %bb.f, %.thread.i.i.i
  %.sink.i.i = phi i8 [ 1, %.thread.i.i.i ], [ %.pre.i.i, %bb.f ]
  %i.an = phi i16 [ 0, %.thread.i.i.i ], [ %i.aj, %bb.f ]
  %i.ao = phi ptr [ %i.ah, %.thread.i.i.i ], [ %i.am, %bb.f ]
  %storemerge.i.i139.i.i = phi i16 [ 0, %.thread.i.i.i ], [ %i.al, %bb.f ]
  %i.ap = phi i8 [ 1, %.thread.i.i.i ], [ %.pre146.i.i, %bb.f ]
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 %.sink.i.i, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 %i.ap, ptr %i.ar, align 1
  %i.as = load ptr, ptr %1, align 8               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.012.0.copyload.i.i = load i16, ptr %i.at, align 2
  %i.au = or i16 %.sroa.012.0.copyload.i.i, %i.an
  store i16 %i.au, ptr %i.ag, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %.sroa.011.0.copyload.i.i = load i16, ptr %i.av, align 2
  %i.aw = or i16 %.sroa.011.0.copyload.i.i, %storemerge.i.i139.i.i
  store i16 %i.aw, ptr %i.ao, align 2
  %.val43.i.i = load ptr, ptr %0, align 8
  call void @_ZN2v88internal6maglev8Constant12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.val43.i.i, ptr noundef nonnull align 8 dereferenceable(20) %2) #20
  %i.ax = load ptr, ptr %1, align 8               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 8
  %.not144.i.i = icmp eq i32 %i.az, 0
  br i1 %.not144.i.i, label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_8ConstantEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bb = load i64, ptr %i.ba, align 8            ; 4 uses
  %i.bc = and i64 %i.bb, 7
  %i.bd = icmp samesign ugt i64 %i.bc, 4
  %i.be = and i64 %i.bb, 8
  %i.bf = icmp ne i64 %i.be, 0
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_5DeoptEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %.val23.i.i = load ptr, ptr %0, align 8         ; 2 uses
  store ptr %.val23.i.i, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val23.i.i, i64 448 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 6 uses
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not.i.i47.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i47.i.i, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %bb.e
  store i16 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  store i16 0, ptr %i.ah, align 2
  store ptr %3, ptr %i.ae, align 8
  br label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_5DeoptEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i16, ptr %i.ai, align 8            ; 2 uses
  store i16 %i.aj, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  %i.al = load i16, ptr %i.ak, align 2            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  store i16 %i.al, ptr %i.am, align 2
  store ptr %3, ptr %i.ae, align 8
  %.phi.trans.insert67.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 21
  %.pre68.i.i = load i8, ptr %.phi.trans.insert67.i.i, align 1, !range !15
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !range !15
  br label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_5DeoptEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE.exit

_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_5DeoptEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE.exit: ; preds = %.thread.i.i.i, %bb.f
  %.sink.i.i = phi i8 [ 1, %.thread.i.i.i ], [ %.pre.i.i, %bb.f ]
  %i.an = phi i16 [ 0, %.thread.i.i.i ], [ %i.aj, %bb.f ]
  %i.ao = phi ptr [ %i.ah, %.thread.i.i.i ], [ %i.am, %bb.f ]
  %storemerge.i.i62.i.i = phi i16 [ 0, %.thread.i.i.i ], [ %i.al, %bb.f ]
  %i.ap = phi i8 [ 1, %.thread.i.i.i ], [ %.pre68.i.i, %bb.f ]
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 %.sink.i.i, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 %i.ap, ptr %i.ar, align 1
  %i.as = load ptr, ptr %1, align 8               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.01.0.copyload.i.i = load i16, ptr %i.at, align 2
  %i.au = or i16 %.sroa.01.0.copyload.i.i, %i.an
  store i16 %i.au, ptr %i.ag, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.av, align 2
  %i.aw = or i16 %.sroa.0.0.copyload.i.i, %storemerge.i.i62.i.i
  store i16 %i.aw, ptr %i.ao, align 2
  %.val.i.i = load ptr, ptr %0, align 8
  call void @_ZN2v88internal6maglev5Deopt12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.val.i.i, ptr noundef nonnull align 8 dereferenceable(20) %2) #20
  %i.ax = load ptr, ptr %i.ad, align 8
  %i.ay = load ptr, ptr %3, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 448
  store ptr %i.ax, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_6SwitchEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.e = load atomic i8, ptr %i.d monotonic, align 1 ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = and i8 %i.e, 6
  %i.h = icmp eq i8 %i.g, 0
  %.not1.i.i = or i1 %i.h, %i.f
  br i1 %.not1.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.i) #20
  br label %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit

_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !15, !noundef !16
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit
  %.val28.i.i = load ptr, ptr %0, align 8
  %i.m = getelementptr i8, ptr %.val28.i.i, i64 440
  %.val28.val.i.i = load ptr, ptr %i.m, align 8
  %.val28.val.val.i.i = load ptr, ptr %.val28.val.i.i, align 8
  %i.n = getelementptr i8, ptr %.val28.val.val.i.i, i64 104
  %.val28.val.val.val.i.i = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapIPKN2v88internal6maglev8NodeBaseENS2_19MaglevGraphLabeller8NodeInfoESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(52) %.val28.val.val.val.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val27.i.i = load ptr, ptr %0, align 8         ; 3 uses
  %i.r = getelementptr i8, ptr %.val27.i.i, i64 440
  %.val27.val.i.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val27.val.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = shl i64 %i.aa, 32
  %i.ac = ashr exact i64 %i.ab, 32
  call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 noundef %i.ac, i64 %i.q, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph102.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !range !15, !noundef !16
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit.i.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessor10PatchJumpsINS1_6SwitchEEEvPT_.exit.i.i

.lr.ph102.i.i.i:                                  ; preds = %bb.e, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i ; 2 uses
  %.val12.i.i.i = load ptr, ptr %0, align 8
  %i.am = getelementptr i8, ptr %.val12.i.i.i, i64 440
  %.val12.val.i.i.i = load ptr, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.al, align 8            ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val12.val.i.i.i, i64 152 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i43.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i43.i.i, label %.preheader.i.preheader.i.i.i, label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %.lr.ph102.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.preheader.i.i.i, %.preheader.i.backedge.i.i.i
  %.011.i.i91.i.i.i = phi ptr [ %i.cl, %.preheader.i.backedge.i.i.i ], [ %i.an, %.preheader.i.preheader.i.i.i ] ; 11 uses
  %i.ba = load i8, ptr %.011.i.i91.i.i.i, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i91.i.i.i, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8            ; 9 uses
  %i.be = icmp ne ptr %i.bd, null
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.thread88.i.i.i

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = and i32 %i.bh, 3
  %i.bj = icmp ne i32 %i.bi, 1
  %i.bk = and i32 %i.bh, 2
  %spec.select.i.i.not.i.i.i.i.i = icmp eq i32 %i.bk, 0
  %or.cond.i.i.i.i.i = and i1 %i.bj, %spec.select.i.i.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i31.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i31.i.i.i: ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not.i32.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i32.i.i.i, label %bb.f, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i31.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 2
  %.not54.i33.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not54.i33.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.i.i.i

_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.i.i.i: ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %.sroa.0.0.copyload.i9.1.i.i35.i.i.i = load i64, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %.sroa.0.0.copyload.i9.2.i.i36.i.i.i = load i64, ptr %i.br, align 8
  %.not.i.i.i.2.i.i37.i.i.i = trunc i64 %.sroa.0.0.copyload.i9.2.i.i36.i.i.i to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bt = load <8 x i64>, ptr %i.bs, align 8
  %.fr22 = freeze <8 x i64> %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bv = load <8 x i64>, ptr %i.bu, align 8
  %.fr21 = freeze <8 x i64> %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  %i.bx = load <8 x i64>, ptr %i.bw, align 8
  %.fr = freeze <8 x i64> %i.bx
  %i.by = or i64 %.sroa.0.0.copyload.i9.1.i.i35.i.i.i, %i.bo
  %i.bz = trunc i64 %i.by to i1
  %i.ca = or <8 x i64> %.fr, %.fr21
  %i.cb = or <8 x i64> %i.ca, %.fr22
  %rdx.op18 = trunc <8 x i64> %i.cb to <8 x i1>
  %i.cc = bitcast <8 x i1> %rdx.op18 to i8
  %i.cd = icmp ne i8 %i.cc, 0
  %op.rdx19 = select i1 %i.cd, i1 true, i1 %.not.i.i.i.2.i.i37.i.i.i
  %op.rdx20 = select i1 %op.rdx19, i1 true, i1 %i.bz
  br i1 %op.rdx20, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.thread88.i.i.i

_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.thread88.i.i.i: ; preds = %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.i.i.i, %.lr.ph.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.011.i.i91.i.i.i, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i64 %i.ch, 65535
  %i.cj = icmp ne i64 %i.ci, 317
  %.not17.i.i.i.i.i = icmp eq ptr %i.cf, null
  %.not.i.i.i.i.i = or i1 %.not17.i.i.i.i.i, %i.cj
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.thread88.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8            ; 6 uses
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cp = load ptr, ptr %i.co, align 8            ; 8 uses
  %i.cq = icmp ne ptr %i.cp, null
  %i.cr = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %i.cr, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i, label %.preheader.i.backedge.i.i.i

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i: ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.i29.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i29.i.i.i, label %bb.h, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i

bb.h:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.cw = and i64 %i.cv, 2
  %.not54.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not54.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %.sroa.0.0.copyload.i9.1.i.i.i.i.i = load i64, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %.sroa.0.0.copyload.i9.2.i.i.i.i.i = load i64, ptr %i.cy, align 8
  %.not.i.i.i.2.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i9.2.i.i.i.i.i to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.da = load <8 x i64>, ptr %i.cz, align 8
  %.fr25 = freeze <8 x i64> %i.da
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  %i.dc = load <8 x i64>, ptr %i.db, align 8
  %.fr24 = freeze <8 x i64> %i.dc
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 208
  %i.de = load <8 x i64>, ptr %i.dd, align 8
  %.fr23 = freeze <8 x i64> %i.de
  %i.df = or i64 %.sroa.0.0.copyload.i9.1.i.i.i.i.i, %i.cv
  %i.dg = trunc i64 %i.df to i1
  %i.dh = or <8 x i64> %.fr23, %.fr24
  %i.di = or <8 x i64> %i.dh, %.fr25
  %rdx.op15 = trunc <8 x i64> %i.di to <8 x i1>
  %i.dj = bitcast <8 x i1> %rdx.op15 to i8
  %i.dk = icmp ne i8 %i.dj, 0
  %op.rdx = select i1 %i.dk, i1 true, i1 %.not.i.i.i.2.i.i.i.i.i
  %op.rdx16 = select i1 %op.rdx, i1 true, i1 %i.dg
  br i1 %op.rdx16, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i, label %.preheader.i.backedge.i.i.i

.preheader.i.backedge.i.i.i:                      ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i, %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = icmp eq ptr %i.dm, %i.do
  br i1 %i.dp, label %.lr.ph.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i

_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i: ; preds = %.preheader.i.backedge.i.i.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i, %bb.h, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.thread88.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.i.i.i, %bb.f, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i31.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i, %.preheader.i.preheader.i.i.i
  %.011.i.i.lcssa.i.i.i = phi ptr [ %i.an, %.preheader.i.preheader.i.i.i ], [ %i.cl, %.preheader.i.backedge.i.i.i ], [ %.011.i.i91.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i ], [ %.011.i.i91.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.i.i.i ], [ %.011.i.i91.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit86.thread88.i.i.i ], [ %.011.i.i91.i.i.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i ], [ %.011.i.i91.i.i.i, %bb.f ], [ %.011.i.i91.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i31.i.i.i ], [ %.011.i.i91.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i ], [ %.011.i.i91.i.i.i, %bb.h ]
  store ptr %.011.i.i.lcssa.i.i.i, ptr %i.at, align 8
  %.pre.i.i.i.i = load i32, ptr %i.ap, align 4
  %.pre5.i.i.i.i = load ptr, ptr %i.ao, align 8
  %.phi.trans.insert.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre5.i.i.i.i, i64 %.phi.trans.insert.i.i.i.i
  %.pre7.i.i.i.i = load ptr, ptr %.phi.trans.insert6.i.i.i.i, align 8
  br label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i

_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i: ; preds = %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i, %.lr.ph102.i.i.i
  %i.dq = phi ptr [ %.pre7.i.i.i.i, %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i ], [ %i.au, %.lr.ph102.i.i.i ]
  store ptr %i.dq, ptr %i.al, align 8
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dr = load i32, ptr %i.af, align 8
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next.i.i.i, %i.ds
  br i1 %i.dt, label %.lr.ph102.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !187

_ZNK2v88internal6maglev6Switch11fallthroughEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i
  %.val.i.i.i = load ptr, ptr %0, align 8
  %i.du = getelementptr i8, ptr %.val.i.i.i, i64 440
  %.val.val.i.i.i = load ptr, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 152 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %i.dx, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i13.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i13.i.i.i, label %.preheader.i14.i.i.i, label %_ZN2v88internal6maglev6Switch15set_fallthroughEPNS1_10BasicBlockE.exit.i.i.i

.preheader.i14.i.i.i:                             ; preds = %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit.i.i.i, %bb.k
  %.011.i.i15.i.i.i = phi ptr [ %i.fc, %bb.k ], [ %i.dw, %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit.i.i.i ] ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.011.i.i15.i.i.i, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.011.i.i15.i.i.i, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = icmp eq ptr %i.ef, %i.eh
  br i1 %i.ei, label %bb.i, label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i

bb.i:                                             ; preds = %.preheader.i14.i.i.i
  %i.ej = load i8, ptr %.011.i.i15.i.i.i, align 8
  %i.ek = icmp eq i8 %i.ej, 0
  %i.el = getelementptr inbounds nuw i8, ptr %.011.i.i15.i.i.i, i64 64
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = icmp ne ptr %i.em, null
  %i.eo = select i1 %i.ek, i1 %i.en, i1 false
  br i1 %i.eo, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i25.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock26is_exception_handler_blockEv.exit.thread.i.i22.i.i.i

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i25.i.i.i: ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %i.er = and i32 %i.eq, 3
  %i.es = icmp ne i32 %i.er, 1
  %i.et = and i32 %i.eq, 2
  %spec.select.i.i.not.i.i26.i.i.i = icmp eq i32 %i.et, 0
  %or.cond.i.i27.i.i.i = and i1 %i.es, %spec.select.i.i.not.i.i26.i.i.i
  br i1 %or.cond.i.i27.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock26is_exception_handler_blockEv.exit.thread.i.i22.i.i.i, label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i

_ZNK2v88internal6maglev10BasicBlock26is_exception_handler_blockEv.exit.thread.i.i22.i.i.i: ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i25.i.i.i, %bb.i
  %i.eu = call noundef zeroext i1 @_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv(ptr noundef nonnull align 8 dereferenceable(88) %.011.i.i15.i.i.i)
  br i1 %i.eu, label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock26is_exception_handler_blockEv.exit.thread.i.i22.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.011.i.i15.i.i.i, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8            ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = and i64 %i.ey, 65535
  %i.fa = icmp ne i64 %i.ez, 317
  %.not17.i.i23.i.i.i = icmp eq ptr %i.ew, null
  %.not.i.i24.i.i.i = or i1 %.not17.i.i23.i.i.i, %i.fa
  br i1 %.not.i.i24.i.i.i, label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = call noundef zeroext i1 @_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv(ptr noundef nonnull align 8 dereferenceable(88) %i.fc)
  br i1 %i.fd, label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i, label %.preheader.i14.i.i.i

_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i: ; preds = %bb.k, %bb.j, %_ZNK2v88internal6maglev10BasicBlock26is_exception_handler_blockEv.exit.thread.i.i22.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i25.i.i.i, %.preheader.i14.i.i.i
  %i.fe = load i32, ptr %i.dy, align 4
  %i.ff = zext i32 %i.fe to i64
  %i.fg = load ptr, ptr %i.dx, align 8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ff
  store ptr %.011.i.i15.i.i.i, ptr %i.fh, align 8
  %.pre.i17.i.i.i = load i32, ptr %i.dy, align 4
  %.pre5.i18.i.i.i = load ptr, ptr %i.dx, align 8
  %.phi.trans.insert.i19.i.i.i = zext i32 %.pre.i17.i.i.i to i64
  %.phi.trans.insert6.i20.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre5.i18.i.i.i, i64 %.phi.trans.insert.i19.i.i.i
  %.pre7.i21.i.i.i = load ptr, ptr %.phi.trans.insert6.i20.i.i.i, align 8
  %.pre.i.i.i = load i8, ptr %i.ai, align 8, !range !15
  %i.fi = trunc nuw i8 %.pre.i.i.i to i1
  br i1 %i.fi, label %_ZN2v88internal6maglev6Switch15set_fallthroughEPNS1_10BasicBlockE.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZN2v88internal6maglev6Switch15set_fallthroughEPNS1_10BasicBlockE.exit.i.i.i: ; preds = %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i, %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit.i.i.i
  %i.fj = phi ptr [ %.pre7.i21.i.i.i, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit28.i.i.i ], [ %i.ed, %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit.i.i.i ]
  store ptr %i.fj, ptr %i.dv, align 8
  br label %_ZN2v88internal6maglev12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessor10PatchJumpsINS1_6SwitchEEEvPT_.exit.i.i

_ZN2v88internal6maglev12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessor10PatchJumpsINS1_6SwitchEEEvPT_.exit.i.i: ; preds = %_ZN2v88internal6maglev6Switch15set_fallthroughEPNS1_10BasicBlockE.exit.i.i.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %.val23.i.i = load ptr, ptr %0, align 8         ; 2 uses
  store ptr %.val23.i.i, ptr %3, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val23.i.i, i64 448 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8            ; 6 uses
  store ptr %i.fm, ptr %i.fk, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not.i.i48.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i48.i.i, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessor10PatchJumpsINS1_6SwitchEEEvPT_.exit.i.i
  store i16 0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  store i16 0, ptr %i.fo, align 2
  store ptr %3, ptr %i.fl, align 8
  br label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_6SwitchEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE.exit

bb.m:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessor10PatchJumpsINS1_6SwitchEEEvPT_.exit.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load i16, ptr %i.fp, align 8            ; 2 uses
  store i16 %i.fq, ptr %i.fn, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 18
  %i.fs = load i16, ptr %i.fr, align 2            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  store i16 %i.fs, ptr %i.ft, align 2
  store ptr %3, ptr %i.fl, align 8
  %.phi.trans.insert68.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 21
  %.pre69.i.i = load i8, ptr %.phi.trans.insert68.i.i, align 1, !range !15
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !range !15
  br label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_6SwitchEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE.exit

_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_133MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_6SwitchEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE.exit: ; preds = %.thread.i.i.i, %bb.m
  %.sink.i.i = phi i8 [ 1, %.thread.i.i.i ], [ %.pre.i.i, %bb.m ]
  %i.fu = phi i16 [ 0, %.thread.i.i.i ], [ %i.fq, %bb.m ]
  %i.fv = phi ptr [ %i.fo, %.thread.i.i.i ], [ %i.ft, %bb.m ]
  %storemerge.i.i63.i.i = phi i16 [ 0, %.thread.i.i.i ], [ %i.fs, %bb.m ]
  %i.fw = phi i8 [ 1, %.thread.i.i.i ], [ %.pre69.i.i, %bb.m ]
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 %.sink.i.i, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 %i.fw, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %1, align 8               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %.sroa.01.0.copyload.i.i = load i16, ptr %i.ga, align 2
  %i.gb = or i16 %.sroa.01.0.copyload.i.i, %i.fu
  store i16 %i.gb, ptr %i.fn, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 6
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.gc, align 2
  %i.gd = or i16 %.sroa.0.0.copyload.i.i, %storemerge.i.i63.i.i
  store i16 %i.gd, ptr %i.fv, align 2
  %.val.i.i = load ptr, ptr %0, align 8
  call void @_ZN2v88internal6maglev6Switch12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %.val.i.i, ptr noundef nonnull align 8 dereferenceable(20) %2) #20
  %i.ge = load ptr, ptr %i.fk, align 8
  %i.gf = load ptr, ptr %3, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 448
  store ptr %i.ge, ptr %i.gg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE7ProcessINS1_11BranchIfSmiEEENS1_13ProcessResultEPT_RKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.e = load atomic i8, ptr %i.d monotonic, align 1 ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = and i8 %i.e, 6
  %i.h = icmp eq i8 %i.g, 0
  %.not1.i.i = or i1 %i.h, %i.f
  br i1 %.not1.i.i, label %_ZN2v88internal6maglev12_GLOBAL__N_125SafepointingNodeProcessor7ProcessEPNS1_8NodeBaseERKNS1_15ProcessingStateE.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.i) #20
end_hunk_2
