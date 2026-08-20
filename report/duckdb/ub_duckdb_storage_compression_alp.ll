inline.NumInlined: 1905
inline.NumDeleted: 977
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN6duckdb10AlpAnalyzeIfEEbRNS_12AnalyzeStateERNS_6VectorEm:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0          ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.loopexit123

bb.h:                                             ; preds = %bb.g
  %i.am = shl nuw nsw i64 %.sroa.0.0.insert.ext.i, 1 ; 3 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #23
          to label %.noexc unwind label %bb.m     ; 4 uses

.noexc:                                           ; preds = %bb.h
  store ptr %i.an, ptr %4, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.0.0.insert.ext.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.an, i8 0, i64 %i.am, i1 false), !tbaa !143
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.as = shl nuw nsw i64 %.sroa.0.0.insert.ext.i, 2 ; 3 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #23
          to label %.noexc88 unwind label %bb.n   ; 4 uses

.noexc88:                                         ; preds = %.noexc
  store ptr %i.at, ptr %5, align 16, !tbaa !145
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.0.0.insert.ext.i
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.au, ptr %i.av, align 16, !tbaa !148
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 0, i64 %i.as, i1 false), !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  br label %.loopexit123

.loopexit123:                                     ; preds = %.noexc88, %.thread
  %.0.i.i.i.i.i.i.i.i87 = phi ptr [ null, %.thread ], [ %i.aw, %.noexc88 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i87, ptr %i.ax, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ay = zext i32 %i.al to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i89 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i89, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.loopexit123
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 3 uses
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #23
          to label %.noexc94 unwind label %bb.o   ; 4 uses

.noexc94:                                         ; preds = %bb.i
  store ptr %i.ba, ptr %6, align 16, !tbaa !145
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bb, ptr %i.bc, align 16, !tbaa !148
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ba, i8 0, i64 %i.az, i1 false), !tbaa !149
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc94, %.loopexit123
  %.0.i.i.i.i.i.i.i.i93 = phi ptr [ null, %.loopexit123 ], [ %i.bd, %.noexc94 ]
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i93, ptr %i.be, align 8, !tbaa !151
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %.preheader, label %.preheader122

.preheader122:                                    ; preds = %.loopexit
  br i1 %.not.i.i.i.i.i, label %._crit_edge133, label %.lr.ph

.preheader:                                       ; preds = %.loopexit
  br i1 %.not.i.i.i.i.i, label %._crit_edge133, label %.lr.ph129

bb.j:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.k:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.l:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.m:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit116

bb.n:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit114

bb.o:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit112

.lr.ph129:                                        ; preds = %.preheader, %bb.q
  %.056128 = phi i64 [ %i.bw, %bb.q ], [ 0, %.preheader ] ; 4 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !153
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !154 ; 2 uses
  %.not.i96 = icmp eq ptr %i.bo, null
  br i1 %.not.i96, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph129
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.056128
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %.lr.ph129
  %i.bs = phi i64 [ %i.br, %bb.p ], [ %.056128, %.lr.ph129 ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !149
  %i.bv = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIfLb1ESaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.056128)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  store float %i.bu, ptr %i.bv, align 4, !tbaa !149
  %i.bw = add nuw nsw i64 %.056128, 1             ; 2 uses
  %exitcond138.not = icmp eq i64 %i.bw, %.sroa.0.0.insert.ext.i
  br i1 %exitcond138.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, label %.lr.ph129, !llvm.loop !155

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

._crit_edge:                                      ; preds = %bb.x
  %.pre = load ptr, ptr %5, align 16, !tbaa !145  ; 6 uses
  %.pre139 = load ptr, ptr %4, align 8, !tbaa !139 ; 6 uses
  %i.by = icmp eq i64 %i.dv, 0
  br i1 %i.by, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.t
  %.010.i.i = phi i64 [ %i.ce, %bb.t ], [ 0, %._crit_edge ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.010.i.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !143
  %i.cb = zext i16 %i.ca to i64
  %.not.i.i97 = icmp eq i64 %.010.i.i, %i.cb
  br i1 %.not.i.i97, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.010.i.i
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !149
  br label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ce = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.sroa.0.0.insert.ext.i
  br i1 %exitcond.not.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i, !llvm.loop !157

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i: ; preds = %bb.t, %bb.s
  %.08.i.i = phi float [ %i.cd, %bb.s ], [ 0.000000e+00, %bb.t ] ; 5 uses
  %i.cf = add nsw i64 %.0.i101, -1
  %i.cg = add i64 %i.cf, %.057126
  %xtraiter = and i64 %i.dv, 3                    ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 3
  br i1 %i.ch, label %.lr.ph.i8.i.epil.preheader, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new: ; preds = %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i
  %unroll_iter = and i64 %i.dv, -4
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new
  %.07.i.i = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new ], [ %i.db, %.lr.ph.i8.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new ], [ %niter.next.3, %.lr.ph.i8.i ]
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !143
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ck
  store float %.08.i.i, ptr %i.cl, align 4, !tbaa !149
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !143
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cp
  store float %.08.i.i, ptr %i.cq, align 4, !tbaa !149
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !143
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cu
  store float %.08.i.i, ptr %i.cv, align 4, !tbaa !149
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 6
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !143
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cz
  store float %.08.i.i, ptr %i.da, align 4, !tbaa !149
  %i.db = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit163.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !158

.lr.ph:                                           ; preds = %.preheader122, %bb.x
  %.055127 = phi i64 [ %i.dw, %bb.x ], [ 0, %.preheader122 ] ; 5 uses
  %.057126 = phi i64 [ %i.dv, %bb.x ], [ 0, %.preheader122 ] ; 3 uses
  %i.dc = load ptr, ptr %3, align 8, !tbaa !153
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !154 ; 2 uses
  %.not.i98 = icmp eq ptr %i.dd, null
  br i1 %.not.i98, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit99, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.055127
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = zext i32 %i.df to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit99

_ZNK6duckdb15SelectionVector9get_indexEm.exit99:  ; preds = %bb.u, %.lr.ph
  %i.dh = phi i64 [ %i.dg, %bb.u ], [ %.055127, %.lr.ph ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !149
  %i.dk = load ptr, ptr %i.bf, align 8, !tbaa !152 ; 2 uses
  %.not.i100 = icmp eq ptr %i.dk, null
  br i1 %.not.i100, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit99
  %i.dl = lshr i64 %i.dh, 6
  %i.dm = and i64 %i.dh, 63
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !159
  %i.dp = xor i64 %i.do, -1
  %i.dq = lshr i64 %i.dp, %i.dm
  %i.dr = and i64 %i.dq, 1
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit99
  %.0.i101 = phi i64 [ %i.dr, %bb.v ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit99 ] ; 2 uses
  %i.ds = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN6duckdb6vectorItLb1ESaItEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.057126)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.dt = trunc i64 %.055127 to i16
  store i16 %i.dt, ptr %i.ds, align 2, !tbaa !143
  %i.du = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIfLb1ESaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.055127)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dv = add i64 %.0.i101, %.057126              ; 4 uses
  store float %i.dj, ptr %i.du, align 4, !tbaa !149
  %i.dw = add nuw nsw i64 %.055127, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %.sroa.0.0.insert.ext.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !160

bb.y:                                             ; preds = %bb.w, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit163.unr-lcssa: ; preds = %.lr.ph.i8.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit163.unr-lcssa, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i
  %.07.i.i.epil.init = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i ], [ %i.db, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit163.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i8.i.epil

.lr.ph.i8.i.epil:                                 ; preds = %.lr.ph.i8.i.epil, %.lr.ph.i8.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.ec, %.lr.ph.i8.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i8.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i8.i.epil ], [ 0, %.lr.ph.i8.i.epil.preheader ]
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i.epil
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !143
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ea
  store float %.08.i.i, ptr %i.eb, align 4, !tbaa !149
  %i.ec = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil, !llvm.loop !161

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit: ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit163.unr-lcssa, %.lr.ph.i8.i.epil, %bb.q, %._crit_edge
  br i1 %.not.i.i.i.i.i, label %._crit_edge133, label %.lr.ph132

._crit_edge133:                                   ; preds = %bb.ac, %.preheader122, %.preheader, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !163 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !164
  %.not.i.i102 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not.i.i102, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge133
  %i.eh = load <2 x ptr>, ptr %5, align 16, !tbaa !165
  store <2 x ptr> %i.eh, ptr %i.ee, align 8, !tbaa !165
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ek = load ptr, ptr %i.ej, align 16, !tbaa !148
  store ptr %i.ek, ptr %i.ei, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.el, ptr %i.ed, align 8, !tbaa !163
  br label %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit

bb.aa:                                            ; preds = %._crit_edge133
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit unwind label %bb.au

.lr.ph132:                                        ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, %bb.ac
  %.0131 = phi i64 [ %i.er, %bb.ac ], [ 0, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit ] ; 2 uses
  %.054130 = phi i64 [ %i.eq, %bb.ac ], [ 0, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit ] ; 2 uses
  %i.en = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIfLb1ESaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.0131)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.lr.ph132
  %i.eo = load float, ptr %i.en, align 4, !tbaa !149
  %i.ep = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIfLb1ESaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.054130)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store float %i.eo, ptr %i.ep, align 4, !tbaa !149
  %i.eq = add nuw nsw i64 %.054130, 1
  %i.er = add nuw nsw i64 %.0131, %.sroa.2.0.insert.ext.i ; 2 uses
  %i.es = icmp samesign ult i64 %i.er, %.sroa.0.0.insert.ext.i
  br i1 %i.es, label %.lr.ph132, label %._crit_edge133, !llvm.loop !166

bb.ad:                                            ; preds = %bb.ab, %.lr.ph132
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.z, %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !163 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !164
  %.not.i.i104 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i.i104, label %bb.ae, label %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit106.thread

_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit106.thread: ; preds = %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit
  %i.ey = load <2 x ptr>, ptr %6, align 16, !tbaa !165
  store <2 x ptr> %i.ey, ptr %i.ev, align 8, !tbaa !165
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fb = load ptr, ptr %i.fa, align 16, !tbaa !148
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !148
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !163
  %i.fd = load i64, ptr %i.p, align 8, !tbaa !120
  %i.fe = add i64 %i.fd, 1
  store i64 %i.fe, ptr %i.p, align 8, !tbaa !120
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit106 unwind label %bb.au

_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit106: ; preds = %bb.ae
  %.pr = load ptr, ptr %6, align 16, !tbaa !145   ; 2 uses
  %i.fg = load i64, ptr %i.p, align 8, !tbaa !120
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %i.p, align 8, !tbaa !120
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit106
  call void @_ZdlPv(ptr noundef nonnull %.pr) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit106.thread, %_ZNSt6vectorIN6duckdb6vectorIfLb1ESaIfEEESaIS3_EE9push_backEOS3_.exit106, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fi = load ptr, ptr %5, align 16, !tbaa !145  ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIfSaIfEED2Ev.exit108, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit108

_ZNSt6vectorIfSaIfEED2Ev.exit108:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fj = load ptr, ptr %4, align 8, !tbaa !139   ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit108
  call void @_ZdlPv(ptr noundef nonnull %i.fj) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit108, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !167 ; 8 uses
  %.not.i.i.i.i.i110 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i110, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb19AlpFinalizeCompressIfEEvRNS_16CompressionStateE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN6duckdb19AlpCompressionStateIfE8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.d) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZN6duckdb19AlpCompressionStateIfE8FinalizeEv.exit

_ZN6duckdb19AlpCompressionStateIfE8FinalizeEv.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11AlpInitScanIfEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.a = tail call noalias noundef nonnull dereferenceable(18536) ptr @_Znwm(i64 noundef 18536) #23, !noalias !209 ; 3 uses
  invoke void @_ZN6duckdb12AlpScanStateIfEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(18536) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZN6duckdb14make_uniq_baseINS_16SegmentScanStateENS_12AlpScanStateIfEEJRNS_13ColumnSegmentEEEENS_10unique_ptrIT_St14default_deleteIS7_ELb1EEEDpOT1_.exit unwind label %bb.b, !noalias !209

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24, !noalias !209
  resume { ptr, i32 } %i.b

_ZN6duckdb14make_uniq_baseINS_16SegmentScanStateENS_12AlpScanStateIfEEJRNS_13ColumnSegmentEEEENS_10unique_ptrIT_St14default_deleteIS7_ELb1EEEDpOT1_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !212, !alias.scope !209
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7AlpScanIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat {
bb.a:
  tail call void @_ZN6duckdb14AlpScanPartialIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14AlpScanPartialIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 6 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %4
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 18528
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.pre = load i64, ptr %i.f, align 8, !tbaa !221
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit
  %i.j = phi i64 [ %.pre, %.lr.ph ], [ %i.z, %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit ] ; 2 uses
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit ] ; 3 uses
  %i.k = sub nuw i64 %2, %.017
  %i.l = and i64 %i.j, 1023                       ; 2 uses
  %i.m = sub nuw nsw i64 1024, %i.l
  %i.n = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.017 ; 2 uses
  %i.p = icmp eq i64 %i.l, 0
  %i.q = load i64, ptr %i.g, align 8
  %i.r = icmp ult i64 %i.j, %i.q
  %or.cond.i = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.n, 1024
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12AlpScanStateIfE10LoadVectorILb0EEEvPf(ptr noundef nonnull align 8 dereferenceable(18536) %i.b, ptr noundef %i.o)
  br label %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12AlpScanStateIfE10LoadVectorILb0EEEvPf(ptr noundef nonnull align 8 dereferenceable(18536) %i.b, ptr noundef nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.t = load i64, ptr %i.i, align 8, !tbaa !225
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 4 %i.u, i64 %i.v, i1 false)
  %i.w = load i64, ptr %i.i, align 8, !tbaa !225
  %i.x = add i64 %i.w, %i.n
  store i64 %i.x, ptr %i.i, align 8, !tbaa !225
  br label %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit

_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit: ; preds = %bb.d, %bb.f
  %i.y = load i64, ptr %i.f, align 8, !tbaa !221
  %i.z = add i64 %i.y, %i.n                       ; 2 uses
  store i64 %i.z, ptr %i.f, align 8, !tbaa !221
  %i.aa = add i64 %i.n, %.017                     ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %2
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11AlpFetchRowIfEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::AlpScanState", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb12AlpScanStateIfEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(18536) %5, ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, 1023                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 1024, %i.c
  %i.f = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.e) ; 2 uses
  invoke void @_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb1EEEvPfm(ptr noundef nonnull align 8 dereferenceable(18536) %5, ptr noundef null, i64 noundef %i.f)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.g = sub i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.a
  %.012.i = phi i64 [ %2, %bb.b ], [ %i.g, %.noexc ], [ %2, %bb.a ] ; 3 uses
  %i.h = lshr i64 %.012.i, 10                     ; 4 uses
  %.not18.i = icmp eq i64 %i.h, 0
  br i1 %.not18.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 18528
  %i.k = load i64, ptr %i.j, align 8, !tbaa !227  ; 5 uses
  %.promoted.i = load ptr, ptr %i.i, align 8, !tbaa !228
  %.promoted16.i = load i64, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.l = icmp ult i64 %.012.i, 4096
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.h, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted16.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.m = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.p, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.n = sub i64 %i.k, %i.m
  %i.o = call noundef i64 @llvm.umin.i64(i64 %i.n, i64 1024)
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !229

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.p, %bb.e ]
  %i.q = mul nsw i64 %i.h, -4
  %scevgep.i = getelementptr i8, ptr %.promoted.i, i64 %i.q
  store ptr %scevgep.i, ptr %i.i, align 8, !tbaa !228
  store i64 %.lcssa, ptr %i.a, align 8, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.r = and i64 %.012.i, 1023                    ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.t = phi i64 [ %.promoted16.i, %.lr.ph.i.new ], [ %i.af, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.u = sub i64 %i.k, %i.t
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 1024)
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = sub i64 %i.k, %i.w
  %i.y = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 1024)
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = sub i64 %i.k, %i.z
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 1024)
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = sub i64 %i.k, %i.ac
  %i.ae = call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 1024)
  %i.af = add i64 %i.ae, %i.ac                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !230

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb1EEEvPfm(ptr noundef nonnull align 8 dereferenceable(18536) %5, ptr noundef null, i64 noundef %i.r)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !214
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %4 ; 2 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !3
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %i.ak = and i64 %i.aj, 1023
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 18528
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ult i64 %i.aj, %i.an
  %or.cond = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 64
  invoke void @_ZN6duckdb12AlpScanStateIfE10LoadVectorILb0EEEvPf(ptr noundef nonnull align 8 dereferenceable(18536) %5, ptr noundef nonnull %i.ap)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load i64, ptr %i.as, align 8, !tbaa !225
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  store i32 %i.aw, ptr %i.ai, align 4
  %i.ax = load <2 x i64>, ptr %i.a, align 8, !tbaa !159
  %i.ay = add <2 x i64> %i.ax, splat (i64 1)
  store <2 x i64> %i.ay, ptr %i.a, align 8, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12AlpScanStateIfEE, i64 16), ptr %5, align 8, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #22, !inline_history !231
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12AlpScanStateIfEE, i64 16), ptr %5, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #22, !inline_history !231
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7AlpSkipIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !221  ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw nsw i64 1024, %i.e
  %i.h = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 2 uses
  tail call void @_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb1EEEvPfm(ptr noundef nonnull align 8 dereferenceable(18536) %i.b, ptr noundef null, i64 noundef %i.h)
  %i.i = sub i64 %2, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.012.i = phi i64 [ %2, %bb.b ], [ %i.i, %bb.c ], [ %2, %bb.a ] ; 3 uses
  %i.j = lshr i64 %.012.i, 10                     ; 4 uses
  %.not18.i = icmp eq i64 %i.j, 0
  br i1 %.not18.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 18528
  %i.m = load i64, ptr %i.l, align 8, !tbaa !227  ; 5 uses
  %.promoted.i = load ptr, ptr %i.k, align 8, !tbaa !228
  %.promoted16.i = load i64, ptr %i.c, align 8, !tbaa !221 ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.n = icmp ult i64 %.012.i, 4096
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.j, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted16.i, %.lr.ph.i ], [ %i.ah, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.o = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.p = sub i64 %i.m, %i.o
  %i.q = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 1024)
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !232

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.r, %bb.e ]
  %i.s = mul nsw i64 %i.j, -4
  %scevgep.i = getelementptr i8, ptr %.promoted.i, i64 %i.s
  store ptr %scevgep.i, ptr %i.k, align 8, !tbaa !228
  store i64 %.lcssa, ptr %i.c, align 8, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.t = and i64 %.012.i, 1023                    ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN6duckdb12AlpScanStateIfE4SkipERNS_13ColumnSegmentEm.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.v = phi i64 [ %.promoted16.i, %.lr.ph.i.new ], [ %i.ah, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.w = sub i64 %i.m, %i.v
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 1024)
  %i.y = add i64 %i.x, %i.v                       ; 2 uses
  %i.z = sub i64 %i.m, %i.y
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 1024)
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = sub i64 %i.m, %i.ab
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 1024)
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = sub i64 %i.m, %i.ae
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 1024)
  %i.ah = add i64 %i.ag, %i.ae                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !230

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb1EEEvPfm(ptr noundef nonnull align 8 dereferenceable(18536) %i.b, ptr noundef null, i64 noundef %i.t)
  br label %_ZN6duckdb12AlpScanStateIfE4SkipERNS_13ColumnSegmentEm.exit

_ZN6duckdb12AlpScanStateIfE4SkipERNS_13ColumnSegmentEm.exit: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb14GetAlpFunctionIdEENS_19CompressionFunctionENS_12PhysicalTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::CompressionFunction") align 8 captures(none) initializes((0, 2), (8, 193)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store i8 10, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6duckdb15AlpFinalAnalyzeIdEEmRNS_12AnalyzeStateE, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6duckdb18AlpInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr @_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.o, i8 0, i64 73, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i8 noundef zeroext %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.267", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26, !nonnull !83, !align !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.c = tail call noalias noundef nonnull dereferenceable(26784) ptr @_Znwm(i64 noundef 26784) #23, !noalias !233 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !88, !noalias !233
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb15AlpAnalyzeStateIdEE, i64 16), ptr %i.c, align 8, !tbaa !89, !noalias !233
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 18560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false), !noalias !233
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 26776
  store i64 0, ptr %i.h, align 8, !tbaa !236, !noalias !233
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.f, i8 0, i64 94, i1 false), !noalias !233
  store ptr %i.c, ptr %3, align 8, !tbaa !245, !alias.scope !233
  %i.i = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10ColumnData17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(296) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit unwind label %bb.c

_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit: ; preds = %bb.b
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15AlpAnalyzeStateIdEESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit unwind label %bb.c

_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 26776
  store i64 %i.k, ptr %i.m, align 8, !tbaa !236
  %i.n = load ptr, ptr %3, align 8, !tbaa !245
  store ptr %i.n, ptr %0, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.c:                                             ; preds = %bb.b, %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !245    ; 3 uses
  %.not.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit5, label %_ZNKSt14default_deleteIN6duckdb15AlpAnalyzeStateIdEEEclEPS2_.exit.i4

_ZNKSt14default_deleteIN6duckdb15AlpAnalyzeStateIdEEEclEPS2_.exit.i4: ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(26784) %i.p) #22, !inline_history !247
  br label %_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit5: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15AlpAnalyzeStateIdEEEclEPS2_.exit.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %4 = alloca %"class.duckdb::vector.115", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::vector.284", align 16 ; 18 uses
  %6 = alloca %"class.duckdb::vector.284", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116, !nonnull !83, !align !84 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = sub i64 %i.d, %i.f
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !116, !nonnull !83, !align !84
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !117
  %.not.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i, label %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit

_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.k, %bb.b ], [ 8, %bb.a ]
  %i.l = add i64 %i.g, %.0.i.i
  %i.m = icmp ugt i64 %i.l, 262143                ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.ba

bb.c:                                             ; preds = %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !248  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !249
  %i.r = urem i64 %i.o, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = icmp ult i64 %2, 32
  %i.u = icmp ne i64 %i.q, 0
  %or.cond.i = and i1 %i.t, %i.u
  %.0.i = or i1 %i.s, %or.cond.i
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !tbaa !248
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !250
  %i.y = add i64 %i.x, %2
  store i64 %i.y, ptr %i.w, align 8, !tbaa !250
  br i1 %.0.i, label %bb.ba, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !122 ; 2 uses
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %2, i64 1024)
  %i.ac = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ab)
          to label %bb.g unwind label %bb.l       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = uitofp i32 %i.ac to double              ; 2 uses
  %i.ae = fmul nnan double %i.ad, 3.125000e-02
  %i.af = call double @llvm.ceil.f64(double %i.ae)
  %i.ag = fptoui double %i.af to i32
  %i.ah = call noundef i32 @llvm.umax.i32(i32 %i.ag, i32 1) ; 2 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fdiv double %i.ad, %i.ai
  %i.ak = call double @llvm.ceil.f64(double %i.aj)
  %i.al = fptoui double %i.ak to i32              ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.ah to i64
  %.sroa.0.0.insert.ext.i = zext i32 %i.ac to i64 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0          ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.loopexit123

bb.h:                                             ; preds = %bb.g
  %i.am = shl nuw nsw i64 %.sroa.0.0.insert.ext.i, 1 ; 3 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #23
          to label %.noexc unwind label %bb.m     ; 4 uses

.noexc:                                           ; preds = %bb.h
  store ptr %i.an, ptr %4, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.0.0.insert.ext.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.an, i8 0, i64 %i.am, i1 false), !tbaa !143
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.as = shl nuw nsw i64 %.sroa.0.0.insert.ext.i, 3 ; 3 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #23
          to label %.noexc88 unwind label %bb.n   ; 4 uses

.noexc88:                                         ; preds = %.noexc
  store ptr %i.at, ptr %5, align 16, !tbaa !251
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.0.0.insert.ext.i
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.au, ptr %i.av, align 16, !tbaa !254
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.as, i1 false), !tbaa !255
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  br label %.loopexit123

.loopexit123:                                     ; preds = %.noexc88, %.thread
  %.0.i.i.i.i.i.i.i.i87 = phi ptr [ null, %.thread ], [ %i.aw, %.noexc88 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i87, ptr %i.ax, align 8, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ay = zext i32 %i.al to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i89 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i89, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.loopexit123
  %i.az = shl nuw nsw i64 %i.ay, 3                ; 3 uses
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #23
          to label %.noexc94 unwind label %bb.o   ; 4 uses

.noexc94:                                         ; preds = %bb.i
  store ptr %i.ba, ptr %6, align 16, !tbaa !251
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bb, ptr %i.bc, align 16, !tbaa !254
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %i.az, i1 false), !tbaa !255
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc94, %.loopexit123
  %.0.i.i.i.i.i.i.i.i93 = phi ptr [ null, %.loopexit123 ], [ %i.bd, %.noexc94 ]
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i93, ptr %i.be, align 8, !tbaa !257
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %.preheader, label %.preheader122

.preheader122:                                    ; preds = %.loopexit
  br i1 %.not.i.i.i.i.i, label %._crit_edge133, label %.lr.ph

.preheader:                                       ; preds = %.loopexit
  br i1 %.not.i.i.i.i.i, label %._crit_edge133, label %.lr.ph129

bb.j:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.k:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.l:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.m:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit116

bb.n:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit114

bb.o:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit112

.lr.ph129:                                        ; preds = %.preheader, %bb.q
  %.056128 = phi i64 [ %i.bw, %bb.q ], [ 0, %.preheader ] ; 4 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !153
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !154 ; 2 uses
  %.not.i96 = icmp eq ptr %i.bo, null
  br i1 %.not.i96, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph129
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.056128
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %.lr.ph129
  %i.bs = phi i64 [ %i.br, %bb.p ], [ %.056128, %.lr.ph129 ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !255
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.056128)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  store double %i.bu, ptr %i.bv, align 8, !tbaa !255
  %i.bw = add nuw nsw i64 %.056128, 1             ; 2 uses
  %exitcond138.not = icmp eq i64 %i.bw, %.sroa.0.0.insert.ext.i
  br i1 %exitcond138.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, label %.lr.ph129, !llvm.loop !258

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

._crit_edge:                                      ; preds = %bb.x
  %.pre = load ptr, ptr %5, align 16, !tbaa !251  ; 6 uses
  %.pre139 = load ptr, ptr %4, align 8, !tbaa !139 ; 6 uses
  %i.by = icmp eq i64 %i.dv, 0
  br i1 %i.by, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.t
  %.010.i.i = phi i64 [ %i.ce, %bb.t ], [ 0, %._crit_edge ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.010.i.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !143
  %i.cb = zext i16 %i.ca to i64
  %.not.i.i97 = icmp eq i64 %.010.i.i, %i.cb
  br i1 %.not.i.i97, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.010.i.i
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !255
  br label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ce = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.sroa.0.0.insert.ext.i
  br i1 %exitcond.not.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i, !llvm.loop !259

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i: ; preds = %bb.t, %bb.s
  %.08.i.i = phi double [ %i.cd, %bb.s ], [ 0.000000e+00, %bb.t ] ; 5 uses
  %i.cf = add nsw i64 %.0.i101, -1
  %i.cg = add i64 %i.cf, %.057126
  %xtraiter = and i64 %i.dv, 3                    ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 3
  br i1 %i.ch, label %.lr.ph.i8.i.epil.preheader, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new: ; preds = %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i
  %unroll_iter = and i64 %i.dv, -4
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new
  %.07.i.i = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new ], [ %i.db, %.lr.ph.i8.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new ], [ %niter.next.3, %.lr.ph.i8.i ]
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !143
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ck
  store double %.08.i.i, ptr %i.cl, align 8, !tbaa !255
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !143
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cp
  store double %.08.i.i, ptr %i.cq, align 8, !tbaa !255
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !143
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cu
  store double %.08.i.i, ptr %i.cv, align 8, !tbaa !255
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 6
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !143
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cz
  store double %.08.i.i, ptr %i.da, align 8, !tbaa !255
  %i.db = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit163.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !260

.lr.ph:                                           ; preds = %.preheader122, %bb.x
  %.055127 = phi i64 [ %i.dw, %bb.x ], [ 0, %.preheader122 ] ; 5 uses
  %.057126 = phi i64 [ %i.dv, %bb.x ], [ 0, %.preheader122 ] ; 3 uses
  %i.dc = load ptr, ptr %3, align 8, !tbaa !153
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !154 ; 2 uses
  %.not.i98 = icmp eq ptr %i.dd, null
  br i1 %.not.i98, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit99, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.055127
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = zext i32 %i.df to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit99

_ZNK6duckdb15SelectionVector9get_indexEm.exit99:  ; preds = %bb.u, %.lr.ph
  %i.dh = phi i64 [ %i.dg, %bb.u ], [ %.055127, %.lr.ph ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !255
  %i.dk = load ptr, ptr %i.bf, align 8, !tbaa !152 ; 2 uses
  %.not.i100 = icmp eq ptr %i.dk, null
  br i1 %.not.i100, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit99
  %i.dl = lshr i64 %i.dh, 6
  %i.dm = and i64 %i.dh, 63
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !159
  %i.dp = xor i64 %i.do, -1
  %i.dq = lshr i64 %i.dp, %i.dm
  %i.dr = and i64 %i.dq, 1
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit99
  %.0.i101 = phi i64 [ %i.dr, %bb.v ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit99 ] ; 2 uses
  %i.ds = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN6duckdb6vectorItLb1ESaItEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.057126)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.dt = trunc i64 %.055127 to i16
  store i16 %i.dt, ptr %i.ds, align 2, !tbaa !143
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.055127)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dv = add i64 %.0.i101, %.057126              ; 4 uses
  store double %i.dj, ptr %i.du, align 8, !tbaa !255
  %i.dw = add nuw nsw i64 %.055127, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %.sroa.0.0.insert.ext.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !261

bb.y:                                             ; preds = %bb.w, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit163.unr-lcssa: ; preds = %.lr.ph.i8.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit163.unr-lcssa, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i
  %.07.i.i.epil.init = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i ], [ %i.db, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit163.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i8.i.epil

.lr.ph.i8.i.epil:                                 ; preds = %.lr.ph.i8.i.epil, %.lr.ph.i8.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.ec, %.lr.ph.i8.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i8.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i8.i.epil ], [ 0, %.lr.ph.i8.i.epil.preheader ]
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.pre139, i64 %.07.i.i.epil
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !143
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ea
  store double %.08.i.i, ptr %i.eb, align 8, !tbaa !255
  %i.ec = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil, !llvm.loop !262

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit: ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit163.unr-lcssa, %.lr.ph.i8.i.epil, %bb.q, %._crit_edge
  br i1 %.not.i.i.i.i.i, label %._crit_edge133, label %.lr.ph132

._crit_edge133:                                   ; preds = %bb.ac, %.preheader122, %.preheader, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !263 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !264
  %.not.i.i102 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not.i.i102, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge133
  %i.eh = load <2 x ptr>, ptr %5, align 16, !tbaa !265
  store <2 x ptr> %i.eh, ptr %i.ee, align 8, !tbaa !265
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ek = load ptr, ptr %i.ej, align 16, !tbaa !254
  store ptr %i.ek, ptr %i.ei, align 8, !tbaa !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.el, ptr %i.ed, align 8, !tbaa !263
  br label %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit

bb.aa:                                            ; preds = %._crit_edge133
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit unwind label %bb.au

.lr.ph132:                                        ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, %bb.ac
  %.0131 = phi i64 [ %i.er, %bb.ac ], [ 0, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit ] ; 2 uses
  %.054130 = phi i64 [ %i.eq, %bb.ac ], [ 0, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit ] ; 2 uses
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.0131)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.lr.ph132
  %i.eo = load double, ptr %i.en, align 8, !tbaa !255
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.054130)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %i.eo, ptr %i.ep, align 8, !tbaa !255
  %i.eq = add nuw nsw i64 %.054130, 1
  %i.er = add nuw nsw i64 %.0131, %.sroa.2.0.insert.ext.i ; 2 uses
  %i.es = icmp samesign ult i64 %i.er, %.sroa.0.0.insert.ext.i
  br i1 %i.es, label %.lr.ph132, label %._crit_edge133, !llvm.loop !266

bb.ad:                                            ; preds = %bb.ab, %.lr.ph132
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.z, %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !263 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !264
  %.not.i.i104 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i.i104, label %bb.ae, label %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit106.thread

_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit106.thread: ; preds = %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit
  %i.ey = load <2 x ptr>, ptr %6, align 16, !tbaa !265
  store <2 x ptr> %i.ey, ptr %i.ev, align 8, !tbaa !265
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fb = load ptr, ptr %i.fa, align 16, !tbaa !254
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !254
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store ptr %i.fc, ptr %i.eu, align 8, !tbaa !263
  %i.fd = load i64, ptr %i.p, align 8, !tbaa !249
  %i.fe = add i64 %i.fd, 1
  store i64 %i.fe, ptr %i.p, align 8, !tbaa !249
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, ptr %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit106 unwind label %bb.au

_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit106: ; preds = %bb.ae
  %.pr = load ptr, ptr %6, align 16, !tbaa !251   ; 2 uses
  %i.fg = load i64, ptr %i.p, align 8, !tbaa !249
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %i.p, align 8, !tbaa !249
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit106
  call void @_ZdlPv(ptr noundef nonnull %.pr) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit106.thread, %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EE9push_backEOS3_.exit106, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fi = load ptr, ptr %5, align 16, !tbaa !251  ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIdSaIdEED2Ev.exit108, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit108

_ZNSt6vectorIdSaIdEED2Ev.exit108:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fj = load ptr, ptr %4, align 8, !tbaa !139   ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit108
  call void @_ZdlPv(ptr noundef nonnull %i.fj) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit108, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !167 ; 8 uses
  %.not.i.i.i.i.i110 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i110, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN6duckdb19AlpCompressionStateIdE8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.d) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZN6duckdb19AlpCompressionStateIdE8FinalizeEv.exit

_ZN6duckdb19AlpCompressionStateIdE8FinalizeEv.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.a = tail call noalias noundef nonnull dereferenceable(26728) ptr @_Znwm(i64 noundef 26728) #23, !noalias !279 ; 3 uses
  invoke void @_ZN6duckdb12AlpScanStateIdEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(26728) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZN6duckdb14make_uniq_baseINS_16SegmentScanStateENS_12AlpScanStateIdEEJRNS_13ColumnSegmentEEEENS_10unique_ptrIT_St14default_deleteIS7_ELb1EEEDpOT1_.exit unwind label %bb.b, !noalias !279

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24, !noalias !279
  resume { ptr, i32 } %i.b

_ZN6duckdb14make_uniq_baseINS_16SegmentScanStateENS_12AlpScanStateIdEEJRNS_13ColumnSegmentEEEENS_10unique_ptrIT_St14default_deleteIS7_ELb1EEEDpOT1_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !212, !alias.scope !279
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat {
bb.a:
  tail call void @_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 6 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %4
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 26720
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.pre = load i64, ptr %i.f, align 8, !tbaa !282
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit
  %i.j = phi i64 [ %.pre, %.lr.ph ], [ %i.z, %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit ] ; 2 uses
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit ] ; 3 uses
  %i.k = sub nuw i64 %2, %.017
  %i.l = and i64 %i.j, 1023                       ; 2 uses
  %i.m = sub nuw nsw i64 1024, %i.l
  %i.n = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.017 ; 2 uses
  %i.p = icmp eq i64 %i.l, 0
  %i.q = load i64, ptr %i.g, align 8
  %i.r = icmp ult i64 %i.j, %i.q
  %or.cond.i = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.n, 1024
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12AlpScanStateIdE10LoadVectorILb0EEEvPd(ptr noundef nonnull align 8 dereferenceable(26728) %i.b, ptr noundef %i.o)
  br label %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12AlpScanStateIdE10LoadVectorILb0EEEvPd(ptr noundef nonnull align 8 dereferenceable(26728) %i.b, ptr noundef nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.t = load i64, ptr %i.i, align 8, !tbaa !285
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.v = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 8 %i.u, i64 %i.v, i1 false)
  %i.w = load i64, ptr %i.i, align 8, !tbaa !285
  %i.x = add i64 %i.w, %i.n
  store i64 %i.x, ptr %i.i, align 8, !tbaa !285
  br label %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit

_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit: ; preds = %bb.d, %bb.f
  %i.y = load i64, ptr %i.f, align 8, !tbaa !282
  %i.z = add i64 %i.y, %i.n                       ; 2 uses
  store i64 %i.z, ptr %i.f, align 8, !tbaa !282
  %i.aa = add i64 %i.n, %.017                     ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %2
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !286

._crit_edge:                                      ; preds = %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::AlpScanState.309", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb12AlpScanStateIdEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(26728) %5, ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !282  ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, 1023                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 1024, %i.c
  %i.f = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.e) ; 2 uses
  invoke void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %5, ptr noundef null, i64 noundef %i.f)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.g = sub i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.a
  %.012.i = phi i64 [ %2, %bb.b ], [ %i.g, %.noexc ], [ %2, %bb.a ] ; 3 uses
  %i.h = lshr i64 %.012.i, 10                     ; 4 uses
  %.not18.i = icmp eq i64 %i.h, 0
  br i1 %.not18.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 26720
  %i.k = load i64, ptr %i.j, align 8, !tbaa !287  ; 5 uses
  %.promoted.i = load ptr, ptr %i.i, align 8, !tbaa !288
  %.promoted16.i = load i64, ptr %i.a, align 8, !tbaa !282 ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.l = icmp ult i64 %.012.i, 4096
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.h, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted16.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.m = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.p, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.n = sub i64 %i.k, %i.m
  %i.o = call noundef i64 @llvm.umin.i64(i64 %i.n, i64 1024)
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !289

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.p, %bb.e ]
  %i.q = mul nsw i64 %i.h, -4
  %scevgep.i = getelementptr i8, ptr %.promoted.i, i64 %i.q
  store ptr %scevgep.i, ptr %i.i, align 8, !tbaa !288
  store i64 %.lcssa, ptr %i.a, align 8, !tbaa !282
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.r = and i64 %.012.i, 1023                    ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.t = phi i64 [ %.promoted16.i, %.lr.ph.i.new ], [ %i.af, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.u = sub i64 %i.k, %i.t
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 1024)
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = sub i64 %i.k, %i.w
  %i.y = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 1024)
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = sub i64 %i.k, %i.z
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 1024)
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = sub i64 %i.k, %i.ac
  %i.ae = call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 1024)
  %i.af = add i64 %i.ae, %i.ac                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !290

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %5, ptr noundef null, i64 noundef %i.r)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !214
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %4 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !159
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !282 ; 2 uses
  %i.ak = and i64 %i.aj, 1023
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 26720
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ult i64 %i.aj, %i.an
  %or.cond = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 64
  invoke void @_ZN6duckdb12AlpScanStateIdE10LoadVectorILb0EEEvPd(ptr noundef nonnull align 8 dereferenceable(26728) %5, ptr noundef nonnull %i.ap)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load i64, ptr %i.as, align 8, !tbaa !285
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.ai, align 8
  %i.ax = load <2 x i64>, ptr %i.a, align 8, !tbaa !159
  %i.ay = add <2 x i64> %i.ax, splat (i64 1)
  store <2 x i64> %i.ay, ptr %i.a, align 8, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12AlpScanStateIdEE, i64 16), ptr %5, align 8, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #22, !inline_history !291
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12AlpScanStateIdEE, i64 16), ptr %5, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #22, !inline_history !291
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !282  ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw nsw i64 1024, %i.e
  %i.h = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 2 uses
  tail call void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %i.b, ptr noundef null, i64 noundef %i.h)
  %i.i = sub i64 %2, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.012.i = phi i64 [ %2, %bb.b ], [ %i.i, %bb.c ], [ %2, %bb.a ] ; 3 uses
  %i.j = lshr i64 %.012.i, 10                     ; 4 uses
  %.not18.i = icmp eq i64 %i.j, 0
  br i1 %.not18.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 26720
  %i.m = load i64, ptr %i.l, align 8, !tbaa !287  ; 5 uses
  %.promoted.i = load ptr, ptr %i.k, align 8, !tbaa !288
  %.promoted16.i = load i64, ptr %i.c, align 8, !tbaa !282 ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.n = icmp ult i64 %.012.i, 4096
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.j, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted16.i, %.lr.ph.i ], [ %i.ah, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.o = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.p = sub i64 %i.m, %i.o
  %i.q = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 1024)
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !292

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.r, %bb.e ]
  %i.s = mul nsw i64 %i.j, -4
  %scevgep.i = getelementptr i8, ptr %.promoted.i, i64 %i.s
  store ptr %scevgep.i, ptr %i.k, align 8, !tbaa !288
  store i64 %.lcssa, ptr %i.c, align 8, !tbaa !282
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.t = and i64 %.012.i, 1023                    ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN6duckdb12AlpScanStateIdE4SkipERNS_13ColumnSegmentEm.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.v = phi i64 [ %.promoted16.i, %.lr.ph.i.new ], [ %i.ah, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.w = sub i64 %i.m, %i.v
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 1024)
  %i.y = add i64 %i.x, %i.v                       ; 2 uses
  %i.z = sub i64 %i.m, %i.y
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 1024)
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = sub i64 %i.m, %i.ab
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 1024)
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = sub i64 %i.m, %i.ae
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 1024)
  %i.ah = add i64 %i.ag, %i.ae                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !290

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %i.b, ptr noundef null, i64 noundef %i.t)
  br label %_ZN6duckdb12AlpScanStateIdE4SkipERNS_13ColumnSegmentEm.exit

_ZN6duckdb12AlpScanStateIdE4SkipERNS_13ColumnSegmentEm.exit: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17AlpCompressionFun11GetFunctionENS_12PhysicalTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::CompressionFunction") align 8 captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  switch i8 %1, label %bb.c [
    i8 11, label %bb.h
    i8 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !293    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.g, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.b
  %_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE.sink = phi ptr [ @_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE, %bb.b ], [ @_ZN6duckdb14AlpInitAnalyzeIfEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE, %bb.a ]
  %_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm.sink = phi ptr [ @_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm, %bb.b ], [ @_ZN6duckdb10AlpAnalyzeIfEEbRNS_12AnalyzeStateERNS_6VectorEm, %bb.a ]
  %_ZN6duckdb15AlpFinalAnalyzeIdEEmRNS_12AnalyzeStateE.sink = phi ptr [ @_ZN6duckdb15AlpFinalAnalyzeIdEEmRNS_12AnalyzeStateE, %bb.b ], [ @_ZN6duckdb15AlpFinalAnalyzeIfEEmRNS_12AnalyzeStateE, %bb.a ]
  %_ZN6duckdb18AlpInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE.sink = phi ptr [ @_ZN6duckdb18AlpInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE, %bb.b ], [ @_ZN6duckdb18AlpInitCompressionIfEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE, %bb.a ]
  %_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm.sink = phi ptr [ @_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm, %bb.b ], [ @_ZN6duckdb11AlpCompressIfEEvRNS_16CompressionStateERNS_6VectorEm, %bb.a ]
  %_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE.sink = phi ptr [ @_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE, %bb.b ], [ @_ZN6duckdb19AlpFinalizeCompressIfEEvRNS_16CompressionStateE, %bb.a ]
  %_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE.sink = phi ptr [ @_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE, %bb.b ], [ @_ZN6duckdb11AlpInitScanIfEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE, %bb.a ]
  %_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.sink = phi ptr [ @_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, %bb.b ], [ @_ZN6duckdb7AlpScanIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, %bb.a ]
  %_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.sink = phi ptr [ @_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, %bb.b ], [ @_ZN6duckdb14AlpScanPartialIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, %bb.a ]
  %_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm.sink = phi ptr [ @_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, %bb.b ], [ @_ZN6duckdb11AlpFetchRowIfEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, %bb.a ]
  %_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm.sink = phi ptr [ @_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm, %bb.b ], [ @_ZN6duckdb7AlpSkipIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm, %bb.a ]
  store i8 10, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.g, align 1, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE.sink, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm.sink, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %_ZN6duckdb15AlpFinalAnalyzeIdEEmRNS_12AnalyzeStateE.sink, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %_ZN6duckdb18AlpInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE.sink, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm.sink, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE.sink, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE.sink, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.sink, ptr %i.p, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.sink, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store ptr %_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm.sink, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm.sink, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.u, i8 0, i64 73, i1 false)
  ret void

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn13, %bb.g ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn12

bb.j:                                             ; preds = %bb.e
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN6duckdb17AlpCompressionFun15TypeIsSupportedENS_12PhysicalTypeE(i8 noundef zeroext %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.off = add i8 %0, -11
  %switch = icmp ult i8 %.off, 2
  ret i1 %switch
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10ColumnData17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(296)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15AlpAnalyzeStateIfEESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !110    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15AlpAnalyzeStateIfEESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
end_hunk_2
begin_hunk_3_@_ZN6duckdb3alp14AlpCompressionIfLb1EE20FindTopKCombinationsERKNS_6vectorINS3_IfLb1ESaIfEEELb1ESaIS5_EEERNS0_18AlpCompressionDataIfLb1EEE:bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.e:                                             ; preds = %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not155 = icmp eq i64 %indvars.iv, 0
  br i1 %.not155, label %bb.c, label %.preheader, !llvm.loop !367

bb.f:                                             ; preds = %.preheader, %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread
  %indvars.iv120 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next121, %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread ] ; 6 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !151 ; 3 uses
  %i.af = load ptr, ptr %.sroa.086.0107, align 8, !tbaa !145 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %.not41.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not41.i, label %bb.o, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ak = load float, ptr %i.z, align 4, !tbaa !149
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %indvars.iv120
  %i.am = load float, ptr %i.al, align 4, !tbaa !149
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %indvars.iv120
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.m
  %i.ao = icmp ult i64 %.135.i, 2
  br i1 %i.ao, label %bb.o, label %bb.n

bb.g:                                             ; preds = %bb.m, %.lr.ph.i
  %.02846.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.m ] ; 2 uses
  %.03045.i = phi i64 [ 9223372036854775807, %.lr.ph.i ], [ %.131.i, %bb.m ] ; 2 uses
  %.03244.i = phi i64 [ -9223372036854775808, %.lr.ph.i ], [ %.133.i, %bb.m ] ; 2 uses
  %.03443.i = phi i64 [ 0, %.lr.ph.i ], [ %.135.i, %bb.m ] ; 2 uses
  %.sroa.038.042.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.bo, %bb.m ] ; 3 uses
  %i.ap = load float, ptr %.sroa.038.042.i, align 4, !tbaa !149
  %i.aq = fmul float %i.ak, %i.ap
  %i.ar = fmul float %i.am, %i.aq                 ; 6 uses
  %i.as = invoke noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIfEEbT_(float noundef %i.ar)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  br i1 %i.as, label %bb.h, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit.i

bb.h:                                             ; preds = %.noexc
  %i.at = invoke noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef %i.ar)
          to label %.noexc40 unwind label %bb.t

.noexc40:                                         ; preds = %bb.h
  br i1 %i.at, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit.i, label %bb.i

bb.i:                                             ; preds = %.noexc40
  %i.au = call float @llvm.fabs.f32(float %i.ar)
  %i.av = fpext float %i.au to double
  %or.cond.i.i.i.i = fcmp ogt double %i.av, f0x43DFFFFFFFFFFFFF
  br i1 %or.cond.i.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = fcmp oeq float %i.ar, 0.000000e+00
  %i.ax = bitcast float %i.ar to i32
  %i.ay = icmp slt i32 %i.ax, 0
  %or.cond.i.i.i = and i1 %i.aw, %i.ay
  br i1 %or.cond.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit.i, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE20IsImpossibleToEncodeEf.exit.thread3.i.i.i

_ZN6duckdb3alp14AlpCompressionIfLb1EE20IsImpossibleToEncodeEf.exit.thread3.i.i.i: ; preds = %bb.j
  %i.az = fadd float %i.ar, f0x4B400000
  %i.ba = fadd float %i.az, f0xCB400000
  %i.bb = fptosi float %i.ba to i64
  br label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit.i

_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit.i: ; preds = %_ZN6duckdb3alp14AlpCompressionIfLb1EE20IsImpossibleToEncodeEf.exit.thread3.i.i.i, %bb.j, %bb.i, %.noexc40, %.noexc
  %.0.i.i.i = phi i64 [ %i.bb, %_ZN6duckdb3alp14AlpCompressionIfLb1EE20IsImpossibleToEncodeEf.exit.thread3.i.i.i ], [ 9223372036854774784, %bb.j ], [ 9223372036854774784, %bb.i ], [ 9223372036854774784, %.noexc40 ], [ 9223372036854774784, %.noexc ] ; 3 uses
  %i.bc = sitofp i64 %.0.i.i.i to float
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !159
  %i.be = sitofp i64 %i.bd to float
  %i.bf = fmul nnan float %i.bc, %i.be
  %i.bg = load float, ptr %i.aa, align 4, !tbaa !149
  %i.bh = fmul float %i.bg, %i.bf
  %i.bi = load float, ptr %.sroa.038.042.i, align 4, !tbaa !149
  %i.bj = fcmp oeq float %i.bh, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit.i
  %i.bk = add i64 %.03443.i, 1
  %i.bl = call noundef i64 @llvm.smax.i64(i64 %.0.i.i.i, i64 %.03244.i)
  %i.bm = call noundef i64 @llvm.smin.i64(i64 %.0.i.i.i, i64 %.03045.i)
  br label %bb.m

bb.l:                                             ; preds = %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit.i
  %i.bn = add i64 %.02846.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.135.i = phi i64 [ %i.bk, %bb.k ], [ %.03443.i, %bb.l ] ; 2 uses
  %.133.i = phi i64 [ %i.bl, %bb.k ], [ %.03244.i, %bb.l ] ; 2 uses
  %.131.i = phi i64 [ %i.bm, %bb.k ], [ %.03045.i, %bb.l ] ; 2 uses
  %.1.i = phi i64 [ %.02846.i, %bb.k ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.038.042.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, %i.ae
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

bb.n:                                             ; preds = %._crit_edge.i
  %i.bp = mul i64 %.1.i, 48
  %i.bq = add i64 %.133.i, 1
  %i.br = sub i64 %i.bq, %.131.i
  %i.bs = uitofp i64 %i.br to double
  %i.bt = call noundef double @log2(double noundef %i.bs) #22, !tbaa !3
  %i.bu = call double @llvm.ceil.f64(double %i.bt)
  %i.bv = fptoui double %i.bu to i32
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul i64 %i.aj, %i.bw
  %i.by = add i64 %i.bx, %i.bp
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %._crit_edge.i, %bb.n
  %.0.i = phi i64 [ %i.by, %bb.n ], [ -1, %._crit_edge.i ], [ -1, %bb.f ] ; 3 uses
  %i.bz = load i64, ptr %i.m, align 8, !tbaa !364
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.p, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cb = load i64, ptr %i.n, align 8, !tbaa !366 ; 2 uses
  %i.cc = icmp ult i64 %.0.i, %i.cb
  br i1 %i.cc, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = icmp eq i64 %.0.i, %i.cb
  br i1 %i.cd, label %bb.r, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ce = load i8, ptr %8, align 8, !tbaa !368
  %i.cf = zext i8 %i.ce to i64                    ; 2 uses
  %i.cg = icmp samesign ugt i64 %indvars.iv, %i.cf
  br i1 %i.cg, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = icmp eq i64 %indvars.iv, %i.cf
  %i.ci = load i8, ptr %i.o, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = icmp ugt i64 %indvars.iv120, %i.cj
  %or.cond = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %or.cond, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90: ; preds = %bb.s, %bb.p, %bb.r
  %i.cl = trunc nuw nsw i64 %indvars.iv120 to i16
  %.sroa.073.sroa.6.0.insert.shift = shl nuw nsw i16 %i.cl, 8
  %.sroa.073.sroa.0.0.insert.insert = or disjoint i16 %.sroa.073.sroa.6.0.insert.shift, %i.ab
  store i16 %.sroa.073.sroa.0.0.insert.insert, ptr %8, align 8
  store i64 %.0.i, ptr %i.n, align 8, !tbaa !159
  br label %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

bb.t:                                             ; preds = %bb.h, %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread: ; preds = %bb.o, %bb.s, %bb.q, %_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1
  %i.cn = icmp sgt i64 %indvars.iv120, 0
  br i1 %i.cn, label %bb.f, label %bb.e, !llvm.loop !369

_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEEixERS6_.exit: ; preds = %bb.c
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !159
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.ac, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.086.0107, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.l
  br i1 %.not, label %._crit_edge, label %bb.b

bb.u:                                             ; preds = %bb.t, %bb.d
  %.pn37 = phi { ptr, i32 } [ %i.cm, %bb.t ], [ %i.ad, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ay

._crit_edge112.thread:                            ; preds = %._crit_edge, %._crit_edge.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit

._crit_edge112:                                   ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit
  %.pre124 = load ptr, ptr %9, align 8, !tbaa !370 ; 16 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %.not.i.i = icmp eq ptr %.pre124, %i.fe
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge112
  %i.ct = ptrtoint ptr %i.fe to i64
  %i.cu = ptrtoint ptr %.pre124 to i64            ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = sdiv exact i64 %i.cv, 24
  %i.cx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = shl nuw nsw i64 %i.cx, 1
  %i.cz = xor i64 %i.cy, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %.pre124, ptr nonnull %i.fe, i64 noundef %i.cz, ptr nonnull @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_)
          to label %.noexc41 unwind label %bb.ap

.noexc41:                                         ; preds = %bb.v
  %i.da = icmp sgt i64 %i.cv, 384
  %scevgep.i = getelementptr i8, ptr %.pre124, i64 24 ; 4 uses
  br i1 %i.da, label %.lr.ph.i.i, label %bb.ab

.lr.ph.i.i:                                       ; preds = %.noexc41, %bb.aa
  %.sroa.0.021.i.idx.i = phi i64 [ %.sroa.0.021.i.add.i, %bb.aa ], [ 24, %.noexc41 ] ; 4 uses
  %.pn20.i.i = phi ptr [ %.sroa.0.021.i.ptr.i, %bb.aa ], [ %.pre124, %.noexc41 ] ; 3 uses
  %.sroa.0.021.i.ptr.i = getelementptr inbounds nuw i8, ptr %.pre124, i64 %.sroa.0.021.i.idx.i ; 6 uses
  %i.db = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i.ptr.i, ptr noundef nonnull align 8 dereferenceable(24) %.pre124), !inline_history !371
  br i1 %i.db, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i.ptr.i, i64 24, i1 false), !tbaa.struct !372
  %i.dc = icmp samesign ugt i64 %.sroa.0.021.i.idx.i, 24
  br i1 %i.dc, label %bb.x, label %bb.y, !prof !300

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.pre124, i64 %.sroa.0.021.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %.pre124, i64 24, i1 false), !tbaa.struct !372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.pre124, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i.ptr.i, i64 24, i1 false), !tbaa.struct !372
  %i.de = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.pn20.i.i), !inline_history !373
  br i1 %i.de, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn20.i.i, %bb.z ] ; 4 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.021.i.ptr.i, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09.i.i.i, i64 24, i1 false), !tbaa.struct !372
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -24 ; 2 uses
  %i.df = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i), !inline_history !373
  br i1 %i.df, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, !llvm.loop !374

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.z
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i, %bb.z ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  %.sroa.0.021.i.add.i = add nuw nsw i64 %.sroa.0.021.i.idx.i, 24 ; 2 uses
  %.not.i.i68 = icmp eq i64 %.sroa.0.021.i.add.i, 384
  br i1 %.not.i.i68, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !375

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i: ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre124, i64 384 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.dg, %i.fe
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.dj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.dg, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.08.i.i, i64 24, i1 false), !tbaa.struct !372
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -24 ; 2 uses
  %i.dh = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07.i.i.i), !inline_history !376
  br i1 %i.dh, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 4 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09.i.i15.i, i64 24, i1 false), !tbaa.struct !372
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -24 ; 2 uses
  %i.di = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i17.i), !inline_history !376
  br i1 %i.di, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, !llvm.loop !374

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.lcssa.i.i12.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.dj, %i.fe
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !377

bb.ab:                                            ; preds = %.noexc41
  %.not19.i20.i = icmp eq ptr %scevgep.i, %i.fe
  br i1 %.not19.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.ab, %bb.ah
  %.sroa.0.021.i22.i = phi ptr [ %.sroa.0.0.i26.i, %bb.ah ], [ %scevgep.i, %bb.ab ] ; 8 uses
  %.pn20.i23.i = phi ptr [ %.sroa.0.021.i22.i, %bb.ah ], [ %.pre124, %bb.ab ] ; 3 uses
  %i.dk = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i22.i, ptr noundef nonnull align 8 dereferenceable(24) %.pre124), !inline_history !371
  br i1 %i.dk, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %.lr.ph.i21.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i22.i, i64 24, i1 false), !tbaa.struct !372
  %i.dl = ptrtoint ptr %.sroa.0.021.i22.i to i64
  %i.dm = sub i64 %i.dl, %i.cu                    ; 3 uses
  %i.dn = icmp sgt i64 %i.dm, 24
  br i1 %i.dn, label %bb.ad, label %bb.ae, !prof !300

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.pre124, i64 %i.dm, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i

bb.ae:                                            ; preds = %bb.ac
  %i.do = icmp eq i64 %i.dm, 24
  br i1 %i.do, label %bb.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn20.i23.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %.pre124, i64 24, i1 false), !tbaa.struct !372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i: ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.pre124, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i21.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i22.i, i64 24, i1 false), !tbaa.struct !372
  %i.dq = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.pn20.i23.i), !inline_history !373
  br i1 %i.dq, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.ag, %.lr.ph.i.i28.i
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn20.i23.i, %bb.ag ] ; 4 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.0.021.i22.i, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i30.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09.i.i29.i, i64 24, i1 false), !tbaa.struct !372
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -24 ; 2 uses
  %i.dr = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIfLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i31.i), !inline_history !373
  br i1 %i.dr, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i, !llvm.loop !374

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.ag
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.0.021.i22.i, %bb.ag ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.lcssa.i.i25.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ah

bb.ah:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i
  %.sroa.0.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i22.i, i64 24 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.0.0.i26.i, %i.fe
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i21.i, !llvm.loop !375

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit: ; preds = %bb.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, %._crit_edge112.thread, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %bb.ab, %._crit_edge112
  %i.ds = phi ptr [ %i.cr, %._crit_edge112.thread ], [ %i.cs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.cs, %._crit_edge112 ], [ %i.cs, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ], [ %i.cs, %bb.ab ], [ %i.cs, %bb.ah ] ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !353
  %i.du = load ptr, ptr %9, align 8, !tbaa !296   ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 24
  %i.dz = and i64 %i.dy, 255
  %.not116 = icmp eq i64 %i.dz, 0
  br i1 %.not116, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 14376 ; 2 uses
  br label %bb.aq

bb.ai:                                            ; preds = %.lr.ph111, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit
  %i.eb = phi ptr [ null, %.lr.ph111 ], [ %i.fe, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit ] ; 7 uses
  %.sroa.070.0109 = phi ptr [ %.pre, %.lr.ph111 ], [ %i.ff, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.070.0109, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.070.0109, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.q, align 8, !tbaa !378
  %.not.i43 = icmp eq ptr %i.eb, %i.ee
  br i1 %.not.i43, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ec, align 1
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !159
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.eb, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !364
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 0, ptr %i.eh, align 8, !tbaa !366
  %i.ei = load ptr, ptr %i.p, align 8, !tbaa !353
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  store ptr %i.ej, ptr %i.p, align 8, !tbaa !353
  br label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ek = load ptr, ptr %9, align 8, !tbaa !296   ; 5 uses
  %i.el = ptrtoint ptr %i.eb to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %bb.al, label %_ZNKSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
          to label %.noexc44 unwind label %.loopexit.split-lp96

.noexc44:                                         ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ak
  %i.ep = sdiv exact i64 %i.en, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 384307168202282325)
  %i.et = select i1 %i.er, i64 384307168202282325, i64 %i.es ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eu = mul nuw nsw i64 %i.et, 24
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #23
          to label %.noexc45 unwind label %.loopexit95 ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.en ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ec, align 1
  %i.ex = load i64, ptr %i.ed, align 8, !tbaa !159
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !364
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 0, ptr %i.ez, align 8, !tbaa !366
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ek, %i.eb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc45, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i ], [ %i.ev, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i ], [ %i.ek, %.noexc45 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !372, !alias.scope !379
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fa, %i.eb
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !383

_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc45
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ev, %.noexc45 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ek) #24
  br label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  store ptr %i.ev, ptr %9, align 8, !tbaa !296
  store ptr %i.fc, ptr %i.p, align 8, !tbaa !353
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fd, ptr %i.q, align 8, !tbaa !378
  br label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.aj
  %i.fe = phi ptr [ %i.fc, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ej, %bb.aj ] ; 8 uses
  %i.ff = load ptr, ptr %.sroa.070.0109, align 8, !tbaa !384 ; 2 uses
  %.not93 = icmp eq ptr %i.ff, null
  br i1 %.not93, label %._crit_edge112, label %bb.ai

.loopexit95:                                      ; preds = %_ZNKSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp96:                             ; preds = %bb.al
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

._crit_edge115:                                   ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE9push_backERKS2_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit
  %.lcssa100 = phi ptr [ %i.du, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit ], [ %i.gm, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.lcssa100, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %._crit_edge115
  call void @_ZdlPv(ptr noundef nonnull %.lcssa100) #24
  br label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit: ; preds = %._crit_edge115, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !363 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i ], [ %i.fg, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit ] ; 2 uses
  %i.fh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !384 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #24
  %.not.i.i.i.i47 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i47, label %_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !385

_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit
  %i.fi = load ptr, ptr %7, align 8, !tbaa !354
  %i.fj = load i64, ptr %i.f, align 8, !tbaa !361
  %i.fk = shl i64 %i.fj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.fk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.fl = load ptr, ptr %7, align 8, !tbaa !354   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.e
  br i1 %i.fm, label %_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.fl) #24
  br label %_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEED2Ev.exit

_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void
end_hunk_3
begin_hunk_4_@_ZN6duckdb3alp14AlpCompressionIfLb1EE8CompressEPKfmPKtmRNS0_18AlpCompressionDataIfLb1EEE:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !353
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb3alp14AlpCompressionIfLb1EE25FindBestFactorAndExponentEPKfmRNS0_18AlpCompressionDataIfLb1EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(22576) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_3alp14AlpCombinationELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  %i.k = load i16, ptr %i.j, align 8
  store i16 %i.k, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not108 = icmp eq i64 %1, 0                    ; 2 uses
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12312
  %.sroa.033.0.copyload.pre = load i16, ptr %4, align 8
  br label %bb.e

.lr.ph95:                                         ; preds = %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12312
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit
  %.sroa.033.0.copyload = phi i16 [ %.sroa.033.0.copyload.pre, %.lr.ph ], [ %.sroa.0.0.copyload, %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.093 = phi i16 [ 0, %.lr.ph ], [ %i.ay, %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.07892 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 4 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07892
  %i.p = load float, ptr %i.o, align 4, !tbaa !149 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.033.0.copyload, 8
  %.sroa.2.0.extract.trunc.i = zext nneg i16 %.sroa.2.0.extract.shift.i to i64
  %i.q = and i16 %.sroa.033.0.copyload, 255
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE7EXP_ARRE, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !149
  %i.u = fmul float %i.p, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %.sroa.2.0.extract.trunc.i
  %i.w = load float, ptr %i.v, align 4, !tbaa !149
  %i.x = fmul float %i.u, %i.w                    ; 6 uses
  %i.y = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIfEEbT_(float noundef %i.x)
  br i1 %i.y, label %bb.f, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef %i.x)
  br i1 %i.z, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call float @llvm.fabs.f32(float %i.x)
  %i.ab = fpext float %i.aa to double
  %or.cond.i.i.i = fcmp ogt double %i.ab, f0x43DFFFFFFFFFFFFF
  br i1 %or.cond.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = fcmp oeq float %i.x, 0.000000e+00
  %i.ad = bitcast float %i.x to i32
  %i.ae = icmp slt i32 %i.ad, 0
  %or.cond.i.i = and i1 %i.ac, %i.ae
  br i1 %or.cond.i.i, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %_ZN6duckdb3alp14AlpCompressionIfLb1EE20IsImpossibleToEncodeEf.exit.thread3.i.i

_ZN6duckdb3alp14AlpCompressionIfLb1EE20IsImpossibleToEncodeEf.exit.thread3.i.i: ; preds = %bb.h
  %i.af = fadd float %i.x, f0x4B400000
  %i.ag = fadd float %i.af, f0xCB400000
  %i.ah = fptosi float %i.ag to i64
  br label %_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit

_ZN6duckdb3alp14AlpCompressionIfLb1EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %_ZN6duckdb3alp14AlpCompressionIfLb1EE20IsImpossibleToEncodeEf.exit.thread3.i.i
  %.0.i.i = phi i64 [ %i.ah, %_ZN6duckdb3alp14AlpCompressionIfLb1EE20IsImpossibleToEncodeEf.exit.thread3.i.i ], [ 9223372036854774784, %bb.h ], [ 9223372036854774784, %bb.g ], [ 9223372036854774784, %bb.f ], [ 9223372036854774784, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %4, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i87 = lshr i16 %.sroa.0.0.copyload, 8
  %.sroa.2.0.extract.trunc.i88 = zext nneg i16 %.sroa.2.0.extract.shift.i87 to i64
  %i.ai = sitofp i64 %.0.i.i to float
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !159
  %i.al = sitofp i64 %i.ak to float
  %i.am = fmul nnan float %i.ai, %i.al
  %i.an = and i16 %.sroa.0.0.copyload, 255
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !149
  %i.ar = fmul float %i.aq, %i.am
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.07892
  store i64 %.0.i.i, ptr %i.as, align 8, !tbaa !159
  %i.at = fcmp une float %i.ar, %i.p
  %i.au = trunc i64 %.07892 to i16
  %i.av = zext i16 %.093 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.av
  store i16 %i.au, ptr %i.aw, align 2, !tbaa !143
  %i.ax = zext i1 %i.at to i16
  %i.ay = add i16 %.093, %i.ax                    ; 7 uses
  %i.az = add nuw i64 %.07892, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %1
  br i1 %exitcond.not, label %.lr.ph95, label %bb.e, !llvm.loop !418

bb.i:                                             ; preds = %.lr.ph95, %bb.k
  %.08094 = phi i64 [ 0, %.lr.ph95 ], [ %i.bg, %bb.k ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.08094
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !143
  %i.bc = zext i16 %i.bb to i64
  %.not = icmp eq i64 %.08094, %i.bc
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.08094
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !159
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.bg = add nuw nsw i64 %.08094, 1              ; 2 uses
  %exitcond116.not = icmp eq i64 %i.bg, %1
  br i1 %exitcond116.not, label %.loopexit, label %bb.i, !llvm.loop !419

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.079 = phi i64 [ %i.bf, %bb.j ], [ 0, %bb.k ]  ; 6 uses
  %i.bh = zext i16 %i.ay to i64                   ; 2 uses
  %.not110 = icmp eq i16 %i.ay, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph97

.lr.ph97:                                         ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 12312 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8216 ; 3 uses
  %xtraiter = and i64 %i.bh, 1
  %i.bl = icmp eq i16 %i.ay, 1
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.lr.ph97
  %unroll_iter = and i64 %i.bh, 65534
  br label %bb.l

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97
  %.08496.epil.init = phi i64 [ 0, %.lr.ph97 ], [ %i.cl, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod146 = trunc i16 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %.08496.epil.init
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !143
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !149
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bo
  store i64 %.079, ptr %i.br, align 8, !tbaa !159
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.08496.epil.init
  store float %i.bq, ptr %i.bs, align 4, !tbaa !149
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d, %.loopexit
  %.079131 = phi i64 [ 0, %bb.d ], [ %.079, %.loopexit ], [ %.079, %._crit_edge.loopexit.unr-lcssa ], [ %.079, %.epil.preheader ] ; 5 uses
  %.0.lcssa126130 = phi i16 [ 0, %bb.d ], [ 0, %.loopexit ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %.0.lcssa126130, ptr %i.bt, align 2, !tbaa !179
  %.not111 = icmp eq i64 %3, 0
  br i1 %.not111, label %.preheader, label %.lr.ph100

.lr.ph100:                                        ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %xtraiter148 = and i64 %3, 3                    ; 3 uses
  %i.bv = icmp ult i64 %3, 4
  br i1 %i.bv, label %.epil.preheader147, label %.lr.ph100.new

.lr.ph100.new:                                    ; preds = %.lr.ph100
  %unroll_iter151 = and i64 %3, -4
  br label %bb.n

bb.l:                                             ; preds = %bb.l, %.lr.ph97.new
  %.08496 = phi i64 [ 0, %.lr.ph97.new ], [ %i.cl, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph97.new ], [ %niter.next.1, %bb.l ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %.08496
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !143
  %i.by = zext i16 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !149
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.by
  store i64 %.079, ptr %i.cb, align 8, !tbaa !159
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.08496
  store float %i.ca, ptr %i.cc, align 8, !tbaa !149
  %i.cd = or disjoint i64 %.08496, 1              ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !143
  %i.cg = zext i16 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !149
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cg
  store i64 %.079, ptr %i.cj, align 8, !tbaa !159
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cd
  store float %i.ci, ptr %i.ck, align 4, !tbaa !149
  %i.cl = add nuw nsw i64 %.08496, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !420

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.n
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %.preheader, label %.epil.preheader147

.epil.preheader147:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph100
  %.08598.epil.init = phi i64 [ 0, %.lr.ph100 ], [ %i.dm, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter148, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader147
  %.08598.epil = phi i64 [ %.08598.epil.init, %.epil.preheader147 ], [ %i.cq, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader147 ], [ %epil.iter.next, %bb.m ]
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598.epil
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !143
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.co
  store i64 %.079131, ptr %i.cp, align 8, !tbaa !159
  %i.cq = add nuw i64 %.08598.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter148
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.m, !llvm.loop !421

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.m, %._crit_edge
  br i1 %.not108, label %.preheader.preheader.i.i, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %xtraiter154 = and i64 %1, 3                    ; 3 uses
  %i.cs = icmp ult i64 %1, 4
  br i1 %i.cs, label %.epil.preheader153, label %.lr.ph104.new

.lr.ph104.new:                                    ; preds = %.lr.ph104
  %unroll_iter160 = and i64 %1, -4
  br label %bb.q

bb.n:                                             ; preds = %bb.n, %.lr.ph100.new
  %.08598 = phi i64 [ 0, %.lr.ph100.new ], [ %i.dm, %bb.n ] ; 5 uses
  %niter152 = phi i64 [ 0, %.lr.ph100.new ], [ %niter152.next.3, %bb.n ]
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !143
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cv
  store i64 %.079131, ptr %i.cw, align 8, !tbaa !159
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !143
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.da
  store i64 %.079131, ptr %i.db, align 8, !tbaa !159
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !143
  %i.df = zext i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.df
  store i64 %.079131, ptr %i.dg, align 8, !tbaa !159
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 6
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !143
  %i.dk = zext i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.dk
  store i64 %.079131, ptr %i.dl, align 8, !tbaa !159
  %i.dm = add nuw i64 %.08598, 4                  ; 2 uses
  %niter152.next.3 = add nuw i64 %niter152, 4     ; 2 uses
  %niter152.ncmp.3 = icmp eq i64 %niter152.next.3, %unroll_iter151
  br i1 %niter152.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.n, !llvm.loop !422

._crit_edge105.unr-lcssa:                         ; preds = %bb.q
  %lcmp.mod156.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod156.not, label %._crit_edge105, label %.epil.preheader153

.epil.preheader153:                               ; preds = %._crit_edge105.unr-lcssa, %.lr.ph104
  %.081103.epil.init = phi i64 [ 0, %.lr.ph104 ], [ %i.fe, %._crit_edge105.unr-lcssa ]
  %.082102.epil.init = phi i64 [ -9223372036854775808, %.lr.ph104 ], [ %i.fc, %._crit_edge105.unr-lcssa ]
  %.083101.epil.init = phi i64 [ 9223372036854775807, %.lr.ph104 ], [ %i.fd, %._crit_edge105.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter154, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader153
  %.081103.epil = phi i64 [ %.081103.epil.init, %.epil.preheader153 ], [ %i.dr, %bb.o ] ; 2 uses
  %.082102.epil = phi i64 [ %.082102.epil.init, %.epil.preheader153 ], [ %i.dp, %bb.o ]
  %.083101.epil = phi i64 [ %.083101.epil.init, %.epil.preheader153 ], [ %i.dq, %bb.o ]
  %epil.iter155 = phi i64 [ 0, %.epil.preheader153 ], [ %epil.iter155.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103.epil
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !159 ; 2 uses
  %i.dp = tail call noundef i64 @llvm.smax.i64(i64 %.082102.epil, i64 %i.do) ; 2 uses
  %i.dq = tail call noundef i64 @llvm.smin.i64(i64 %.083101.epil, i64 %i.do) ; 2 uses
  %i.dr = add nuw i64 %.081103.epil, 1
  %epil.iter155.next = add i64 %epil.iter155, 1   ; 2 uses
  %epil.iter155.cmp.not = icmp eq i64 %epil.iter155.next, %xtraiter154
  br i1 %epil.iter155.cmp.not, label %._crit_edge105, label %bb.o, !llvm.loop !423

._crit_edge105:                                   ; preds = %bb.o, %._crit_edge105.unr-lcssa
  %.lcssa143 = phi i64 [ %i.fc, %._crit_edge105.unr-lcssa ], [ %i.dp, %bb.o ] ; 2 uses
  %.lcssa = phi i64 [ %i.fd, %._crit_edge105.unr-lcssa ], [ %i.dq, %bb.o ] ; 3 uses
  %i.ds = icmp eq i64 %.lcssa143, %.lcssa
  br i1 %i.ds, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader, %._crit_edge105
  %.082.lcssa136 = phi i64 [ %.lcssa143, %._crit_edge105 ], [ -9223372036854775808, %.preheader ]
  %.083.lcssa134 = phi i64 [ %.lcssa, %._crit_edge105 ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %i.dt = sub i64 %.082.lcssa136, %.083.lcssa134  ; 2 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i8
  %i.dw = sub nuw nsw i8 64, %i.dv
  %i.dx = icmp ugt i64 %i.dt, 72057594037927935
  %..i.i.i = select i1 %i.dx, i8 64, i8 %i.dw
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit: ; preds = %._crit_edge105, %.preheader.preheader.i.i
  %.083.lcssa135 = phi i64 [ %.083.lcssa134, %.preheader.preheader.i.i ], [ %.lcssa, %._crit_edge105 ]
  %.09.i.i = phi i8 [ %..i.i.i, %.preheader.preheader.i.i ], [ 0, %._crit_edge105 ] ; 2 uses
  %i.dy = trunc i64 %1 to i32
  %i.dz = and i32 %i.dy, 31                       ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit
  %i.eb = add i64 %1, 32
  %i.ec = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.dz)
  %i.ed = sub i64 %i.eb, %i.ec
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, %bb.p
  %.0.i.i89 = phi i64 [ %i.ed, %bb.p ], [ %1, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit ]
  %i.ee = zext nneg i8 %.09.i.i to i64
  %i.ef = mul i64 %.0.i.i89, %i.ee
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = zext nneg i8 %.09.i.i to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.eh, ptr %i.ei, align 4, !tbaa !180
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.eg, ptr %i.ej, align 8, !tbaa !178
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.083.lcssa135, ptr %i.ek, align 8, !tbaa !424
  ret void

bb.q:                                             ; preds = %bb.q, %.lr.ph104.new
  %.081103 = phi i64 [ 0, %.lr.ph104.new ], [ %i.fe, %bb.q ] ; 5 uses
  %.082102 = phi i64 [ -9223372036854775808, %.lr.ph104.new ], [ %i.fc, %bb.q ]
  %.083101 = phi i64 [ 9223372036854775807, %.lr.ph104.new ], [ %i.fd, %bb.q ]
  %niter161 = phi i64 [ 0, %.lr.ph104.new ], [ %niter161.next.3, %bb.q ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103
  %i.em = load i64, ptr %i.el, align 8, !tbaa !159 ; 2 uses
  %i.en = tail call noundef i64 @llvm.smax.i64(i64 %.082102, i64 %i.em)
  %i.eo = tail call noundef i64 @llvm.smin.i64(i64 %.083101, i64 %i.em)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !159 ; 2 uses
  %i.es = tail call noundef i64 @llvm.smax.i64(i64 %i.en, i64 %i.er)
  %i.et = tail call noundef i64 @llvm.smin.i64(i64 %i.eo, i64 %i.er)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !159 ; 2 uses
  %i.ex = tail call noundef i64 @llvm.smax.i64(i64 %i.es, i64 %i.ew)
  %i.ey = tail call noundef i64 @llvm.smin.i64(i64 %i.et, i64 %i.ew)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !159 ; 2 uses
  %i.fc = tail call noundef i64 @llvm.smax.i64(i64 %i.ex, i64 %i.fb) ; 3 uses
  %i.fd = tail call noundef i64 @llvm.smin.i64(i64 %i.ey, i64 %i.fb) ; 3 uses
  %i.fe = add nuw i64 %.081103, 4                 ; 2 uses
  %niter161.next.3 = add nuw i64 %niter161, 4     ; 2 uses
  %niter161.ncmp.3 = icmp eq i64 %niter161.next.3, %unroll_iter160
  br i1 %niter161.ncmp.3, label %._crit_edge105.unr-lcssa, label %bb.q, !llvm.loop !425
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb3alp14AlpCompressionIfLb1EE25FindBestFactorAndExponentEPKfmRNS0_18AlpCompressionDataIfLb1EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(22576) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.95", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not77 = icmp eq i64 %1, 0
  br i1 %.not77, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = uitofp i64 %1 to double
  %i.b = fmul nnan double %i.a, 3.125000e-02
  %i.c = tail call double @llvm.ceil.f64(double %i.b)
  %i.d = fptoui double %i.c to i32
  %i.e = tail call noundef i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = zext i32 %i.e to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  store ptr %i.ai, ptr %i.f, align 8
  store ptr %i.ag, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa = phi ptr [ %i.ah, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  store ptr %.lcssa, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 14360
end_hunk_4
begin_hunk_5_@_ZN6duckdb19AlpCompressionStateIfE6AppendERNS_19UnifiedVectorFormatEm:bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4212 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.j = add i64 %i.d, 116
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph53, %bb.d
  %.052 = phi i64 [ %2, %.lr.ph53 ], [ %i.dk, %bb.d ] ; 2 uses
  %.03448 = phi i64 [ 0, %.lr.ph53 ], [ %i.dj, %bb.d ] ; 6 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !188  ; 8 uses
  %i.l = sub i64 1024, %i.k
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.052) ; 14 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  %.not55 = icmp eq i64 %i.k, 1024                ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader42

.preheader42:                                     ; preds = %bb.b
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42
  %i.o = load ptr, ptr %1, align 8, !tbaa !153
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154  ; 2 uses
  %.not.i38 = icmp eq ptr %i.p, null
  %i.q = getelementptr [4 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %.promoted = load i64, ptr %i.h, align 8, !tbaa !473 ; 2 uses
  br i1 %.not.i38, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader: ; preds = %.lr.ph
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %.03448
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.r = phi i64 [ %i.af, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ], [ %.promoted, %.lr.ph ] ; 2 uses
  %.03544.us = phi i64 [ %i.ah, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.s = add i64 %.03544.us, %.03448              ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !149
  %i.v = lshr i64 %i.s, 6
  %i.w = and i64 %i.s, 63
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !159
  %i.z = add i64 %.03544.us, %i.k
  %i.aa = trunc i64 %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.r
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !143
  %i.ac = xor i64 %i.y, -1
  %i.ad = lshr i64 %i.ac, %i.w
  %i.ae = and i64 %i.ad, 1
  %i.af = add i64 %i.ae, %i.r                     ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !473
  %i.ag = getelementptr [4 x i8], ptr %i.q, i64 %.03544.us
  store float %i.u, ptr %i.ag, align 4, !tbaa !149
  %i.ah = add nuw i64 %.03544.us, 1               ; 2 uses
  %exitcond60.not = icmp eq i64 %i.ah, %i.m
  br i1 %exitcond60.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !474

.preheader:                                       ; preds = %bb.b
  br i1 %.not55, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader
  %i.ai = load ptr, ptr %1, align 8, !tbaa !153
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !154 ; 2 uses
  %.not.i37 = icmp eq ptr %i.aj, null
  %i.ak = getelementptr [4 x i8], ptr %i.i, i64 %i.k ; 11 uses
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph46
  %invariant.gep73 = getelementptr [4 x i8], ptr %i.aj, i64 %.03448 ; 5 uses
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.al = icmp ult i64 %i.m, 4
  br i1 %i.al, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph46
  %invariant.gep75 = getelementptr [4 x i8], ptr %i.b, i64 %.03448 ; 6 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %i.am = shl i64 %i.k, 2
  %i.an = shl i64 %.03448, 2
  %i.ao = add i64 %i.j, %i.am
  %i.ap = add i64 %i.an, %i.c
  %i.aq = sub i64 %i.ap, %i.ao
  %diff.check = icmp ugt i64 %i.aq, -32
  br i1 %diff.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %invariant.gep75, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !149
  %wide.load80 = load <4 x float>, ptr %i.as, align 4, !tbaa !149
  %i.at = getelementptr [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store <4 x float> %wide.load, ptr %i.at, align 4, !tbaa !149
  store <4 x float> %wide.load80, ptr %i.au, align 4, !tbaa !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %middle.block
  %.03645.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter86 = and i64 %i.m, 3                   ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol
  %.03645.us.prol = phi i64 [ %i.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ], [ %.03645.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81 ]
  %gep76.prol = getelementptr [4 x i8], ptr %invariant.gep75, i64 %.03645.us.prol
  %i.aw = load float, ptr %gep76.prol, align 4, !tbaa !149
  %i.ax = getelementptr [4 x i8], ptr %i.ak, i64 %.03645.us.prol
  store float %i.aw, ptr %i.ax, align 4, !tbaa !149
  %i.ay = add nuw i64 %.03645.us.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter86
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol, !llvm.loop !478

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81
  %.03645.us.unr = phi i64 [ %.03645.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81 ], [ %i.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %i.az = sub i64 %.03645.us.ph, %i.m
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.03645.us = phi i64 [ %i.bm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.03645.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ] ; 6 uses
  %gep76 = getelementptr [4 x i8], ptr %invariant.gep75, i64 %.03645.us
  %i.bb = load float, ptr %gep76, align 4, !tbaa !149
  %i.bc = getelementptr [4 x i8], ptr %i.ak, i64 %.03645.us
  store float %i.bb, ptr %i.bc, align 4, !tbaa !149
  %i.bd = add nuw i64 %.03645.us, 1               ; 2 uses
  %gep76.1 = getelementptr [4 x i8], ptr %invariant.gep75, i64 %i.bd
  %i.be = load float, ptr %gep76.1, align 4, !tbaa !149
  %i.bf = getelementptr [4 x i8], ptr %i.ak, i64 %i.bd
  store float %i.be, ptr %i.bf, align 4, !tbaa !149
  %i.bg = add nuw i64 %.03645.us, 2               ; 2 uses
  %gep76.2 = getelementptr [4 x i8], ptr %invariant.gep75, i64 %i.bg
  %i.bh = load float, ptr %gep76.2, align 4, !tbaa !149
  %i.bi = getelementptr [4 x i8], ptr %i.ak, i64 %i.bg
  store float %i.bh, ptr %i.bi, align 4, !tbaa !149
  %i.bj = add nuw i64 %.03645.us, 3               ; 2 uses
  %gep76.3 = getelementptr [4 x i8], ptr %invariant.gep75, i64 %i.bj
  %i.bk = load float, ptr %gep76.3, align 4, !tbaa !149
  %i.bl = getelementptr [4 x i8], ptr %i.ak, i64 %i.bj
  store float %i.bk, ptr %i.bl, align 4, !tbaa !149
  %i.bm = add nuw i64 %.03645.us, 4               ; 2 uses
  %exitcond64.not.3 = icmp eq i64 %i.bm, %i.m
  br i1 %exitcond64.not.3, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !479

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.03645 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.ck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %gep74 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %.03645
  %i.bn = load i32, ptr %gep74, align 4, !tbaa !3
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !149
  %i.br = getelementptr [4 x i8], ptr %i.ak, i64 %.03645
  store float %i.bq, ptr %i.br, align 4, !tbaa !149
  %i.bs = or disjoint i64 %.03645, 1              ; 2 uses
  %gep74.1 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.bs
  %i.bt = load i32, ptr %gep74.1, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !149
  %i.bx = getelementptr [4 x i8], ptr %i.ak, i64 %i.bs
  store float %i.bw, ptr %i.bx, align 4, !tbaa !149
  %i.by = or disjoint i64 %.03645, 2              ; 2 uses
  %gep74.2 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.by
  %i.bz = load i32, ptr %gep74.2, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !149
  %i.cd = getelementptr [4 x i8], ptr %i.ak, i64 %i.by
  store float %i.cc, ptr %i.cd, align 4, !tbaa !149
  %i.ce = or disjoint i64 %.03645, 3              ; 2 uses
  %gep74.3 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.ce
  %i.cf = load i32, ptr %gep74.3, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !149
  %i.cj = getelementptr [4 x i8], ptr %i.ak, i64 %i.ce
  store float %i.ci, ptr %i.cj, align 4, !tbaa !149
  %i.ck = add nuw i64 %.03645, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit82.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !480

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cl = phi i64 [ %i.da, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %.promoted, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader ] ; 2 uses
  %.03544 = phi i64 [ %i.dc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.03544
  %i.cm = load i32, ptr %gep, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64                   ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !149
  %i.cq = lshr i64 %i.cn, 6
  %i.cr = and i64 %i.cn, 63
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !159
  %i.cu = add i64 %.03544, %i.k
  %i.cv = trunc i64 %i.cu to i16
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cl
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !143
  %i.cx = xor i64 %i.ct, -1
  %i.cy = lshr i64 %i.cx, %i.cr
  %i.cz = and i64 %i.cy, 1
  %i.da = add i64 %i.cz, %i.cl                    ; 2 uses
  store i64 %i.da, ptr %i.h, align 8, !tbaa !473
  %i.db = getelementptr [4 x i8], ptr %i.q, i64 %.03544
  store float %i.cp, ptr %i.db, align 4, !tbaa !149
  %i.dc = add nuw i64 %.03544, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %i.m
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !474

.loopexit.loopexit82.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %.loopexit.loopexit82.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.03645.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.ck, %.loopexit.loopexit82.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %.03645.epil = phi i64 [ %i.di, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.03645.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %gep74.epil = getelementptr [4 x i8], ptr %invariant.gep73, i64 %.03645.epil
  %i.dd = load i32, ptr %gep74.epil, align 4, !tbaa !3
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !149
  %i.dh = getelementptr [4 x i8], ptr %i.ak, i64 %.03645.epil
  store float %i.dg, ptr %i.dh, align 4, !tbaa !149
  %i.di = add nuw i64 %.03645.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !481

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, %.loopexit.loopexit82.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %middle.block, %.preheader42, %.preheader
  %i.dj = add i64 %i.m, %.03448
  %i.dk = sub i64 %.052, %i.m                     ; 2 uses
  %i.dl = add i64 %i.m, %i.k                      ; 2 uses
  store i64 %i.dl, ptr %i.e, align 8, !tbaa !188
  %i.dm = icmp eq i64 %i.dl, 1024
  br i1 %i.dm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  tail call void @_ZN6duckdb19AlpCompressionStateIfE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.not = icmp eq i64 %i.dk, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !482

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19AlpCompressionStateIfE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(28840) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !473  ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit_crit_edge, label %bb.b

._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !188
  br label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4212 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !188  ; 4 uses
  %.not11.i.i = icmp eq i64 %i.g, 0
  br i1 %.not11.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.010.i.i = phi i64 [ %i.m, %bb.d ], [ 0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.010.i.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !143
  %i.j = zext i16 %i.i to i64
  %.not.i.i = icmp eq i64 %.010.i.i, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.010.i.i
  %i.l = load float, ptr %i.k, align 4, !tbaa !149
  br label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %.010.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i, !llvm.loop !157

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.08.i.i = phi float [ %i.l, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.c, 4
  br i1 %i.n, label %.lr.ph.i8.i.epil.preheader, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new: ; preds = %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new
  %.07.i.i = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new ], [ %i.ah, %.lr.ph.i8.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new ], [ %niter.next.3, %.lr.ph.i8.i ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.p = load i16, ptr %i.o, align 4, !tbaa !143
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  store float %.08.i.i, ptr %i.r, align 4, !tbaa !149
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !143
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  store float %.08.i.i, ptr %i.w, align 4, !tbaa !149
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i16, ptr %i.y, align 8, !tbaa !143
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  store float %.08.i.i, ptr %i.ab, align 4, !tbaa !149
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !143
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.af
  store float %.08.i.i, ptr %i.ag, align 4, !tbaa !149
  %i.ah = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !158

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i8.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i
  %.07.i.i.epil.init = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i ], [ %i.ah, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i8.i.epil

.lr.ph.i8.i.epil:                                 ; preds = %.lr.ph.i8.i.epil, %.lr.ph.i8.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.am, %.lr.ph.i8.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i8.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i8.i.epil ], [ 0, %.lr.ph.i8.i.epil.preheader ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i.epil
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !143
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ak
  store float %.08.i.i, ptr %i.al, align 4, !tbaa !149
  %i.am = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil, !llvm.loop !483

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit: ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa, %.lr.ph.i8.i.epil, %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit_crit_edge
  %i.an = phi i64 [ %.pre, %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit_crit_edge ], [ %i.g, %.lr.ph.i8.i.epil ], [ %i.g, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4212
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6264 ; 2 uses
  tail call void @_ZN6duckdb3alp14AlpCompressionIfLb0EE8CompressEPKfmPKtmRNS0_18AlpCompressionDataIfLb0EEE(ptr noundef nonnull %i.ao, i64 noundef %i.an, ptr noundef nonnull %i.aq, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(22576) %i.ar)
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !188
  %i.at = shl i64 %i.as, 2                        ; 2 uses
  %i.au = or disjoint i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6272
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !484
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6266 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !485
  %i.az = zext i16 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 6
  %i.bb = add i64 %i.aw, 13
  %i.bc = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !437, !nonnull !83, !align !84
  %i.bf = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb24ColumnDataCheckpointData17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.bh = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %i.bi = icmp ule i64 %i.bc, %i.at
  %i.bj = icmp ult i64 %i.bh, 7
  %i.bk = or i1 %i.bi, %i.bj                      ; 2 uses
  %i.bl = select i1 %i.bk, i64 %i.bc, i64 %i.au
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !463
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !464
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !486
  %i.bs = add i64 %i.bl, 11
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = and i64 %i.bt, -8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !470
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %.not.i = icmp ult ptr %i.bv, %i.by
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit
  tail call void @_ZN6duckdb19AlpCompressionStateIfE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  tail call void @_ZN6duckdb19AlpCompressionStateIfE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !473
  %.not12 = icmp eq i64 %i.bz, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  store i8 1, ptr %i.cc, align 8, !tbaa !487
  %.pre18 = load i64, ptr %i.b, align 8, !tbaa !473
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = phi i64 [ %.pre18, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !188
  %.not13 = icmp eq i64 %i.ce, %i.cd
  br i1 %.not13, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 81
  store i8 1, ptr %i.ch, align 1, !tbaa !488
  %i.ci = load i64, ptr %i.ap, align 8, !tbaa !188
  %.not16 = icmp eq i64 %i.ci, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.015 = phi i64 [ %i.cs, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.cj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.015
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !149
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 104 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.cl, ptr %i.a, align 4, !tbaa !149
  %i.co = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.cm, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %..i.i.i = select i1 %i.co, ptr %i.a, ptr %i.cm
  %i.cp = load float, ptr %..i.i.i, align 4, !tbaa !149
  store float %i.cp, ptr %i.cm, align 4, !tbaa !149
  %i.cq = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.cn)
  %.in6.i.i.i = select i1 %i.cq, ptr %i.a, ptr %i.cn
  %i.cr = load float, ptr %.in6.i.i.i, align 4, !tbaa !149
  store float %i.cr, ptr %i.cn, align 4, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = add nuw i64 %.015, 1                    ; 2 uses
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !188 ; 2 uses
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !489

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.h
  %i.cv = phi i64 [ %i.cd, %bb.h ], [ 0, %bb.i ], [ %i.ct, %.lr.ph ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %i.cy = atomicrmw add ptr %i.cx, i64 %i.cv seq_cst, align 8 ; 0 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  call void @_ZN6duckdb19AlpCompressionStateIfE21FlushCompressedVectorEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !469
  store i8 -1, ptr %i.da, align 1
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !469
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !469
  %i.dd = load i64, ptr %i.ap, align 8, !tbaa !188
  %i.de = shl i64 %i.dd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 4 %i.ao, i64 %i.de, i1 false)
  %i.df = load i64, ptr %i.ap, align 8, !tbaa !188
  %i.dg = shl i64 %i.df, 2                        ; 2 uses
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !469
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !469
  %i.dj = or disjoint i64 %i.dg, 1
  %i.dk = load i64, ptr %i.bq, align 8, !tbaa !486
  %i.dl = add i64 %i.dj, %i.dk
  store i64 %i.dl, ptr %i.bq, align 8, !tbaa !486
  %i.dm = load ptr, ptr %i.bw, align 8, !tbaa !470
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -4 ; 2 uses
  store ptr %i.dn, ptr %i.bw, align 8, !tbaa !470
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8
  store i32 %i.dp, ptr %i.dn, align 1
  %i.dq = load i64, ptr %i.bq, align 8, !tbaa !486
  %i.dr = add i64 %i.dq, 4
  %i.ds = call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.dr)
  store i32 %i.ds, ptr %i.do, align 8, !tbaa !436
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !490
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !490
  store i16 0, ptr %i.ar, align 8
  store i16 0, ptr %i.ax, align 2, !tbaa !485
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 6268
  store i16 0, ptr %i.dw, align 4, !tbaa !491
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb3alp14AlpCompressionIfLb0EE8CompressEPKfmPKtmRNS0_18AlpCompressionDataIfLb0EEE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(22576) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 14360 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 14368
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !296
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb3alp14AlpCompressionIfLb0EE25FindBestFactorAndExponentEPKfmRNS0_18AlpCompressionDataIfLb0EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(22576) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_3alp14AlpCombinationELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.l = load i16, ptr %i.k, align 8
  store i16 %i.l, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not125 = icmp eq i64 %1, 0                    ; 2 uses
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12312
  %.sroa.041.0.copyload.pre = load i16, ptr %4, align 8
  br label %bb.e

.lr.ph108:                                        ; preds = %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12312
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit
  %.sroa.041.0.copyload = phi i16 [ %.sroa.041.0.copyload.pre, %.lr.ph ], [ %.sroa.0.0.copyload, %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.092106 = phi i16 [ 0, %.lr.ph ], [ %i.az, %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.094105 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.094105
  %i.q = load float, ptr %i.p, align 4, !tbaa !149 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.041.0.copyload, 8
  %.sroa.2.0.extract.trunc.i = zext nneg i16 %.sroa.2.0.extract.shift.i to i64
  %i.r = and i16 %.sroa.041.0.copyload, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE7EXP_ARRE, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !149
  %i.v = fmul float %i.q, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %.sroa.2.0.extract.trunc.i
  %i.x = load float, ptr %i.w, align 4, !tbaa !149
  %i.y = fmul float %i.v, %i.x                    ; 6 uses
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIfEEbT_(float noundef %i.y)
  br i1 %i.z, label %bb.f, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef %i.y)
  br i1 %i.aa, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call float @llvm.fabs.f32(float %i.y)
  %i.ac = fpext float %i.ab to double
  %or.cond.i.i.i = fcmp ogt double %i.ac, f0x43DFFFFFFFFFFFFF
  br i1 %or.cond.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = fcmp oeq float %i.y, 0.000000e+00
  %i.ae = bitcast float %i.y to i32
  %i.af = icmp slt i32 %i.ae, 0
  %or.cond.i.i = and i1 %i.ad, %i.af
  br i1 %or.cond.i.i, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE20IsImpossibleToEncodeEf.exit.thread3.i.i

_ZN6duckdb3alp14AlpCompressionIfLb0EE20IsImpossibleToEncodeEf.exit.thread3.i.i: ; preds = %bb.h
  %i.ag = fadd float %i.y, f0x4B400000
  %i.ah = fadd float %i.ag, f0xCB400000
  %i.ai = fptosi float %i.ah to i64
  br label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit

_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %_ZN6duckdb3alp14AlpCompressionIfLb0EE20IsImpossibleToEncodeEf.exit.thread3.i.i
  %.0.i.i = phi i64 [ %i.ai, %_ZN6duckdb3alp14AlpCompressionIfLb0EE20IsImpossibleToEncodeEf.exit.thread3.i.i ], [ 9223372036854774784, %bb.h ], [ 9223372036854774784, %bb.g ], [ 9223372036854774784, %bb.f ], [ 9223372036854774784, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %4, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i100 = lshr i16 %.sroa.0.0.copyload, 8
  %.sroa.2.0.extract.trunc.i101 = zext nneg i16 %.sroa.2.0.extract.shift.i100 to i64
  %i.aj = sitofp i64 %.0.i.i to float
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i101
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !159
  %i.am = sitofp i64 %i.al to float
  %i.an = fmul nnan float %i.aj, %i.am
  %i.ao = and i16 %.sroa.0.0.copyload, 255
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !149
  %i.as = fmul float %i.ar, %i.an
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.094105
  store i64 %.0.i.i, ptr %i.at, align 8, !tbaa !159
  %i.au = fcmp une float %i.as, %i.q
  %i.av = trunc i64 %.094105 to i16
  %i.aw = zext i16 %.092106 to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aw
  store i16 %i.av, ptr %i.ax, align 2, !tbaa !143
  %i.ay = zext i1 %i.au to i16
  %i.az = add i16 %.092106, %i.ay                 ; 7 uses
  %i.ba = add nuw i64 %.094105, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %1
  br i1 %exitcond.not, label %.lr.ph108, label %bb.e, !llvm.loop !492

bb.i:                                             ; preds = %.lr.ph108, %bb.k
  %.097107 = phi i64 [ 0, %.lr.ph108 ], [ %i.bh, %bb.k ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.097107
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !143
  %i.bd = zext i16 %i.bc to i64
  %.not = icmp eq i64 %.097107, %i.bd
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.097107
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !159
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.bh = add nuw nsw i64 %.097107, 1             ; 2 uses
  %exitcond134.not = icmp eq i64 %i.bh, %1
  br i1 %exitcond134.not, label %.loopexit, label %bb.i, !llvm.loop !493

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.095 = phi i64 [ %i.bg, %bb.j ], [ 0, %bb.k ]  ; 6 uses
  %i.bi = zext i16 %i.az to i64                   ; 2 uses
  %.not127 = icmp eq i16 %i.az, 0
  br i1 %.not127, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12312 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8216 ; 3 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bm = icmp eq i16 %i.az, 1
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph110.new

.lr.ph110.new:                                    ; preds = %.lr.ph110
  %unroll_iter = and i64 %i.bi, 65534
  br label %bb.l

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph110
  %.096109.epil.init = phi i64 [ 0, %.lr.ph110 ], [ %i.cm, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i16 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.096109.epil.init
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !143
  %i.bp = zext i16 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !149
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store i64 %.095, ptr %i.bs, align 8, !tbaa !159
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.096109.epil.init
  store float %i.br, ptr %i.bt, align 4, !tbaa !149
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d, %.loopexit
  %.095152 = phi i64 [ 0, %bb.d ], [ %.095, %.loopexit ], [ %.095, %._crit_edge.loopexit.unr-lcssa ], [ %.095, %.epil.preheader ] ; 5 uses
  %.092.lcssa147151 = phi i16 [ 0, %bb.d ], [ 0, %.loopexit ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %.092.lcssa147151, ptr %i.bu, align 2, !tbaa !485
  %.not128 = icmp eq i64 %3, 0
  br i1 %.not128, label %.preheader, label %.lr.ph113

.lr.ph113:                                        ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %xtraiter201 = and i64 %3, 3                    ; 3 uses
  %i.bw = icmp ult i64 %3, 4
  br i1 %i.bw, label %.epil.preheader200, label %.lr.ph113.new

.lr.ph113.new:                                    ; preds = %.lr.ph113
  %unroll_iter204 = and i64 %3, -4
  br label %bb.n

bb.l:                                             ; preds = %bb.l, %.lr.ph110.new
  %.096109 = phi i64 [ 0, %.lr.ph110.new ], [ %i.cm, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph110.new ], [ %niter.next.1, %bb.l ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.096109
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !143
  %i.bz = zext i16 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !149
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bz
  store i64 %.095, ptr %i.cc, align 8, !tbaa !159
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.096109
  store float %i.cb, ptr %i.cd, align 8, !tbaa !149
  %i.ce = or disjoint i64 %.096109, 1             ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !143
  %i.ch = zext i16 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !149
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ch
  store i64 %.095, ptr %i.ck, align 8, !tbaa !159
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ce
  store float %i.cj, ptr %i.cl, align 4, !tbaa !149
  %i.cm = add nuw nsw i64 %.096109, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !494

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.n
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.preheader, label %.epil.preheader200

.epil.preheader200:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph113
  %.093111.epil.init = phi i64 [ 0, %.lr.ph113 ], [ %i.dn, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter201, 0
  tail call void @llvm.assume(i1 %lcmp.mod203)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader200
  %.093111.epil = phi i64 [ %.093111.epil.init, %.epil.preheader200 ], [ %i.cr, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader200 ], [ %epil.iter.next, %bb.m ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111.epil
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !143
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cp
  store i64 %.095152, ptr %i.cq, align 8, !tbaa !159
  %i.cr = add nuw i64 %.093111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter201
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.m, !llvm.loop !495

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.m, %._crit_edge
  br i1 %.not125, label %_ZN6duckdb20BitpackingPrimitives10PackBufferImLb0EEEvPhPT_mh.exit, label %.lr.ph117

.lr.ph117:                                        ; preds = %.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %xtraiter207 = and i64 %1, 3                    ; 3 uses
  %i.ct = icmp ult i64 %1, 4
  br i1 %i.ct, label %.epil.preheader206, label %.lr.ph117.new

.lr.ph117.new:                                    ; preds = %.lr.ph117
  %unroll_iter213 = and i64 %1, -4
  br label %bb.p

bb.n:                                             ; preds = %bb.n, %.lr.ph113.new
  %.093111 = phi i64 [ 0, %.lr.ph113.new ], [ %i.dn, %bb.n ] ; 5 uses
  %niter205 = phi i64 [ 0, %.lr.ph113.new ], [ %niter205.next.3, %bb.n ]
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !143
  %i.cw = zext i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cw
  store i64 %.095152, ptr %i.cx, align 8, !tbaa !159
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !143
  %i.db = zext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.db
  store i64 %.095152, ptr %i.dc, align 8, !tbaa !159
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i16, ptr %i.de, align 2, !tbaa !143
  %i.dg = zext i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dg
  store i64 %.095152, ptr %i.dh, align 8, !tbaa !159
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !143
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dl
  store i64 %.095152, ptr %i.dm, align 8, !tbaa !159
  %i.dn = add nuw i64 %.093111, 4                 ; 2 uses
  %niter205.next.3 = add nuw i64 %niter205, 4     ; 2 uses
  %niter205.ncmp.3 = icmp eq i64 %niter205.next.3, %unroll_iter204
  br i1 %niter205.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.n, !llvm.loop !496

.lr.ph123.preheader.unr-lcssa:                    ; preds = %bb.p
  %lcmp.mod209.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod209.not, label %.lr.ph123.preheader, label %.epil.preheader206

.epil.preheader206:                               ; preds = %.lr.ph123.preheader.unr-lcssa, %.lr.ph117
  %.089116.epil.init = phi i64 [ 0, %.lr.ph117 ], [ %i.et, %.lr.ph123.preheader.unr-lcssa ]
  %.090115.epil.init = phi i64 [ -9223372036854775808, %.lr.ph117 ], [ %i.er, %.lr.ph123.preheader.unr-lcssa ]
  %.091114.epil.init = phi i64 [ 9223372036854775807, %.lr.ph117 ], [ %i.es, %.lr.ph123.preheader.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter207, 0
  tail call void @llvm.assume(i1 %lcmp.mod212)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader206
  %.089116.epil = phi i64 [ %.089116.epil.init, %.epil.preheader206 ], [ %i.ds, %bb.o ] ; 2 uses
  %.090115.epil = phi i64 [ %.090115.epil.init, %.epil.preheader206 ], [ %i.dq, %bb.o ]
  %.091114.epil = phi i64 [ %.091114.epil.init, %.epil.preheader206 ], [ %i.dr, %bb.o ]
  %epil.iter208 = phi i64 [ 0, %.epil.preheader206 ], [ %epil.iter208.next, %bb.o ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116.epil
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !159 ; 2 uses
  %i.dq = tail call noundef i64 @llvm.smax.i64(i64 %.090115.epil, i64 %i.dp) ; 2 uses
  %i.dr = tail call noundef i64 @llvm.smin.i64(i64 %.091114.epil, i64 %i.dp) ; 2 uses
  %i.ds = add nuw i64 %.089116.epil, 1
  %epil.iter208.next = add i64 %epil.iter208, 1   ; 2 uses
  %epil.iter208.cmp.not = icmp eq i64 %epil.iter208.next, %xtraiter207
  br i1 %epil.iter208.cmp.not, label %.lr.ph123.preheader, label %bb.o, !llvm.loop !497

.lr.ph123.preheader:                              ; preds = %bb.o, %.lr.ph123.preheader.unr-lcssa
  %.lcssa196 = phi i64 [ %i.er, %.lr.ph123.preheader.unr-lcssa ], [ %i.dq, %bb.o ] ; 2 uses
  %.lcssa = phi i64 [ %i.es, %.lr.ph123.preheader.unr-lcssa ], [ %i.dr, %bb.o ] ; 7 uses
  %i.dt = sub i64 %.lcssa196, %.lcssa             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph123.preheader195, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph123.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !159
  %wide.load194 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !159
  %i.dx = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dy = sub <2 x i64> %wide.load194, %broadcast.splat
  store <2 x i64> %i.dx, ptr %i.dv, align 8, !tbaa !159
  store <2 x i64> %i.dy, ptr %i.dw, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !498

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge124, label %.lr.ph123.preheader195

.lr.ph123.preheader195:                           ; preds = %.lr.ph123.preheader, %middle.block
  %.0121.ph = phi i64 [ 0, %.lr.ph123.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph123

bb.p:                                             ; preds = %bb.p, %.lr.ph117.new
  %.089116 = phi i64 [ 0, %.lr.ph117.new ], [ %i.et, %bb.p ] ; 5 uses
  %.090115 = phi i64 [ -9223372036854775808, %.lr.ph117.new ], [ %i.er, %bb.p ]
  %.091114 = phi i64 [ 9223372036854775807, %.lr.ph117.new ], [ %i.es, %bb.p ]
  %niter214 = phi i64 [ 0, %.lr.ph117.new ], [ %niter214.next.3, %bb.p ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !159 ; 2 uses
  %i.ec = tail call noundef i64 @llvm.smax.i64(i64 %.090115, i64 %i.eb)
  %i.ed = tail call noundef i64 @llvm.smin.i64(i64 %.091114, i64 %i.eb)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !159 ; 2 uses
  %i.eh = tail call noundef i64 @llvm.smax.i64(i64 %i.ec, i64 %i.eg)
  %i.ei = tail call noundef i64 @llvm.smin.i64(i64 %i.ed, i64 %i.eg)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !159 ; 2 uses
  %i.em = tail call noundef i64 @llvm.smax.i64(i64 %i.eh, i64 %i.el)
  %i.en = tail call noundef i64 @llvm.smin.i64(i64 %i.ei, i64 %i.el)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !159 ; 2 uses
  %i.er = tail call noundef i64 @llvm.smax.i64(i64 %i.em, i64 %i.eq) ; 3 uses
  %i.es = tail call noundef i64 @llvm.smin.i64(i64 %i.en, i64 %i.eq) ; 3 uses
  %i.et = add nuw i64 %.089116, 4                 ; 2 uses
  %niter214.next.3 = add nuw i64 %niter214, 4     ; 2 uses
  %niter214.ncmp.3 = icmp eq i64 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %.lr.ph123.preheader.unr-lcssa, label %bb.p, !llvm.loop !499

._crit_edge124:                                   ; preds = %.lr.ph123, %middle.block
  %i.eu = icmp eq i64 %.lcssa196, %.lcssa
  br i1 %i.eu, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %._crit_edge124
  %i.ev = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i8
  %i.ex = sub nuw nsw i8 64, %i.ew
  %i.ey = icmp ugt i64 %i.dt, 72057594037927935
  %spec.select = select i1 %i.ey, i8 64, i8 %i.ex
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit: ; preds = %.preheader.preheader.i.i, %._crit_edge124
  %.09.i.i = phi i8 [ 0, %._crit_edge124 ], [ %spec.select, %.preheader.preheader.i.i ] ; 6 uses
  %i.ez = trunc i64 %1 to i32
  %i.fa = and i32 %i.ez, 31                       ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit
  %i.fc = add i64 %1, 32
  %i.fd = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.fa)
  %i.fe = sub i64 %i.fc, %i.fd
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, %bb.q
  %.0.i.i102 = phi i64 [ %i.fe, %bb.q ], [ %1, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit ] ; 3 uses
  %i.ff = zext nneg i8 %.09.i.i to i64            ; 4 uses
  %.not99 = icmp eq i8 %.09.i.i, 0
  br i1 %.not99, label %_ZN6duckdb20BitpackingPrimitives10PackBufferImLb0EEEvPhPT_mh.exit, label %bb.r

.lr.ph123:                                        ; preds = %.lr.ph123.preheader195, %.lr.ph123
  %.0121 = phi i64 [ %i.fj, %.lr.ph123 ], [ %.0121.ph, %.lr.ph123.preheader195 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.0121 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !159
  %i.fi = sub i64 %i.fh, %.lcssa
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !159
  %i.fj = add nuw i64 %.0121, 1                   ; 2 uses
  %exitcond138.not = icmp eq i64 %i.fj, %1
end_hunk_5
begin_hunk_6_@_ZN6duckdb12AlpScanStateIfE10LoadVectorILb0EEEvPf:bb.a
  %i.ap = shl nuw nsw i64 %i.ao, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 1 %.0, i64 %i.ap, i1 false)
  %i.aq = load i16, ptr %i.v, align 2, !tbaa !514
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8256
  %i.av = shl nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 1 %i.at, i64 %i.av, i1 false)
  %.pre31 = load i16, ptr %i.v, align 2, !tbaa !517
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = phi i16 [ %.pre31, %bb.g ], [ 0, %bb.f ] ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !149
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10304
  %i.ay = load i8, ptr %i.t, align 1, !tbaa !518
  %i.az = load i8, ptr %i.p, align 8, !tbaa !519
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8256 ; 5 uses
  %i.bc = load i64, ptr %i.x, align 8, !tbaa !520 ; 2 uses
  %i.bd = load i8, ptr %i.z, align 8, !tbaa !521  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %.not.i.i = icmp eq i8 %i.bd, 0
  %.not.i.i.i = icmp eq i64 %i.g, %i.i            ; 2 uses
  %or.cond.i.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.be = zext i8 %i.bd to i64
  %i.bf = zext i8 %i.bd to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bl, %bb.i ] ; 3 uses
  %i.bg = shl nuw nsw i64 %.09.i.i.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = mul nuw nsw i64 %.09.i.i.i, %i.be
  %i.bj = lshr exact i64 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bj
  call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bh, i32 noundef %i.bf)
  %i.bl = add nuw nsw i64 %.09.i.i.i, 32          ; 2 uses
  %i.bm = icmp samesign ult i64 %i.bl, %i.k
  br i1 %i.bm, label %bb.i, label %.lr.ph.preheader.i.i, !llvm.loop !522

_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i: ; preds = %bb.h
  br i1 %.not.i.i.i, label %.preheader.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i, %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.k, 2044                     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bn, align 16, !tbaa !159
  %wide.load36 = load <2 x i64>, ptr %i.bo, align 16, !tbaa !159
  %i.bp = add <2 x i64> %wide.load, %broadcast.splat
  %i.bq = add <2 x i64> %wide.load36, %broadcast.splat
  store <2 x i64> %i.bp, ptr %i.bn, align 16, !tbaa !159
  store <2 x i64> %i.bq, ptr %i.bo, align 16, !tbaa !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph33.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.02731.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph.i.i, %middle.block
  %.sroa.2.0.extract.trunc.i.i.i = zext i8 %i.ay to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i.i.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !159
  %i.bu = sitofp i64 %i.bt to float               ; 2 uses
  %i.bv = zext i8 %i.az to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !149 ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.j, 4
  br i1 %min.iters.check38, label %scalar.ph37.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph33.i.i
  %n.vec40 = and i64 %i.k, 2044                   ; 3 uses
  %broadcast.splatinsert41 = insertelement <2 x float> poison, float %i.bu, i64 0
  %broadcast.splat42 = shufflevector <2 x float> %broadcast.splatinsert41, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <2 x float> poison, float %i.bx, i64 0
  %broadcast.splat44 = shufflevector <2 x float> %broadcast.splatinsert43, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph39
  %index46 = phi i64 [ 0, %vector.ph39 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index46 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load47 = load <2 x i64>, ptr %i.by, align 16, !tbaa !159
  %wide.load48 = load <2 x i64>, ptr %i.bz, align 16, !tbaa !159
  %i.ca = sitofp <2 x i64> %wide.load47 to <2 x float>
  %i.cb = sitofp <2 x i64> %wide.load48 to <2 x float>
  %i.cc = fmul nnan <2 x float> %broadcast.splat42, %i.ca
  %i.cd = fmul nnan <2 x float> %broadcast.splat42, %i.cb
  %i.ce = fmul <2 x float> %broadcast.splat44, %i.cc
  %i.cf = fmul <2 x float> %broadcast.splat44, %i.cd
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index46 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store <2 x float> %i.ce, ptr %i.cg, align 4, !tbaa !149
  store <2 x float> %i.cf, ptr %i.ch, align 4, !tbaa !149
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next49, %n.vec40
  br i1 %i.ci, label %middle.block50, label %vector.body45, !llvm.loop !524

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %i.k, %n.vec40
  br i1 %cmp.n51, label %.preheader.i.i, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %.lr.ph33.i.i, %middle.block50
  %.02832.i.i.ph = phi i64 [ 0, %.lr.ph33.i.i ], [ %n.vec40, %middle.block50 ]
  br label %scalar.ph37

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02731.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.02731.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02731.i.i ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !159
  %i.cl = add i64 %i.ck, %i.bc
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !159
  %i.cm = add nuw i64 %.02731.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cm, %i.k
  br i1 %exitcond.not.i.i, label %.lr.ph33.i.i, label %.lr.ph.i.i, !llvm.loop !525

.preheader.i.i:                                   ; preds = %scalar.ph37, %middle.block50, %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i
  %i.cn = zext i16 %i.aw to i64                   ; 2 uses
  %.not38.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not38.i.i, label %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit, label %.lr.ph35.i.i.preheader

.lr.ph35.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp ult i16 %i.aw, 4
  br i1 %i.co, label %.lr.ph35.i.i.epil.preheader, label %.lr.ph35.i.i.preheader.new

.lr.ph35.i.i.preheader.new:                       ; preds = %.lr.ph35.i.i.preheader
  %unroll_iter = and i64 %i.cn, 65532
  br label %.lr.ph35.i.i

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %.02832.i.i = phi i64 [ %i.cv, %scalar.ph37 ], [ %.02832.i.i.ph, %scalar.ph37.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02832.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !159
  %i.cr = sitofp i64 %i.cq to float
  %i.cs = fmul nnan float %i.bu, %i.cr
  %i.ct = fmul float %i.bx, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02832.i.i
  store float %i.ct, ptr %i.cu, align 4, !tbaa !149
  %i.cv = add nuw i64 %.02832.i.i, 1              ; 2 uses
  %exitcond39.not.i.i = icmp eq i64 %i.cv, %i.k
  br i1 %exitcond39.not.i.i, label %.preheader.i.i, label %scalar.ph37, !llvm.loop !526

.lr.ph35.i.i:                                     ; preds = %.lr.ph35.i.i, %.lr.ph35.i.i.preheader.new
  %.034.i.i = phi i64 [ 0, %.lr.ph35.i.i.preheader.new ], [ %i.dx, %.lr.ph35.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph35.i.i.preheader.new ], [ %niter.next.3, %.lr.ph35.i.i ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.034.i.i
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !149
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.034.i.i
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !143
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  store float %i.cx, ptr %i.db, align 4, !tbaa !149
  %i.dc = or disjoint i64 %.034.i.i, 1            ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !149
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dc
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !143
  %i.dh = zext i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  store float %i.de, ptr %i.di, align 4, !tbaa !149
  %i.dj = or disjoint i64 %.034.i.i, 2            ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !149
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dj
  %i.dn = load i16, ptr %i.dm, align 4, !tbaa !143
  %i.do = zext i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.do
  store float %i.dl, ptr %i.dp, align 4, !tbaa !149
  %i.dq = or disjoint i64 %.034.i.i, 3            ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !149
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dq
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !143
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dv
  store float %i.ds, ptr %i.dw, align 4, !tbaa !149
  %i.dx = add nuw nsw i64 %.034.i.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa, label %.lr.ph35.i.i, !llvm.loop !527

_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph35.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit, label %.lr.ph35.i.i.epil.preheader

.lr.ph35.i.i.epil.preheader:                      ; preds = %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa, %.lr.ph35.i.i.preheader
  %.034.i.i.epil.init = phi i64 [ 0, %.lr.ph35.i.i.preheader ], [ %i.dx, %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph35.i.i.epil

.lr.ph35.i.i.epil:                                ; preds = %.lr.ph35.i.i.epil, %.lr.ph35.i.i.epil.preheader
  %.034.i.i.epil = phi i64 [ %i.ee, %.lr.ph35.i.i.epil ], [ %.034.i.i.epil.init, %.lr.ph35.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph35.i.i.epil ], [ 0, %.lr.ph35.i.i.epil.preheader ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.034.i.i.epil
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !149
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.034.i.i.epil
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !143
  %i.ec = zext i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ec
  store float %i.dz, ptr %i.ed, align 4, !tbaa !149
  %i.ee = add nuw nsw i64 %.034.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit, label %.lr.ph35.i.i.epil, !llvm.loop !528

_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit: ; preds = %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa, %.lr.ph35.i.i.epil, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.bo [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 17, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.u
    i32 20, label %bb.v
    i32 21, label %bb.w
    i32 22, label %bb.x
    i32 23, label %bb.y
    i32 24, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 27, label %bb.ac
    i32 28, label %bb.ad
    i32 29, label %bb.ae
    i32 30, label %bb.af
    i32 31, label %bb.ag
    i32 32, label %bb.ah
    i32 33, label %bb.ai
    i32 34, label %bb.aj
    i32 35, label %bb.ak
    i32 36, label %bb.al
    i32 37, label %bb.am
    i32 38, label %bb.an
    i32 39, label %bb.ao
    i32 40, label %bb.ap
    i32 41, label %bb.aq
    i32 42, label %bb.ar
    i32 43, label %bb.as
    i32 44, label %bb.at
    i32 45, label %bb.au
    i32 46, label %bb.av
    i32 47, label %bb.aw
    i32 48, label %bb.ax
    i32 49, label %bb.ay
    i32 50, label %bb.az
    i32 51, label %bb.ba
    i32 52, label %bb.bb
    i32 53, label %bb.bc
    i32 54, label %bb.bd
    i32 55, label %bb.be
    i32 56, label %bb.bf
    i32 57, label %bb.bg
    i32 58, label %bb.bh
    i32 59, label %bb.bi
    i32 60, label %bb.bj
    i32 61, label %bb.bk
    i32 62, label %bb.bl
    i32 63, label %bb.bm
    i32 64, label %bb.bn
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack0EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack1EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack2EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack3EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack4EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack5EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack6EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack7EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack8EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack9EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack10EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack11EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack12EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack13EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack14EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack15EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack16EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack17EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack18EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.u:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack19EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.v:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack20EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.w:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack21EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.x:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal14__fastunpack22EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.y:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_ZN6duckdb3alp14AlpCompressionIdLb1EE20FindTopKCombinationsERKNS_6vectorINS3_IdLb1ESaIdEEELb1ESaIS5_EEERNS0_18AlpCompressionDataIdLb1EEE:bb.a
          to label %_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEEixERS6_.exit unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not155 = icmp eq i64 %indvars.iv, 0
  br i1 %.not155, label %bb.c, label %.preheader, !llvm.loop !543

bb.f:                                             ; preds = %.preheader, %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread
  %indvars.iv120 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next121, %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread ] ; 6 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !257 ; 3 uses
  %i.af = load ptr, ptr %.sroa.086.0107, align 8, !tbaa !251 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %.not41.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not41.i, label %bb.n, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ak = load double, ptr %i.z, align 8, !tbaa !255
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE8FRAC_ARRE, i64 %indvars.iv120
  %i.am = load double, ptr %i.al, align 8, !tbaa !255
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %indvars.iv120
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.l
  %i.ao = icmp ult i64 %.135.i, 2
  br i1 %i.ao, label %bb.n, label %bb.m

bb.g:                                             ; preds = %bb.l, %.lr.ph.i
  %.02846.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.l ] ; 2 uses
  %.03045.i = phi i64 [ 9223372036854775807, %.lr.ph.i ], [ %.131.i, %bb.l ] ; 2 uses
  %.03244.i = phi i64 [ -9223372036854775808, %.lr.ph.i ], [ %.133.i, %bb.l ] ; 2 uses
  %.03443.i = phi i64 [ 0, %.lr.ph.i ], [ %.135.i, %bb.l ] ; 2 uses
  %.sroa.038.042.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.bo, %bb.l ] ; 3 uses
  %i.ap = load double, ptr %.sroa.038.042.i, align 8, !tbaa !255
  %i.aq = fmul double %i.ak, %i.ap
  %i.ar = fmul double %i.am, %i.aq                ; 6 uses
  %i.as = invoke noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIdEEbT_(double noundef %i.ar)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.g
  br i1 %i.as, label %bb.h, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit.i

bb.h:                                             ; preds = %.noexc
  %i.at = invoke noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef %i.ar)
          to label %.noexc40 unwind label %bb.s

.noexc40:                                         ; preds = %bb.h
  %i.au = call double @llvm.fabs.f64(double %i.ar)
  %i.av = fcmp ogt double %i.au, f0x43DFFFFFFFFFFFFF
  %or.cond3.i.i.i.i = or i1 %i.av, %i.at
  br i1 %or.cond3.i.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit.i, label %bb.i

bb.i:                                             ; preds = %.noexc40
  %i.aw = fcmp oeq double %i.ar, 0.000000e+00
  %i.ax = bitcast double %i.ar to i64
  %i.ay = icmp slt i64 %i.ax, 0
  %or.cond.i.i.i = and i1 %i.aw, %i.ay
  br i1 %or.cond.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit.i, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE20IsImpossibleToEncodeEd.exit.thread3.i.i.i

_ZN6duckdb3alp14AlpCompressionIdLb1EE20IsImpossibleToEncodeEd.exit.thread3.i.i.i: ; preds = %bb.i
  %i.az = fadd double %i.ar, f0x4338000000000000
  %i.ba = fadd double %i.az, f0xC338000000000000
  %i.bb = fptosi double %i.ba to i64
  br label %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit.i

_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit.i: ; preds = %_ZN6duckdb3alp14AlpCompressionIdLb1EE20IsImpossibleToEncodeEd.exit.thread3.i.i.i, %bb.i, %.noexc40, %.noexc
  %.0.i.i.i = phi i64 [ %i.bb, %_ZN6duckdb3alp14AlpCompressionIdLb1EE20IsImpossibleToEncodeEd.exit.thread3.i.i.i ], [ 9223372036854774784, %bb.i ], [ 9223372036854774784, %.noexc ], [ 9223372036854774784, %.noexc40 ] ; 3 uses
  %i.bc = sitofp i64 %.0.i.i.i to double
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !159
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fmul nnan double %i.bc, %i.be
  %i.bg = load double, ptr %i.aa, align 8, !tbaa !255
  %i.bh = fmul double %i.bg, %i.bf
  %i.bi = load double, ptr %.sroa.038.042.i, align 8, !tbaa !255
  %i.bj = fcmp oeq double %i.bh, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit.i
  %i.bk = add i64 %.03443.i, 1
  %i.bl = call noundef i64 @llvm.smax.i64(i64 %.0.i.i.i, i64 %.03244.i)
  %i.bm = call noundef i64 @llvm.smin.i64(i64 %.0.i.i.i, i64 %.03045.i)
  br label %bb.l

bb.k:                                             ; preds = %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit.i
  %i.bn = add i64 %.02846.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.135.i = phi i64 [ %i.bk, %bb.j ], [ %.03443.i, %bb.k ] ; 2 uses
  %.133.i = phi i64 [ %i.bl, %bb.j ], [ %.03244.i, %bb.k ] ; 2 uses
  %.131.i = phi i64 [ %i.bm, %bb.j ], [ %.03045.i, %bb.k ] ; 2 uses
  %.1.i = phi i64 [ %.02846.i, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.038.042.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, %i.ae
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

bb.m:                                             ; preds = %._crit_edge.i
  %i.bp = mul i64 %.1.i, 80
  %i.bq = add i64 %.133.i, 1
  %i.br = sub i64 %i.bq, %.131.i
  %i.bs = uitofp i64 %i.br to double
  %i.bt = call noundef double @log2(double noundef %i.bs) #22, !tbaa !3
  %i.bu = call double @llvm.ceil.f64(double %i.bt)
  %i.bv = fptoui double %i.bu to i32
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul i64 %i.aj, %i.bw
  %i.by = add i64 %i.bx, %i.bp
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %._crit_edge.i, %bb.m
  %.0.i = phi i64 [ %i.by, %bb.m ], [ -1, %._crit_edge.i ], [ -1, %bb.f ] ; 3 uses
  %i.bz = load i64, ptr %i.m, align 8, !tbaa !364
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cb = load i64, ptr %i.n, align 8, !tbaa !366 ; 2 uses
  %i.cc = icmp ult i64 %.0.i, %i.cb
  br i1 %i.cc, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp eq i64 %.0.i, %i.cb
  br i1 %i.cd, label %bb.q, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ce = load i8, ptr %8, align 8, !tbaa !368
  %i.cf = zext i8 %i.ce to i64                    ; 2 uses
  %i.cg = icmp samesign ugt i64 %indvars.iv, %i.cf
  br i1 %i.cg, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp eq i64 %indvars.iv, %i.cf
  %i.ci = load i8, ptr %i.o, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = icmp ugt i64 %indvars.iv120, %i.cj
  %or.cond = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %or.cond, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90: ; preds = %bb.r, %bb.o, %bb.q
  %i.cl = trunc nuw nsw i64 %indvars.iv120 to i16
  %.sroa.073.sroa.6.0.insert.shift = shl nuw nsw i16 %i.cl, 8
  %.sroa.073.sroa.0.0.insert.insert = or disjoint i16 %.sroa.073.sroa.6.0.insert.shift, %i.ab
  store i16 %.sroa.073.sroa.0.0.insert.insert, ptr %8, align 8
  store i64 %.0.i, ptr %i.n, align 8, !tbaa !159
  br label %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread

bb.s:                                             ; preds = %bb.h, %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread: ; preds = %bb.n, %bb.r, %bb.p, %_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_.exit.thread90
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1
  %i.cn = icmp sgt i64 %indvars.iv120, 0
  br i1 %i.cn, label %bb.f, label %bb.e, !llvm.loop !544

_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEEixERS6_.exit: ; preds = %bb.c
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !159
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.ac, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.086.0107, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.l
  br i1 %.not, label %._crit_edge, label %bb.b

bb.t:                                             ; preds = %bb.s, %bb.d
  %.pn37 = phi { ptr, i32 } [ %i.cm, %bb.s ], [ %i.ad, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ax

._crit_edge112.thread:                            ; preds = %._crit_edge, %._crit_edge.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit

._crit_edge112:                                   ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit
  %.pre124 = load ptr, ptr %9, align 8, !tbaa !370 ; 16 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %.not.i.i = icmp eq ptr %.pre124, %i.fe
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge112
  %i.ct = ptrtoint ptr %i.fe to i64
  %i.cu = ptrtoint ptr %.pre124 to i64            ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = sdiv exact i64 %i.cv, 24
  %i.cx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = shl nuw nsw i64 %i.cx, 1
  %i.cz = xor i64 %i.cy, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %.pre124, ptr nonnull %i.fe, i64 noundef %i.cz, ptr nonnull @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_)
          to label %.noexc41 unwind label %bb.ao

.noexc41:                                         ; preds = %bb.u
  %i.da = icmp sgt i64 %i.cv, 384
  %scevgep.i = getelementptr i8, ptr %.pre124, i64 24 ; 4 uses
  br i1 %i.da, label %.lr.ph.i.i, label %bb.aa

.lr.ph.i.i:                                       ; preds = %.noexc41, %bb.z
  %.sroa.0.021.i.idx.i = phi i64 [ %.sroa.0.021.i.add.i, %bb.z ], [ 24, %.noexc41 ] ; 4 uses
  %.pn20.i.i = phi ptr [ %.sroa.0.021.i.ptr.i, %bb.z ], [ %.pre124, %.noexc41 ] ; 3 uses
  %.sroa.0.021.i.ptr.i = getelementptr inbounds nuw i8, ptr %.pre124, i64 %.sroa.0.021.i.idx.i ; 6 uses
  %i.db = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i.ptr.i, ptr noundef nonnull align 8 dereferenceable(24) %.pre124), !inline_history !371
  br i1 %i.db, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i.ptr.i, i64 24, i1 false), !tbaa.struct !372
  %i.dc = icmp samesign ugt i64 %.sroa.0.021.i.idx.i, 24
  br i1 %i.dc, label %bb.w, label %bb.x, !prof !300

bb.w:                                             ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.pre124, i64 %.sroa.0.021.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %.pre124, i64 24, i1 false), !tbaa.struct !372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.pre124, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i.ptr.i, i64 24, i1 false), !tbaa.struct !372
  %i.de = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.pn20.i.i), !inline_history !373
  br i1 %i.de, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn20.i.i, %bb.y ] ; 4 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.021.i.ptr.i, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09.i.i.i, i64 24, i1 false), !tbaa.struct !372
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -24 ; 2 uses
  %i.df = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i), !inline_history !373
  br i1 %i.df, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, !llvm.loop !374

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.y
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i, %bb.y ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.z

bb.z:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  %.sroa.0.021.i.add.i = add nuw nsw i64 %.sroa.0.021.i.idx.i, 24 ; 2 uses
  %.not.i.i68 = icmp eq i64 %.sroa.0.021.i.add.i, 384
  br i1 %.not.i.i68, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !375

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i: ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre124, i64 384 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.dg, %i.fe
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.dj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.dg, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.08.i.i, i64 24, i1 false), !tbaa.struct !372
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -24 ; 2 uses
  %i.dh = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07.i.i.i), !inline_history !376
  br i1 %i.dh, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 4 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09.i.i15.i, i64 24, i1 false), !tbaa.struct !372
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -24 ; 2 uses
  %i.di = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i17.i), !inline_history !376
  br i1 %i.di, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, !llvm.loop !374

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.lcssa.i.i12.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.dj, %i.fe
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !377

bb.aa:                                            ; preds = %.noexc41
  %.not19.i20.i = icmp eq ptr %scevgep.i, %i.fe
  br i1 %.not19.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.aa, %bb.ag
  %.sroa.0.021.i22.i = phi ptr [ %.sroa.0.0.i26.i, %bb.ag ], [ %scevgep.i, %bb.aa ] ; 8 uses
  %.pn20.i23.i = phi ptr [ %.sroa.0.021.i22.i, %bb.ag ], [ %.pre124, %bb.aa ] ; 3 uses
  %i.dk = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i22.i, ptr noundef nonnull align 8 dereferenceable(24) %.pre124), !inline_history !371
  br i1 %i.dk, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %.lr.ph.i21.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i22.i, i64 24, i1 false), !tbaa.struct !372
  %i.dl = ptrtoint ptr %.sroa.0.021.i22.i to i64
  %i.dm = sub i64 %i.dl, %i.cu                    ; 3 uses
  %i.dn = icmp sgt i64 %i.dm, 24
  br i1 %i.dn, label %bb.ac, label %bb.ad, !prof !300

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.pre124, i64 %i.dm, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i

bb.ad:                                            ; preds = %bb.ab
  %i.do = icmp eq i64 %i.dm, 24
  br i1 %i.do, label %bb.ae, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i

bb.ae:                                            ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn20.i23.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %.pre124, i64 24, i1 false), !tbaa.struct !372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.pre124, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i21.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.021.i22.i, i64 24, i1 false), !tbaa.struct !372
  %i.dq = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.pn20.i23.i), !inline_history !373
  br i1 %i.dq, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.af, %.lr.ph.i.i28.i
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn20.i23.i, %bb.af ] ; 4 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.0.021.i22.i, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i30.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.09.i.i29.i, i64 24, i1 false), !tbaa.struct !372
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -24 ; 2 uses
  %i.dr = call noundef zeroext i1 @_ZN6duckdb3alp14AlpCompressionIdLb1EE22CompareALPCombinationsERKNS0_14AlpCombinationES5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i31.i), !inline_history !373
  br i1 %i.dr, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i, !llvm.loop !374

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.af
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.0.021.i22.i, %bb.af ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.lcssa.i.i25.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !372
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i32.i
  %.sroa.0.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i22.i, i64 24 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.0.0.i26.i, %i.fe
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i21.i, !llvm.loop !375

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit: ; preds = %bb.ag, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, %._crit_edge112.thread, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %bb.aa, %._crit_edge112
  %i.ds = phi ptr [ %i.cr, %._crit_edge112.thread ], [ %i.cs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.cs, %._crit_edge112 ], [ %i.cs, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ], [ %i.cs, %bb.aa ], [ %i.cs, %bb.ag ] ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !353
  %i.du = load ptr, ptr %9, align 8, !tbaa !296   ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 24
  %i.dz = and i64 %i.dy, 255
  %.not116 = icmp eq i64 %i.dz, 0
  br i1 %.not116, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 18472 ; 2 uses
  br label %bb.ap

bb.ah:                                            ; preds = %.lr.ph111, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit
  %i.eb = phi ptr [ null, %.lr.ph111 ], [ %i.fe, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit ] ; 7 uses
  %.sroa.070.0109 = phi ptr [ %.pre, %.lr.ph111 ], [ %i.ff, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.070.0109, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.070.0109, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.q, align 8, !tbaa !378
  %.not.i43 = icmp eq ptr %i.eb, %i.ee
  br i1 %.not.i43, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ec, align 1
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !159
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.eb, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !364
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 0, ptr %i.eh, align 8, !tbaa !366
  %i.ei = load ptr, ptr %i.p, align 8, !tbaa !353
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  store ptr %i.ej, ptr %i.p, align 8, !tbaa !353
  br label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ek = load ptr, ptr %9, align 8, !tbaa !296   ; 5 uses
  %i.el = ptrtoint ptr %i.eb to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %bb.ak, label %_ZNKSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
          to label %.noexc44 unwind label %.loopexit.split-lp96

.noexc44:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.ep = sdiv exact i64 %i.en, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 384307168202282325)
  %i.et = select i1 %i.er, i64 384307168202282325, i64 %i.es ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eu = mul nuw nsw i64 %i.et, 24
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #23
          to label %.noexc45 unwind label %.loopexit95 ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.en ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ec, align 1
  %i.ex = load i64, ptr %i.ed, align 8, !tbaa !159
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !364
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 0, ptr %i.ez, align 8, !tbaa !366
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ek, %i.eb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc45, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i ], [ %i.ev, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i ], [ %i.ek, %.noexc45 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !372, !alias.scope !545
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fa, %i.eb
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !383

_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc45
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ev, %.noexc45 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ek) #24
  br label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  store ptr %i.ev, ptr %9, align 8, !tbaa !296
  store ptr %i.fc, ptr %i.p, align 8, !tbaa !353
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fd, ptr %i.q, align 8, !tbaa !378
  br label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12emplace_backIJRKNS1_18AlpEncodingIndicesERKmiEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ai
  %i.fe = phi ptr [ %i.fc, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE17_M_realloc_insertIJRKNS1_18AlpEncodingIndicesERKmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ej, %bb.ai ] ; 8 uses
  %i.ff = load ptr, ptr %.sroa.070.0109, align 8, !tbaa !384 ; 2 uses
  %.not93 = icmp eq ptr %i.ff, null
  br i1 %.not93, label %._crit_edge112, label %bb.ah

.loopexit95:                                      ; preds = %_ZNKSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp96:                             ; preds = %bb.ak
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

._crit_edge115:                                   ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE9push_backERKS2_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit
  %.lcssa100 = phi ptr [ %i.du, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp14AlpCombinationESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit ], [ %i.gm, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.lcssa100, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge115
  call void @_ZdlPv(ptr noundef nonnull %.lcssa100) #24
  br label %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit: ; preds = %._crit_edge115, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !363 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i ], [ %i.fg, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit ] ; 2 uses
  %i.fh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !384 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #24
  %.not.i.i.i.i47 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i47, label %_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !385

_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN6duckdb3alp14AlpCombinationESaIS2_EED2Ev.exit
  %i.fi = load ptr, ptr %7, align 8, !tbaa !354
  %i.fj = load i64, ptr %i.f, align 8, !tbaa !361
  %i.fk = shl i64 %i.fj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.fk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.fl = load ptr, ptr %7, align 8, !tbaa !354   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.e
  br i1 %i.fm, label %_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.fl) #24
  br label %_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEED2Ev.exit

_ZNSt13unordered_mapIN6duckdb3alp18AlpEncodingIndicesEmNS1_22AlpEncodingIndicesHashENS1_26AlpEncodingIndicesEqualityESaISt4pairIKS2_mEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb3alp18AlpEncodingIndicesESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stENS1_26AlpEncodingIndicesEqualityENS1_22AlpEncodingIndicesHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void
end_hunk_7
begin_hunk_8_@_ZN6duckdb3alp14AlpCompressionIdLb1EE8CompressEPKdmPKtmRNS0_18AlpCompressionDataIdLb1EEE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 18456 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 18464
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !353
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb3alp14AlpCompressionIdLb1EE25FindBestFactorAndExponentEPKdmRNS0_18AlpCompressionDataIdLb1EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(26672) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_3alp14AlpCombinationELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  %i.k = load i16, ptr %i.j, align 8
  store i16 %i.k, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not108 = icmp eq i64 %1, 0                    ; 2 uses
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16408
  %.sroa.033.0.copyload.pre = load i16, ptr %4, align 8
  br label %bb.e

.lr.ph95:                                         ; preds = %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16408
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit
  %.sroa.033.0.copyload = phi i16 [ %.sroa.033.0.copyload.pre, %.lr.ph ], [ %.sroa.0.0.copyload, %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.093 = phi i16 [ 0, %.lr.ph ], [ %i.ay, %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.07892 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.07892
  %i.p = load double, ptr %i.o, align 8, !tbaa !255 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.033.0.copyload, 8
  %.sroa.2.0.extract.trunc.i = zext nneg i16 %.sroa.2.0.extract.shift.i to i64
  %i.q = and i16 %.sroa.033.0.copyload, 255
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE7EXP_ARRE, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !255
  %i.u = fmul double %i.p, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE8FRAC_ARRE, i64 %.sroa.2.0.extract.trunc.i
  %i.w = load double, ptr %i.v, align 8, !tbaa !255
  %i.x = fmul double %i.u, %i.w                   ; 6 uses
  %i.y = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIdEEbT_(double noundef %i.x)
  br i1 %i.y, label %bb.f, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef %i.x)
  %i.aa = tail call double @llvm.fabs.f64(double %i.x)
  %i.ab = fcmp ogt double %i.aa, f0x43DFFFFFFFFFFFFF
  %or.cond3.i.i.i = or i1 %i.ab, %i.z
  br i1 %or.cond3.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = fcmp oeq double %i.x, 0.000000e+00
  %i.ad = bitcast double %i.x to i64
  %i.ae = icmp slt i64 %i.ad, 0
  %or.cond.i.i = and i1 %i.ac, %i.ae
  br i1 %or.cond.i.i, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit, label %_ZN6duckdb3alp14AlpCompressionIdLb1EE20IsImpossibleToEncodeEd.exit.thread3.i.i

_ZN6duckdb3alp14AlpCompressionIdLb1EE20IsImpossibleToEncodeEd.exit.thread3.i.i: ; preds = %bb.g
  %i.af = fadd double %i.x, f0x4338000000000000
  %i.ag = fadd double %i.af, f0xC338000000000000
  %i.ah = fptosi double %i.ag to i64
  br label %_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit

_ZN6duckdb3alp14AlpCompressionIdLb1EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZN6duckdb3alp14AlpCompressionIdLb1EE20IsImpossibleToEncodeEd.exit.thread3.i.i
  %.0.i.i = phi i64 [ %i.ah, %_ZN6duckdb3alp14AlpCompressionIdLb1EE20IsImpossibleToEncodeEd.exit.thread3.i.i ], [ 9223372036854774784, %bb.g ], [ 9223372036854774784, %bb.e ], [ 9223372036854774784, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %4, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i87 = lshr i16 %.sroa.0.0.copyload, 8
  %.sroa.2.0.extract.trunc.i88 = zext nneg i16 %.sroa.2.0.extract.shift.i87 to i64
  %i.ai = sitofp i64 %.0.i.i to double
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !159
  %i.al = sitofp i64 %i.ak to double
  %i.am = fmul nnan double %i.ai, %i.al
  %i.an = and i16 %.sroa.0.0.copyload, 255
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE8FRAC_ARRE, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !255
  %i.ar = fmul double %i.aq, %i.am
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.07892
  store i64 %.0.i.i, ptr %i.as, align 8, !tbaa !159
  %i.at = fcmp une double %i.ar, %i.p
  %i.au = trunc i64 %.07892 to i16
  %i.av = zext i16 %.093 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.av
  store i16 %i.au, ptr %i.aw, align 2, !tbaa !143
  %i.ax = zext i1 %i.at to i16
  %i.ay = add i16 %.093, %i.ax                    ; 7 uses
  %i.az = add nuw i64 %.07892, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %1
  br i1 %exitcond.not, label %.lr.ph95, label %bb.e, !llvm.loop !554

bb.h:                                             ; preds = %.lr.ph95, %bb.j
  %.08094 = phi i64 [ 0, %.lr.ph95 ], [ %i.bg, %bb.j ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.08094
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !143
  %i.bc = zext i16 %i.bb to i64
  %.not = icmp eq i64 %.08094, %i.bc
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.08094
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !159
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bg = add nuw nsw i64 %.08094, 1              ; 2 uses
  %exitcond116.not = icmp eq i64 %i.bg, %1
  br i1 %exitcond116.not, label %.loopexit, label %bb.h, !llvm.loop !555

.loopexit:                                        ; preds = %bb.j, %bb.i
  %.079 = phi i64 [ %i.bf, %bb.i ], [ 0, %bb.j ]  ; 6 uses
  %i.bh = zext i16 %i.ay to i64                   ; 2 uses
  %.not110 = icmp eq i16 %i.ay, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph97

.lr.ph97:                                         ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16408 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8216 ; 3 uses
  %xtraiter = and i64 %i.bh, 1
  %i.bl = icmp eq i16 %i.ay, 1
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.lr.ph97
  %unroll_iter = and i64 %i.bh, 65534
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97
  %.08496.epil.init = phi i64 [ 0, %.lr.ph97 ], [ %i.cl, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod146 = trunc i16 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %.08496.epil.init
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !143
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !255
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bo
  store i64 %.079, ptr %i.br, align 8, !tbaa !159
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.08496.epil.init
  store double %i.bq, ptr %i.bs, align 8, !tbaa !255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d, %.loopexit
  %.079131 = phi i64 [ 0, %bb.d ], [ %.079, %.loopexit ], [ %.079, %._crit_edge.loopexit.unr-lcssa ], [ %.079, %.epil.preheader ] ; 5 uses
  %.0.lcssa126130 = phi i16 [ 0, %bb.d ], [ 0, %.loopexit ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %.0.lcssa126130, ptr %i.bt, align 2, !tbaa !271
  %.not111 = icmp eq i64 %3, 0
  br i1 %.not111, label %.preheader, label %.lr.ph100

.lr.ph100:                                        ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %xtraiter148 = and i64 %3, 3                    ; 3 uses
  %i.bv = icmp ult i64 %3, 4
  br i1 %i.bv, label %.epil.preheader147, label %.lr.ph100.new

.lr.ph100.new:                                    ; preds = %.lr.ph100
  %unroll_iter151 = and i64 %3, -4
  br label %bb.m

bb.k:                                             ; preds = %bb.k, %.lr.ph97.new
  %.08496 = phi i64 [ 0, %.lr.ph97.new ], [ %i.cl, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph97.new ], [ %niter.next.1, %bb.k ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %.08496
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !143
  %i.by = zext i16 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !255
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.by
  store i64 %.079, ptr %i.cb, align 8, !tbaa !159
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.08496
  store double %i.ca, ptr %i.cc, align 8, !tbaa !255
  %i.cd = or disjoint i64 %.08496, 1              ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !143
  %i.cg = zext i16 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !255
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cg
  store i64 %.079, ptr %i.cj, align 8, !tbaa !159
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cd
  store double %i.ci, ptr %i.ck, align 8, !tbaa !255
  %i.cl = add nuw nsw i64 %.08496, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !556

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.m
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %.preheader, label %.epil.preheader147

.epil.preheader147:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph100
  %.08598.epil.init = phi i64 [ 0, %.lr.ph100 ], [ %i.dm, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter148, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader147
  %.08598.epil = phi i64 [ %.08598.epil.init, %.epil.preheader147 ], [ %i.cq, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader147 ], [ %epil.iter.next, %bb.l ]
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598.epil
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !143
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.co
  store i64 %.079131, ptr %i.cp, align 8, !tbaa !159
  %i.cq = add nuw i64 %.08598.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter148
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.l, !llvm.loop !557

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.l, %._crit_edge
  br i1 %.not108, label %.preheader.preheader.i.i, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %xtraiter154 = and i64 %1, 3                    ; 3 uses
  %i.cs = icmp ult i64 %1, 4
  br i1 %i.cs, label %.epil.preheader153, label %.lr.ph104.new

.lr.ph104.new:                                    ; preds = %.lr.ph104
  %unroll_iter160 = and i64 %1, -4
  br label %bb.p

bb.m:                                             ; preds = %bb.m, %.lr.ph100.new
  %.08598 = phi i64 [ 0, %.lr.ph100.new ], [ %i.dm, %bb.m ] ; 5 uses
  %niter152 = phi i64 [ 0, %.lr.ph100.new ], [ %niter152.next.3, %bb.m ]
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !143
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cv
  store i64 %.079131, ptr %i.cw, align 8, !tbaa !159
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !143
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.da
  store i64 %.079131, ptr %i.db, align 8, !tbaa !159
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !143
  %i.df = zext i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.df
  store i64 %.079131, ptr %i.dg, align 8, !tbaa !159
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.08598
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 6
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !143
  %i.dk = zext i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.dk
  store i64 %.079131, ptr %i.dl, align 8, !tbaa !159
  %i.dm = add nuw i64 %.08598, 4                  ; 2 uses
  %niter152.next.3 = add nuw i64 %niter152, 4     ; 2 uses
  %niter152.ncmp.3 = icmp eq i64 %niter152.next.3, %unroll_iter151
  br i1 %niter152.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.m, !llvm.loop !558

._crit_edge105.unr-lcssa:                         ; preds = %bb.p
  %lcmp.mod156.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod156.not, label %._crit_edge105, label %.epil.preheader153

.epil.preheader153:                               ; preds = %._crit_edge105.unr-lcssa, %.lr.ph104
  %.081103.epil.init = phi i64 [ 0, %.lr.ph104 ], [ %i.fe, %._crit_edge105.unr-lcssa ]
  %.082102.epil.init = phi i64 [ -9223372036854775808, %.lr.ph104 ], [ %i.fc, %._crit_edge105.unr-lcssa ]
  %.083101.epil.init = phi i64 [ 9223372036854775807, %.lr.ph104 ], [ %i.fd, %._crit_edge105.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter154, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader153
  %.081103.epil = phi i64 [ %.081103.epil.init, %.epil.preheader153 ], [ %i.dr, %bb.n ] ; 2 uses
  %.082102.epil = phi i64 [ %.082102.epil.init, %.epil.preheader153 ], [ %i.dp, %bb.n ]
  %.083101.epil = phi i64 [ %.083101.epil.init, %.epil.preheader153 ], [ %i.dq, %bb.n ]
  %epil.iter155 = phi i64 [ 0, %.epil.preheader153 ], [ %epil.iter155.next, %bb.n ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103.epil
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !159 ; 2 uses
  %i.dp = tail call noundef i64 @llvm.smax.i64(i64 %.082102.epil, i64 %i.do) ; 2 uses
  %i.dq = tail call noundef i64 @llvm.smin.i64(i64 %.083101.epil, i64 %i.do) ; 2 uses
  %i.dr = add nuw i64 %.081103.epil, 1
  %epil.iter155.next = add i64 %epil.iter155, 1   ; 2 uses
  %epil.iter155.cmp.not = icmp eq i64 %epil.iter155.next, %xtraiter154
  br i1 %epil.iter155.cmp.not, label %._crit_edge105, label %bb.n, !llvm.loop !559

._crit_edge105:                                   ; preds = %bb.n, %._crit_edge105.unr-lcssa
  %.lcssa143 = phi i64 [ %i.fc, %._crit_edge105.unr-lcssa ], [ %i.dp, %bb.n ] ; 2 uses
  %.lcssa = phi i64 [ %i.fd, %._crit_edge105.unr-lcssa ], [ %i.dq, %bb.n ] ; 3 uses
  %i.ds = icmp eq i64 %.lcssa143, %.lcssa
  br i1 %i.ds, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader, %._crit_edge105
  %.082.lcssa136 = phi i64 [ %.lcssa143, %._crit_edge105 ], [ -9223372036854775808, %.preheader ]
  %.083.lcssa134 = phi i64 [ %.lcssa, %._crit_edge105 ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %i.dt = sub i64 %.082.lcssa136, %.083.lcssa134  ; 2 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i8
  %i.dw = sub nuw nsw i8 64, %i.dv
  %i.dx = icmp ugt i64 %i.dt, 72057594037927935
  %..i.i.i = select i1 %i.dx, i8 64, i8 %i.dw
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit: ; preds = %._crit_edge105, %.preheader.preheader.i.i
  %.083.lcssa135 = phi i64 [ %.083.lcssa134, %.preheader.preheader.i.i ], [ %.lcssa, %._crit_edge105 ]
  %.09.i.i = phi i8 [ %..i.i.i, %.preheader.preheader.i.i ], [ 0, %._crit_edge105 ] ; 2 uses
  %i.dy = trunc i64 %1 to i32
  %i.dz = and i32 %i.dy, 31                       ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit
  %i.eb = add i64 %1, 32
  %i.ec = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.dz)
  %i.ed = sub i64 %i.eb, %i.ec
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, %bb.o
  %.0.i.i89 = phi i64 [ %i.ed, %bb.o ], [ %1, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit ]
  %i.ee = zext nneg i8 %.09.i.i to i64
  %i.ef = mul i64 %.0.i.i89, %i.ee
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = zext nneg i8 %.09.i.i to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.eh, ptr %i.ei, align 4, !tbaa !272
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.eg, ptr %i.ej, align 8, !tbaa !270
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.083.lcssa135, ptr %i.ek, align 8, !tbaa !560
  ret void

bb.p:                                             ; preds = %bb.p, %.lr.ph104.new
  %.081103 = phi i64 [ 0, %.lr.ph104.new ], [ %i.fe, %bb.p ] ; 5 uses
  %.082102 = phi i64 [ -9223372036854775808, %.lr.ph104.new ], [ %i.fc, %bb.p ]
  %.083101 = phi i64 [ 9223372036854775807, %.lr.ph104.new ], [ %i.fd, %bb.p ]
  %niter161 = phi i64 [ 0, %.lr.ph104.new ], [ %niter161.next.3, %bb.p ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103
  %i.em = load i64, ptr %i.el, align 8, !tbaa !159 ; 2 uses
  %i.en = tail call noundef i64 @llvm.smax.i64(i64 %.082102, i64 %i.em)
  %i.eo = tail call noundef i64 @llvm.smin.i64(i64 %.083101, i64 %i.em)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !159 ; 2 uses
  %i.es = tail call noundef i64 @llvm.smax.i64(i64 %i.en, i64 %i.er)
  %i.et = tail call noundef i64 @llvm.smin.i64(i64 %i.eo, i64 %i.er)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !159 ; 2 uses
  %i.ex = tail call noundef i64 @llvm.smax.i64(i64 %i.es, i64 %i.ew)
  %i.ey = tail call noundef i64 @llvm.smin.i64(i64 %i.et, i64 %i.ew)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.081103
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !159 ; 2 uses
  %i.fc = tail call noundef i64 @llvm.smax.i64(i64 %i.ex, i64 %i.fb) ; 3 uses
  %i.fd = tail call noundef i64 @llvm.smin.i64(i64 %i.ey, i64 %i.fb) ; 3 uses
  %i.fe = add nuw i64 %.081103, 4                 ; 2 uses
  %niter161.next.3 = add nuw i64 %niter161, 4     ; 2 uses
  %niter161.ncmp.3 = icmp eq i64 %niter161.next.3, %unroll_iter160
  br i1 %niter161.ncmp.3, label %._crit_edge105.unr-lcssa, label %bb.p, !llvm.loop !561
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb3alp14AlpCompressionIdLb1EE25FindBestFactorAndExponentEPKdmRNS0_18AlpCompressionDataIdLb1EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(26672) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.284", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not77 = icmp eq i64 %1, 0
  br i1 %.not77, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = uitofp i64 %1 to double
  %i.b = fmul nnan double %i.a, 3.125000e-02
  %i.c = tail call double @llvm.ceil.f64(double %i.b)
  %i.d = fptoui double %i.c to i32
  %i.e = tail call noundef i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = zext i32 %i.e to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  store ptr %i.ai, ptr %i.f, align 8
  store ptr %i.ag, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa = phi ptr [ %i.ah, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  store ptr %.lcssa, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 18456
end_hunk_8
begin_hunk_9_@_ZN6duckdb19AlpCompressionStateIdE6AppendERNS_19UnifiedVectorFormatEm:bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8312 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = add i64 %i.d, 120
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph53, %bb.d
  %.052 = phi i64 [ %2, %.lr.ph53 ], [ %i.dk, %bb.d ] ; 2 uses
  %.03448 = phi i64 [ 0, %.lr.ph53 ], [ %i.dj, %bb.d ] ; 6 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !276  ; 8 uses
  %i.l = sub i64 1024, %i.k
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.052) ; 14 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  %.not55 = icmp eq i64 %i.k, 1024                ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader42

.preheader42:                                     ; preds = %bb.b
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42
  %i.o = load ptr, ptr %1, align 8, !tbaa !153
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154  ; 2 uses
  %.not.i38 = icmp eq ptr %i.p, null
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %.promoted = load i64, ptr %i.h, align 8, !tbaa !569 ; 2 uses
  br i1 %.not.i38, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader: ; preds = %.lr.ph
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %.03448
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %.lr.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.r = phi i64 [ %i.af, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ], [ %.promoted, %.lr.ph ] ; 2 uses
  %.03544.us = phi i64 [ %i.ah, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.s = add i64 %.03544.us, %.03448              ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !255
  %i.v = lshr i64 %i.s, 6
  %i.w = and i64 %i.s, 63
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !159
  %i.z = add i64 %.03544.us, %i.k
  %i.aa = trunc i64 %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.r
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !143
  %i.ac = xor i64 %i.y, -1
  %i.ad = lshr i64 %i.ac, %i.w
  %i.ae = and i64 %i.ad, 1
  %i.af = add i64 %i.ae, %i.r                     ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !569
  %i.ag = getelementptr [8 x i8], ptr %i.q, i64 %.03544.us
  store double %i.u, ptr %i.ag, align 8, !tbaa !255
  %i.ah = add nuw i64 %.03544.us, 1               ; 2 uses
  %exitcond60.not = icmp eq i64 %i.ah, %i.m
  br i1 %exitcond60.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !570

.preheader:                                       ; preds = %bb.b
  br i1 %.not55, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader
  %i.ai = load ptr, ptr %1, align 8, !tbaa !153
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !154 ; 2 uses
  %.not.i37 = icmp eq ptr %i.aj, null
  %i.ak = getelementptr [8 x i8], ptr %i.i, i64 %i.k ; 11 uses
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph46
  %invariant.gep73 = getelementptr [4 x i8], ptr %i.aj, i64 %.03448 ; 5 uses
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.al = icmp ult i64 %i.m, 4
  br i1 %i.al, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph46
  %invariant.gep75 = getelementptr [8 x i8], ptr %i.b, i64 %.03448 ; 6 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %i.am = shl i64 %i.k, 3
  %i.an = shl i64 %.03448, 3
  %i.ao = add i64 %i.j, %i.am
  %i.ap = add i64 %i.an, %i.c
  %i.aq = sub i64 %i.ap, %i.ao
  %diff.check = icmp ugt i64 %i.aq, -32
  br i1 %diff.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %invariant.gep75, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %wide.load = load <2 x double>, ptr %i.ar, align 8, !tbaa !255
  %wide.load80 = load <2 x double>, ptr %i.as, align 8, !tbaa !255
  %i.at = getelementptr [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store <2 x double> %wide.load, ptr %i.at, align 8, !tbaa !255
  store <2 x double> %wide.load80, ptr %i.au, align 8, !tbaa !255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %middle.block
  %.03645.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter86 = and i64 %i.m, 3                   ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol
  %.03645.us.prol = phi i64 [ %i.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ], [ %.03645.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81 ]
  %gep76.prol = getelementptr [8 x i8], ptr %invariant.gep75, i64 %.03645.us.prol
  %i.aw = load double, ptr %gep76.prol, align 8, !tbaa !255
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %.03645.us.prol
  store double %i.aw, ptr %i.ax, align 8, !tbaa !255
  %i.ay = add nuw i64 %.03645.us.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter86
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol, !llvm.loop !572

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81
  %.03645.us.unr = phi i64 [ %.03645.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader81 ], [ %i.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %i.az = sub i64 %.03645.us.ph, %i.m
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.03645.us = phi i64 [ %i.bm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.03645.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ] ; 6 uses
  %gep76 = getelementptr [8 x i8], ptr %invariant.gep75, i64 %.03645.us
  %i.bb = load double, ptr %gep76, align 8, !tbaa !255
  %i.bc = getelementptr [8 x i8], ptr %i.ak, i64 %.03645.us
  store double %i.bb, ptr %i.bc, align 8, !tbaa !255
  %i.bd = add nuw i64 %.03645.us, 1               ; 2 uses
  %gep76.1 = getelementptr [8 x i8], ptr %invariant.gep75, i64 %i.bd
  %i.be = load double, ptr %gep76.1, align 8, !tbaa !255
  %i.bf = getelementptr [8 x i8], ptr %i.ak, i64 %i.bd
  store double %i.be, ptr %i.bf, align 8, !tbaa !255
  %i.bg = add nuw i64 %.03645.us, 2               ; 2 uses
  %gep76.2 = getelementptr [8 x i8], ptr %invariant.gep75, i64 %i.bg
  %i.bh = load double, ptr %gep76.2, align 8, !tbaa !255
  %i.bi = getelementptr [8 x i8], ptr %i.ak, i64 %i.bg
  store double %i.bh, ptr %i.bi, align 8, !tbaa !255
  %i.bj = add nuw i64 %.03645.us, 3               ; 2 uses
  %gep76.3 = getelementptr [8 x i8], ptr %invariant.gep75, i64 %i.bj
  %i.bk = load double, ptr %gep76.3, align 8, !tbaa !255
  %i.bl = getelementptr [8 x i8], ptr %i.ak, i64 %i.bj
  store double %i.bk, ptr %i.bl, align 8, !tbaa !255
  %i.bm = add nuw i64 %.03645.us, 4               ; 2 uses
  %exitcond64.not.3 = icmp eq i64 %i.bm, %i.m
  br i1 %exitcond64.not.3, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !573

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.03645 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.ck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %gep74 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %.03645
  %i.bn = load i32, ptr %gep74, align 4, !tbaa !3
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !255
  %i.br = getelementptr [8 x i8], ptr %i.ak, i64 %.03645
  store double %i.bq, ptr %i.br, align 8, !tbaa !255
  %i.bs = or disjoint i64 %.03645, 1              ; 2 uses
  %gep74.1 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.bs
  %i.bt = load i32, ptr %gep74.1, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !255
  %i.bx = getelementptr [8 x i8], ptr %i.ak, i64 %i.bs
  store double %i.bw, ptr %i.bx, align 8, !tbaa !255
  %i.by = or disjoint i64 %.03645, 2              ; 2 uses
  %gep74.2 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.by
  %i.bz = load i32, ptr %gep74.2, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !255
  %i.cd = getelementptr [8 x i8], ptr %i.ak, i64 %i.by
  store double %i.cc, ptr %i.cd, align 8, !tbaa !255
  %i.ce = or disjoint i64 %.03645, 3              ; 2 uses
  %gep74.3 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.ce
  %i.cf = load i32, ptr %gep74.3, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !255
  %i.cj = getelementptr [8 x i8], ptr %i.ak, i64 %i.ce
  store double %i.ci, ptr %i.cj, align 8, !tbaa !255
  %i.ck = add nuw i64 %.03645, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit82.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !574

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cl = phi i64 [ %i.da, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %.promoted, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader ] ; 2 uses
  %.03544 = phi i64 [ %i.dc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.03544
  %i.cm = load i32, ptr %gep, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64                   ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !255
  %i.cq = lshr i64 %i.cn, 6
  %i.cr = and i64 %i.cn, 63
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cq
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !159
  %i.cu = add i64 %.03544, %i.k
  %i.cv = trunc i64 %i.cu to i16
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cl
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !143
  %i.cx = xor i64 %i.ct, -1
  %i.cy = lshr i64 %i.cx, %i.cr
  %i.cz = and i64 %i.cy, 1
  %i.da = add i64 %i.cz, %i.cl                    ; 2 uses
  store i64 %i.da, ptr %i.h, align 8, !tbaa !569
  %i.db = getelementptr [8 x i8], ptr %i.q, i64 %.03544
  store double %i.cp, ptr %i.db, align 8, !tbaa !255
  %i.dc = add nuw i64 %.03544, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %i.m
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !570

.loopexit.loopexit82.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %.loopexit.loopexit82.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.03645.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.ck, %.loopexit.loopexit82.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %.03645.epil = phi i64 [ %i.di, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.03645.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %gep74.epil = getelementptr [4 x i8], ptr %invariant.gep73, i64 %.03645.epil
  %i.dd = load i32, ptr %gep74.epil, align 4, !tbaa !3
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !255
  %i.dh = getelementptr [8 x i8], ptr %i.ak, i64 %.03645.epil
  store double %i.dg, ptr %i.dh, align 8, !tbaa !255
  %i.di = add nuw i64 %.03645.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !575

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, %.loopexit.loopexit82.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %middle.block, %.preheader42, %.preheader
  %i.dj = add i64 %i.m, %.03448
  %i.dk = sub i64 %.052, %i.m                     ; 2 uses
  %i.dl = add i64 %i.m, %i.k                      ; 2 uses
  store i64 %i.dl, ptr %i.e, align 8, !tbaa !276
  %i.dm = icmp eq i64 %i.dl, 1024
  br i1 %i.dm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  tail call void @_ZN6duckdb19AlpCompressionStateIdE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.not = icmp eq i64 %i.dk, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !576

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19AlpCompressionStateIdE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(37032) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !569  ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit_crit_edge, label %bb.b

._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !276
  br label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8312 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !276  ; 4 uses
  %.not11.i.i = icmp eq i64 %i.g, 0
  br i1 %.not11.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.010.i.i = phi i64 [ %i.m, %bb.d ], [ 0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.010.i.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !143
  %i.j = zext i16 %i.i to i64
  %.not.i.i = icmp eq i64 %.010.i.i, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.010.i.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !255
  br label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %.010.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i, !llvm.loop !259

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.08.i.i = phi double [ %i.l, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.c, 4
  br i1 %i.n, label %.lr.ph.i8.i.epil.preheader, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new: ; preds = %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new
  %.07.i.i = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new ], [ %i.ah, %.lr.ph.i8.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new ], [ %niter.next.3, %.lr.ph.i8.i ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.p = load i16, ptr %i.o, align 8, !tbaa !143
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  store double %.08.i.i, ptr %i.r, align 8, !tbaa !255
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !143
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.v
  store double %.08.i.i, ptr %i.w, align 8, !tbaa !255
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i16, ptr %i.y, align 4, !tbaa !143
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  store double %.08.i.i, ptr %i.ab, align 8, !tbaa !255
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !143
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.af
  store double %.08.i.i, ptr %i.ag, align 8, !tbaa !255
  %i.ah = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !260

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i8.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i
  %.07.i.i.epil.init = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i ], [ %i.ah, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i8.i.epil

.lr.ph.i8.i.epil:                                 ; preds = %.lr.ph.i8.i.epil, %.lr.ph.i8.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.am, %.lr.ph.i8.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i8.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i8.i.epil ], [ 0, %.lr.ph.i8.i.epil.preheader ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i.epil
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !143
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ak
  store double %.08.i.i, ptr %i.al, align 8, !tbaa !255
  %i.am = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil, !llvm.loop !577

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit: ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa, %.lr.ph.i8.i.epil, %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit_crit_edge
  %i.an = phi i64 [ %.pre, %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit_crit_edge ], [ %i.g, %.lr.ph.i8.i.epil ], [ %i.g, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8312
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10360 ; 2 uses
  tail call void @_ZN6duckdb3alp14AlpCompressionIdLb0EE8CompressEPKdmPKtmRNS0_18AlpCompressionDataIdLb0EEE(ptr noundef nonnull %i.ao, i64 noundef %i.an, ptr noundef nonnull %i.aq, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(26672) %i.ar)
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !276
  %i.at = shl i64 %i.as, 3                        ; 2 uses
  %i.au = or disjoint i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 10368
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !578
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10362 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !579
  %i.az = zext i16 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 10
  %i.bb = add i64 %i.aw, 13
  %i.bc = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !564, !nonnull !83, !align !84
  %i.bf = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb24ColumnDataCheckpointData17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.bh = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %i.bi = icmp ule i64 %i.bc, %i.at
  %i.bj = icmp ult i64 %i.bh, 7
  %i.bk = or i1 %i.bi, %i.bj                      ; 2 uses
  %i.bl = select i1 %i.bk, i64 %i.bc, i64 %i.au
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !463
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !464
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !580
  %i.bs = add i64 %i.bl, 11
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = and i64 %i.bt, -8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !567
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %.not.i = icmp ult ptr %i.bv, %i.by
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit
  tail call void @_ZN6duckdb19AlpCompressionStateIdE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  tail call void @_ZN6duckdb19AlpCompressionStateIdE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !569
  %.not12 = icmp eq i64 %i.bz, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  store i8 1, ptr %i.cc, align 8, !tbaa !487
  %.pre18 = load i64, ptr %i.b, align 8, !tbaa !569
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = phi i64 [ %.pre18, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !276
  %.not13 = icmp eq i64 %i.ce, %i.cd
  br i1 %.not13, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 81
  store i8 1, ptr %i.ch, align 1, !tbaa !488
  %i.ci = load i64, ptr %i.ap, align 8, !tbaa !276
  %.not16 = icmp eq i64 %i.ci, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.015 = phi i64 [ %i.cs, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.cj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.015
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !255
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 104 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.cl, ptr %i.a, align 8, !tbaa !255
  %i.co = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %..i.i.i = select i1 %i.co, ptr %i.a, ptr %i.cm
  %i.cp = load double, ptr %..i.i.i, align 8, !tbaa !255
  store double %i.cp, ptr %i.cm, align 8, !tbaa !255
  %i.cq = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
  %.in6.i.i.i = select i1 %i.cq, ptr %i.a, ptr %i.cn
  %i.cr = load double, ptr %.in6.i.i.i, align 8, !tbaa !255
  store double %i.cr, ptr %i.cn, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = add nuw i64 %.015, 1                    ; 2 uses
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !276 ; 2 uses
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !581

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.h
  %i.cv = phi i64 [ %i.cd, %bb.h ], [ 0, %bb.i ], [ %i.ct, %.lr.ph ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %i.cy = atomicrmw add ptr %i.cx, i64 %i.cv seq_cst, align 8 ; 0 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  call void @_ZN6duckdb19AlpCompressionStateIdE21FlushCompressedVectorEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !566
  store i8 -1, ptr %i.da, align 1
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !566
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !566
  %i.dd = load i64, ptr %i.ap, align 8, !tbaa !276
  %i.de = shl i64 %i.dd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 8 %i.ao, i64 %i.de, i1 false)
  %i.df = load i64, ptr %i.ap, align 8, !tbaa !276
  %i.dg = shl i64 %i.df, 3                        ; 2 uses
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !566
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !566
  %i.dj = or disjoint i64 %i.dg, 1
  %i.dk = load i64, ptr %i.bq, align 8, !tbaa !580
  %i.dl = add i64 %i.dj, %i.dk
  store i64 %i.dl, ptr %i.bq, align 8, !tbaa !580
  %i.dm = load ptr, ptr %i.bw, align 8, !tbaa !567
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -4 ; 2 uses
  store ptr %i.dn, ptr %i.bw, align 8, !tbaa !567
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8
  store i32 %i.dp, ptr %i.dn, align 1
  %i.dq = load i64, ptr %i.bq, align 8, !tbaa !580
  %i.dr = add i64 %i.dq, 4
  %i.ds = call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.dr)
  store i32 %i.ds, ptr %i.do, align 8, !tbaa !563
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !582
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !582
  store i16 0, ptr %i.ar, align 8
  store i16 0, ptr %i.ax, align 2, !tbaa !579
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 10364
  store i16 0, ptr %i.dw, align 4, !tbaa !583
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb3alp14AlpCompressionIdLb0EE8CompressEPKdmPKtmRNS0_18AlpCompressionDataIdLb0EEE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(26672) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 18456 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 18464
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !296
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb3alp14AlpCompressionIdLb0EE25FindBestFactorAndExponentEPKdmRNS0_18AlpCompressionDataIdLb0EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(26672) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_3alp14AlpCombinationELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.l = load i16, ptr %i.k, align 8
  store i16 %i.l, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not125 = icmp eq i64 %1, 0                    ; 2 uses
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16408
  %.sroa.041.0.copyload.pre = load i16, ptr %4, align 8
  br label %bb.e

.lr.ph108:                                        ; preds = %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16408
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit
  %.sroa.041.0.copyload = phi i16 [ %.sroa.041.0.copyload.pre, %.lr.ph ], [ %.sroa.0.0.copyload, %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.092106 = phi i16 [ 0, %.lr.ph ], [ %i.az, %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.094105 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.094105
  %i.q = load double, ptr %i.p, align 8, !tbaa !255 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.041.0.copyload, 8
  %.sroa.2.0.extract.trunc.i = zext nneg i16 %.sroa.2.0.extract.shift.i to i64
  %i.r = and i16 %.sroa.041.0.copyload, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE7EXP_ARRE, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !255
  %i.v = fmul double %i.q, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE8FRAC_ARRE, i64 %.sroa.2.0.extract.trunc.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !255
  %i.y = fmul double %i.v, %i.x                   ; 6 uses
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIdEEbT_(double noundef %i.y)
  br i1 %i.z, label %bb.f, label %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef %i.y)
  %i.ab = tail call double @llvm.fabs.f64(double %i.y)
  %i.ac = fcmp ogt double %i.ab, f0x43DFFFFFFFFFFFFF
  %or.cond3.i.i.i = or i1 %i.ac, %i.aa
  br i1 %or.cond3.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = fcmp oeq double %i.y, 0.000000e+00
  %i.ae = bitcast double %i.y to i64
  %i.af = icmp slt i64 %i.ae, 0
  %or.cond.i.i = and i1 %i.ad, %i.af
  br i1 %or.cond.i.i, label %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit, label %_ZN6duckdb3alp14AlpCompressionIdLb0EE20IsImpossibleToEncodeEd.exit.thread3.i.i

_ZN6duckdb3alp14AlpCompressionIdLb0EE20IsImpossibleToEncodeEd.exit.thread3.i.i: ; preds = %bb.g
  %i.ag = fadd double %i.y, f0x4338000000000000
  %i.ah = fadd double %i.ag, f0xC338000000000000
  %i.ai = fptosi double %i.ah to i64
  br label %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit

_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZN6duckdb3alp14AlpCompressionIdLb0EE20IsImpossibleToEncodeEd.exit.thread3.i.i
  %.0.i.i = phi i64 [ %i.ai, %_ZN6duckdb3alp14AlpCompressionIdLb0EE20IsImpossibleToEncodeEd.exit.thread3.i.i ], [ 9223372036854774784, %bb.g ], [ 9223372036854774784, %bb.e ], [ 9223372036854774784, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %4, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i100 = lshr i16 %.sroa.0.0.copyload, 8
  %.sroa.2.0.extract.trunc.i101 = zext nneg i16 %.sroa.2.0.extract.shift.i100 to i64
  %i.aj = sitofp i64 %.0.i.i to double
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i101
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !159
  %i.am = sitofp i64 %i.al to double
  %i.an = fmul nnan double %i.aj, %i.am
  %i.ao = and i16 %.sroa.0.0.copyload, 255
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE8FRAC_ARRE, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !255
  %i.as = fmul double %i.ar, %i.an
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.094105
  store i64 %.0.i.i, ptr %i.at, align 8, !tbaa !159
  %i.au = fcmp une double %i.as, %i.q
  %i.av = trunc i64 %.094105 to i16
  %i.aw = zext i16 %.092106 to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aw
  store i16 %i.av, ptr %i.ax, align 2, !tbaa !143
  %i.ay = zext i1 %i.au to i16
  %i.az = add i16 %.092106, %i.ay                 ; 7 uses
  %i.ba = add nuw i64 %.094105, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %1
  br i1 %exitcond.not, label %.lr.ph108, label %bb.e, !llvm.loop !584

bb.h:                                             ; preds = %.lr.ph108, %bb.j
  %.097107 = phi i64 [ 0, %.lr.ph108 ], [ %i.bh, %bb.j ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.097107
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !143
  %i.bd = zext i16 %i.bc to i64
  %.not = icmp eq i64 %.097107, %i.bd
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.097107
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !159
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bh = add nuw nsw i64 %.097107, 1             ; 2 uses
  %exitcond134.not = icmp eq i64 %i.bh, %1
  br i1 %exitcond134.not, label %.loopexit, label %bb.h, !llvm.loop !585

.loopexit:                                        ; preds = %bb.j, %bb.i
  %.095 = phi i64 [ %i.bg, %bb.i ], [ 0, %bb.j ]  ; 6 uses
  %i.bi = zext i16 %i.az to i64                   ; 2 uses
  %.not127 = icmp eq i16 %i.az, 0
  br i1 %.not127, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16408 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8216 ; 3 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bm = icmp eq i16 %i.az, 1
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph110.new

.lr.ph110.new:                                    ; preds = %.lr.ph110
  %unroll_iter = and i64 %i.bi, 65534
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph110
  %.096109.epil.init = phi i64 [ 0, %.lr.ph110 ], [ %i.cm, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i16 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.096109.epil.init
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !143
  %i.bp = zext i16 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !255
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store i64 %.095, ptr %i.bs, align 8, !tbaa !159
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.096109.epil.init
  store double %i.br, ptr %i.bt, align 8, !tbaa !255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d, %.loopexit
  %.095152 = phi i64 [ 0, %bb.d ], [ %.095, %.loopexit ], [ %.095, %._crit_edge.loopexit.unr-lcssa ], [ %.095, %.epil.preheader ] ; 5 uses
  %.092.lcssa147151 = phi i16 [ 0, %bb.d ], [ 0, %.loopexit ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %.092.lcssa147151, ptr %i.bu, align 2, !tbaa !579
  %.not128 = icmp eq i64 %3, 0
  br i1 %.not128, label %.preheader, label %.lr.ph113

.lr.ph113:                                        ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %xtraiter201 = and i64 %3, 3                    ; 3 uses
  %i.bw = icmp ult i64 %3, 4
  br i1 %i.bw, label %.epil.preheader200, label %.lr.ph113.new

.lr.ph113.new:                                    ; preds = %.lr.ph113
  %unroll_iter204 = and i64 %3, -4
  br label %bb.m

bb.k:                                             ; preds = %bb.k, %.lr.ph110.new
  %.096109 = phi i64 [ 0, %.lr.ph110.new ], [ %i.cm, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph110.new ], [ %niter.next.1, %bb.k ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.096109
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !143
  %i.bz = zext i16 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !255
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bz
  store i64 %.095, ptr %i.cc, align 8, !tbaa !159
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.096109
  store double %i.cb, ptr %i.cd, align 8, !tbaa !255
  %i.ce = or disjoint i64 %.096109, 1             ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !143
  %i.ch = zext i16 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !255
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ch
  store i64 %.095, ptr %i.ck, align 8, !tbaa !159
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ce
  store double %i.cj, ptr %i.cl, align 8, !tbaa !255
  %i.cm = add nuw nsw i64 %.096109, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !586

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.m
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.preheader, label %.epil.preheader200

.epil.preheader200:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph113
  %.093111.epil.init = phi i64 [ 0, %.lr.ph113 ], [ %i.dn, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter201, 0
  tail call void @llvm.assume(i1 %lcmp.mod203)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader200
  %.093111.epil = phi i64 [ %.093111.epil.init, %.epil.preheader200 ], [ %i.cr, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader200 ], [ %epil.iter.next, %bb.l ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111.epil
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !143
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cp
  store i64 %.095152, ptr %i.cq, align 8, !tbaa !159
  %i.cr = add nuw i64 %.093111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter201
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.l, !llvm.loop !587

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.l, %._crit_edge
  br i1 %.not125, label %_ZN6duckdb20BitpackingPrimitives10PackBufferImLb0EEEvPhPT_mh.exit, label %.lr.ph117

.lr.ph117:                                        ; preds = %.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %xtraiter207 = and i64 %1, 3                    ; 3 uses
  %i.ct = icmp ult i64 %1, 4
  br i1 %i.ct, label %.epil.preheader206, label %.lr.ph117.new

.lr.ph117.new:                                    ; preds = %.lr.ph117
  %unroll_iter213 = and i64 %1, -4
  br label %bb.o

bb.m:                                             ; preds = %bb.m, %.lr.ph113.new
  %.093111 = phi i64 [ 0, %.lr.ph113.new ], [ %i.dn, %bb.m ] ; 5 uses
  %niter205 = phi i64 [ 0, %.lr.ph113.new ], [ %niter205.next.3, %bb.m ]
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !143
  %i.cw = zext i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cw
  store i64 %.095152, ptr %i.cx, align 8, !tbaa !159
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !143
  %i.db = zext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.db
  store i64 %.095152, ptr %i.dc, align 8, !tbaa !159
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i16, ptr %i.de, align 2, !tbaa !143
  %i.dg = zext i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dg
  store i64 %.095152, ptr %i.dh, align 8, !tbaa !159
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.093111
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !143
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dl
  store i64 %.095152, ptr %i.dm, align 8, !tbaa !159
  %i.dn = add nuw i64 %.093111, 4                 ; 2 uses
  %niter205.next.3 = add nuw i64 %niter205, 4     ; 2 uses
  %niter205.ncmp.3 = icmp eq i64 %niter205.next.3, %unroll_iter204
  br i1 %niter205.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.m, !llvm.loop !588

.lr.ph123.preheader.unr-lcssa:                    ; preds = %bb.o
  %lcmp.mod209.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod209.not, label %.lr.ph123.preheader, label %.epil.preheader206

.epil.preheader206:                               ; preds = %.lr.ph123.preheader.unr-lcssa, %.lr.ph117
  %.089116.epil.init = phi i64 [ 0, %.lr.ph117 ], [ %i.et, %.lr.ph123.preheader.unr-lcssa ]
  %.090115.epil.init = phi i64 [ -9223372036854775808, %.lr.ph117 ], [ %i.er, %.lr.ph123.preheader.unr-lcssa ]
  %.091114.epil.init = phi i64 [ 9223372036854775807, %.lr.ph117 ], [ %i.es, %.lr.ph123.preheader.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter207, 0
  tail call void @llvm.assume(i1 %lcmp.mod212)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader206
  %.089116.epil = phi i64 [ %.089116.epil.init, %.epil.preheader206 ], [ %i.ds, %bb.n ] ; 2 uses
  %.090115.epil = phi i64 [ %.090115.epil.init, %.epil.preheader206 ], [ %i.dq, %bb.n ]
  %.091114.epil = phi i64 [ %.091114.epil.init, %.epil.preheader206 ], [ %i.dr, %bb.n ]
  %epil.iter208 = phi i64 [ 0, %.epil.preheader206 ], [ %epil.iter208.next, %bb.n ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116.epil
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !159 ; 2 uses
  %i.dq = tail call noundef i64 @llvm.smax.i64(i64 %.090115.epil, i64 %i.dp) ; 2 uses
  %i.dr = tail call noundef i64 @llvm.smin.i64(i64 %.091114.epil, i64 %i.dp) ; 2 uses
  %i.ds = add nuw i64 %.089116.epil, 1
  %epil.iter208.next = add i64 %epil.iter208, 1   ; 2 uses
  %epil.iter208.cmp.not = icmp eq i64 %epil.iter208.next, %xtraiter207
  br i1 %epil.iter208.cmp.not, label %.lr.ph123.preheader, label %bb.n, !llvm.loop !589

.lr.ph123.preheader:                              ; preds = %bb.n, %.lr.ph123.preheader.unr-lcssa
  %.lcssa196 = phi i64 [ %i.er, %.lr.ph123.preheader.unr-lcssa ], [ %i.dq, %bb.n ] ; 2 uses
  %.lcssa = phi i64 [ %i.es, %.lr.ph123.preheader.unr-lcssa ], [ %i.dr, %bb.n ] ; 7 uses
  %i.dt = sub i64 %.lcssa196, %.lcssa             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph123.preheader195, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph123.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.lcssa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !159
  %wide.load194 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !159
  %i.dx = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dy = sub <2 x i64> %wide.load194, %broadcast.splat
  store <2 x i64> %i.dx, ptr %i.dv, align 8, !tbaa !159
  store <2 x i64> %i.dy, ptr %i.dw, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge124, label %.lr.ph123.preheader195

.lr.ph123.preheader195:                           ; preds = %.lr.ph123.preheader, %middle.block
  %.0121.ph = phi i64 [ 0, %.lr.ph123.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph123

bb.o:                                             ; preds = %bb.o, %.lr.ph117.new
  %.089116 = phi i64 [ 0, %.lr.ph117.new ], [ %i.et, %bb.o ] ; 5 uses
  %.090115 = phi i64 [ -9223372036854775808, %.lr.ph117.new ], [ %i.er, %bb.o ]
  %.091114 = phi i64 [ 9223372036854775807, %.lr.ph117.new ], [ %i.es, %bb.o ]
  %niter214 = phi i64 [ 0, %.lr.ph117.new ], [ %niter214.next.3, %bb.o ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !159 ; 2 uses
  %i.ec = tail call noundef i64 @llvm.smax.i64(i64 %.090115, i64 %i.eb)
  %i.ed = tail call noundef i64 @llvm.smin.i64(i64 %.091114, i64 %i.eb)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !159 ; 2 uses
  %i.eh = tail call noundef i64 @llvm.smax.i64(i64 %i.ec, i64 %i.eg)
  %i.ei = tail call noundef i64 @llvm.smin.i64(i64 %i.ed, i64 %i.eg)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !159 ; 2 uses
  %i.em = tail call noundef i64 @llvm.smax.i64(i64 %i.eh, i64 %i.el)
  %i.en = tail call noundef i64 @llvm.smin.i64(i64 %i.ei, i64 %i.el)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.089116
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !159 ; 2 uses
  %i.er = tail call noundef i64 @llvm.smax.i64(i64 %i.em, i64 %i.eq) ; 3 uses
  %i.es = tail call noundef i64 @llvm.smin.i64(i64 %i.en, i64 %i.eq) ; 3 uses
  %i.et = add nuw i64 %.089116, 4                 ; 2 uses
  %niter214.next.3 = add nuw i64 %niter214, 4     ; 2 uses
  %niter214.ncmp.3 = icmp eq i64 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %.lr.ph123.preheader.unr-lcssa, label %bb.o, !llvm.loop !591

._crit_edge124:                                   ; preds = %.lr.ph123, %middle.block
  %i.eu = icmp eq i64 %.lcssa196, %.lcssa
  br i1 %i.eu, label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %._crit_edge124
  %i.ev = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i8
  %i.ex = sub nuw nsw i8 64, %i.ew
  %i.ey = icmp ugt i64 %i.dt, 72057594037927935
  %spec.select = select i1 %i.ey, i8 64, i8 %i.ex
  br label %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit

_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit: ; preds = %.preheader.preheader.i.i, %._crit_edge124
  %.09.i.i = phi i8 [ 0, %._crit_edge124 ], [ %spec.select, %.preheader.preheader.i.i ] ; 6 uses
  %i.ez = trunc i64 %1 to i32
  %i.fa = and i32 %i.ez, 31                       ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit
  %i.fc = add i64 %1, 32
  %i.fd = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.fa)
  %i.fe = sub i64 %i.fc, %i.fd
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit: ; preds = %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit, %bb.p
  %.0.i.i102 = phi i64 [ %i.fe, %bb.p ], [ %1, %_ZN6duckdb20BitpackingPrimitives15MinimumBitWidthImLb0EEEhT_.exit ] ; 3 uses
  %i.ff = zext nneg i8 %.09.i.i to i64            ; 4 uses
  %.not99 = icmp eq i8 %.09.i.i, 0
  br i1 %.not99, label %_ZN6duckdb20BitpackingPrimitives10PackBufferImLb0EEEvPhPT_mh.exit, label %bb.q

.lr.ph123:                                        ; preds = %.lr.ph123.preheader195, %.lr.ph123
  %.0121 = phi i64 [ %i.fj, %.lr.ph123 ], [ %.0121.ph, %.lr.ph123.preheader195 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.0121 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !159
  %i.fi = sub i64 %i.fh, %.lcssa
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !159
  %i.fj = add nuw i64 %.0121, 1                   ; 2 uses
  %exitcond138.not = icmp eq i64 %i.fj, %1
end_hunk_9
begin_hunk_10_@_ZN6duckdb12AlpScanStateIdE10LoadVectorILb0EEEvPd:bb.a
  %i.ap = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 1 %.0, i64 %i.ap, i1 false)
  %i.aq = load i16, ptr %i.v, align 2, !tbaa !601
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16448
  %i.av = shl nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 1 %i.at, i64 %i.av, i1 false)
  %.pre31 = load i16, ptr %i.v, align 2, !tbaa !604
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = phi i16 [ %.pre31, %bb.g ], [ 0, %bb.f ] ; 3 uses
  store double 0.000000e+00, ptr %1, align 8, !tbaa !255
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.ay = load i8, ptr %i.t, align 1, !tbaa !605
  %i.az = load i8, ptr %i.p, align 8, !tbaa !606
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8256 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16448 ; 5 uses
  %i.bc = load i64, ptr %i.x, align 8, !tbaa !607 ; 2 uses
  %i.bd = load i8, ptr %i.z, align 8, !tbaa !608  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %.not.i.i = icmp eq i8 %i.bd, 0
  %.not.i.i.i = icmp eq i64 %i.g, %i.i            ; 2 uses
  %or.cond.i.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.be = zext i8 %i.bd to i64
  %i.bf = zext i8 %i.bd to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bl, %bb.i ] ; 3 uses
  %i.bg = shl nuw nsw i64 %.09.i.i.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = mul nuw nsw i64 %.09.i.i.i, %i.be
  %i.bj = lshr exact i64 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bj
  call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bh, i32 noundef %i.bf)
  %i.bl = add nuw nsw i64 %.09.i.i.i, 32          ; 2 uses
  %i.bm = icmp samesign ult i64 %i.bl, %i.k
  br i1 %i.bm, label %bb.i, label %.lr.ph.preheader.i.i, !llvm.loop !522

_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i: ; preds = %bb.h
  br i1 %.not.i.i.i, label %.preheader.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i, %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.k, 2044                     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bn, align 16, !tbaa !159
  %wide.load36 = load <2 x i64>, ptr %i.bo, align 16, !tbaa !159
  %i.bp = add <2 x i64> %wide.load, %broadcast.splat
  %i.bq = add <2 x i64> %wide.load36, %broadcast.splat
  store <2 x i64> %i.bp, ptr %i.bn, align 16, !tbaa !159
  store <2 x i64> %i.bq, ptr %i.bo, align 16, !tbaa !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !609

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph33.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.02731.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph.i.i, %middle.block
  %.sroa.2.0.extract.trunc.i.i.i = zext i8 %i.ay to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i.i.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !159
  %i.bu = sitofp i64 %i.bt to double              ; 2 uses
  %i.bv = zext i8 %i.az to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE8FRAC_ARRE, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !255 ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.j, 4
  br i1 %min.iters.check38, label %scalar.ph37.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph33.i.i
  %n.vec40 = and i64 %i.k, 2044                   ; 3 uses
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %i.bu, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph39
  %index46 = phi i64 [ 0, %vector.ph39 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index46 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load47 = load <2 x i64>, ptr %i.by, align 16, !tbaa !159
  %wide.load48 = load <2 x i64>, ptr %i.bz, align 16, !tbaa !159
  %i.ca = sitofp <2 x i64> %wide.load47 to <2 x double>
  %i.cb = sitofp <2 x i64> %wide.load48 to <2 x double>
  %i.cc = fmul nnan <2 x double> %broadcast.splat42, %i.ca
  %i.cd = fmul nnan <2 x double> %broadcast.splat42, %i.cb
  %i.ce = fmul <2 x double> %broadcast.splat44, %i.cc
  %i.cf = fmul <2 x double> %broadcast.splat44, %i.cd
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index46 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %i.ce, ptr %i.cg, align 8, !tbaa !255
  store <2 x double> %i.cf, ptr %i.ch, align 8, !tbaa !255
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next49, %n.vec40
  br i1 %i.ci, label %middle.block50, label %vector.body45, !llvm.loop !610

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %i.k, %n.vec40
  br i1 %cmp.n51, label %.preheader.i.i, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %.lr.ph33.i.i, %middle.block50
  %.02832.i.i.ph = phi i64 [ 0, %.lr.ph33.i.i ], [ %n.vec40, %middle.block50 ]
  br label %scalar.ph37

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02731.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.02731.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02731.i.i ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !159
  %i.cl = add i64 %i.ck, %i.bc
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !159
  %i.cm = add nuw i64 %.02731.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cm, %i.k
  br i1 %exitcond.not.i.i, label %.lr.ph33.i.i, label %.lr.ph.i.i, !llvm.loop !611

.preheader.i.i:                                   ; preds = %scalar.ph37, %middle.block50, %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i
  %i.cn = zext i16 %i.aw to i64                   ; 2 uses
  %.not38.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not38.i.i, label %_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit, label %.lr.ph35.i.i.preheader

.lr.ph35.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp ult i16 %i.aw, 4
  br i1 %i.co, label %.lr.ph35.i.i.epil.preheader, label %.lr.ph35.i.i.preheader.new

.lr.ph35.i.i.preheader.new:                       ; preds = %.lr.ph35.i.i.preheader
  %unroll_iter = and i64 %i.cn, 65532
  br label %.lr.ph35.i.i

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %.02832.i.i = phi i64 [ %i.cv, %scalar.ph37 ], [ %.02832.i.i.ph, %scalar.ph37.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02832.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !159
  %i.cr = sitofp i64 %i.cq to double
  %i.cs = fmul nnan double %i.bu, %i.cr
  %i.ct = fmul double %i.bx, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02832.i.i
  store double %i.ct, ptr %i.cu, align 8, !tbaa !255
  %i.cv = add nuw i64 %.02832.i.i, 1              ; 2 uses
  %exitcond39.not.i.i = icmp eq i64 %i.cv, %i.k
  br i1 %exitcond39.not.i.i, label %.preheader.i.i, label %scalar.ph37, !llvm.loop !612

.lr.ph35.i.i:                                     ; preds = %.lr.ph35.i.i, %.lr.ph35.i.i.preheader.new
  %.034.i.i = phi i64 [ 0, %.lr.ph35.i.i.preheader.new ], [ %i.dx, %.lr.ph35.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph35.i.i.preheader.new ], [ %niter.next.3, %.lr.ph35.i.i ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.034.i.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !255
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.034.i.i
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !143
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.da
  store double %i.cx, ptr %i.db, align 8, !tbaa !255
  %i.dc = or disjoint i64 %.034.i.i, 1            ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !255
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dc
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !143
  %i.dh = zext i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dh
  store double %i.de, ptr %i.di, align 8, !tbaa !255
  %i.dj = or disjoint i64 %.034.i.i, 2            ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !255
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dj
  %i.dn = load i16, ptr %i.dm, align 4, !tbaa !143
  %i.do = zext i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do
  store double %i.dl, ptr %i.dp, align 8, !tbaa !255
  %i.dq = or disjoint i64 %.034.i.i, 3            ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !255
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dq
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !143
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dv
  store double %i.ds, ptr %i.dw, align 8, !tbaa !255
  %i.dx = add nuw nsw i64 %.034.i.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit.loopexit.unr-lcssa, label %.lr.ph35.i.i, !llvm.loop !613

_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph35.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit, label %.lr.ph35.i.i.epil.preheader

.lr.ph35.i.i.epil.preheader:                      ; preds = %_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit.loopexit.unr-lcssa, %.lr.ph35.i.i.preheader
  %.034.i.i.epil.init = phi i64 [ 0, %.lr.ph35.i.i.preheader ], [ %i.dx, %_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph35.i.i.epil

.lr.ph35.i.i.epil:                                ; preds = %.lr.ph35.i.i.epil, %.lr.ph35.i.i.epil.preheader
  %.034.i.i.epil = phi i64 [ %i.ee, %.lr.ph35.i.i.epil ], [ %.034.i.i.epil.init, %.lr.ph35.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph35.i.i.epil ], [ 0, %.lr.ph35.i.i.epil.preheader ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.034.i.i.epil
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !255
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.034.i.i.epil
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !143
  %i.ec = zext i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ec
  store double %i.dz, ptr %i.ed, align 8, !tbaa !255
  %i.ee = add nuw nsw i64 %.034.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit, label %.lr.ph35.i.i.epil, !llvm.loop !614

_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit: ; preds = %_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit.loopexit.unr-lcssa, %.lr.ph35.i.i.epil, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb14AlpVectorStateIdE10LoadValuesILb0EEEvPdm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !282  ; 5 uses
  %i.c = and i64 %i.b, 1023
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26720
  %i.f = load i64, ptr %i.e, align 8, !tbaa !287  ; 2 uses
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %2, 1024
  br i1 %i.h, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.i, align 8, !tbaa !285
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !288
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !288
  %.0.copyload.i.i = load i32, ptr %i.l, align 1
  %i.m = sub i64 %i.f, %i.b
  %i.n = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 1024) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !598
  %i.q = zext i32 %.0.copyload.i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q ; 6 uses
  %.0.copyload.i23.i = load i8, ptr %i.r, align 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26688
  store i8 %.0.copyload.i23.i, ptr %i.s, align 8, !tbaa !599
  %i.t = icmp eq i8 %.0.copyload.i23.i, -1
  br i1 %i.t, label %_ZN6duckdb12AlpScanStateIdE10LoadVectorILb1EEEvPd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.0.copyload.i24.i = load i8, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 26689
  store i8 %.0.copyload.i24.i, ptr %i.v, align 1, !tbaa !600
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.0.copyload.i25.i = load i16, ptr %i.w, align 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26690 ; 3 uses
  store i16 %.0.copyload.i25.i, ptr %i.x, align 2, !tbaa !601
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.0.copyload.i26.i = load i64, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 26696
  store i64 %.0.copyload.i26.i, ptr %i.z, align 8, !tbaa !602
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i27.i = load i8, ptr %i.aa, align 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 26704
  store i8 %.0.copyload.i27.i, ptr %i.ab, align 8, !tbaa !603
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 13 ; 3 uses
  %.not.i = icmp eq i8 %.0.copyload.i27.i, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = trunc nuw nsw i64 %i.n to i32
  %i.ae = and i32 %i.ad, 31                       ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add nuw nsw i64 %i.n, 32
  %i.ah = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.ae)
  %i.ai = sub i64 %i.ag, %i.ah
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit.i

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i64 [ %i.ai, %bb.g ], [ %i.n, %bb.f ]
  %i.aj = zext i8 %.0.copyload.i27.i to i64
  %i.ak = mul i64 %.0.i.i.i, %i.aj
  %i.al = lshr i64 %i.ak, 3                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18496
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 1 %i.ac, i64 %i.al, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.al
  %.pre.i = load i16, ptr %i.x, align 2, !tbaa !601
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit.i, %bb.e
  %i.ao = phi i16 [ %.pre.i, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit.i ], [ %.0.copyload.i25.i, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.an, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit.i ], [ %i.ac, %bb.e ] ; 2 uses
  %.not22.i = icmp eq i16 %i.ao, 0
  br i1 %.not22.i, label %_ZN6duckdb12AlpScanStateIdE10LoadVectorILb1EEEvPd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8256
  %i.aq = zext i16 %i.ao to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 1 %.0.i, i64 %i.ar, i1 false)
  %i.as = load i16, ptr %i.x, align 2, !tbaa !601
  %i.at = zext i16 %i.as to i64                   ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16448
  %i.ax = shl nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN6duckdb12AlpScanStateIdE10LoadVectorILb1EEEvPd.exit

_ZN6duckdb12AlpScanStateIdE10LoadVectorILb1EEEvPd.exit: ; preds = %bb.d, %bb.h, %bb.i
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !282
  %i.az = add i64 %i.ay, 1024
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN6duckdb12AlpScanStateIdE10LoadVectorILb0EEEvPd(ptr noundef nonnull align 8 dereferenceable(26728) %0, ptr noundef nonnull %i.ba)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !282
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  %i.bb = phi i64 [ %.pre, %bb.j ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !285
  %i.be = add i64 %i.bd, %2
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !285
  %i.bf = add i64 %i.bb, %2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6duckdb12AlpScanStateIdE10LoadVectorILb1EEEvPd.exit
  %storemerge = phi i64 [ %i.bf, %bb.k ], [ %i.az, %_ZN6duckdb12AlpScanStateIdE10LoadVectorILb1EEEvPd.exit ]
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !282
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_10
