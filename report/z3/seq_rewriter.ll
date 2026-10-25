Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_rewriter?download=true
inline.NumInlined: 6287
inline.NumDeleted: 1145
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_:bb.a
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit.i" ] ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond232 = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond232, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %bb.l, !llvm.loop !4

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !88
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !88
  %.not.i.i = icmp eq i32 %i.ak, %i.am
  br i1 %.not.i.i, label %bb.k, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit.i"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit.i": ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond92.not.i, label %.critedge.preheader.i, label %.lr.ph.i.i, !llvm.loop !5

.lr.ph.i52.i:                                     ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i", %.lr.ph.split.i
  %.03382.i = phi i32 [ 0, %.lr.ph.split.i ], [ %i.av, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i" ] ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next.i55.i = add nuw nsw i64 %indvars.iv.i53.i, 1 ; 2 uses
  %i.an = icmp eq i64 %indvars.iv.next.i55.i, %zext.i
  br i1 %i.an, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %bb.n, !llvm.loop !4

bb.n:                                             ; preds = %bb.m, %.lr.ph.i52.i
  %indvars.iv.i53.i = phi i64 [ 0, %.lr.ph.i52.i ], [ %indvars.iv.next.i55.i, %bb.m ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i53.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !88
  %i.aq = trunc nuw i64 %indvars.iv.i53.i to i32
  %i.ar = add i32 %.03382.i, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !88
  %.not.i54.i = icmp eq i32 %i.ap, %i.au
  br i1 %.not.i54.i, label %bb.m, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i": ; preds = %bb.n
  %i.av = add nuw i32 %.03382.i, 1                ; 2 uses
  %exitcond95.not.i = icmp eq i32 %i.av, %i.ai
  br i1 %exitcond95.not.i, label %.critedge44.i, label %.lr.ph.i52.i, !llvm.loop !6

.critedge44.i:                                    ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit58.i", %.critedge.preheader.i
  %.not4283.i = icmp eq i32 %i.aa, 0
  br i1 %.not4283.i, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %.lr.ph.i61.lr.ph.i

.lr.ph.i61.lr.ph.i:                               ; preds = %.critedge44.i
  %i.aw = sub nuw i32 %i.ac, %i.aa
  %i.ax = load ptr, ptr %.tr71.i, align 8, !tbaa !170
  %i.ay = load ptr, ptr %.tr72.i, align 8, !tbaa !170
  br label %.lr.ph.i61.i

.lr.ph.i61.i:                                     ; preds = %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i", %.lr.ph.i61.lr.ph.i
  %indvars.iv97.i = phi i32 [ %i.aa, %.lr.ph.i61.lr.ph.i ], [ %indvars.iv.next98.i, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i" ] ; 2 uses
  %.084.i = phi i32 [ %i.aw, %.lr.ph.i61.lr.ph.i ], [ %i.bg, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i" ] ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i64.i = add nuw nsw i64 %indvars.iv.i62.i, 1 ; 2 uses
  %lftr.wideiv233 = trunc i64 %indvars.iv.next.i64.i to i32
  %exitcond234 = icmp eq i32 %indvars.iv97.i, %lftr.wideiv233
  br i1 %exitcond234, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %bb.p, !llvm.loop !4

bb.p:                                             ; preds = %bb.o, %.lr.ph.i61.i
  %indvars.iv.i62.i = phi i64 [ 0, %.lr.ph.i61.i ], [ %indvars.iv.next.i64.i, %bb.o ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i62.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !88
  %i.bb = trunc nuw i64 %indvars.iv.i62.i to i32
  %i.bc = add i32 %.084.i, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !88
  %.not.i63.i = icmp eq i32 %i.ba, %i.bf
  br i1 %.not.i63.i, label %bb.o, label %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i"

"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i": ; preds = %bb.p
  %i.bg = add i32 %.084.i, 1                      ; 2 uses
  %.not42.not.i = icmp ult i32 %i.bg, %i.ac
  %indvars.iv.next98.i = add i32 %indvars.iv97.i, -1
  br i1 %.not42.not.i, label %.lr.ph.i61.i, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !7

bb.q:                                             ; preds = %bb.e, %bb.g, %bb.i
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !76  ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.q
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !88 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %.not196 = icmp eq i32 %i.bk, 0
  br i1 %.not196, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !73
  br label %bb.s

bb.r:                                             ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.071197, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.bn
  br i1 %.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %.071197 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bq, %bb.r ] ; 2 uses
  %i.br = load ptr, ptr %.071197, align 8, !tbaa !27 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 65535
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.t, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !147
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %_ZNK8seq_util3str7is_unitEPK4expr.exit

_ZNK8seq_util3str7is_unitEPK4expr.exit:           ; preds = %bb.t
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !148
  %i.cb = icmp eq i32 %i.ca, %i.bp
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = select i1 %i.cb, i1 %i.ce, i1 false
  br i1 %i.cf, label %bb.r, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

._crit_edge:                                      ; preds = %bb.r, %bb.q, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !76  ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.critedge108.preheader, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit116

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit116: ; preds = %._crit_edge
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !88 ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cl
  %.not96198 = icmp eq i32 %i.cj, 0
  br i1 %.not96198, label %.critedge108.preheader, label %.lr.ph200

.lr.ph200:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit116
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !73
  br label %bb.v

bb.u:                                             ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit118
  %i.cp = getelementptr inbounds nuw i8, ptr %.070199, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.cp, %i.cm
  br i1 %.not96, label %.critedge108.preheader, label %bb.v

.critedge108.preheader:                           ; preds = %bb.u, %._crit_edge, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit116
  %.not100201.not = icmp eq i32 %.0.i.i, 1
  br i1 %.not100201.not, label %.critedge110.preheader, label %.lr.ph.i119.preheader

.lr.ph.i119.preheader:                            ; preds = %.critedge108.preheader
  %umax = call i32 @llvm.umax.i32(i32 %.0.i.i, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %.lr.ph.i119

bb.v:                                             ; preds = %.lr.ph200, %bb.u
  %.070199 = phi ptr [ %i.cg, %.lr.ph200 ], [ %i.cp, %bb.u ] ; 2 uses
  %i.cq = load ptr, ptr %.070199, align 8, !tbaa !27 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = and i32 %i.cs, 65535
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.w, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !147
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i117, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, label %_ZNK8seq_util3str7is_unitEPK4expr.exit118

_ZNK8seq_util3str7is_unitEPK4expr.exit118:        ; preds = %bb.w
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !148
  %i.da = icmp eq i32 %i.cz, %i.co
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = select i1 %i.da, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.u, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit

.critedge110.preheader:                           ; preds = %.critedge108, %.critedge108.preheader
  %.not101203 = icmp ult i32 %.0.i.i, %.0.i.i113
  %i.df = sub nuw i32 %.0.i.i113, %.0.i.i         ; 2 uses
  br i1 %.not101203, label %.lr.ph205.preheader, label %.lr.ph208.preheader

.lr.ph205.preheader:                              ; preds = %.critedge110.preheader
  %zext = zext i32 %.0.i.i to i64
  br label %.lr.ph205

.lr.ph.i119:                                      ; preds = %.lr.ph.i119.preheader, %.critedge108
  %indvars.iv = phi i64 [ 1, %.lr.ph.i119.preheader ], [ %indvars.iv.next, %.critedge108 ] ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.noexc123, %.lr.ph.i119
  %indvars.iv.i120 = phi i64 [ %indvars.iv, %.lr.ph.i119 ], [ %indvars.iv.next.i121, %.noexc123 ] ; 5 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i120
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !27
  %i.dk = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !27
  %i.dn = invoke noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.dg, ptr noundef %i.dj, ptr noundef %i.dm)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.x
  br i1 %i.dn, label %.critedge108, label %bb.y

bb.y:                                             ; preds = %.noexc
  %i.do = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i120
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !27
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i120
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !27
  %i.dv = invoke noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.do, ptr noundef %i.dr, ptr noundef %i.du)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %bb.y
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %lftr.wideiv.i122 = trunc i64 %indvars.iv.next.i121 to i32
  %exitcond.not.i = icmp ne i32 %.0.i.i, %lftr.wideiv.i122
  %or.cond.not.i = select i1 %i.dv, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.x, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !717

.critedge108:                                     ; preds = %.noexc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge110.preheader, label %.lr.ph.i119, !llvm.loop !718

.lr.ph205:                                        ; preds = %.lr.ph205.preheader, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136"
  %.068204 = phi i32 [ %i.ep, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136" ], [ 0, %.lr.ph205.preheader ] ; 2 uses
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph205, %.noexc135
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i128, %.noexc135 ], [ 0, %.lr.ph205 ] ; 4 uses
  %i.dw = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.i127
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !27
  %i.ea = trunc nuw i64 %indvars.iv.i127 to i32
  %i.eb = add i32 %.068204, %i.ea
  %i.ec = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.ed = zext i32 %i.eb to i64                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !27
  %i.eg = invoke noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.dw, ptr noundef %i.dz, ptr noundef %i.ef)
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc134:                                        ; preds = %.lr.ph.i126
  br i1 %i.eg, label %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136", label %bb.z

bb.z:                                             ; preds = %.noexc134
  %i.eh = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.ei = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.i127
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !27
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ed
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !27
  %i.eo = invoke noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.eh, ptr noundef %i.ek, ptr noundef %i.en)
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc135:                                        ; preds = %bb.z
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond.not.i130 = icmp ne i64 %indvars.iv.next.i128, %zext
  %or.cond.not.i131 = select i1 %i.eo, i1 %exitcond.not.i130, i1 false
  br i1 %or.cond.not.i131, label %.lr.ph.i126, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !717

"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136": ; preds = %.noexc134
  %i.ep = add i32 %.068204, 1                     ; 2 uses
  %exitcond230.not = icmp eq i32 %i.ep, %i.df
  br i1 %exitcond230.not, label %.lr.ph208.preheader, label %.lr.ph205, !llvm.loop !719

.lr.ph208.preheader:                              ; preds = %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit136", %.critedge110.preheader
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149"
  %.0207 = phi i32 [ %i.fk, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149" ], [ %i.df, %.lr.ph208.preheader ] ; 3 uses
  %i.eq = sub nuw i32 %.0.i.i113, %.0207
  br label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %.lr.ph208, %.noexc148
  %indvars.iv.i140 = phi i64 [ %indvars.iv.next.i141, %.noexc148 ], [ 0, %.lr.ph208 ] ; 4 uses
  %i.er = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.es = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.i140
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !27
  %i.ev = trunc nuw i64 %indvars.iv.i140 to i32
  %i.ew = add i32 %.0207, %i.ev
  %i.ex = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.ey = zext i32 %i.ew to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !27
  %i.fb = invoke noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.er, ptr noundef %i.eu, ptr noundef %i.fa)
          to label %.noexc147 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc147:                                        ; preds = %.lr.ph.i139
  br i1 %i.fb, label %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149", label %bb.aa

bb.aa:                                            ; preds = %.noexc147
  %i.fc = load ptr, ptr %0, align 8, !tbaa !72, !nonnull !31, !align !32
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.i140
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !27
  %i.fg = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ey
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !27
  %i.fj = invoke noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.fc, ptr noundef %i.ff, ptr noundef %i.fi)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc148:                                        ; preds = %bb.aa
  %indvars.iv.next.i141 = add nuw nsw i64 %indvars.iv.i140, 1 ; 2 uses
  %lftr.wideiv.i142 = trunc i64 %indvars.iv.next.i141 to i32
  %exitcond.not.i143 = icmp ne i32 %i.eq, %lftr.wideiv.i142
  %or.cond.not.i144 = select i1 %i.fj, i1 %exitcond.not.i143, i1 false
  br i1 %or.cond.not.i144, label %.lr.ph.i139, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !717

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %.lr.ph.i126, %bb.aa, %.lr.ph.i139, %bb.y, %bb.x, %bb.f, %bb.h
  %lpad.loopexit.split-lp296 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp296

"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149": ; preds = %.noexc147
  %i.fk = add nuw i32 %.0207, 1                   ; 2 uses
  %.not104.not = icmp ult i32 %i.fk, %.0.i.i113
  br i1 %.not104.not, label %.lr.ph208, label %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, !llvm.loop !720

_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit: ; preds = %bb.t, %bb.s, %_ZNK8seq_util3str7is_unitEPK4expr.exit, %bb.w, %bb.v, %_ZNK8seq_util3str7is_unitEPK4expr.exit118, %.noexc123, %.noexc135, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149", %.noexc148, %bb.k, %bb.m, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i", %bb.o, %.critedge44.i, %.lr.ph.i
  %.10 = phi i1 [ false, %bb.k ], [ false, %.noexc123 ], [ false, %.noexc135 ], [ true, %"_ZZNK12seq_rewriter11non_overlapERK7zstringS2_ENK3$_0clEjjj.exit67.i" ], [ true, %"_ZZNK12seq_rewriter11non_overlapERK10ref_vectorI4expr11ast_managerES5_ENK3$_0clEjjj.exit149" ], [ false, %.noexc148 ], [ false, %.lr.ph.i ], [ true, %.critedge44.i ], [ false, %bb.m ], [ false, %bb.w ], [ false, %bb.o ], [ false, %_ZNK8seq_util3str7is_unitEPK4expr.exit118 ], [ false, %bb.v ], [ false, %_ZNK8seq_util3str7is_unitEPK4expr.exit ], [ false, %bb.s ], [ false, %bb.t ]
  %i.fl = load ptr, ptr %4, align 8, !tbaa !170   ; 3 uses
  %.not.i.i.i.i150 = icmp eq ptr %i.fl, %i.q
  %i.fm = icmp eq ptr %i.fl, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i150, %i.fm
  br i1 %or.cond.i.i.i.i, label %_ZN7zstringD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fl)
          to label %_ZN7zstringD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #26
  unreachable

_ZN7zstringD2Ev.exit:                             ; preds = %_ZNK12seq_rewriter11non_overlapERK7zstringS2_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.fp = load ptr, ptr %3, align 8, !tbaa !170   ; 3 uses
  %.not.i.i.i.i151 = icmp eq ptr %i.fp, %i.n
  %i.fq = icmp eq ptr %i.fp, null
  %or.cond.i.i.i.i152 = or i1 %.not.i.i.i.i151, %i.fq
  br i1 %or.cond.i.i.i.i152, label %_ZN7zstringD2Ev.exit153, label %bb.ad

bb.ad:                                            ; preds = %_ZN7zstringD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fp)
          to label %_ZN7zstringD2Ev.exit153 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #26
  unreachable

_ZN7zstringD2Ev.exit153:                          ; preds = %_ZN7zstringD2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.d, %_ZN7zstringD2Ev.exit153
  %.11 = phi i1 [ false, %bb.d ], [ %.10, %_ZN7zstringD2Ev.exit153 ]
  ret i1 %.11
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN12seq_rewriter24rewrite_contains_patternEP4exprS1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.vector.98, align 8           ; 16 uses
  %5 = alloca %class.ref_vector, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZNK8seq_util3str9is_concatEPK4exprRPS1_S5_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNK8seq_util3str9is_concatEPK4exprRPS1_S5_.exit.thread, label %_ZNK8seq_util3str9is_concatEPK4expr.exit.i

_ZNK8seq_util3str9is_concatEPK4expr.exit.i:       ; preds = %bb.b
  %i.m = load i32, ptr %i.l, align 8, !tbaa !148
  %i.n = icmp eq i32 %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 2
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.c, label %_ZNK8seq_util3str9is_concatEPK4exprRPS1_S5_.exit.thread

bb.c:                                             ; preds = %_ZNK8seq_util3str9is_concatEPK4expr.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !149
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.d, label %_ZNK8seq_util3str9is_concatEPK4exprRPS1_S5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27   ; 4 uses
  %i.z = invoke noundef zeroext i1 @_ZN12seq_rewriter22is_re_contains_patternEP4exprR6vectorI10ref_vectorIS0_11ast_managerELb1EjE(ptr noundef nonnull align 8 dereferenceable(1800) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.z, label %bb.f, label %_ZNK8seq_util3str9is_concatEPK4exprRPS1_S5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !88 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ap, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ac, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.aj = load ptr, ptr %.06.i.i, align 8, !tbaa !27 ; 3 uses
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !90, !nonnull !31, !align !32
  %.not.i.i.i.i.i88 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i88, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !86
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !86
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ak, ptr noundef nonnull %i.aj)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
end_hunk_0
