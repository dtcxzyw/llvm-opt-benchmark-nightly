Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineTraceMetrics?download=true
inline.NumInlined: 2182
inline.NumDeleted: 1032
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4llvm19MachineTraceMetrics8Ensemble11updateDepthERNS0_14TraceBlockInfoERKNS_12MachineInstrERNS_9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhEE:bb.a
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 8, ptr %i.d, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !286
  switch i32 %i.f, label %bb.c [
    i32 74, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !358
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !346, !nonnull !210, !align !211
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !215
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val31 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val32 = load i24, ptr %i.m, align 8
  call fastcc void @_ZL10getPHIDepsRKN4llvm12MachineInstrERNS_15SmallVectorImplIN12_GLOBAL__N_17DataDepEEEPKNS_17MachineBasicBlockEPKNS_19MachineRegisterInfoE(ptr %.val31, i24 %.val32, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.g, ptr noundef %i.k)
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !346, !nonnull !210, !align !211
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !215
  %i.r = call fastcc noundef zeroext i1 @_ZL11getDataDepsRKN4llvm12MachineInstrERNS_15SmallVectorImplIN12_GLOBAL__N_17DataDepEEEPKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.q)
  br i1 %i.r, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !346, !nonnull !210, !align !211
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i32 0, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 8, ptr %i.x, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 8, ptr %i.aa, align 4, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !427 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load i24, ptr %i.ad, align 8            ; 2 uses
  %i.af = zext i24 %i.ae to i64
  %.idx.i = shl nuw nsw i64 %i.af, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i
  %.not163.i = icmp eq i24 %i.ae, 0
  br i1 %.not163.i, label %._crit_edge176.i, label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.e

._crit_edge.i:                                    ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !23  ; 2 uses
  %.pre194.i = load i32, ptr %i.w, align 8, !tbaa !25 ; 2 uses
  %i.al = zext i32 %.pre194.i to i64
  %.idx188.i = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx188.i
  %.not65172.i = icmp eq i32 %.pre194.i, 0
  br i1 %.not65172.i, label %._crit_edge176.i, label %.lr.ph175.i.preheader

.lr.ph175.i.preheader:                            ; preds = %._crit_edge.i
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !428, !noalias !443 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %._crit_edge176.i, label %.lr.ph175.i

bb.e:                                             ; preds = %.critedge.i, %.lr.ph165.i
  %.0164.i = phi ptr [ %i.ac, %.lr.ph165.i ], [ %i.di, %.critedge.i ] ; 6 uses
  %i.ap = load i32, ptr %.0164.i, align 8         ; 4 uses
  %i.aq = and i32 %i.ap, 255
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.0164.i, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !446 ; 6 uses
  %i.au = add i32 %i.at, -1
  %i.av = icmp ult i32 %i.au, 1073741823
  br i1 %i.av, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.aw = and i32 %i.ap, 16777216
  %.not149.i = icmp eq i32 %i.aw, 0
  br i1 %.not149.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = and i32 %i.ap, 83886080
  %i.ay = icmp eq i32 %i.ax, 83886080
  br i1 %i.ay, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.az = load i32, ptr %i.w, align 8, !tbaa !25  ; 2 uses
  %i.ba = load i32, ptr %i.x, align 4, !tbaa !26
  %.not.i.i = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !364

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 %i.at)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %5, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %i.at, ptr %i.bd, align 1
  %i.be = load i32, ptr %i.w, align 8, !tbaa !25
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.w, align 8, !tbaa !25
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i

bb.l:                                             ; preds = %bb.h
  %i.bg = call noundef i32 @_ZNK4llvm14MachineOperand12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.0164.i) #22 ; 2 uses
  %i.bh = load i32, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !26
  %.not.i69.i = icmp ult i32 %i.bh, %i.bi
  br i1 %.not.i69.i, label %bb.n, label %bb.m, !prof !364

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.bg)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bj = zext i32 %i.bh to i64
  %i.bk = load ptr, ptr %6, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  store i32 %i.bg, ptr %i.bl, align 1
  %i.bm = load i32, ptr %i.z, align 8, !tbaa !25
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.z, align 8, !tbaa !25
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i

bb.o:                                             ; preds = %bb.g
  %i.bo = and i32 %i.ap, 67108864
  %.not150.i = icmp eq i32 %i.bo, 0
  br i1 %.not150.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load i32, ptr %i.w, align 8, !tbaa !25  ; 2 uses
  %i.bq = load i32, ptr %i.x, align 4, !tbaa !26
  %.not.i70.i = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i70.i, label %bb.r, label %bb.q, !prof !364

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 %i.at)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %5, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.br
  store i32 %i.at, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.w, align 8, !tbaa !25
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.w, align 8, !tbaa !25
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i: ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %i.bw = load i32, ptr %.0164.i, align 8         ; 2 uses
  %i.bx = and i32 %i.bw, 805306368
  %or.cond.not.i.i = icmp ne i32 %i.bx, 0
  %i.by = and i32 %i.bw, 17825536
  %or.cond.not.i = icmp eq i32 %i.by, 16777216
  %or.cond.i = or i1 %or.cond.not.i.i, %or.cond.not.i
  br i1 %or.cond.i, label %.critedge.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i
  %i.bz = load ptr, ptr %i.ai, align 8, !tbaa !428, !noalias !447 ; 2 uses
  %.not151160.i = icmp eq ptr %i.bz, null
  br i1 %.not151160.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i
  %i.ca = load ptr, ptr %i.ah, align 8, !tbaa !450, !noalias !447
  %i.cb = zext nneg i32 %i.at to i64
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !451, !noalias !447 ; 2 uses
  %i.cf = lshr i32 %i.ce, 12
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = and i32 %i.ce, 4095
  %i.cj = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !25 ; 3 uses
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %.critedge68.i, %.lr.ph.i
  %.sroa.5129.0162.i = phi ptr [ %i.ch, %.lr.ph.i ], [ %i.de, %.critedge68.i ] ; 2 uses
  %.sroa.9131.0161.i = phi i32 [ %i.ci, %.lr.ph.i ], [ %i.dh, %.critedge68.i ] ; 3 uses
  %i.cl = zext i32 %.sroa.9131.0161.i to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !446
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %.not1519.i.i.i = icmp ugt i32 %i.ck, %i.co
  br i1 %.not1519.i.i.i, label %.lr.ph.i.i.i, label %.critedge68.i

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = add i32 %.01220.i.i.i, 256              ; 2 uses
  %.not15.i.i.i = icmp ult i32 %i.cp, %i.ck
  br i1 %.not15.i.i.i, label %.lr.ph.i.i.i, label %.critedge68.i, !llvm.loop !453

.lr.ph.i.i.i:                                     ; preds = %bb.s, %bb.t
  %.01220.i.i.i = phi i32 [ %i.cp, %bb.t ], [ %i.co, %bb.s ] ; 3 uses
  %i.cq = zext i32 %.01220.i.i.i to i64
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i, i64 %i.cq ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !454
  %.not.i.i72.i = icmp eq i32 %.sroa.9131.0161.i, %i.cs
  br i1 %.not.i.i72.i, label %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i, label %bb.t

_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i: ; preds = %.lr.ph.i.i.i
  %8 = icmp eq i32 %.01220.i.i.i, %i.ck
  br i1 %8, label %.critedge68.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !457 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !458
  %i.cx = call noundef i32 @_ZNK4llvm14MachineOperand12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.0164.i) #22
  %.sroa.4122.8.insert.ext.i = zext i32 %i.cx to i64
  %.sroa.4122.8.insert.shift.i = shl nuw i64 %.sroa.4122.8.insert.ext.i, 32
  %.sroa.2.8.insert.ext.i = zext i32 %i.cw to i64
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4122.8.insert.shift.i, %.sroa.2.8.insert.ext.i ; 2 uses
  %i.cy = load i32, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.cz = load i32, ptr %i.d, align 4, !tbaa !26
  %.not.i73.i = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i73.i, label %bb.w, label %bb.v, !prof !364

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_17DataDepELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.cu, i64 %.sroa.2.8.insert.insert.i)
  br label %.critedge.i

bb.w:                                             ; preds = %bb.u
  %i.da = zext i32 %i.cy to i64
  %.val.i.i = load ptr, ptr %7, align 8, !tbaa !23
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.da ; 2 uses
  store ptr %i.cu, ptr %i.db, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %.sroa.2.8.insert.insert.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.dc = load i32, ptr %i.c, align 8, !tbaa !25
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.c, align 8, !tbaa !25
  br label %.critedge.i

.critedge68.i:                                    ; preds = %bb.t, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i, %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.5129.0162.i, i64 2
  %i.df = load i16, ptr %.sroa.5129.0162.i, align 2, !tbaa !459 ; 2 uses
  %i.dg = sext i16 %i.df to i32
  %i.dh = add i32 %.sroa.9131.0161.i, %i.dg
  %.not.i.i74.i = icmp eq i16 %i.df, 0
  br i1 %.not.i.i74.i, label %.critedge.i, label %bb.s

.critedge.i:                                      ; preds = %.critedge68.i, %bb.w, %bb.v, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i, %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit.i, %bb.f, %bb.e
  %i.di = getelementptr inbounds nuw i8, ptr %.0164.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.di, %i.ag
  br i1 %.not.i, label %._crit_edge.i, label %bb.e

._crit_edge176.i:                                 ; preds = %._crit_edge171.i, %.lr.ph175.i.preheader, %._crit_edge.i, %bb.d
  %i.dj = load ptr, ptr %6, align 8, !tbaa !23    ; 4 uses
  %i.dk = load i32, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %.idx189.i = shl nuw nsw i64 %i.dl, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx189.i
  %.not66183.i = icmp eq i32 %i.dk, 0
  br i1 %.not66183.i, label %._crit_edge187.i, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %._crit_edge176.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !428, !noalias !460 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %._crit_edge187.i, label %.lr.ph186.i.split

.lr.ph175.ithread-pre-split:                      ; preds = %._crit_edge171.i
  %.pr = load ptr, ptr %i.ai, align 8, !tbaa !428, !noalias !443
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.lr.ph175.i.preheader, %.lr.ph175.ithread-pre-split
  %i.dv = phi ptr [ %.pr, %.lr.ph175.ithread-pre-split ], [ %i.an, %.lr.ph175.i.preheader ] ; 2 uses
  %.062173.i = phi ptr [ %i.ef, %.lr.ph175.ithread-pre-split ], [ %.pre.i, %.lr.ph175.i.preheader ] ; 2 uses
  %.not152166.i = icmp eq ptr %i.dv, null
  br i1 %.not152166.i, label %._crit_edge171.i, label %.lr.ph170.preheader.i

.lr.ph170.preheader.i:                            ; preds = %.lr.ph175.i
  %i.dw = load ptr, ptr %i.ah, align 8, !tbaa !450, !noalias !443
  %.sroa.015.0.copyload.i = load i32, ptr %.062173.i, align 4, !tbaa !9
  %i.dx = zext i32 %.sroa.015.0.copyload.i to i64
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !451, !noalias !443 ; 2 uses
  %i.eb = lshr i32 %i.ea, 12
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ec
  %i.ee = and i32 %i.ea, 4095
  %.pre195.i = load i32, ptr %i.ak, align 8, !tbaa !25
  br label %.lr.ph170.i

._crit_edge171.i:                                 ; preds = %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseERKS2_.exit.i, %.lr.ph175.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.062173.i, i64 4 ; 2 uses
  %.not65.i = icmp eq ptr %i.ef, %i.am
  br i1 %.not65.i, label %._crit_edge176.i, label %.lr.ph175.ithread-pre-split, !llvm.loop !463

.lr.ph170.i:                                      ; preds = %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseERKS2_.exit.i, %.lr.ph170.preheader.i
  %i.eg = phi i32 [ %i.fk, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseERKS2_.exit.i ], [ %.pre195.i, %.lr.ph170.preheader.i ] ; 6 uses
  %.sroa.5109.0168.i = phi ptr [ %i.fl, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseERKS2_.exit.i ], [ %i.ed, %.lr.ph170.preheader.i ] ; 2 uses
  %.sroa.9111.0167.i = phi i32 [ %i.fo, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseERKS2_.exit.i ], [ %i.ee, %.lr.ph170.preheader.i ] ; 3 uses
  %i.eh = zext i32 %.sroa.9111.0167.i to i64
  %i.ei = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !446
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  %.not1519.i.i.i.i = icmp ugt i32 %i.eg, %i.el
  %.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !23 ; 3 uses
  br i1 %.not1519.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.em = add i32 %.01220.i.i.i.i, 256            ; 2 uses
  %.not15.i.i.i.i = icmp ult i32 %i.em, %i.eg
  br i1 %.not15.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !453

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph170.i, %bb.x
  %.01220.i.i.i.i = phi i32 [ %i.em, %bb.x ], [ %i.el, %.lr.ph170.i ] ; 2 uses
  %i.en = zext i32 %.01220.i.i.i.i to i64
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i.i, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !454
  %.not.i.i.i.i = icmp eq i32 %.sroa.9111.0167.i, %i.ep
  br i1 %.not.i.i.i.i, label %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.loopexit.i.i, label %bb.x

._crit_edge.i.i.i.i:                              ; preds = %bb.x, %.lr.ph170.i
  %i.eq = zext i32 %i.eg to i64                   ; 2 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i.i, i64 %i.eq
  br label %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i.i

_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i = zext i32 %i.eg to i64
  br label %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i.i

_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i.i: ; preds = %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.loopexit.i.i, %._crit_edge.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.loopexit.i.i ], [ %i.eq, %._crit_edge.i.i.i.i ]
  %.3.i.i.i.i = phi ptr [ %i.eo, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.loopexit.i.i ], [ %i.er, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %.pre.i.i.i.i, i64 %.pre-phi.i.i ; 2 uses
  %.not153.i = icmp eq ptr %.3.i.i.i.i, %i.es
  br i1 %.not153.i, label %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseERKS2_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i.i
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -24 ; 2 uses
  %.not.i.i77.i = icmp eq ptr %.3.i.i.i.i, %i.et
  br i1 %.not.i.i77.i, label %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.3.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.et, i64 20, i1 false), !tbaa.struct !464
  %i.eu = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.ev = load i32, ptr %i.ak, align 8, !tbaa !25
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -24
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !454
  %i.fa = ptrtoint ptr %.3.i.i.i.i to i64
  %i.fb = ptrtoint ptr %i.eu to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = sdiv exact i64 %i.fc, 24
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = zext i32 %i.ez to i64
  %i.fg = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 %i.fe, ptr %i.fh, align 1, !tbaa !446
  %.pre.i.i78.i = load i32, ptr %i.ak, align 8, !tbaa !25
  br label %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i.i

_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i.i: ; preds = %bb.z, %bb.y
  %i.fi = phi i32 [ %.pre.i.i78.i, %bb.z ], [ %i.eg, %bb.y ]
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  store i32 %i.fj, ptr %i.ak, align 8, !tbaa !25
  br label %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseERKS2_.exit.i

_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseERKS2_.exit.i: ; preds = %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i.i, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i.i
  %i.fk = phi i32 [ %i.eg, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE4findERKS2_.exit.i.i ], [ %i.fj, %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhE5eraseEPS1_.exit.i.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.5109.0168.i, i64 2
  %i.fm = load i16, ptr %.sroa.5109.0168.i, align 2, !tbaa !459 ; 2 uses
  %i.fn = sext i16 %i.fm to i32
  %i.fo = add i32 %.sroa.9111.0167.i, %i.fn
  %.not.i.i79.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i79.i, label %._crit_edge171.i, label %.lr.ph170.i

._crit_edge187.loopexit.i.loopexit65:             ; preds = %._crit_edge182.i
  %.pre199.i.pre = load ptr, ptr %6, align 8, !tbaa !23
  br label %._crit_edge187.i

._crit_edge187.i:                                 ; preds = %._crit_edge187.loopexit.i.loopexit65, %.lr.ph186.i, %._crit_edge176.i
  %i.fp = phi ptr [ %i.dj, %._crit_edge176.i ], [ %.pre199.i.pre, %._crit_edge187.loopexit.i.loopexit65 ], [ %i.dj, %.lr.ph186.i ] ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.y
  br i1 %i.fq, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge187.i
  call void @free(ptr noundef %i.fp) #22
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i:          ; preds = %bb.aa, %._crit_edge187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fr = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.v
  br i1 %i.fs, label %_ZL23updatePhysDepsDownwardsPKN4llvm12MachineInstrERNS_15SmallVectorImplIN12_GLOBAL__N_17DataDepEEERNS_9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhEEPKNS_18TargetRegisterInfoE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i
  call void @free(ptr noundef %i.fr) #22
  br label %_ZL23updatePhysDepsDownwardsPKN4llvm12MachineInstrERNS_15SmallVectorImplIN12_GLOBAL__N_17DataDepEEERNS_9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhEEPKNS_18TargetRegisterInfoE.exit

.lr.ph186.i.splitthread-pre-split:                ; preds = %._crit_edge182.i
  %.pr105 = load ptr, ptr %i.do, align 8, !tbaa !428, !noalias !460
  br label %.lr.ph186.i.split

.lr.ph186.i.split:                                ; preds = %.lr.ph186.i, %.lr.ph186.i.splitthread-pre-split
  %i.ft = phi ptr [ %.pr105, %.lr.ph186.i.splitthread-pre-split ], [ %i.dt, %.lr.ph186.i ] ; 2 uses
  %.061184.i = phi ptr [ %i.gj, %.lr.ph186.i.splitthread-pre-split ], [ %i.dj, %.lr.ph186.i ] ; 2 uses
  %i.fu = load i32, ptr %.061184.i, align 4, !tbaa !9 ; 2 uses
  %.not154177.i = icmp eq ptr %i.ft, null
  br i1 %.not154177.i, label %._crit_edge182.i, label %.lr.ph181.preheader.i

.lr.ph181.preheader.i:                            ; preds = %.lr.ph186.i.split
  %i.fv = load ptr, ptr %i.dn, align 8, !tbaa !450, !noalias !460
  %i.fw = load ptr, ptr %i.ab, align 8, !tbaa !427
  %i.fx = zext i32 %i.fu to i64
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !446
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !451, !noalias !460 ; 2 uses
  %i.gf = lshr i32 %i.ge, 12
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.gg
  %i.gi = and i32 %i.ge, 4095
  %.pre196.i = load i32, ptr %i.dr, align 8, !tbaa !25
  %.pre.i.i.i84.pre.i = load ptr, ptr %3, align 8, !tbaa !23
  br label %.lr.ph181.i

._crit_edge182.i:                                 ; preds = %_ZN4llvm9SparseSetINS_11LiveRegUnitENS_9MCRegUnitENS_16MCRegUnitToIndexEhEixERKS2_.exit.i, %.lr.ph186.i.split
  %i.gj = getelementptr inbounds nuw i8, ptr %.061184.i, i64 4 ; 2 uses
  %.not66.i = icmp eq ptr %i.gj, %i.dm
  br i1 %.not66.i, label %._crit_edge187.loopexit.i.loopexit65, label %.lr.ph186.i.splitthread-pre-split, !llvm.loop !466
end_hunk_0
