Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/grids?download=true
inline.NumInlined: 4615
inline.NumDeleted: 2090
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK5osgeo4proj8NTv2Grid7valueAtEiibRfS2_:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #31
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.bj, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %i.bn)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_end_catch()
  br label %bb.ad

bb.p:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.af

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.l, %bb.k
  %i.bp = phi i32 [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.ao, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ]
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 4                    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !289 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !290
  %i.bw = sext i32 %2 to i64
  %i.bx = mul i64 %i.br, %i.bw
  %i.by = add i64 %i.bx, %i.bv
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(73) %i.bt, i64 noundef %i.by, i32 noundef 0) ; 0 uses
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !289 ; 2 uses
  %i.ce = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !63
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(73) %i.cd, ptr noundef nonnull %i.ce, i64 noundef %i.br)
  %.not = icmp eq i64 %i.ci, %i.br
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.cj = load i32, ptr %i.an, align 8, !tbaa !75 ; 7 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  %.pre79 = load ptr, ptr %i.am, align 8, !tbaa !112 ; 12 uses
  br i1 %i.ck, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.cj to i64
  %i.cl = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = add nsw i32 %i.cj, -2
  %i.cn = icmp ult i32 %i.cm, 3
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cl, -4
  br label %bb.u

.thread:                                          ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !288
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.cp, i32 noundef 1029)
  br label %bb.ad

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx.epil
  %.idx100.epil = shl nuw nsw i64 %indvars.iv.epil, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx100.epil
  %i.cs = load <2 x float>, ptr %i.cq, align 4, !tbaa !80
  store <2 x float> %i.cs, ptr %i.cr, align 4, !tbaa !80
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.q, !llvm.loop !545

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.preheader
  %i.ct = shl nsw i32 %i.cj, 1
  %i.cu = sext i32 %i.ct to i64                   ; 4 uses
  %i.cv = load ptr, ptr %i.ar, align 8, !tbaa !152 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %.pre79 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.cu
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.db = sub nuw nsw i64 %i.cu, %i.cz
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.db)
  %.pre81.pre = load i32, ptr %i.an, align 8, !tbaa !75
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit51

bb.s:                                             ; preds = %._crit_edge
  %i.dc = icmp ugt i64 %i.cz, %i.cu
  br i1 %i.dc, label %bb.t, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit51

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.pre79, i64 %i.cu ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cv, %i.dd
  br i1 %.not.i.i49, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit51, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i50

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i50:      ; preds = %bb.t
  store ptr %i.dd, ptr %i.ar, align 8, !tbaa !152
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit51

_ZNSt6vectorIfSaIfEE6resizeEm.exit51:             ; preds = %bb.r, %bb.s, %bb.t, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i50
  %.pre81 = phi i32 [ %.pre81.pre, %bb.r ], [ %i.cj, %bb.s ], [ %i.cj, %bb.t ], [ %i.cj, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i50 ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.df = load i8, ptr %i.de, align 8, !tbaa !291, !range !55, !noundef !56
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.v, label %_ZN5osgeo4projL10swap_wordsEPvmm.exit

bb.u:                                             ; preds = %bb.u, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.u ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.u ]
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx
  %.idx100 = shl nuw nsw i64 %indvars.iv, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx100
  %i.dj = load <2 x float>, ptr %i.dh, align 4, !tbaa !80
  store <2 x float> %i.dj, ptr %i.di, align 4, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx.1
  %.idx100.1 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx100.1
  %i.dm = load <2 x float>, ptr %i.dk, align 4, !tbaa !80
  store <2 x float> %i.dm, ptr %i.dl, align 4, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.idx.2 = shl nuw nsw i64 %indvars.iv.next.1, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx.2
  %.idx100.2 = shl nuw nsw i64 %indvars.iv.next.1, 3
  %i.do = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx100.2
  %i.dp = load <2 x float>, ptr %i.dn, align 4, !tbaa !80
  store <2 x float> %i.dp, ptr %i.do, align 4, !tbaa !80
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %.idx.3 = shl nuw nsw i64 %indvars.iv.next.2, 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx.3
  %.idx100.3 = shl nuw nsw i64 %indvars.iv.next.2, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx100.3
  %i.ds = load <2 x float>, ptr %i.dq, align 4, !tbaa !80
  store <2 x float> %i.ds, ptr %i.dr, align 4, !tbaa !80
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.u, !llvm.loop !546

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit51
  %i.dt = shl i32 %.pre81, 1
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %.not.i = icmp eq i32 %.pre81, 0
  br i1 %.not.i, label %._crit_edge67, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.v
  %i.dv = load ptr, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.dw = add nsw i64 %i.du, -1
  %i.dx = icmp ult i64 %i.dw, 3
  br i1 %i.dx, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter123 = and i64 %i.du, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.023.i = phi ptr [ %i.dv, %.preheader.i.preheader.new ], [ %i.eh, %.preheader.i ] ; 6 uses
  %niter124 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter124.next.3, %.preheader.i ]
  %i.dy = getelementptr i8, ptr %.023.i, i64 4    ; 2 uses
  %i.dz = load <4 x i8>, ptr %.023.i, align 1, !tbaa !73
  %i.ea = shufflevector <4 x i8> %i.dz, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ea, ptr %.023.i, align 1, !tbaa !73
  %i.eb = getelementptr i8, ptr %.023.i, i64 8    ; 2 uses
  %i.ec = load <4 x i8>, ptr %i.dy, align 1, !tbaa !73
  %i.ed = shufflevector <4 x i8> %i.ec, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ed, ptr %i.dy, align 1, !tbaa !73
  %i.ee = getelementptr i8, ptr %.023.i, i64 12   ; 2 uses
  %i.ef = load <4 x i8>, ptr %i.eb, align 1, !tbaa !73
  %i.eg = shufflevector <4 x i8> %i.ef, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.eg, ptr %i.eb, align 1, !tbaa !73
  %i.eh = getelementptr i8, ptr %.023.i, i64 16   ; 2 uses
  %i.ei = load <4 x i8>, ptr %i.ee, align 1, !tbaa !73
  %i.ej = shufflevector <4 x i8> %i.ei, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ej, ptr %i.ee, align 1, !tbaa !73
  %niter124.next.3 = add i64 %niter124, 4         ; 2 uses
  %niter124.ncmp.3 = icmp eq i64 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3, label %_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !5

_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %6 = trunc i32 %.pre81 to i1
  br i1 %6, label %.preheader.i.epil.preheader, label %_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit

.preheader.i.epil.preheader:                      ; preds = %_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.023.i.epil.init = phi ptr [ %i.dv, %.preheader.i.preheader ], [ %i.eh, %_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod122 = trunc i32 %.pre81 to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.023.i.epil = phi ptr [ %i.ek, %.preheader.i.epil ], [ %.023.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter120 = phi i64 [ %epil.iter120.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ek = getelementptr i8, ptr %.023.i.epil, i64 4
  %i.el = load <4 x i8>, ptr %.023.i.epil, align 1, !tbaa !73
  %i.em = shufflevector <4 x i8> %i.el, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.em, ptr %.023.i.epil, align 1, !tbaa !73
  %epil.iter120.next = add i64 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i64 %epil.iter120.next, 2
  br i1 %epil.iter120.cmp.not, label %_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit, label %.preheader.i.epil, !llvm.loop !547

_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit:   ; preds = %.preheader.i.epil, %_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit.unr-lcssa
  %.pre80 = load i32, ptr %i.an, align 8, !tbaa !75
  br label %_ZN5osgeo4projL10swap_wordsEPvmm.exit

_ZN5osgeo4projL10swap_wordsEPvmm.exit:            ; preds = %_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit, %_ZNSt6vectorIfSaIfEE6resizeEm.exit51
  %i.en = phi i32 [ %.pre80, %_ZN5osgeo4projL10swap_wordsEPvmm.exit.loopexit ], [ %.pre81, %_ZNSt6vectorIfSaIfEE6resizeEm.exit51 ] ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %_ZN5osgeo4projL10swap_wordsEPvmm.exit
  %i.ep = lshr i32 %i.en, 1                       ; 4 uses
  %i.eq = load ptr, ptr %i.am, align 8, !tbaa !112 ; 6 uses
  %i.er = zext nneg i32 %i.en to i64              ; 3 uses
  %i.es = icmp eq i32 %i.ep, 1
  br i1 %i.es, label %.epil.preheader125, label %.lr.ph66.new

.lr.ph66.new:                                     ; preds = %.lr.ph66
  %7 = and i32 %i.ep, 1073741822
  %unroll_iter130 = zext nneg i32 %7 to i64
  br label %bb.w

._crit_edge67.loopexit.unr-lcssa:                 ; preds = %bb.w
  %8 = trunc i32 %i.ep to i1
  br i1 %8, label %.epil.preheader125, label %._crit_edge67

.epil.preheader125:                               ; preds = %._crit_edge67.loopexit.unr-lcssa, %.lr.ph66
  %indvars.iv74.epil.init = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next75.1, %._crit_edge67.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod129 = trunc i32 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %.idx101.epil = shl nuw nsw i64 %indvars.iv74.epil.init, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx101.epil ; 2 uses
  %i.eu = xor i64 %indvars.iv74.epil.init, -1
  %i.ev = add nsw i64 %i.er, %i.eu
  %.idx102.epil = shl i64 %i.ev, 3
  %i.ew = getelementptr i8, ptr %i.eq, i64 %.idx102.epil ; 2 uses
  %i.ex = load <2 x float>, ptr %i.et, align 4, !tbaa !80
  %i.ey = load <2 x float>, ptr %i.ew, align 4, !tbaa !80
  store <2 x float> %i.ey, ptr %i.et, align 4, !tbaa !80
  store <2 x float> %i.ex, ptr %i.ew, align 4, !tbaa !80
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %.epil.preheader125, %._crit_edge67.loopexit.unr-lcssa, %bb.v, %_ZN5osgeo4projL10swap_wordsEPvmm.exit
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.fa = load i32, ptr %i.d, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.fb = zext i32 %i.fa to i64
  %i.fc = shl nuw i64 %i.fb, 32
  %i.fd = or disjoint i64 %i.fc, %i.h
  store i64 %i.fd, ptr %i.a, align 8, !tbaa !72
  invoke void @_ZN5osgeo4proj5lru115CacheImSt6vectorIfSaIfEENS1_8NullLockESt13unordered_mapImSt14_List_iteratorINS1_12KeyValuePairImS5_EEESt4hashImESt8equal_toImESaISt4pairIKmSB_EEEE6insertERSH_RKS5_(ptr noundef nonnull align 8 dereferenceable(112) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_ZN5osgeo4proj14FloatLineCache6insertEjjRKSt6vectorIfSaIfEE.exit unwind label %bb.x

_ZN5osgeo4proj14FloatLineCache6insertEjjRKSt6vectorIfSaIfEE.exit: ; preds = %._crit_edge67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.ac

bb.w:                                             ; preds = %bb.w, %.lr.ph66.new
  %indvars.iv74 = phi i64 [ 0, %.lr.ph66.new ], [ %indvars.iv.next75.1, %bb.w ] ; 5 uses
  %niter131 = phi i64 [ 0, %.lr.ph66.new ], [ %niter131.next.1, %bb.w ]
  %.idx101 = shl nuw nsw i64 %indvars.iv74, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx101 ; 2 uses
  %i.ff = xor i64 %indvars.iv74, -1
  %i.fg = add nsw i64 %i.er, %i.ff
  %.idx102 = shl i64 %i.fg, 3
  %i.fh = getelementptr i8, ptr %i.eq, i64 %.idx102 ; 2 uses
  %i.fi = load <2 x float>, ptr %i.fe, align 4, !tbaa !80
  %i.fj = load <2 x float>, ptr %i.fh, align 4, !tbaa !80
  store <2 x float> %i.fj, ptr %i.fe, align 4, !tbaa !80
  store <2 x float> %i.fi, ptr %i.fh, align 4, !tbaa !80
  %indvars.iv.next75 = shl i64 %indvars.iv74, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv.next75
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fm = xor i64 %indvars.iv74, 2305843009213693950
  %i.fn = add nuw i64 %i.fm, %i.er
  %.idx102.1 = shl i64 %i.fn, 3
  %i.fo = getelementptr i8, ptr %i.eq, i64 %.idx102.1 ; 2 uses
  %i.fp = load <2 x float>, ptr %i.fl, align 4, !tbaa !80
  %i.fq = load <2 x float>, ptr %i.fo, align 4, !tbaa !80
  store <2 x float> %i.fq, ptr %i.fl, align 4, !tbaa !80
  store <2 x float> %i.fp, ptr %i.fo, align 4, !tbaa !80
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %niter131.next.1 = add i64 %niter131, 2         ; 2 uses
  %niter131.ncmp.1 = icmp eq i64 %niter131.next.1, %unroll_iter130
  br i1 %niter131.ncmp.1, label %._crit_edge67.loopexit.unr-lcssa, label %bb.w, !llvm.loop !548

bb.x:                                             ; preds = %._crit_edge67
  %i.fr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.fs = extractvalue { ptr, i32 } %i.fr, 1
  %i.ft = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.fu = icmp eq i32 %i.fs, %i.ft
  br i1 %i.fu, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.fv = extractvalue { ptr, i32 } %i.fr, 0
  %i.fw = call ptr @__cxa_begin_catch(ptr %i.fv) #31 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !288
  %i.fz = load ptr, ptr %i.fw, align 8, !tbaa !63
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = call noundef ptr %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.fw) #31
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.fy, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %i.gc)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__cxa_end_catch()
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.af

bb.ab:                                            ; preds = %bb.i, %_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i
  %i.ge = phi ptr [ %i.ai, %_ZNSt13unordered_mapImSt14_List_iteratorIN5osgeo4proj5lru1112KeyValuePairImSt6vectorIfSaIfEEEEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEE4findERSF_.exit.i.i ], [ %.pre.i.i, %bb.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5osgeo4proj14FloatLineCache6insertEjjRKSt6vectorIfSaIfEE.exit, %bb.z, %bb.ab
  %i.gg = phi ptr [ %i.gf, %bb.ab ], [ %i.am, %bb.z ], [ %i.am, %_ZN5osgeo4proj14FloatLineCache6insertEjjRKSt6vectorIfSaIfEE.exit ]
  %i.gh = shl nsw i32 %1, 1
  %i.gi = sext i32 %i.gh to i64
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !112
  %i.gk = getelementptr [4 x i8], ptr %i.gj, i64 %i.gi ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !80
  %i.gm = fpext float %i.gl to double
  %i.gn = fmul double %i.gm, f0x3ED455A5B2FF8F9D
  %i.go = fptrunc double %i.gn to float
  store float %i.go, ptr %5, align 4, !tbaa !80
  %i.gp = getelementptr i8, ptr %i.gk, i64 4
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !80
  %i.gr = fpext float %i.gq to double
  %i.gs = fmul double %i.gr, f0x3ED455A5B2FF8F9D
  %i.gt = fptrunc double %i.gs to float           ; 2 uses
  %i.gu = fneg float %i.gt
  %i.gv = select i1 %3, float %i.gu, float %i.gt
  store float %i.gv, ptr %4, align 4, !tbaa !80
  br label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.ac, %bb.o
  %.1 = phi i1 [ true, %bb.ac ], [ false, %.thread ], [ false, %bb.o ]
  ret i1 %.1

bb.ae:                                            ; preds = %bb.x, %bb.aa, %bb.p, %bb.m
  %.merged = phi { ptr, i32 } [ %i.bo, %bb.p ], [ %i.bc, %bb.m ], [ %i.fr, %bb.x ], [ %i.gd, %bb.aa ]
  resume { ptr, i32 } %.merged

bb.af:                                            ; preds = %bb.aa, %bb.p
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5osgeo4proj11NTv2GridSetD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(112) dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5osgeo4proj11NTv2GridSetE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN5osgeo4proj5lru115CacheImSt6vectorIfSaIfEENS1_8NullLockESt13unordered_mapImSt14_List_iteratorINS1_12KeyValuePairImS5_EEESt4hashImESt8equal_toImESaISt4pairIKmSB_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.b) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #32
  br label %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj14FloatLineCacheEEclEPS2_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 3 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(73) %i.d) #31, !inline_history !2
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj14FloatLineCacheESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5osgeo4proj22HorizontalShiftGridSetE, i64 16), ptr %0, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !269  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !272 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(144) %i.l) #31, !inline_history !20
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj19HorizontalShiftGridEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !273
end_hunk_0
