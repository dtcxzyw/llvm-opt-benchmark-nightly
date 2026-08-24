Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonCastOperator?download=true
inline.NumInlined: 36269
inline.NumDeleted: 7697
loop-unroll.NumCompletelyUnrolled: 285
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN3fmt3v116detail6bigint6squareEv:bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #48
  unreachable

.noexc.i:                                         ; preds = %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit.i, %bb.i, %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i
  %i.aa = phi i64 [ %i.n, %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i ], [ %.pre.pre, %bb.i ], [ %i.n, %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit.i ] ; 2 uses
  %i.ab = phi i64 [ %i.i, %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.i ], [ %.0.i, %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ab)
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !1434
  %i.ae = zext i32 %i.d to i64                    ; 3 uses
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %.noexc.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1423
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.l, !inline_history !1485

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !1426
  br label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %.noexc.i, %.noexc
  %i.ai = phi i64 [ %i.aa, %.noexc.i ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !1434
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !1425  ; 4 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %.loopexit
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bp, %.loopexit ] ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv71, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader46
  %n.vec = and i64 %indvars.iv71, 9223372036854775804 ; 4 uses
  %i.am = sub nsw i64 %indvars.iv, %n.vec
  %i.an = insertelement <2 x i128> <i128 poison, i128 0>, i128 %.03750, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i128> [ %i.an, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi146 = phi <2 x i128> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.ao = sub i64 %indvars.iv, %index
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %wide.load = load <2 x i32>, ptr %i.ap, align 4, !tbaa !39
  %wide.load147 = load <2 x i32>, ptr %i.aq, align 4, !tbaa !39
  %i.ar = zext <2 x i32> %wide.load to <2 x i64>
  %i.as = zext <2 x i32> %wide.load147 to <2 x i64>
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -12
  %wide.load148 = load <2 x i32>, ptr %i.au, align 4, !tbaa !39
  %wide.load149 = load <2 x i32>, ptr %i.av, align 4, !tbaa !39
  %reverse = shufflevector <2 x i32> %wide.load148, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse150 = shufflevector <2 x i32> %wide.load149, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = zext <2 x i32> %reverse to <2 x i64>
  %i.ax = zext <2 x i32> %reverse150 to <2 x i64>
  %i.ay = mul nuw <2 x i64> %i.aw, %i.ar
  %i.az = mul nuw <2 x i64> %i.ax, %i.as
  %i.ba = zext <2 x i64> %i.ay to <2 x i128>
  %i.bb = zext <2 x i64> %i.az to <2 x i128>
  %i.bc = add <2 x i128> %vec.phi, %i.ba          ; 2 uses
  %i.bd = add <2 x i128> %vec.phi146, %i.bb       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1486

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i128> %i.bd, %i.bc
  %i.bf = call i128 @llvm.vector.reduce.add.v2i128(<2 x i128> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %indvars.iv71, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader46, %middle.block
  %indvars.iv64.ph = phi i64 [ 0, %.preheader46 ], [ %n.vec, %middle.block ]
  %indvars.iv62.ph = phi i64 [ %indvars.iv, %.preheader46 ], [ %i.am, %middle.block ]
  %.147.ph = phi i128 [ %.03750, %.preheader46 ], [ %i.bf, %middle.block ]
  br label %scalar.ph

.preheader.loopexit:                              ; preds = %.loopexit
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bp, %.preheader.loopexit ]
  %i.bg = icmp sgt i32 %i.d, %i.c
  br i1 %i.bg, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.bh = load ptr, ptr %1, align 8               ; 4 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.bi = ashr exact i64 %sext, 32                ; 5 uses
  %sext109 = add i64 %sext, -4294967296
  %i.bj = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.bj, %i.bi
  %i.bk = add i32 %i.c, -2
  %i.bl = getelementptr [4 x i8], ptr %i.bh, i64 %i.bi
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa140 = phi i128 [ %i.bf, %middle.block ], [ %i.by, %scalar.ph ] ; 2 uses
  %i.bn = trunc i128 %.lcssa140 to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !39
  %i.bp = lshr i128 %.lcssa140, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !1487

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %scalar.ph ], [ %indvars.iv64.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %scalar.ph ], [ %indvars.iv62.ph, %scalar.ph.preheader ] ; 2 uses
  %.147 = phi i128 [ %i.by, %scalar.ph ], [ %.147.ph, %scalar.ph.preheader ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !39
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !39
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw i64 %i.bv, %i.bs
  %i.bx = zext i64 %i.bw to i128
  %i.by = add i128 %.147, %i.bx                   ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next65, %indvars.iv71
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !1488

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.bz = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.ca = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.ca, i32 1) ; 2 uses
  %i.cb = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %.lr.ph143, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph143
  %i.cd = trunc nuw i64 %i.cg to i32              ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %.lr.ph143, label %.critedge.i, !llvm.loop !1482

.lr.ph143:                                        ; preds = %._crit_edge59, %bb.m
  %i.cf = phi i32 [ %i.cd, %bb.m ], [ %i.cb, %._crit_edge59 ]
  %indvars.iv.i142 = phi i64 [ %i.cg, %bb.m ], [ %i.aj, %._crit_edge59 ]
  %i.cg = add nsw i64 %indvars.iv.i142, -1        ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !39
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.m, label %..critedge.i_crit_edge, !llvm.loop !1482

..critedge.i_crit_edge:                           ; preds = %.lr.ph143
  br label %.critedge.i, !llvm.loop !1482

.critedge.i:                                      ; preds = %bb.m, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cf, %..critedge.i_crit_edge ], [ %smin.i, %bb.m ]
  %i.ck = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cl = icmp ult i64 %i.ai, %i.ck
  br i1 %i.cl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.critedge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1423
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ck)
          to label %.noexc43 unwind label %bb.r, !inline_history !1489

.noexc43:                                         ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !1426
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv88 = phi i64 [ %i.bi, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.dm, %._crit_edge ] ; 3 uses
  %2 = sub i32 %i.bk, %indvar                     ; 2 uses
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.co = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.cp = sext i32 %indvars.iv78 to i64           ; 3 uses
  %min.iters.check153 = icmp ult i32 %2, 3
  br i1 %min.iters.check153, label %.lr.ph.preheader174, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.preheader
  %n.vec155 = and i64 %4, 8589934588              ; 4 uses
  %i.cq = sub nsw i64 %i.bi, %n.vec155
  %i.cr = add nsw i64 %n.vec155, %i.cp
  %i.cs = insertelement <2 x i128> <i128 poison, i128 0>, i128 %.256, i64 0
  %invariant.gep = getelementptr [4 x i8], ptr %i.bh, i64 %i.cp
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next166, %vector.body156 ] ; 3 uses
  %vec.phi158 = phi <2 x i128> [ %i.cs, %vector.ph154 ], [ %i.dg, %vector.body156 ]
  %vec.phi159 = phi <2 x i128> [ zeroinitializer, %vector.ph154 ], [ %i.dh, %vector.body156 ]
  %i.ct = xor i64 %index157, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index157 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load160 = load <2 x i32>, ptr %gep, align 4, !tbaa !39
  %wide.load161 = load <2 x i32>, ptr %i.cu, align 4, !tbaa !39
  %i.cv = zext <2 x i32> %wide.load160 to <2 x i64>
  %i.cw = zext <2 x i32> %wide.load161 to <2 x i64>
  %i.cx = getelementptr [4 x i8], ptr %i.bl, i64 %i.ct ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -12
  %wide.load162 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !39
  %wide.load163 = load <2 x i32>, ptr %i.cz, align 4, !tbaa !39
  %reverse164 = shufflevector <2 x i32> %wide.load162, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse165 = shufflevector <2 x i32> %wide.load163, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.da = zext <2 x i32> %reverse164 to <2 x i64>
  %i.db = zext <2 x i32> %reverse165 to <2 x i64>
  %i.dc = mul nuw <2 x i64> %i.da, %i.cv
  %i.dd = mul nuw <2 x i64> %i.db, %i.cw
  %i.de = zext <2 x i64> %i.dc to <2 x i128>
  %i.df = zext <2 x i64> %i.dd to <2 x i128>
  %i.dg = add <2 x i128> %vec.phi158, %i.de       ; 2 uses
  %i.dh = add <2 x i128> %vec.phi159, %i.df       ; 2 uses
  %index.next166 = add nuw i64 %index157, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next166, %n.vec155
  br i1 %i.di, label %middle.block167, label %vector.body156, !llvm.loop !1490

middle.block167:                                  ; preds = %vector.body156
  %bin.rdx168 = add <2 x i128> %i.dh, %i.dg
  %i.dj = call i128 @llvm.vector.reduce.add.v2i128(<2 x i128> %bin.rdx168) ; 2 uses
  %cmp.n169 = icmp eq i64 %4, %n.vec155
  br i1 %cmp.n169, label %._crit_edge, label %.lr.ph.preheader174

.lr.ph.preheader174:                              ; preds = %.lr.ph.preheader, %middle.block167
  %indvars.iv82.in.ph = phi i64 [ %i.bi, %.lr.ph.preheader ], [ %i.cq, %middle.block167 ]
  %indvars.iv80.ph = phi i64 [ %i.cp, %.lr.ph.preheader ], [ %i.cr, %middle.block167 ]
  %.352.ph = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.dj, %middle.block167 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block167, %bb.o
  %.3.lcssa = phi i128 [ %.256, %bb.o ], [ %i.dj, %middle.block167 ], [ %i.dv, %.lr.ph ] ; 2 uses
  %i.dk = trunc i128 %.3.lcssa to i32
  %i.dl = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !39
  %i.dm = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.o, !llvm.loop !1491

.lr.ph:                                           ; preds = %.lr.ph.preheader174, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82, %.lr.ph ], [ %indvars.iv82.in.ph, %.lr.ph.preheader174 ]
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph ], [ %indvars.iv80.ph, %.lr.ph.preheader174 ] ; 2 uses
  %.352 = phi i128 [ %i.dv, %.lr.ph ], [ %.352.ph, %.lr.ph.preheader174 ]
  %indvars.iv82 = add nsw i64 %indvars.iv82.in, -1 ; 2 uses
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv80
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !39
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv82
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !39
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul nuw i64 %i.ds, %i.dp
  %i.du = zext i64 %i.dt to i128
  %i.dv = add i128 %.352, %i.du                   ; 2 uses
  %lftr.wideiv118 = trunc i64 %indvars.iv.next81 to i32
  %exitcond = icmp eq i32 %lftr.wideiv118, %i.c
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !1492

bb.p:                                             ; preds = %.noexc43, %.critedge.i
  %i.dw = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.dx = call noundef i64 @llvm.umin.i64(i64 %i.ck, i64 %i.dw)
  store i64 %i.dx, ptr %i.a, align 8, !tbaa !1434
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !1427
  %i.ea = shl nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !1427
  %i.eb = load ptr, ptr %1, align 8, !tbaa !1425  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.eb) #38
  br label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret void

bb.r:                                             ; preds = %bb.n
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.r ], [ %i.bm, %bb.l ]
  %i.ee = load ptr, ptr %1, align 8, !tbaa !1425  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i44, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.ee) #38
  br label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %6 = alloca %class.anon.535, align 8            ; 12 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.fmt::v11::detail::digit_grouping", align 8 ; 13 uses
  %8 = alloca %class.anon.537, align 8            ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v11::detail::digit_grouping", align 8 ; 13 uses
  %10 = alloca %class.anon.538, align 8           ; 12 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.539, align 8           ; 10 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !1286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.k = load ptr, ptr %1, align 8, !tbaa !1364   ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1366 ; 8 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  store i8 48, ptr %i.d, align 1, !tbaa !38
  %.not = icmp ne i32 %3, 0
  %i.n = zext i1 %.not to i32
  %i.o = add i32 %i.m, %i.n
  %i.p = zext i32 %i.o to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
  %i.q = load i32, ptr %2, align 4, !tbaa !1265   ; 2 uses
  %i.r = and i32 %i.q, 16384
  %.not134 = icmp eq i32 %i.r, 0
  br i1 %.not134, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef signext i8 @_ZN3fmt3v116detail18decimal_point_implIcEET_NS1_10locale_refE(ptr %5)
  %.sroa.0.0.copyload122.pre = load i32, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.copyload122 = phi i32 [ %.sroa.0.0.copyload122.pre, %bb.b ], [ %i.q, %bb.a ]
  %i.t = phi i8 [ %i.s, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  store i8 %i.t, ptr %i.e, align 1, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1367 ; 3 uses
  %i.w = add nsw i32 %i.m, %i.v                   ; 11 uses
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  %.sroa.0.0.copyload122.fr = freeze i32 %.sroa.0.0.copyload122 ; 10 uses
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5123.0.copyload = load i32, ptr %.sroa.5123.0..sroa_idx, align 4 ; 9 uses
  %i.y = trunc i32 %.sroa.0.0.copyload122.fr to i8
  %i.z = and i8 %i.y, 7                           ; 2 uses
  switch i8 %i.z, label %bb.d [
    i8 1, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 2, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread126
  ]

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp slt i32 %i.w, -3
  br i1 %i.aa, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit

_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit: ; preds = %bb.d
  %i.ab = icmp sgt i32 %.sroa.5123.0.copyload, 0
  %i.ac = select i1 %i.ab, i32 %.sroa.5123.0.copyload, i32 %4
  %.not135.not = icmp sgt i32 %i.w, %i.ac
  br i1 %.not135.not, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread126

_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread: ; preds = %bb.d, %bb.c, %_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit
  %i.ad = and i32 %.sroa.0.0.copyload122.fr, 8192
end_hunk_0
