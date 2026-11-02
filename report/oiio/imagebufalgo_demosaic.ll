Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_demosaic?download=true
inline.NumInlined: 17707
inline.NumDeleted: 3921
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 228
begin_hunk_0_@_ZN3fmt3v126detail6bigint6squareEv:bb.a
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i: ; preds = %bb.g
  store ptr %i.v, ptr %1, align 8, !tbaa !312
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !313
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.m, %i.x
  br i1 %.not.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef %i.m) #29
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !313
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !313
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #33
  unreachable

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit: ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i, %bb.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.aa = phi i64 [ %i.n, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.pre.pre, %bb.i ], [ %i.n, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ] ; 2 uses
  %i.ab = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.i ], [ %.0.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ab)
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !318
  %i.ae = zext i32 %i.d to i64                    ; 3 uses
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !311
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.s, !inline_history !1073

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !313
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, %.noexc
  %i.ai = phi i64 [ %i.aa, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !318
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !312   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.l
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.l ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.be, %bb.l ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.am = icmp eq i64 %indvars.iv, 0
  br i1 %i.am, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.m

.preheader.loopexit:                              ; preds = %bb.l
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.be, %.preheader.loopexit ]
  %i.an = icmp sgt i32 %i.d, %i.c
  br i1 %i.an, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.ap = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.aq = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.aq, %i.ap
  %i.ar = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.ap, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.prol
  br label %bb.p

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.l, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.by, %.unr-lcssa ]
  %lcmp.mod151 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64.epil.init
  %i.au = load i32, ptr %i.at, align 4, !tbaa !67
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62.epil.init
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !67
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw i64 %i.ay, %i.av
  %i.ba = zext i64 %i.az to i128
  %i.bb = add i128 %.147.epil.init, %i.ba
  br label %bb.l

bb.l:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa148 = phi i128 [ %i.by, %.unr-lcssa ], [ %i.bb, %.epil.preheader ] ; 2 uses
  %i.bc = trunc i128 %.lcssa148 to i32
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !67
  %i.be = lshr i128 %.lcssa148, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !1074

bb.m:                                             ; preds = %bb.m, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.m ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.m ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.by, %bb.m ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.m ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !67
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.bh
  %i.bm = zext i64 %i.bl to i128
  %i.bn = add i128 %.147, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !67
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw i64 %i.bv, %i.br
  %i.bx = zext i64 %i.bw to i128
  %i.by = add i128 %i.bn, %i.bx                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.m, !llvm.loop !1075

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

bb.n:                                             ; preds = %.lr.ph143
  %i.cd = trunc nuw i64 %i.cg to i32              ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %.lr.ph143, label %.critedge.i, !llvm.loop !29

.lr.ph143:                                        ; preds = %._crit_edge59, %bb.n
  %i.cf = phi i32 [ %i.cd, %bb.n ], [ %i.cb, %._crit_edge59 ]
  %indvars.iv.i142 = phi i64 [ %i.cg, %bb.n ], [ %i.aj, %._crit_edge59 ]
  %i.cg = add nsw i64 %indvars.iv.i142, -1        ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !67
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.n, label %..critedge.i_crit_edge, !llvm.loop !29

..critedge.i_crit_edge:                           ; preds = %.lr.ph143
  br label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %bb.n, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cf, %..critedge.i_crit_edge ], [ %smin.i, %bb.n ]
  %i.ck = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cl = icmp ult i64 %i.ai, %i.ck
  br i1 %i.cl, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.critedge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !311
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ck)
          to label %.noexc43 unwind label %bb.s, !inline_history !1076

.noexc43:                                         ; preds = %bb.o
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !313
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88.a = phi i64 [ %i.ap, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.dc, %._crit_edge ] ; 3 uses
  %i.co = icmp slt i64 %indvars.iv88.a, %invariant.op
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %2 = sext i32 %indvars.iv78 to i64              ; 3 uses
  %i.cp = sub i32 %indvar, %i.c
  %i.cq = and i32 %i.cp, 1
  %lcmp.mod153.not.not = icmp eq i32 %i.cq, 0
  br i1 %lcmp.mod153.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %2, 1
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %2
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !67
  %i.ct = zext i32 %i.cs to i64
  %i.cu = load i32, ptr %i.as, align 4, !tbaa !67
  %i.cv = zext i32 %i.cu to i64
  %i.cw = mul nuw i64 %i.cv, %i.ct
  %i.cx = zext i64 %i.cw to i128
  %i.cy = add nsw i128 %.256, %i.cx               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa147.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.cy, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.cy, %.lr.ph.prol ]
  %i.cz = icmp eq i32 %i.ar, %indvar
  br i1 %i.cz, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.p
  %.3.lcssa = phi i128 [ %.256, %bb.p ], [ %.lcssa147.unr, %.lr.ph.prol.loopexit ], [ %i.dw, %.lr.ph ] ; 2 uses
  %i.da = trunc i128 %.3.lcssa to i32
  %i.db = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88.a
  store i32 %i.da, ptr %i.db, align 4, !tbaa !67
  %i.dc = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88.a, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.p, !llvm.loop !1077

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.dw, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !67
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv82.in
  %i.dh = getelementptr i8, ptr %i.dg, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw i64 %i.dj, %i.df
  %i.dl = zext i64 %i.dk to i128
  %i.dm = add i128 %.352, %i.dl
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !67
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.1
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !67
  %i.dt = zext i32 %i.ds to i64
  %i.du = mul nuw i64 %i.dt, %i.dq
  %i.dv = zext i64 %i.du to i128
  %i.dw = add i128 %i.dm, %i.dv                   ; 2 uses
  %lftr.wideiv118.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv118.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1078

bb.q:                                             ; preds = %.noexc43, %.critedge.i
  %i.dx = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.dy = call noundef i64 @llvm.umin.i64(i64 %i.ck, i64 %i.dx)
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !318
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !317
  %i.eb = shl nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !317
  %i.ec = load ptr, ptr %1, align 8, !tbaa !312   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ec, %i.ed
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.ec) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.s:                                             ; preds = %bb.o, %bb.k
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %1, align 8, !tbaa !312   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.ef) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.ee
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 8 uses
  %7 = alloca %class.anon.59, align 8             ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !230    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #29
  %i.d = load ptr, ptr %6, align 8, !tbaa !245
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !252  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #34
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !226
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit unwind label %bb.f, !inline_history !30

bb.f:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.m

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.pre = load i32, ptr %2, align 4, !tbaa !230
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.n = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !306  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !307
  %i.t = add nsw i32 %i.s, %i.q                   ; 3 uses
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  %i.v = trunc i32 %i.n to i8
  %i.w = and i8 %i.v, 7
  switch i8 %i.w, label %bb.h [
    i8 2, label %bb.i
    i8 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !232  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %. = select i1 %i.z, i32 %i.y, i32 %4
  %i.aa = icmp sgt i32 %i.t, -4
  %i.ab = icmp sle i32 %i.t, %.
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = ptrtoint ptr %5 to i64
  %i.ae = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, i8 noundef signext %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.ad)
  br label %bb.u

bb.j:                                             ; preds = %bb.g, %bb.h
  %.not51 = icmp ne i32 %3, 0
  %i.af = zext i1 %.not51 to i32
  %i.ag = add nsw i32 %i.q, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = and i32 %i.n, 8192
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !232
  %i.al = sub nsw i32 %i.ak, %i.q
  %i.am = call noundef i32 @llvm.smax.i32(i32 %i.al, i32 0) ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.an, %i.ah
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i32 %i.q, 1
  %spec.select = select i1 %i.ap, i8 0, i8 %i.o
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.049 = phi i32 [ %i.am, %bb.k ], [ 0, %bb.l ]
  %.048 = phi i64 [ %i.ao, %bb.k ], [ %i.ah, %bb.l ]
  %.0 = phi i8 [ %i.o, %bb.k ], [ %spec.select, %bb.l ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.aq = zext i1 %.not52 to i64
  %i.ar = call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 100
  %i.at = icmp samesign ugt i32 %i.ar, 999
  %i.au = select i1 %i.at, i64 6, i64 5
  %.0.i = select i1 %i.as, i64 4, i64 %i.au
  %i.av = add nsw i64 %.048, %.0.i
  %i.aw = add nsw i64 %i.av, %i.aq                ; 3 uses
  %i.ax = and i32 %i.n, 4096
  %.not54 = icmp eq i32 %i.ax, 0
  %i.ay = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i32 %3, ptr %7, align 8, !tbaa !320
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1080
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %i.q, ptr %i.ba, align 8, !tbaa !321
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 %.0, ptr %i.bb, align 4, !tbaa !322
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %.049, ptr %i.bc, align 8, !tbaa !323
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i8 %i.ay, ptr %i.bd, align 4, !tbaa !324
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.u, ptr %i.be, align 8, !tbaa !325
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !257 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
end_hunk_0
