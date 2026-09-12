Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/format?download=true
inline.NumInlined: 5789
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED0Ev:bb.a
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27, !inline_history !105
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer.86", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(160) %0) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104  ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 4 uses
  %i.e = sext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !100
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !62
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit unwind label %bb.c, !inline_history !1605

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit: ; preds = %bb.b, %bb.a
  store i64 %i.e, ptr %i.a, align 8, !tbaa !104
  %i.k = icmp sgt i32 %i.c, 0
  br i1 %i.k, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.d
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.03850 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.am, %bb.d ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.p = icmp eq i64 %indvars.iv, 0
  br i1 %i.p, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.e

.preheader:                                       ; preds = %bb.d, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %.038.lcssa = phi i128 [ 0, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit ], [ %i.am, %bb.d ]
  %i.q = icmp sgt i32 %i.d, %i.c
  br i1 %i.q, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %sext = shl i64 %i.b, 32
  %i.v = ashr exact i64 %sext, 32                 ; 4 uses
  %i.w = shl i64 %i.b, 32
  %sext97 = add i64 %i.w, -4294967296
  %i.x = ashr exact i64 %sext97, 32
  %invariant.op = add nsw i64 %i.x, %i.v
  %i.y = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.v, -1       ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv82.prol
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.d, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03850, %.preheader46 ], [ %i.bg, %.unr-lcssa ]
  %lcmp.mod111 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64.epil.init
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv62.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !53
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw i64 %i.ag, %i.ad
  %i.ai = zext i64 %i.ah to i128
  %i.aj = add i128 %.147.epil.init, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa108 = phi i128 [ %i.bg, %.unr-lcssa ], [ %i.aj, %.epil.preheader ] ; 2 uses
  %i.ak = trunc i128 %.lcssa108 to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !53
  %i.am = lshr i128 %.lcssa108, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader, label %.preheader46, !llvm.loop !1606

bb.e:                                             ; preds = %bb.e, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.e ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.e ] ; 3 uses
  %.147 = phi i128 [ %.03850, %.preheader46.new ], [ %i.bg, %bb.e ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.e ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !53
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv62
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !53
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nuw i64 %i.as, %i.ap
  %i.au = zext i64 %i.at to i128
  %i.av = add i128 %.147, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !53
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv62
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !53
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw i64 %i.bd, %i.az
  %i.bf = zext i64 %i.be to i128
  %i.bg = add i128 %i.av, %i.bf                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !1607

._crit_edge59:                                    ; preds = %._crit_edge, %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %smin.i = call i32 @llvm.smin.i32(i32 %i.d, i32 1) ; 2 uses
  %i.bj = icmp sgt i32 %i.c, 0
  br i1 %i.bj, label %.lr.ph103, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph103
  %i.bk = trunc nuw i64 %i.bn to i32              ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %.lr.ph103, label %.critedge.i, !llvm.loop !31

.lr.ph103:                                        ; preds = %._crit_edge59, %bb.f
  %i.bm = phi i32 [ %i.bk, %bb.f ], [ %i.d, %._crit_edge59 ]
  %indvars.iv.i102 = phi i64 [ %i.bn, %bb.f ], [ %i.e, %._crit_edge59 ]
  %i.bn = add nsw i64 %indvars.iv.i102, -1        ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !53
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.f, label %..critedge.i_crit_edge, !llvm.loop !31

..critedge.i_crit_edge:                           ; preds = %.lr.ph103
  br label %.critedge.i, !llvm.loop !31

.critedge.i:                                      ; preds = %bb.f, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.bm, %..critedge.i_crit_edge ], [ %smin.i, %bb.f ]
  %i.br = sext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.bs = load i64, ptr %i.f, align 8, !tbaa !100
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.critedge.i
  %i.bu = load ptr, ptr %0, align 8, !tbaa !62
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.br)
          to label %bb.i unwind label %bb.k, !inline_history !1608

bb.h:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.v, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.038.lcssa, %.lr.ph58 ], [ %i.cl, %._crit_edge ] ; 3 uses
  %i.bw = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.bw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bx = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.by = sub i32 %indvar, %i.c
  %i.bz = and i32 %i.by, 1
  %lcmp.mod113.not.not = icmp eq i32 %i.bz, 0
  br i1 %lcmp.mod113.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nuw nsw i64 %i.bx, 1
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bx
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !53
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !53
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul nuw i64 %i.ce, %i.cc
  %i.cg = zext i64 %i.cf to i128
  %i.ch = add nsw i128 %.256, %i.cg               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa107.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.ch, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.bx, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.ch, %.lr.ph.prol ]
  %i.ci = icmp eq i32 %i.y, %indvar
  br i1 %i.ci, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.3.lcssa = phi i128 [ %.256, %bb.h ], [ %.lcssa107.unr, %.lr.ph.prol.loopexit ], [ %i.df, %.lr.ph ] ; 2 uses
  %i.cj = trunc i128 %.3.lcssa to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv88
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !53
  %i.cl = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %i.e
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59, label %bb.h, !llvm.loop !1609

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.df, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv80
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !53
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.s, i64 %indvars.iv82.in
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !53
  %i.cs = zext i32 %i.cr to i64
  %i.ct = mul nuw i64 %i.cs, %i.co
  %i.cu = zext i64 %i.ct to i128
  %i.cv = add i128 %.352, %i.cu
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv80
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !53
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv82.1
  %i.db = load i32, ptr %i.da, align 4, !tbaa !53
  %i.dc = zext i32 %i.db to i64
  %i.dd = mul nuw i64 %i.dc, %i.cz
  %i.de = zext i64 %i.dd to i128
  %i.df = add i128 %i.cv, %i.de                   ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond87.not.1 = icmp eq i32 %lftr.wideiv.1, %i.c
  br i1 %exitcond87.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1610

bb.i:                                             ; preds = %.critedge.i, %bb.g
  store i64 %i.br, ptr %i.a, align 8, !tbaa !104
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !103
  %i.di = shl nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !99 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.dk) #27, !inline_history !105
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.k:                                             ; preds = %bb.g
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.k ], [ %i.aa, %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !62
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !99 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i.i44, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit45, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.do) #27, !inline_history !105
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit45

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit45: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %0, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !104  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.j = icmp eq ptr %i.d, %i.i
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !99
  store i64 %i.h, ptr %i.b, align 8, !tbaa !100
  %i.l = icmp ugt i64 %i.f, 1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !78

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.i, i64 %.idx.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %bb.e, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.i, align 8, !tbaa !53
  store i32 %i.n, ptr %i.k, align 8, !tbaa !53
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !99
  store i64 %i.h, ptr %i.b, align 8, !tbaa !100
  store ptr %i.i, ptr %i.c, align 8, !tbaa !99
  store i64 0, ptr %i.g, align 8, !tbaa !100
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !100
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.o = phi i64 [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %.pre.i, %bb.f ] ; 3 uses
  %i.p = icmp ugt i64 %i.f, %i.o
  br i1 %i.p, label %bb.g, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm.exit

bb.g:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.q = lshr i64 %i.o, 1
  %i.r = add i64 %i.q, %i.o
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.r) ; 4 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !99   ; 4 uses
  %i.t = icmp ugt i64 %spec.select.i, 2305843009213693951
  br i1 %i.t, label %bb.h, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, !prof !125

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ugt i64 %spec.select.i, 4611686018427387903
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %bb.j
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.g
  %i.v = shl nuw nsw i64 %spec.select.i, 2
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #29
          to label %.noexc8 unwind label %bb.o    ; 3 uses

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !104  ; 3 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %.noexc8
  %.idx.i6 = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.s, i64 %.idx.i6, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5

bb.l:                                             ; preds = %.noexc8
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %bb.m, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5

bb.m:                                             ; preds = %bb.l
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !53
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !53
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5: ; preds = %bb.m, %bb.l, %bb.k
  store ptr %i.w, ptr %i.a, align 8, !tbaa !99
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i = icmp eq ptr %i.s, %i.ac
  br i1 %.not.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5
  tail call void @_ZdlPv(ptr noundef %i.s) #27
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm.exit: ; preds = %bb.n, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i5, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.ad, align 8, !tbaa !104
  ret void

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.j, %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIwLm500ESaIwEE4growEm(ptr noundef nonnull align 8 dereferenceable(2032) %0, i64 noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110  ; 4 uses
  %i.g = icmp ugt i64 %spec.select, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt15__new_allocatorIwE8allocateEmPKv.exit, !prof !125

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %spec.select, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
