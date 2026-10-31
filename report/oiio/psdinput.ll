Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/psdinput?download=true
inline.NumInlined: 4893
inline.NumDeleted: 1786
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput20read_native_scanlineEiiiiPv:bb.a
  %i.f = load i32, ptr %i.e, align 4, !tbaa !154
  %i.g = icmp sge i32 %1, %i.f
  %i.h = icmp ne i32 %2, 0
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = zext nneg i32 %1 to i64                  ; 4 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %i.j ; 18 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !532
  %i.o = sub nsw i32 %3, %i.n                     ; 4 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !55
  %i.p = icmp slt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp sgt i32 %i.o, %i.r
  %or.cond144 = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond144, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.c, align 4, !tbaa !55
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.41, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.an

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.j ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !269  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !178  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3                 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.z
  br i1 %.not, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread, label %bb.f

_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !238
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = icmp ugt i64 %i.ad, 384307168202282325
  br i1 %i.ai, label %bb.g, label %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #41
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc247:                                        ; preds = %bb.g
  unreachable

_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.aj = mul nuw nsw i64 %i.ad, 24               ; 2 uses
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #39
          to label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit:    ; preds = %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ak, i8 0, i64 %i.aj, i1 false)
  store ptr %i.ak, ptr %6, align 8, !tbaa !275
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ad ; 2 uses
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !276
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !277
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !173 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.j ; 2 uses
  %.phi.trans.insert290 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre291 = load ptr, ptr %.phi.trans.insert290, align 8, !tbaa !269
  %.pre292 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !178
  %.pre297 = ptrtoint ptr %.pre291 to i64
  %.pre298 = ptrtoint ptr %.pre292 to i64
  %.pre300 = sub i64 %.pre297, %.pre298           ; 3 uses
  %.pre302 = ashr exact i64 %.pre300, 3           ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.an = load i16, ptr %i.am, align 8, !tbaa !238 ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.j
  %i.ap = trunc i64 %.pre302 to i32               ; 3 uses
  %.not283 = icmp sgt i32 %i.ap, 0
  br i1 %.not283, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit
  %wide.trip.count = and i64 %.pre302, 2147483647
  br label %.lr.ph

bb.h:                                             ; preds = %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !511

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.aq = phi ptr [ %i.ak, %.lr.ph.preheader ], [ %i.bj, %bb.h ] ; 4 uses
  %i.ar = phi i32 [ %i.o, %.lr.ph.preheader ], [ %i.bk, %bb.h ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !178
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !240 ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %indvars.iv ; 3 uses
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !259
  %i.ax = zext i32 %i.aw to i64                   ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !279 ; 2 uses
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !280 ; 5 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.ax
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bf = sub nuw nsw i64 %i.ax, %i.bd
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef %i.bf)
          to label %._ZNSt6vectorIhSaIhEE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIhSaIhEE6resizeEm.exit_crit_edge:    ; preds = %bb.i
  %.pre293 = load i32, ptr %i.b, align 4, !tbaa !55
  %.pre294 = load ptr, ptr %6, align 8, !tbaa !275 ; 2 uses
  %.phi.trans.insert295 = getelementptr inbounds nuw [24 x i8], ptr %.pre294, i64 %indvars.iv
  %.pre296 = load ptr, ptr %.phi.trans.insert295, align 8, !tbaa !280
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.j:                                             ; preds = %.lr.ph
  %i.bg = icmp ugt i64 %i.bd, %i.ax
  br i1 %i.bg, label %bb.k, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.az, %i.bh
  br i1 %.not.i.i145, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !279
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIhSaIhEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i, %bb.k, %bb.j
  %i.bi = phi ptr [ %.pre296, %._ZNSt6vectorIhSaIhEE6resizeEm.exit_crit_edge ], [ %i.ba, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ba, %bb.k ], [ %i.ba, %bb.j ]
  %i.bj = phi ptr [ %.pre294, %._ZNSt6vectorIhSaIhEE6resizeEm.exit_crit_edge ], [ %i.aq, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ], [ %i.aq, %bb.k ], [ %i.aq, %bb.j ] ; 3 uses
  %i.bk = phi i32 [ %.pre293, %._ZNSt6vectorIhSaIhEE6resizeEm.exit_crit_edge ], [ %i.ar, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ar, %bb.k ], [ %i.ar, %bb.j ] ; 2 uses
  %i.bl = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16read_channel_rowERNS1_11ChannelInfoEjPc(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.au, i32 noundef %i.bk, ptr noundef %i.bi)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  br i1 %i.bl, label %bb.h, label %.loopexit282

.critedge:                                        ; preds = %bb.h, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit
  %.not283333 = phi i1 [ false, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread ], [ false, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ true, %bb.h ] ; 3 uses
  %i.bm = phi i32 [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread ], [ %i.ap, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %i.ap, %bb.h ]
  %.in.in.in = phi i16 [ %i.ag, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread ], [ %i.an, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %i.an, %bb.h ]
  %.pre-phi301332 = phi i64 [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread ], [ %.pre300, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %.pre300, %bb.h ] ; 3 uses
  %.pre-phi303331 = phi i64 [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread ], [ %.pre302, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %.pre302, %bb.h ] ; 3 uses
  %i.bn = phi ptr [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit.thread ], [ %i.ak, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %i.bj, %bb.h ] ; 15 uses
  %.in.in = zext i16 %.in.in.in to i32
  %.in = add nuw nsw i32 %.in.in, 7
  %i.bo = lshr i32 %.in, 3                        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !157, !range !265, !noundef !266
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 674 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !205
  switch i16 %i.bt, label %bb.ad [
    i16 3, label %bb.n
    i16 7, label %bb.n
    i16 1, label %bb.n
    i16 4, label %bb.r
    i16 2, label %bb.ab
    i16 0, label %bb.ac
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %.critedge
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !281 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !282 ; 7 uses
  %i.by = icmp sgt i32 %i.bx, 0
  %i.bz = icmp sgt i32 %i.bv, 0
  %or.cond.i160 = and i1 %i.bz, %i.by             ; 3 uses
  switch i32 %i.bo, label %bb.q [
    i32 4, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  br i1 %or.cond.i160, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.ca = zext nneg i32 %i.bx to i64              ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.bv to i64 ; 5 uses
  %min.iters.check353 = icmp ugt i32 %i.bv, 7
  %ident.check350.not = icmp eq i32 %i.bx, 1
  %or.cond395.not402 = select i1 %min.iters.check353, i1 %ident.check350.not, i1 false
  %n.vec355 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n362 = icmp eq i64 %n.vec355, %wide.trip.count.i
  %xtraiter426 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next21.i, %._crit_edge.i ] ; 4 uses
  %7 = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv20.i
  %8 = load ptr, ptr %7, align 8, !tbaa !280      ; 7 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv20.i ; 6 uses
  br i1 %or.cond395.not402, label %.lr.ph.i.a, label %scalar.ph.preheader

.lr.ph.i.a:                                       ; preds = %.lr.ph.i
  %9 = ptrtoaddr ptr %8 to i64
  %i.cb = shl nuw nsw i64 %indvars.iv20.i, 2
  %i.cc = add nuw i64 %i.cb, %i.a
  %i.cd = sub i64 %9, %i.cc
  %diff.check352 = icmp ugt i64 %i.cd, -32
  br i1 %diff.check352, label %scalar.ph.preheader, label %vector.body356

vector.body356:                                   ; preds = %.lr.ph.i.a, %vector.body356
  %index357 = phi i64 [ %index.next360, %vector.body356 ], [ 0, %.lr.ph.i.a ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index357 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load358 = load <4 x float>, ptr %i.ce, align 4, !tbaa !65
  %wide.load359 = load <4 x float>, ptr %i.cf, align 4, !tbaa !65
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index357 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <4 x float> %wide.load358, ptr %i.cg, align 4, !tbaa !65
  store <4 x float> %wide.load359, ptr %i.ch, align 4, !tbaa !65
  %index.next360 = add nuw i64 %index357, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next360, %n.vec355
  br i1 %i.ci, label %middle.block361, label %vector.body356, !llvm.loop !512

middle.block361:                                  ; preds = %vector.body356
  br i1 %cmp.n362, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.a, %.lr.ph.i, %middle.block361
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.a ], [ 0, %.lr.ph.i ], [ %n.vec355, %middle.block361 ] ; 3 uses
  br i1 %lcmp.mod427.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter428 = phi i64 [ %prol.iter428.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i.prol
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !65
  %i.cl = mul nuw nsw i64 %indvars.iv.i.prol, %i.ca
  %gep.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.cl
  store float %i.ck, ptr %gep.i.prol, align 4, !tbaa !65
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter428.next = add i64 %prol.iter428, 1   ; 2 uses
  %prol.iter428.cmp.not = icmp eq i64 %prol.iter428.next, %xtraiter426
  br i1 %prol.iter428.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !513

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.cm = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block361
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %i.ca
  br i1 %exitcond24.not.i, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit, label %.lr.ph.i, !llvm.loop !514

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !65
  %i.cq = mul nuw nsw i64 %indvars.iv.i, %i.ca
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.cq
  store float %i.cp, ptr %gep.i, align 4, !tbaa !65
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.i
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !65
  %i.ct = mul nuw nsw i64 %indvars.iv.next.i, %i.ca
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.ct
  store float %i.cs, ptr %gep.i.1, align 4, !tbaa !65
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.i.1
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !65
  %i.cw = mul nuw nsw i64 %indvars.iv.next.i.1, %i.ca
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.cw
  store float %i.cv, ptr %gep.i.2, align 4, !tbaa !65
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.i.2
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !65
  %i.cz = mul nuw nsw i64 %indvars.iv.next.i.2, %i.ca
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.cz
  store float %i.cy, ptr %gep.i.3, align 4, !tbaa !65
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !515

bb.p:                                             ; preds = %bb.n
  br i1 %or.cond.i160, label %.lr.ph.preheader.i148, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit

.lr.ph.preheader.i148:                            ; preds = %bb.p
  %i.da = zext nneg i32 %i.bx to i64              ; 6 uses
  %wide.trip.count.i149 = zext nneg i32 %i.bv to i64 ; 8 uses
  %min.iters.check = icmp ugt i32 %i.bv, 3
  %ident.check.not = icmp eq i32 %i.bx, 1
  %or.cond397.not401 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %min.iters.check342 = icmp ult i32 %i.bv, 16
  %i.db = and i64 %wide.trip.count.i149, 12
  %n.vec = and i64 %wide.trip.count.i149, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i149
  %min.epilog.iters.check = icmp eq i64 %i.db, 0
  %n.vec344 = and i64 %wide.trip.count.i149, 2147483644 ; 3 uses
  %cmp.n348 = icmp eq i64 %n.vec344, %wide.trip.count.i149
  %xtraiter424 = and i64 %wide.trip.count.i149, 3 ; 2 uses
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i157, %.lr.ph.preheader.i148
  %indvars.iv20.i151 = phi i64 [ 0, %.lr.ph.preheader.i148 ], [ %indvars.iv.next21.i158, %._crit_edge.i157 ] ; 4 uses
  %10 = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv20.i151
  %11 = load ptr, ptr %10, align 8, !tbaa !280    ; 8 uses
  %invariant.gep.i152 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv20.i151 ; 7 uses
  br i1 %or.cond397.not401, label %iter.check.a, label %vec.epilog.scalar.ph.preheader

iter.check.a:                                     ; preds = %iter.check
  %12 = ptrtoaddr ptr %11 to i64
  %i.dc = shl nuw nsw i64 %indvars.iv20.i151, 1
  %i.dd = add nuw i64 %i.dc, %i.a
  %i.de = sub i64 %12, %i.dd
  %diff.check = icmp ugt i64 %i.de, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check.a
  br i1 %min.iters.check342, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load = load <8 x i16>, ptr %i.df, align 2, !tbaa !76
  %wide.load343 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !76
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i152, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <8 x i16> %wide.load, ptr %i.dh, align 2, !tbaa !76
  store <8 x i16> %wide.load343, ptr %i.di, align 2, !tbaa !76
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !516

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i157, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !283

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index345 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next347, %vec.epilog.vector.body ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %index345
  %wide.load346 = load <4 x i16>, ptr %i.dk, align 2, !tbaa !76
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i152, i64 %index345
  store <4 x i16> %wide.load346, ptr %i.dl, align 2, !tbaa !76
  %index.next347 = add nuw i64 %index345, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next347, %n.vec344
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !517

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n348, label %._crit_edge.i157, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %iter.check.a, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i153.ph = phi i64 [ 0, %iter.check ], [ 0, %iter.check.a ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec344, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod425.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i153.prol = phi i64 [ %indvars.iv.next.i155.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i153.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.i153.prol
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !76
  %i.dp = mul nuw nsw i64 %indvars.iv.i153.prol, %i.da
  %gep.i154.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i152, i64 %i.dp
  store i16 %i.do, ptr %gep.i154.prol, align 2, !tbaa !76
  %indvars.iv.next.i155.prol = add nuw nsw i64 %indvars.iv.i153.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter424
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !518

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i153.unr = phi i64 [ %indvars.iv.i153.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i155.prol, %vec.epilog.scalar.ph.prol ]
  %i.dq = sub nsw i64 %indvars.iv.i153.ph, %wide.trip.count.i149
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge.i157, label %vec.epilog.scalar.ph

._crit_edge.i157:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next21.i158 = add nuw nsw i64 %indvars.iv20.i151, 1 ; 2 uses
  %exitcond24.not.i159 = icmp eq i64 %indvars.iv.next21.i158, %i.da
  br i1 %exitcond24.not.i159, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit, label %iter.check, !llvm.loop !519

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i153 = phi i64 [ %indvars.iv.next.i155.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i153.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.i153
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !76
  %i.du = mul nuw nsw i64 %indvars.iv.i153, %i.da
  %gep.i154 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i152, i64 %i.du
  store i16 %i.dt, ptr %gep.i154, align 2, !tbaa !76
  %indvars.iv.next.i155 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.next.i155
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !76
  %i.dx = mul nuw nsw i64 %indvars.iv.next.i155, %i.da
  %gep.i154.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i152, i64 %i.dx
  store i16 %i.dw, ptr %gep.i154.1, align 2, !tbaa !76
  %indvars.iv.next.i155.1 = add nuw nsw i64 %indvars.iv.i153, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.next.i155.1
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !76
  %i.ea = mul nuw nsw i64 %indvars.iv.next.i155.1, %i.da
  %gep.i154.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i152, i64 %i.ea
  store i16 %i.dz, ptr %gep.i154.2, align 2, !tbaa !76
  %indvars.iv.next.i155.2 = add nuw nsw i64 %indvars.iv.i153, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %indvars.iv.next.i155.2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !76
  %i.ed = mul nuw nsw i64 %indvars.iv.next.i155.2, %i.da
  %gep.i154.3 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i152, i64 %i.ed
  store i16 %i.ec, ptr %gep.i154.3, align 2, !tbaa !76
  %indvars.iv.next.i155.3 = add nuw nsw i64 %indvars.iv.i153, 4 ; 2 uses
  %exitcond.not.i156.3 = icmp eq i64 %indvars.iv.next.i155.3, %wide.trip.count.i149
  br i1 %exitcond.not.i156.3, label %._crit_edge.i157, label %vec.epilog.scalar.ph, !llvm.loop !520

bb.q:                                             ; preds = %bb.n
  br i1 %or.cond.i160, label %.lr.ph.preheader.i161, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit

.lr.ph.preheader.i161:                            ; preds = %bb.q
  %i.ee = zext nneg i32 %i.bx to i64              ; 6 uses
  %wide.trip.count.i162 = zext nneg i32 %i.bv to i64 ; 8 uses
  %min.iters.check371 = icmp ugt i32 %i.bv, 3
  %ident.check367.not = icmp eq i32 %i.bx, 1
  %or.cond399.not403 = select i1 %min.iters.check371, i1 %ident.check367.not, i1 false
  %min.iters.check371.a = icmp ult i32 %i.bv, 32
  %i.ef = and i64 %wide.trip.count.i162, 28
  %n.vec373 = and i64 %wide.trip.count.i162, 2147483616 ; 4 uses
  %cmp.n380 = icmp eq i64 %n.vec373, %wide.trip.count.i162
  %min.epilog.iters.check384 = icmp eq i64 %i.ef, 0
  %n.vec387 = and i64 %wide.trip.count.i162, 2147483644 ; 3 uses
  %cmp.n393 = icmp eq i64 %n.vec387, %wide.trip.count.i162
  %xtraiter429 = and i64 %wide.trip.count.i162, 3 ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br label %iter.check381

iter.check381:                                    ; preds = %._crit_edge.i170, %.lr.ph.preheader.i161
  %indvars.iv20.i164 = phi i64 [ 0, %.lr.ph.preheader.i161 ], [ %indvars.iv.next21.i171, %._crit_edge.i170 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv20.i164
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !280 ; 8 uses
  %invariant.gep.i165 = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv20.i164 ; 7 uses
  br i1 %or.cond399.not403, label %vector.memcheck372, label %vec.epilog.scalar.ph383.preheader

vector.memcheck372:                               ; preds = %iter.check381
  %13 = ptrtoaddr ptr %i.eh to i64
  %14 = add nuw i64 %indvars.iv20.i164, %i.a
  %15 = sub i64 %13, %14
  %diff.check373 = icmp ugt i64 %15, -32
  br i1 %diff.check373, label %vec.epilog.scalar.ph383.preheader, label %vector.main.loop.iter.check370

vector.main.loop.iter.check370:                   ; preds = %vector.memcheck372
  br i1 %min.iters.check371.a, label %vec.epilog.ph385, label %vector.body374

vector.body374:                                   ; preds = %vector.main.loop.iter.check370, %vector.body374
  %index375 = phi i64 [ %index.next378, %vector.body374 ], [ 0, %vector.main.loop.iter.check370 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index375 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load376 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !63
  %wide.load377 = load <16 x i8>, ptr %i.ej, align 1, !tbaa !63
  %i.ek = getelementptr inbounds nuw i8, ptr %invariant.gep.i165, i64 %index375 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <16 x i8> %wide.load376, ptr %i.ek, align 1, !tbaa !63
  store <16 x i8> %wide.load377, ptr %i.el, align 1, !tbaa !63
  %index.next378 = add nuw i64 %index375, 32      ; 2 uses
  %i.em = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.em, label %middle.block379, label %vector.body374, !llvm.loop !521

middle.block379:                                  ; preds = %vector.body374
  br i1 %cmp.n380, label %._crit_edge.i170, label %vec.epilog.iter.check382

vec.epilog.iter.check382:                         ; preds = %middle.block379
  br i1 %min.epilog.iters.check384, label %vec.epilog.scalar.ph383.preheader, label %vec.epilog.ph385, !prof !284

vec.epilog.ph385:                                 ; preds = %vector.main.loop.iter.check370, %vec.epilog.iter.check382
  %vec.epilog.resume.val386 = phi i64 [ %n.vec373, %vec.epilog.iter.check382 ], [ 0, %vector.main.loop.iter.check370 ]
  br label %vec.epilog.vector.body388

vec.epilog.vector.body388:                        ; preds = %vec.epilog.vector.body388, %vec.epilog.ph385
  %index389 = phi i64 [ %vec.epilog.resume.val386, %vec.epilog.ph385 ], [ %index.next391, %vec.epilog.vector.body388 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index389
  %wide.load390 = load <4 x i8>, ptr %i.en, align 1, !tbaa !63
  %i.eo = getelementptr inbounds nuw i8, ptr %invariant.gep.i165, i64 %index389
  store <4 x i8> %wide.load390, ptr %i.eo, align 1, !tbaa !63
  %index.next391 = add nuw i64 %index389, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next391, %n.vec387
  br i1 %i.ep, label %vec.epilog.middle.block392, label %vec.epilog.vector.body388, !llvm.loop !522

vec.epilog.middle.block392:                       ; preds = %vec.epilog.vector.body388
  br i1 %cmp.n393, label %._crit_edge.i170, label %vec.epilog.scalar.ph383.preheader

vec.epilog.scalar.ph383.preheader:                ; preds = %iter.check381, %vector.memcheck372, %vec.epilog.iter.check382, %vec.epilog.middle.block392
  %indvars.iv.i166.ph = phi i64 [ 0, %iter.check381 ], [ 0, %vector.memcheck372 ], [ %n.vec373, %vec.epilog.iter.check382 ], [ %n.vec387, %vec.epilog.middle.block392 ] ; 3 uses
  br i1 %lcmp.mod430.not, label %vec.epilog.scalar.ph383.prol.loopexit, label %vec.epilog.scalar.ph383.prol

vec.epilog.scalar.ph383.prol:                     ; preds = %vec.epilog.scalar.ph383.preheader, %vec.epilog.scalar.ph383.prol
  %indvars.iv.i166.prol = phi i64 [ %indvars.iv.next.i168.prol, %vec.epilog.scalar.ph383.prol ], [ %indvars.iv.i166.ph, %vec.epilog.scalar.ph383.preheader ] ; 3 uses
  %prol.iter431 = phi i64 [ %prol.iter431.next, %vec.epilog.scalar.ph383.prol ], [ 0, %vec.epilog.scalar.ph383.preheader ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.i166.prol
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !63
  %i.es = mul nuw nsw i64 %indvars.iv.i166.prol, %i.ee
  %gep.i167.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i165, i64 %i.es
  store i8 %i.er, ptr %gep.i167.prol, align 1, !tbaa !63
  %indvars.iv.next.i168.prol = add nuw nsw i64 %indvars.iv.i166.prol, 1 ; 2 uses
  %prol.iter431.next = add i64 %prol.iter431, 1   ; 2 uses
  %prol.iter431.cmp.not = icmp eq i64 %prol.iter431.next, %xtraiter429
  br i1 %prol.iter431.cmp.not, label %vec.epilog.scalar.ph383.prol.loopexit, label %vec.epilog.scalar.ph383.prol, !llvm.loop !523

vec.epilog.scalar.ph383.prol.loopexit:            ; preds = %vec.epilog.scalar.ph383.prol, %vec.epilog.scalar.ph383.preheader
  %indvars.iv.i166.unr = phi i64 [ %indvars.iv.i166.ph, %vec.epilog.scalar.ph383.preheader ], [ %indvars.iv.next.i168.prol, %vec.epilog.scalar.ph383.prol ]
  %i.et = sub nsw i64 %indvars.iv.i166.ph, %wide.trip.count.i162
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %._crit_edge.i170, label %vec.epilog.scalar.ph383

._crit_edge.i170:                                 ; preds = %vec.epilog.scalar.ph383.prol.loopexit, %vec.epilog.scalar.ph383, %vec.epilog.middle.block392, %middle.block379
  %indvars.iv.next21.i171 = add nuw nsw i64 %indvars.iv20.i164, 1 ; 2 uses
  %exitcond24.not.i172 = icmp eq i64 %indvars.iv.next21.i171, %i.ee
  br i1 %exitcond24.not.i172, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit, label %iter.check381, !llvm.loop !524

vec.epilog.scalar.ph383:                          ; preds = %vec.epilog.scalar.ph383.prol.loopexit, %vec.epilog.scalar.ph383
  %indvars.iv.i166 = phi i64 [ %indvars.iv.next.i168.3, %vec.epilog.scalar.ph383 ], [ %indvars.iv.i166.unr, %vec.epilog.scalar.ph383.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.i166
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !63
  %i.ex = mul nuw nsw i64 %indvars.iv.i166, %i.ee
  %gep.i167 = getelementptr inbounds nuw i8, ptr %invariant.gep.i165, i64 %i.ex
  store i8 %i.ew, ptr %gep.i167, align 1, !tbaa !63
  %indvars.iv.next.i168 = add nuw nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next.i168
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !63
  %i.fa = mul nuw nsw i64 %indvars.iv.next.i168, %i.ee
  %gep.i167.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i165, i64 %i.fa
  store i8 %i.ez, ptr %gep.i167.1, align 1, !tbaa !63
  %indvars.iv.next.i168.1 = add nuw nsw i64 %indvars.iv.i166, 2 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next.i168.1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !63
  %i.fd = mul nuw nsw i64 %indvars.iv.next.i168.1, %i.ee
  %gep.i167.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i165, i64 %i.fd
  store i8 %i.fc, ptr %gep.i167.2, align 1, !tbaa !63
  %indvars.iv.next.i168.2 = add nuw nsw i64 %indvars.iv.i166, 3 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next.i168.2
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !63
  %i.fg = mul nuw nsw i64 %indvars.iv.next.i168.2, %i.ee
  %gep.i167.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i165, i64 %i.fg
  store i8 %i.ff, ptr %gep.i167.3, align 1, !tbaa !63
  %indvars.iv.next.i168.3 = add nuw nsw i64 %indvars.iv.i166, 4 ; 2 uses
  %exitcond.not.i169.3 = icmp eq i64 %indvars.iv.next.i168.3, %wide.trip.count.i162
  br i1 %exitcond.not.i169.3, label %._crit_edge.i170, label %vec.epilog.scalar.ph383, !llvm.loop !525

bb.r:                                             ; preds = %bb.m
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 4 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !281
  %i.fj = mul nsw i32 %i.fi, %i.bm                ; 3 uses
  %i.fk = sext i32 %i.fj to i64                   ; 6 uses
  switch i32 %i.bo, label %bb.y [
    i32 4, label %bb.s
    i32 2, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.fl = icmp slt i32 %i.fj, 0
  %i.fm = shl nsw i64 %i.fk, 2
  %i.fn = select i1 %i.fl, i64 -1, i64 %i.fm
  %i.fo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fn) #39
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %i.fp = load i32, ptr %i.fh, align 4, !tbaa !281 ; 5 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  %or.cond.i173 = and i1 %.not283333, %i.fq
  br i1 %or.cond.i173, label %.lr.ph.preheader.i174, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit186

.lr.ph.preheader.i174:                            ; preds = %bb.t
  %i.fr = and i64 %.pre-phi303331, 2147483647     ; 6 uses
  %wide.trip.count.i175 = zext nneg i32 %i.fp to i64 ; 2 uses
  %xtraiter411 = and i64 %wide.trip.count.i175, 3 ; 3 uses
  %i.fs = icmp ult i32 %i.fp, 4
  %unroll_iter415 = and i64 %wide.trip.count.i175, 2147483644
  %lcmp.mod413.not = icmp eq i64 %xtraiter411, 0
  %lcmp.mod414 = icmp ne i64 %xtraiter411, 0
  br label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %._crit_edge.i183, %.lr.ph.preheader.i174
  %indvars.iv20.i177 = phi i64 [ 0, %.lr.ph.preheader.i174 ], [ %indvars.iv.next21.i184, %._crit_edge.i183 ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv20.i177
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !280 ; 5 uses
  %invariant.gep.i178 = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv20.i177 ; 5 uses
  br i1 %i.fs, label %.epil.preheader410, label %.lr.ph.i176.new

._crit_edge.i183.unr-lcssa:                       ; preds = %.lr.ph.i176.new
  br i1 %lcmp.mod413.not, label %._crit_edge.i183, label %.epil.preheader410

.epil.preheader410:                               ; preds = %._crit_edge.i183.unr-lcssa, %.lr.ph.i176
  %indvars.iv.i179.epil.init = phi i64 [ 0, %.lr.ph.i176 ], [ %indvars.iv.next.i181.3, %._crit_edge.i183.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod414)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader410
  %indvars.iv.i179.epil = phi i64 [ %indvars.iv.i179.epil.init, %.epil.preheader410 ], [ %indvars.iv.next.i181.epil, %bb.u ] ; 3 uses
  %epil.iter412 = phi i64 [ 0, %.epil.preheader410 ], [ %epil.iter412.next, %bb.u ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i179.epil
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !65
  %i.fx = mul nuw nsw i64 %indvars.iv.i179.epil, %i.fr
  %gep.i180.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i178, i64 %i.fx
  store float %i.fw, ptr %gep.i180.epil, align 4, !tbaa !65
  %indvars.iv.next.i181.epil = add nuw nsw i64 %indvars.iv.i179.epil, 1
  %epil.iter412.next = add i64 %epil.iter412, 1   ; 2 uses
  %epil.iter412.cmp.not = icmp eq i64 %epil.iter412.next, %xtraiter411
  br i1 %epil.iter412.cmp.not, label %._crit_edge.i183, label %bb.u, !llvm.loop !526

._crit_edge.i183:                                 ; preds = %bb.u, %._crit_edge.i183.unr-lcssa
  %indvars.iv.next21.i184 = add nuw nsw i64 %indvars.iv20.i177, 1 ; 2 uses
  %exitcond24.not.i185 = icmp eq i64 %indvars.iv.next21.i184, %i.fr
  br i1 %exitcond24.not.i185, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit186, label %.lr.ph.i176, !llvm.loop !514

.lr.ph.i176.new:                                  ; preds = %.lr.ph.i176, %.lr.ph.i176.new
  %indvars.iv.i179 = phi i64 [ %indvars.iv.next.i181.3, %.lr.ph.i176.new ], [ 0, %.lr.ph.i176 ] ; 6 uses
  %niter416 = phi i64 [ %niter416.next.3, %.lr.ph.i176.new ], [ 0, %.lr.ph.i176 ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i179
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !65
  %i.ga = mul nuw nsw i64 %indvars.iv.i179, %i.fr
  %gep.i180 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i178, i64 %i.ga
  store float %i.fz, ptr %gep.i180, align 4, !tbaa !65
  %indvars.iv.next.i181 = or disjoint i64 %indvars.iv.i179, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next.i181
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !65
  %i.gd = mul nuw nsw i64 %indvars.iv.next.i181, %i.fr
  %gep.i180.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i178, i64 %i.gd
  store float %i.gc, ptr %gep.i180.1, align 4, !tbaa !65
  %indvars.iv.next.i181.1 = or disjoint i64 %indvars.iv.i179, 2 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next.i181.1
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !65
  %i.gg = mul nuw nsw i64 %indvars.iv.next.i181.1, %i.fr
  %gep.i180.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i178, i64 %i.gg
  store float %i.gf, ptr %gep.i180.2, align 4, !tbaa !65
  %indvars.iv.next.i181.2 = or disjoint i64 %indvars.iv.i179, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next.i181.2
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !65
  %i.gj = mul nuw nsw i64 %indvars.iv.next.i181.2, %i.fr
  %gep.i180.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i178, i64 %i.gj
  store float %i.gi, ptr %gep.i180.3, align 4, !tbaa !65
  %indvars.iv.next.i181.3 = add nuw nsw i64 %indvars.iv.i179, 4 ; 2 uses
  %niter416.next.3 = add i64 %niter416, 4         ; 2 uses
  %niter416.ncmp.3 = icmp eq i64 %niter416.next.3, %unroll_iter415
  br i1 %niter416.ncmp.3, label %._crit_edge.i183.unr-lcssa, label %.lr.ph.i176.new, !llvm.loop !527

_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit186: ; preds = %._crit_edge.i183, %bb.t
  %sext130 = shl i64 %.pre-phi301332, 29
  %i.gk = ashr exact i64 %sext130, 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !282 ; 2 uses
  %i.gn = mul nsw i32 %i.gm, %i.fp
  %i.go = sext i32 %i.gn to i64
  %i.gp = sext i32 %i.gm to i64
  invoke void @_ZN11OpenImageIO4v3_18PSDInput11cmyk_to_rgbIfEEviNS0_4spanIKT_Lm18446744073709551615EEEmNS3_IS4_Lm18446744073709551615EEEm(i32 noundef %i.fp, ptr nonnull %i.fo, i64 %i.fk, i64 noundef %i.gk, ptr %5, i64 %i.go, i64 noundef %i.gp)
          to label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit191

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit186
  tail call void @_ZdaPv(ptr noundef nonnull %i.fo) #38
  br label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit191: ; preds = %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowIfEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit186
  %i.gq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.fo) #38
  br label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.r
  %i.gr = icmp slt i32 %i.fj, 0
  %i.gs = shl nsw i64 %i.fk, 1
  %i.gt = select i1 %i.gr, i64 -1, i64 %i.gs
  %i.gu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gt) #39
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.w:                                             ; preds = %bb.v
  %i.gv = load i32, ptr %i.fh, align 4, !tbaa !281 ; 5 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  %or.cond.i192 = and i1 %.not283333, %i.gw
  br i1 %or.cond.i192, label %.lr.ph.preheader.i193, label %_ZN11OpenImageIO4v3_18PSDInput14interleave_rowItEEvPT_NS0_4spanIKSt6vectorIhSaIhEELm18446744073709551615EEEii.exit205

.lr.ph.preheader.i193:                            ; preds = %bb.w
  %i.gx = and i64 %.pre-phi303331, 2147483647     ; 6 uses
  %wide.trip.count.i194 = zext nneg i32 %i.gv to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i194, 3    ; 3 uses
  %i.gy = icmp ult i32 %i.gv, 4
  %unroll_iter = and i64 %wide.trip.count.i194, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod409 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %._crit_edge.i202, %.lr.ph.preheader.i193
  %indvars.iv20.i196 = phi i64 [ 0, %.lr.ph.preheader.i193 ], [ %indvars.iv.next21.i203, %._crit_edge.i202 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv20.i196
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !280 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !308
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !306
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ap), !inline_history !17
  %.pre.i.i27 = load i64, ptr %i.an, align 8, !tbaa !309 ; 2 uses
  %.pre2.i.i28 = add i64 %.pre.i.i27, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29

_ZN3fmt3v1214basic_appenderIcEaSEc.exit29:        ; preds = %bb.j, %bb.k
  %.pre-phi.i.i26 = phi i64 [ %i.ap, %bb.j ], [ %.pre2.i.i28, %bb.k ]
  %i.av = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i27, %bb.k ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !307
  store i64 %.pre-phi.i.i26, ptr %i.an, align 8, !tbaa !309
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.am, ptr %i.ax, align 1, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29, %bb.f
  %.013 = phi i32 [ %i.u, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29 ], [ %.0, %bb.f ]
  %i.ay = shl nuw nsw i32 %.013, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !309 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !308
  %i.bh = icmp ugt i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !306
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be), !inline_history !17
  %.pre.i.i32 = load i64, ptr %i.bc, align 8, !tbaa !309 ; 2 uses
  %.pre2.i.i33 = add i64 %.pre.i.i32, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

_ZN3fmt3v1214basic_appenderIcEaSEc.exit34:        ; preds = %bb.l, %bb.m
  %.pre-phi.i.i31 = phi i64 [ %i.be, %bb.l ], [ %.pre2.i.i33, %bb.m ]
  %i.bk = phi i64 [ %i.bd, %bb.l ], [ %.pre.i.i32, %bb.m ]
  %i.bl = load ptr, ptr %1, align 8, !tbaa !307
  store i64 %.pre-phi.i.i31, ptr %i.bc, align 8, !tbaa !309
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bb, ptr %i.bm, align 1, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !63
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !309 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !308
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

bb.n:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !306
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bq), !inline_history !17
  %.pre.i.i37 = load i64, ptr %i.bc, align 8, !tbaa !309 ; 2 uses
  %.pre2.i.i38 = add i64 %.pre.i.i37, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

_ZN3fmt3v1214basic_appenderIcEaSEc.exit39:        ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34, %bb.n
  %.pre-phi.i.i36 = phi i64 [ %i.bq, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre2.i.i38, %bb.n ]
  %i.bv = phi i64 [ %i.bp, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre.i.i37, %bb.n ]
  %i.bw = load ptr, ptr %1, align 8, !tbaa !307
  store i64 %.pre-phi.i.i36, ptr %i.bc, align 8, !tbaa !309
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 %i.bo, ptr %i.bx, align 1, !tbaa !63
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !344
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !322    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.121, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !63
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !309
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !308
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !306
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !23
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 12 uses
  %i.ac = load i32, ptr %4, align 8, !tbaa !371   ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nsw i32 %i.ac, 3
  %i.ae = lshr i32 539700480, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !309 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !308
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !306
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ai), !inline_history !783
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !309 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !307
  store i64 %.pre-phi.i.i.i, ptr %i.ag, align 8, !tbaa !309
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.af, ptr %i.aq, align 1, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !372 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i2.i = load i64, ptr %i.au, align 8, !tbaa !309
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.g
  %i.ax = phi i64 [ %.pre.i.i2.i, %bb.g ], [ %i.cd, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.idx.i = phi i64 [ 0, %bb.g ], [ %.02732.i.i.add.i, %._crit_edge.i.i.i ] ; 4 uses
  %.02732.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.02732.i.i.idx.i ; 7 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !308
  %i.az = sub i64 %i.ay, %i.ax
  %gepdiff.i = sub nsw i64 3, %.02732.i.i.idx.i   ; 4 uses
  %i.ba = icmp ult i64 %i.az, %gepdiff.i
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !306
  %i.bc = add i64 %gepdiff.i, %i.ax
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bc), !inline_history !784
  %i.bd = load i64, ptr %i.au, align 8, !tbaa !309 ; 2 uses
  %i.be = load i64, ptr %i.av, align 8, !tbaa !308
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %gepdiff.i, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.026.i.i.i = phi i64 [ %i.bd, %bb.i ], [ %i.ax, %bb.h ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %gepdiff.i, %bb.h ] ; 13 uses
  %i.bh = load ptr, ptr %.sroa.09.0, align 8, !tbaa !307 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.02732.i.i.idx.i, %i.at
  %i.bl = add i64 %.026.i.i.i, %i.bi
  %i.bm = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !63
  %wide.load36 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !63
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !63
  store <16 x i8> %wide.load36, ptr %i.br, align 1, !tbaa !63
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !785

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !284

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bu, align 1, !tbaa !63
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !786

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !63
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !63
  %i.bz = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !787

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.au, align 8, !tbaa !309
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.j
  %i.cc = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.j ]
  %i.cd = add i64 %i.cc, %.025.i.i.i              ; 2 uses
  store i64 %i.cd, ptr %i.au, align 8, !tbaa !309
  %.02732.i.i.add.i = add nuw nsw i64 %.025.i.i.i, %.02732.i.i.idx.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02732.i.i.add.i, 3
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit, label %bb.h, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !63
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !63
  %i.ch = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !63
  %i.cl = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !63
  %i.cp = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !63
  %i.ct = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ct, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !788

_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %i.cu = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cu, %bb.k ], [ %.sroa.09.0, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !791, !nonnull !266, !align !353
  %i.b = load i32, ptr %i.a, align 4, !tbaa !373  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !309  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !308
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !306
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !17
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !309 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !307
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !309
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !792, !nonnull !266, !align !353 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !383
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !793, !nonnull !266, !align !353
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !375  ; 2 uses
  %i.y = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %1, i32 noundef %i.s, i32 noundef %i.v) ; 14 uses
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEjNS1_23fallback_digit_groupingIcEEEET0_S7_T1_iiRKT2_.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !309 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !308
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !306
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.ae), !inline_history !789
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !309 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %.pre2.i.i.i.i, %bb.f ]
end_hunk_1
