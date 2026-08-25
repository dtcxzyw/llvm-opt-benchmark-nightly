Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerExpectIntrinsic?download=true
inline.NumInlined: 864
inline.NumDeleted: 587
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm24LowerExpectIntrinsicPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a

bb.cw:                                            ; preds = %bb.cv
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qe = load i32, ptr %i.qd, align 4            ; 2 uses
  %i.qf = and i32 %i.qe, 1073741824
  %.not.i.i.i68.i106.i = icmp eq i32 %i.qf, 0
  br i1 %.not.i.i.i68.i106.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qg = getelementptr inbounds i8, ptr %i.qb, i64 -8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !83
  br label %_ZNK4llvm4User10getOperandEj.exit.i.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.qi = and i32 %i.qe, 268435455
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds [32 x i8], ptr %i.qb, i64 %i.qk
  br label %_ZNK4llvm4User10getOperandEj.exit.i.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i.i:          ; preds = %bb.cy, %bb.cx
  %i.qm = phi ptr [ %i.qh, %bb.cx ], [ %i.ql, %bb.cy ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !34
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24 ; 2 uses
  %i.qq = load i32, ptr %i.p, align 8, !tbaa !40, !alias.scope !113
  %i.qr = icmp ult i32 %i.qq, 65
  br i1 %i.qr, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i.i.i
  %i.qs = load i64, ptr %i.qp, align 8, !tbaa !42
  %i.qt = load i64, ptr %7, align 8, !tbaa !42, !alias.scope !113
  %i.qu = xor i64 %i.qt, %i.qs
  store i64 %i.qu, ptr %7, align 8, !tbaa !42, !alias.scope !113
  br label %_ZN4llvm5APInteOERKS0_.exit.i.i.i

bb.da:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i.i.i
  call void @_ZN4llvm5APInt17xorAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.qp) #13
  br label %_ZN4llvm5APInteOERKS0_.exit.i.i.i

bb.db:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !113
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load i32, ptr %i.qx, align 8
  %i.qz = lshr i32 %i.qy, 8
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef %i.qz) #13
  %i.ra = load i32, ptr %i.p, align 8, !tbaa !40, !alias.scope !113
  %i.rb = icmp ult i32 %i.ra, 65
  br i1 %i.rb, label %_ZN4llvm5APIntD2Ev.exit.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rc = load ptr, ptr %7, align 8, !tbaa !42, !alias.scope !113 ; 2 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %_ZN4llvm5APIntD2Ev.exit.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_ZdaPv(ptr noundef nonnull %i.rc) #14
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i:                    ; preds = %bb.dd, %bb.dc, %bb.db
  %i.re = load i64, ptr %4, align 8, !noalias !113
  store i64 %i.re, ptr %7, align 8, !alias.scope !113
  %i.rf = load i32, ptr %i.r, align 8, !tbaa !40, !noalias !113
  store i32 %i.rf, ptr %i.p, align 8, !tbaa !40, !alias.scope !113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !113
  br label %_ZN4llvm5APInteOERKS0_.exit.i.i.i

bb.de:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !113
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load i32, ptr %i.ri, align 8
  %i.rk = lshr i32 %i.rj, 8
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef %i.rk) #13
  %i.rl = load i32, ptr %i.p, align 8, !tbaa !40, !alias.scope !113
  %i.rm = icmp ult i32 %i.rl, 65
  br i1 %i.rm, label %_ZN4llvm5APIntD2Ev.exit10.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rn = load ptr, ptr %7, align 8, !tbaa !42, !alias.scope !113 ; 2 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %_ZN4llvm5APIntD2Ev.exit10.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZdaPv(ptr noundef nonnull %i.rn) #14
  br label %_ZN4llvm5APIntD2Ev.exit10.i.i.i

_ZN4llvm5APIntD2Ev.exit10.i.i.i:                  ; preds = %bb.dg, %bb.df, %bb.de
  %i.rp = load i64, ptr %5, align 8, !noalias !113
  store i64 %i.rp, ptr %7, align 8, !alias.scope !113
  %i.rq = load i32, ptr %i.q, align 8, !tbaa !40, !noalias !113
  store i32 %i.rq, ptr %i.p, align 8, !tbaa !40, !alias.scope !113
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !113
  br label %_ZN4llvm5APInteOERKS0_.exit.i.i.i

bb.dh:                                            ; preds = %bb.cv
  unreachable

_ZN4llvm5APInteOERKS0_.exit.i.i.i:                ; preds = %_ZN4llvm5APIntD2Ev.exit10.i.i.i, %_ZN4llvm5APIntD2Ev.exit.i.i.i, %bb.da, %bb.cz
  %.not.i67.i.i = icmp eq ptr %i.qa, %i.pw
  br i1 %.not.i67.i.i, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_0clERKNS_5APIntE.exit.i.i", label %bb.cv

"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_0clERKNS_5APIntE.exit.i.i": ; preds = %_ZN4llvm5APInteOERKS0_.exit.i.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i
  %i.rr = load i32, ptr %i.pi, align 8, !tbaa !40
  %i.rs = icmp ult i32 %i.rr, 65
  br i1 %i.rs, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_0clERKNS_5APIntE.exit.i.i"
  %i.rt = load i64, ptr %i.nr, align 8, !tbaa !42
  %i.ru = load i64, ptr %7, align 8, !tbaa !42
  %i.rv = icmp eq i64 %i.rt, %i.ru
  br label %_ZNK4llvm5APInteqERKS0_.exit.i.i

bb.dj:                                            ; preds = %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_0clERKNS_5APIntE.exit.i.i"
  %i.rw = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.nr, ptr noundef nonnull align 8 dereferenceable(12) %7) #15
  br label %_ZNK4llvm5APInteqERKS0_.exit.i.i

_ZNK4llvm5APInteqERKS0_.exit.i.i:                 ; preds = %bb.dj, %bb.di
  %.0.i.i.i = phi i1 [ %i.rv, %bb.di ], [ %i.rw, %bb.dj ]
  %i.rx = xor i1 %.039.i.i, %.0.i.i.i
  br i1 %i.rx, label %bb.dk, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.thread.i.i"

bb.dk:                                            ; preds = %_ZNK4llvm5APInteqERKS0_.exit.i.i
  %.val56.val.val.i.i = load ptr, ptr %i.ph, align 8, !tbaa !83
  %.val56.val.val57.i.i = load i32, ptr %i.pj, align 4, !tbaa !127
  %i.ry = zext i32 %.val56.val.val57.i.i to i64
  %i.rz = getelementptr inbounds nuw [32 x i8], ptr %.val56.val.val.i.i, i64 %i.ry
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv.i.i
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !131 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 48
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !26
  %i.se = getelementptr inbounds i8, ptr %i.sd, i64 -24 ; 2 uses
  %i.sf = load i8, ptr %i.se, align 8, !tbaa !29
  %.not.i69.i.i = icmp eq i8 %i.sf, 33
  br i1 %.not.i69.i.i, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.i.i", label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sg = call noundef ptr @_ZNK4llvm10BasicBlock20getSinglePredecessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.sb) #13 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.sg, null
  br i1 %.not11.i.i.i, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.thread.i.i", label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 48
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !26
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -24 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 8, !tbaa !29
  %i.sl = icmp eq i8 %i.sk, 33
  br i1 %i.sl, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.i.i", label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.thread.i.i"

"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.i.i": ; preds = %bb.dm, %bb.dk
  %.1.i.i.i = phi ptr [ %i.se, %bb.dk ], [ %i.sj, %bb.dm ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.sm = load ptr, ptr %i.pk, align 8, !tbaa !64
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !65, !nonnull !19, !align !70
  store ptr %i.sn, ptr %8, align 8, !tbaa !71
  %i.so = load ptr, ptr %i.ph, align 8, !tbaa !83
  %i.sp = load i32, ptr %i.pj, align 4, !tbaa !127
  %i.sq = zext i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [32 x i8], ptr %i.so, i64 %i.sq
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv.i.i
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !131 ; 4 uses
  %i.su = load ptr, ptr %i.mv, align 8, !tbaa !34, !nonnull !19, !noundef !19
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 36
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !63
  %i.sx = icmp eq i32 %i.sw, 100
  br i1 %i.sx, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.i.i"
  %i.sy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL20UnlikelyBranchWeight, i64 120), align 8, !tbaa !72, !noalias !132
  %i.sz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL18LikelyBranchWeight, i64 120), align 8, !tbaa !72, !noalias !132
  br label %_ZL15getBranchWeightjPN4llvm8CallInstEi.exit.i102.i

bb.do:                                            ; preds = %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.i.i"
  %i.ta = load i32, ptr %i.nh, align 4, !noalias !137
  %i.tb = and i32 %i.ta, 268435455
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = sub nsw i64 0, %i.tc
  %i.te = getelementptr inbounds [32 x i8], ptr %i.io, i64 %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 64
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !34, !noalias !137
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 24
  %i.ti = call noundef double @_ZNK4llvm7APFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24) %i.th) #13, !noalias !137 ; 2 uses
  %i.tj = fsub double 1.000000e+00, %i.ti
  %i.tk = insertelement <2 x double> poison, double %i.ti, i64 0
  %i.tl = insertelement <2 x double> %i.tk, double %i.tj, i64 1
  %i.tm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> splat (double f0x41DFFFFFFF800000), <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.tn = extractelement <2 x double> %i.tm, i64 0
  %i.to = call double @llvm.ceil.f64(double %i.tn)
  %i.tp = fptoui double %i.to to i32
  %i.tq = extractelement <2 x double> %i.tm, i64 1
  %i.tr = call double @llvm.ceil.f64(double %i.tq)
  %i.ts = fptoui double %i.tr to i32
  br label %_ZL15getBranchWeightjPN4llvm8CallInstEi.exit.i102.i

_ZL15getBranchWeightjPN4llvm8CallInstEi.exit.i102.i: ; preds = %bb.do, %bb.dn
  %.sink7.i.i103.i = phi i32 [ %i.sy, %bb.dn ], [ %i.ts, %bb.do ] ; 2 uses
  %.sink.i.i104.i = phi i32 [ %i.sz, %bb.dn ], [ %i.tp, %bb.do ] ; 2 uses
  %spec.select.i105.i = select i1 %.039.i.i, i32 %.sink7.i.i103.i, i32 %.sink.i.i104.i ; 2 uses
  %spec.select120.i.i = select i1 %.039.i.i, i32 %.sink.i.i104.i, i32 %.sink7.i.i103.i ; 2 uses
  %i.tt = getelementptr inbounds i8, ptr %.1.i.i.i, i64 -64 ; 2 uses
  %i.tu = getelementptr inbounds i8, ptr %.1.i.i.i, i64 -32
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !34 ; 2 uses
  %i.tw = icmp eq ptr %i.st, %i.tv
  br i1 %i.tw, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %_ZL15getBranchWeightjPN4llvm8CallInstEi.exit.i102.i
  %i.tx = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 40
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !138
  %i.tz = icmp eq ptr %i.st, %i.ty
  br i1 %i.tz, label %bb.dq, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit.thread.i.i"

bb.dq:                                            ; preds = %bb.dp
  %i.ua = load ptr, ptr %i.pl, align 8, !tbaa !138 ; 2 uses
  %i.ub = icmp eq ptr %i.tv, %i.ua
  br i1 %i.ub, label %bb.dr, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit.i.i"

bb.dr:                                            ; preds = %bb.dq, %_ZL15getBranchWeightjPN4llvm8CallInstEi.exit.i102.i
  %i.uc = call noundef ptr @_ZN4llvm9MDBuilder19createBranchWeightsEjjb(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %spec.select120.i.i, i32 noundef %spec.select.i105.i, i1 noundef zeroext true) #13
  br label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.sink.split.i.i"

"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit.i.i": ; preds = %bb.dq
  %i.ud = load ptr, ptr %i.tt, align 8, !tbaa !34 ; 2 uses
  %i.ue = icmp eq ptr %i.st, %i.ud
  %i.uf = icmp eq ptr %i.ud, %i.ua
  %or.cond.i = or i1 %i.ue, %i.uf
  br i1 %or.cond.i, label %bb.ds, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.i.i"

"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit.thread.i.i": ; preds = %bb.dp
  %i.ug = load ptr, ptr %i.tt, align 8, !tbaa !34
  %i.uh = icmp eq ptr %i.st, %i.ug
  br i1 %i.uh, label %bb.ds, label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.i.i"

bb.ds:                                            ; preds = %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit.thread.i.i", %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit.i.i"
  %i.ui = call noundef ptr @_ZN4llvm9MDBuilder19createBranchWeightsEjjb(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %spec.select.i105.i, i32 noundef %spec.select120.i.i, i1 noundef zeroext true) #13
  br label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.sink.split.i.i"

"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.sink.split.i.i": ; preds = %bb.ds, %bb.dr
  %.sink.i.i = phi ptr [ %i.ui, %bb.ds ], [ %i.uc, %bb.dr ]
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %.1.i.i.i, i32 noundef 2, ptr noundef %.sink.i.i) #13
  br label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.i.i"

"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.i.i": ; preds = %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.sink.split.i.i", %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit.thread.i.i", %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.thread.i.i"

"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.thread.i.i": ; preds = %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_2clEPNS_10BasicBlockE.exit76.i.i", %bb.dm, %bb.dl, %_ZNK4llvm5APInteqERKS0_.exit.i.i
  %i.uj = load i32, ptr %i.p, align 8, !tbaa !40
  %i.uk = icmp ugt i32 %i.uj, 64
  br i1 %i.uk, label %bb.dt, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.dt:                                            ; preds = %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.thread.i.i"
  %i.ul = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.um = icmp eq ptr %i.ul, null
  br i1 %i.um, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_ZdaPv(ptr noundef nonnull %i.ul) #14
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.du, %bb.dt, %"_ZZL12handlePhiDefPN4llvm8CallInstEENK3$_1clEj.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i, %bb.cr
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not46.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.pm
  br i1 %.not46.i.i, label %.critedge.i.i, label %bb.cr, !llvm.loop !139

.critedge.i.i:                                    ; preds = %bb.cm, %bb.cf, %bb.dv, %bb.cq
  %i.un = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.m
  br i1 %i.uo, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %.critedge.i.i
  call void @free(ptr noundef %i.un) #13
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i: ; preds = %bb.dw, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pre.i = load i32, ptr %i.nh, align 4
  %.pre156.i = and i32 %.pre.i, 268435455
  %.pre157.i = zext nneg i32 %.pre156.i to i64
  %.pre159.i = sub nsw i64 0, %.pre157.i
  %.phi.trans.insert = getelementptr inbounds [32 x i8], ptr %i.io, i64 %.pre159.i
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  br label %_ZL12handlePhiDefPN4llvm8CallInstE.exit.i

_ZL12handlePhiDefPN4llvm8CallInstE.exit.i:        ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i, %bb.cc
  %i.up = phi ptr [ %i.nn, %bb.cc ], [ %.pre, %_ZN4llvm11SmallVectorIPNS_11InstructionELj4EED2Ev.exit.i.i ]
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef %i.up) #13
  %i.uq = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.io) #13 ; 0 uses
  br label %_ZL17handleBrSelExpectIN4llvm10SelectInstEEbRT_.exit.thread.i

_ZL17handleBrSelExpectIN4llvm10SelectInstEEbRT_.exit.thread.i: ; preds = %_ZL12handlePhiDefPN4llvm8CallInstE.exit.i, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i, %bb.cb, %bb.ca, %bb.bz, %bb.be, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i69.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i68.i, %bb.bd, %.thread88.i63.i, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %.lr.ph.i
  %.3.i = phi i1 [ %.1144.i, %.lr.ph.i ], [ %.1144.i, %bb.bd ], [ %.1144.i, %bb.bz ], [ true, %_ZL12handlePhiDefPN4llvm8CallInstE.exit.i ], [ %.1144.i, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i ], [ %.1144.i, %bb.ay ], [ %.1144.i, %bb.az ], [ %.1144.i, %bb.bb ], [ %.1144.i, %bb.ax ], [ %.1144.i, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i69.i ], [ %.1144.i, %bb.be ], [ %.1144.i, %bb.ba ], [ %.1144.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i68.i ], [ %.1144.i, %.thread88.i63.i ], [ %.1144.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i ], [ %.1144.i, %bb.ca ], [ %.1144.i, %bb.cb ] ; 2 uses
  %.not134.i = icmp eq ptr %i.in, %i.u
  br i1 %.not134.i, label %._crit_edge.i, label %.lr.ph.i

_ZL20lowerExpectIntrinsicRN4llvm8FunctionE.exit:  ; preds = %._crit_edge.i
  br i1 %.1.lcssa.i, label %bb.dx, label %_ZL20lowerExpectIntrinsicRN4llvm8FunctionE.exit.thread

bb.dx:                                            ; preds = %_ZL20lowerExpectIntrinsicRN4llvm8FunctionE.exit
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ur, i8 0, i64 64, i1 false), !alias.scope !140
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.us, ptr %0, align 8, !tbaa !20, !alias.scope !140
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ut, align 8, !tbaa !143, !alias.scope !140
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.uu, align 4, !tbaa !144, !alias.scope !140
  store i8 1, ptr %i.ur, align 8, !tbaa !14, !alias.scope !140
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.uw, ptr %i.uv, align 8, !tbaa !20, !alias.scope !140
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.ux, align 8, !tbaa !143, !alias.scope !140
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.uy, align 8, !tbaa !14, !alias.scope !140
  br label %bb.dy

_ZL20lowerExpectIntrinsicRN4llvm8FunctionE.exit.thread: ; preds = %bb.a, %_ZL20lowerExpectIntrinsicRN4llvm8FunctionE.exit
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !20, !alias.scope !145
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.uz, align 8, !tbaa !143, !alias.scope !145
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.vb, align 8, !tbaa !14, !alias.scope !145
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.vd, ptr %i.vc, align 8, !tbaa !20, !alias.scope !145
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.ve, align 8, !tbaa !143, !alias.scope !145
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.vf, align 4, !tbaa !144, !alias.scope !145
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.vg, align 8, !tbaa !14, !alias.scope !145
  store i32 1, ptr %i.va, align 4, !tbaa !144, !alias.scope !145, !noalias !148
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !151, !alias.scope !145, !noalias !148
  br label %bb.dy

bb.dy:                                            ; preds = %_ZL20lowerExpectIntrinsicRN4llvm8FunctionE.exit.thread, %bb.dx
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

declare { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm9MDBuilder19createBranchWeightsEjjb(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm9misexpect28checkFrontendInstrumentationERKNS_11InstructionENS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef double @_ZNK4llvm7APFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm9misexpect22checkExpectAnnotationsERKNS_11InstructionENS_8ArrayRefIjEEb(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm16setBranchWeightsERNS_11InstructionENS_8ArrayRefIjEEbb(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm7find_ifINS_14iterator_rangeINS_10SwitchInst16CaseIteratorImplINS2_14CaseHandleImplIKS2_KNS_11ConstantIntEKNS_10BasicBlockEEEEEEEZNKS2_13findCaseValueEPS7_EUlRKSA_E_EEDaOT_T0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 15 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i8 = load ptr, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i10 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i9, align 8 ; 3 uses
  %i.b = sub nsw i64 %.sroa.2.0.copyload.i.i.i10, %.sroa.2.0.copyload.i.i.i ; 2 uses
  %i.c = ashr i64 %i.b, 2                         ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !152
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.i ; 4 uses
  %i.k = and i64 %i.b, -4
  %i.l = add i64 %i.k, %.sroa.2.0.copyload.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.077.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.sroa.15.076.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.f ] ; 6 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sroa.15.076.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i64 %.sroa.15.076.i.i.i, 1       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i64 %.sroa.15.076.i.i.i, 2       ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i64 %.sroa.15.076.i.i.i, 3       ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !154
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %_ZSt7find_ifIN4llvm10SwitchInst16CaseIteratorImplINS1_14CaseHandleImplIKS1_KNS0_11ConstantIntEKNS0_10BasicBlockEEEEEZNKS1_13findCaseValueEPS6_EUlRKS9_E_ET_SF_SF_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i64 %.sroa.15.076.i.i.i, 4
  %i.ac = add nsw i64 %.077.i.i.i, -1
  %i.ad = icmp sgt i64 %.077.i.i.i, 1
  br i1 %i.ad, label %bb.b, label %._crit_edge.i.i.i, !llvm.loop !156

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.a
  %.sroa.15.0.lcssa.i.i.i = phi i64 [ %.sroa.2.0.copyload.i.i.i, %bb.a ], [ %i.l, %bb.f ] ; 6 uses
  %i.ae = sub nsw i64 %.sroa.2.0.copyload.i.i.i10, %.sroa.15.0.lcssa.i.i.i
  switch i64 %i.ae, label %bb.l [
end_hunk_0
