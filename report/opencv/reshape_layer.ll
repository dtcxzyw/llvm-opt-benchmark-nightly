Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/reshape_layer?download=true
inline.NumInlined: 766
inline.NumDeleted: 316
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK2cv3dnn16ReshapeLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_:bb.a
bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, ptr noundef nonnull align 4 dereferenceable(52) %36)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  store ptr %i.af, ptr %i.l, align 8, !tbaa !85
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ac, ptr noundef nonnull align 4 dereferenceable(52) %36)
  %.pre358 = load ptr, ptr %i.l, align 8, !tbaa !92
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.i, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.i ], [ %.pre358, %bb.j ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.ah = load ptr, ptr %1, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw [52 x i8], ptr %i.ah, i64 %.022243 ; 13 uses
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8, !tbaa !71 ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -52 ; 7 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 5 uses
  %.sroa.18.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.18.0.extract.trunc.i = trunc nuw i64 %.sroa.18.0.extract.shift.i to i32 ; 3 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !75
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.ak, i32 0) ; 8 uses
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64 ; 2 uses
  %i.al = load i32, ptr %i.q, align 4, !tbaa !75  ; 3 uses
  %narrow.i130.i = call i32 @llvm.smax.i32(i32 %i.al, i32 0) ; 2 uses
  %spec.select.i131.i = zext nneg i32 %narrow.i130.i to i64
  %i.am = icmp eq i64 %.sroa.18.0.extract.shift.i, 2147483647
  %i.an = and i32 %.sroa.0.0.extract.trunc.i, 2147483647
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond.i.i = and i1 %i.am, %i.ao
  br i1 %or.cond.i.i, label %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit
  %i.ap = icmp sgt i32 %.sroa.0.0.extract.trunc.i, -1
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEiE15__cv_check__266) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = icmp sgt i32 %.sroa.18.0.extract.trunc.i, 0
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %narrow.i.i, i32 %.sroa.18.0.extract.trunc.i)
  %i.ar = add i32 %.sroa.18.0.extract.trunc.i, 1
  %i.as = add i32 %i.ar, %narrow.i.i
  %i.at = select i1 %i.aq, i32 %.sroa.speculated.i.i, i32 %i.as ; 5 uses
  %i.au = icmp sgt i32 %i.at, %.sroa.0.0.extract.trunc.i
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEiE15__cv_check__270) #22
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not.i.i28 = icmp samesign ugt i32 %i.at, %narrow.i.i
  br i1 %.not.i.i28, label %bb.p, label %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.at, i32 noundef %narrow.i.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEiE15__cv_check__271) #22
  unreachable

_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i: ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit, %bb.o
  %.sroa.028.0.i.i = phi i64 [ %.sroa.0.0.copyload, %bb.o ], [ 0, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.430.0.i.i = phi i32 [ %i.at, %bb.o ], [ %narrow.i.i, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit ]
  %spec.select.i77.fr = freeze i32 %.sroa.430.0.i.i ; 24 uses
  %.sroa.0.0.extract.trunc258.i = trunc i64 %.sroa.028.0.i.i to i32 ; 5 uses
  %i.av = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %i.q)
  %i.aw = icmp ne i64 %i.av, 0                    ; 2 uses
  %i.ax = load i32, ptr %i.q, align 4, !tbaa !75
  %.fr.i.i = freeze i32 %i.ax                     ; 5 uses
  %i.ay = icmp sgt i32 %.fr.i.i, 0
  %i.az = and i1 %i.aw, %i.ay
  br i1 %i.az, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %._crit_edge.i

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i
  %i.ba = zext nneg i32 %.fr.i.i to i64
  br label %_ZNK2cv8MatShapeixEm.exit.i

._crit_edge.i:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i
  %.096.in.lcssa.i = phi i1 [ %i.aw, %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i ], [ %i.bd, %_ZNK2cv8MatShapeixEm.exit.i ]
  br i1 %.096.in.lcssa.i, label %bb.q, label %.thread.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i211.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i226.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i241.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87
  %common.resume.op = phi { ptr, i32 } [ %i.ol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87 ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn111.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234.i ], [ %.pn114.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i ], [ %.pn117.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i ], [ %.pn123.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i ], [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179.i ], [ %i.od, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i ], [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i211.i ], [ %i.pv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i226.i ], [ %i.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i241.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i ], [ %.pn120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.i ]
  resume { ptr, i32 } %common.resume.op

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK2cv8MatShapeixEm.exit.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !71
  %i.bd = icmp sgt i32 %i.bc, 0                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next.i, %i.ba
  %i.bf = select i1 %i.be, i1 %i.bd, i1 false
  br i1 %i.bf, label %_ZNK2cv8MatShapeixEm.exit.i, label %._crit_edge.i, !llvm.loop !136

bb.q:                                             ; preds = %._crit_edge.i
  %.not273.i = icmp slt i32 %.fr.i.i, 1
  br i1 %.not273.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bg = zext nneg i32 %.fr.i.i to i64           ; 2 uses
  %xtraiter739 = and i64 %i.bg, 7                 ; 3 uses
  %i.bh = icmp ult i32 %.fr.i.i, 8
  br i1 %i.bh, label %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter744 = and i64 %i.bg, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i.i

_ZNK2cv8MatShapeixEm.exit.i.i:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %_ZNK2cv8MatShapeixEm.exit.i.i ] ; 9 uses
  %.02129.i.i = phi i64 [ 1, %.lr.ph.i.i.new ], [ %i.cu, %_ZNK2cv8MatShapeixEm.exit.i.i ]
  %niter745 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter745.next.7, %_ZNK2cv8MatShapeixEm.exit.i.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul i64 %.02129.i.i, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !71
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul i64 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !71
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !71
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !71
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul i64 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !71
  %i.cj = zext i32 %i.ci to i64
  %i.ck = mul i64 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !71
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul i64 %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !71
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul i64 %i.cp, %i.ct                    ; 3 uses
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter745.next.7 = add i64 %niter745, 8         ; 2 uses
  %niter745.ncmp.7 = icmp eq i64 %niter745.next.7, %unroll_iter744
  br i1 %niter745.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i.i, !llvm.loop !2

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.i
  %lcmp.mod741.not = icmp eq i64 %xtraiter739, 0
  br i1 %lcmp.mod741.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i, label %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa ]
  %.02129.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i ], [ %i.cu, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod743 = icmp ne i64 %xtraiter739, 0
  call void @llvm.assume(i1 %lcmp.mod743)
  br label %_ZNK2cv8MatShapeixEm.exit.i.i.epil

_ZNK2cv8MatShapeixEm.exit.i.i.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.i.epil ], [ %indvars.iv.i.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader ] ; 2 uses
  %.02129.i.i.epil = phi i64 [ %i.cy, %_ZNK2cv8MatShapeixEm.exit.i.i.epil ], [ %.02129.i.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader ]
  %epil.iter740 = phi i64 [ %epil.iter740.next, %_ZNK2cv8MatShapeixEm.exit.i.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !71
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul i64 %.02129.i.i.epil, %i.cx         ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter740.next = add i64 %epil.iter740, 1   ; 2 uses
  %epil.iter740.cmp.not = icmp eq i64 %epil.iter740.next, %xtraiter739
  br i1 %epil.iter740.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i, label %_ZNK2cv8MatShapeixEm.exit.i.i.epil, !llvm.loop !137

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.i.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa
  %.lcssa626 = phi i64 [ %i.cu, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa ], [ %i.cy, %_ZNK2cv8MatShapeixEm.exit.i.i.epil ]
  %i.cz = shl i64 %.lcssa626, 32
  %i.da = ashr exact i64 %i.cz, 32
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i, %bb.q
  %.021.lcssa.i.i = phi i64 [ 1, %bb.q ], [ %i.da, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i ] ; 3 uses
  %.not.not292.i = icmp sgt i32 %spec.select.i77.fr, %.sroa.0.0.extract.trunc258.i
  %.pre359 = load i32, ptr %i.ai, align 4, !tbaa !75
  %.pre360 = freeze i32 %.pre359                  ; 3 uses
  %narrow.i.i75 = call i32 @llvm.smax.i32(i32 %.pre360, i32 0) ; 4 uses
  br i1 %.not.not292.i, label %.lr.ph.i.preheader, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i
  %.pre362 = call i32 @llvm.smax.i32(i32 %.pre360, i32 1)
  %.pre383 = zext i32 %spec.select.i77.fr to i64
  br label %._crit_edge296.i

.lr.ph.i.preheader:                               ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i
  %.not25.i79 = icmp ugt i32 %spec.select.i77.fr, %narrow.i.i75
  %narrow.i26.i84 = call i32 @llvm.smax.i32(i32 %.pre360, i32 1) ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 9 uses
  %i.dc = zext i32 %spec.select.i77.fr to i64     ; 5 uses
  br i1 %.not25.i79, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader
  %spec.store.select.i76.us = add nsw i32 %spec.select.i77.fr, -1
  %41 = icmp sgt i32 %spec.select.i77.fr, 0
  br i1 %41, label %.split190.us, label %.split.us

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.x
  %.092.in294.i = phi i32 [ %.092295.i, %bb.x ], [ %spec.select.i77.fr, %.lr.ph.i.preheader ] ; 5 uses
  %.093293.i = phi i1 [ %.194.i, %bb.x ], [ false, %.lr.ph.i.preheader ]
  %i.dd = icmp ne i32 %.092.in294.i, 0
  %umin.neg = sext i1 %i.dd to i32
  %i.de = add i32 %.092.in294.i, %umin.neg
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = sub nsw i64 %i.dc, %i.df                ; 2 uses
  %.092295.i = add nsw i32 %.092.in294.i, -1      ; 3 uses
  %spec.store.select.i76 = call i32 @llvm.usub.sat.i32(i32 %.092.in294.i, i32 1) ; 8 uses
  %i.dh = icmp sgt i32 %spec.store.select.i76, -1
  br i1 %i.dh, label %bb.r, label %.split.us

.split.us:                                        ; preds = %.lr.ph.i, %.lr.ph.i.us
  %.us-phi = phi i32 [ %spec.store.select.i76.us, %.lr.ph.i.us ], [ %spec.store.select.i76, %.lr.ph.i ]
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 0, i32 noundef %.us-phi, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__165) #22
  unreachable

bb.r:                                             ; preds = %.lr.ph.i
  %.not.i78 = icmp samesign ugt i32 %spec.store.select.i76, %spec.select.i77.fr
  br i1 %.not.i78, label %.split186.us, label %.preheader.i80

.split186.us:                                     ; preds = %bb.r
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %spec.store.select.i76, i32 noundef %spec.select.i77.fr, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__166) #22
  unreachable

.preheader.i80:                                   ; preds = %bb.r
  %i.di = icmp samesign ult i32 %spec.store.select.i76, %spec.select.i77.fr
  br i1 %i.di, label %.lr.ph.i83, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94

.lr.ph.i83:                                       ; preds = %.preheader.i80
  %i.dj = call i32 @llvm.usub.sat.i32(i32 %narrow.i26.i84, i32 %spec.store.select.i76)
  %i.dk = xor i32 %spec.store.select.i76, -1
  %i.dl = add nsw i32 %spec.select.i77.fr, %i.dk
  %.not33.not.i85 = icmp ugt i32 %i.dj, %i.dl
  br i1 %.not33.not.i85, label %.lr.ph.split.i89, label %bb.s

.lr.ph.split.i89:                                 ; preds = %.lr.ph.i83
  %i.dm = zext nneg i32 %spec.store.select.i76 to i64 ; 2 uses
  %xtraiter746 = and i64 %i.dg, 7                 ; 3 uses
  %i.dn = sub nsw i64 %i.df, %i.dc
  %i.do = icmp ugt i64 %i.dn, -8
  br i1 %i.do, label %_ZNK2cv8MatShapeixEm.exit.i90.epil.preheader, label %.lr.ph.split.i89.new

.lr.ph.split.i89.new:                             ; preds = %.lr.ph.split.i89
  %unroll_iter751 = and i64 %i.dg, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i90

.split190.us:                                     ; preds = %.lr.ph.i.us
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %spec.select.i77.fr, i32 noundef %narrow.i.i75, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__167) #22
  unreachable

_ZNK2cv8MatShapeixEm.exit.i90:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i90, %.lr.ph.split.i89.new
  %indvars.iv.i91 = phi i64 [ %i.dm, %.lr.ph.split.i89.new ], [ %indvars.iv.next.i93.7, %_ZNK2cv8MatShapeixEm.exit.i90 ] ; 9 uses
  %.02129.i92 = phi i64 [ 1, %.lr.ph.split.i89.new ], [ %i.fb, %_ZNK2cv8MatShapeixEm.exit.i90 ]
  %niter752 = phi i64 [ 0, %.lr.ph.split.i89.new ], [ %niter752.next.7, %_ZNK2cv8MatShapeixEm.exit.i90 ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !71
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %.02129.i92, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !71
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !71
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !71
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.ec, %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !71
  %i.el = sext i32 %i.ek to i64
  %i.em = mul i64 %i.eh, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !71
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul i64 %i.em, %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !71
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul i64 %i.er, %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !71
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.ew, %i.fa                    ; 3 uses
  %indvars.iv.next.i93.7 = add nuw nsw i64 %indvars.iv.i91, 8 ; 2 uses
  %niter752.next.7 = add i64 %niter752, 8         ; 2 uses
  %niter752.ncmp.7.not = icmp eq i64 %niter752.next.7, %unroll_iter751
  br i1 %niter752.ncmp.7.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i90, !llvm.loop !2

bb.s:                                             ; preds = %.lr.ph.i83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #22
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86: ; preds = %bb.u
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !25
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i90
  %lcmp.mod748.not = icmp eq i64 %xtraiter746, 0
  br i1 %lcmp.mod748.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94, label %_ZNK2cv8MatShapeixEm.exit.i90.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i90.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94.loopexit.unr-lcssa, %.lr.ph.split.i89
  %indvars.iv.i91.epil.init = phi i64 [ %i.dm, %.lr.ph.split.i89 ], [ %indvars.iv.next.i93.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94.loopexit.unr-lcssa ]
  %.02129.i92.epil.init = phi i64 [ 1, %.lr.ph.split.i89 ], [ %i.fb, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94.loopexit.unr-lcssa ]
  %lcmp.mod750 = icmp ne i64 %xtraiter746, 0
  call void @llvm.assume(i1 %lcmp.mod750)
  br label %_ZNK2cv8MatShapeixEm.exit.i90.epil

_ZNK2cv8MatShapeixEm.exit.i90.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i90.epil, %_ZNK2cv8MatShapeixEm.exit.i90.epil.preheader
  %indvars.iv.i91.epil = phi i64 [ %indvars.iv.i91.epil.init, %_ZNK2cv8MatShapeixEm.exit.i90.epil.preheader ], [ %indvars.iv.next.i93.epil, %_ZNK2cv8MatShapeixEm.exit.i90.epil ] ; 2 uses
  %.02129.i92.epil = phi i64 [ %.02129.i92.epil.init, %_ZNK2cv8MatShapeixEm.exit.i90.epil.preheader ], [ %i.fl, %_ZNK2cv8MatShapeixEm.exit.i90.epil ]
  %epil.iter747 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i90.epil.preheader ], [ %epil.iter747.next, %_ZNK2cv8MatShapeixEm.exit.i90.epil ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i91.epil
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !71
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul i64 %.02129.i92.epil, %i.fk         ; 2 uses
  %indvars.iv.next.i93.epil = add nuw nsw i64 %indvars.iv.i91.epil, 1
  %epil.iter747.next = add i64 %epil.iter747, 1   ; 2 uses
  %epil.iter747.cmp.not = icmp eq i64 %epil.iter747.next, %xtraiter746
  br i1 %epil.iter747.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94, label %_ZNK2cv8MatShapeixEm.exit.i90.epil, !llvm.loop !138

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i90.epil, %.preheader.i80
  %.021.lcssa.i82 = phi i64 [ 1, %.preheader.i80 ], [ %i.fb, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94.loopexit.unr-lcssa ], [ %i.fl, %_ZNK2cv8MatShapeixEm.exit.i90.epil ]
  %.not.i29 = icmp eq i64 %.021.lcssa.i82, %.021.lcssa.i.i ; 2 uses
  br i1 %.093293.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94
  br i1 %.not.i29, label %bb.w, label %._crit_edge296.i

bb.w:                                             ; preds = %bb.v
  %i.fm = icmp eq i32 %.092295.i, 0
  br i1 %i.fm, label %._crit_edge296.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94
  %.194.i = phi i1 [ true, %bb.w ], [ %.not.i29, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit94 ]
  %.not.not.i = icmp sgt i32 %.092295.i, %.sroa.0.0.extract.trunc258.i
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge296.i, !llvm.loop !139

._crit_edge296.i:                                 ; preds = %bb.x, %bb.w, %bb.v, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge
  %.pre-phi = phi i64 [ %.pre383, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge ], [ %i.dc, %bb.v ], [ %i.dc, %bb.w ], [ %i.dc, %bb.x ] ; 2 uses
  %narrow.i26.i63.pre-phi = phi i32 [ %.pre362, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge ], [ %narrow.i26.i84, %bb.v ], [ %narrow.i26.i84, %bb.w ], [ %narrow.i26.i84, %bb.x ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc258.i, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge ], [ %.sroa.0.0.extract.trunc258.i, %bb.x ], [ 0, %bb.w ], [ %.092.in294.i, %bb.v ] ; 5 uses
  %.not25.i = icmp ugt i32 %spec.select.i77.fr, %narrow.i.i75
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 9 uses
  br i1 %.not25.i, label %._crit_edge296.i.split.us, label %._crit_edge296.i.split

._crit_edge296.i.split.us:                        ; preds = %._crit_edge296.i
  %i.fo = icmp eq i32 %.sroa.0.0.i, -1
  %spec.store.select.i.us = select i1 %i.fo, i32 0, i32 %.sroa.0.0.i ; 2 uses
  %i.fp = icmp sgt i32 %spec.store.select.i.us, -1
  br i1 %i.fp, label %bb.y, label %.split221.us

bb.y:                                             ; preds = %._crit_edge296.i.split.us
  %.not.i59.us = icmp samesign ugt i32 %spec.store.select.i.us, %spec.select.i77.fr
  br i1 %.not.i59.us, label %.split224.us, label %.split228.us

._crit_edge296.i.split:                           ; preds = %._crit_edge296.i, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73
  %.sroa.0.1.i = phi i32 [ %i.ia, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73 ], [ %.sroa.0.0.i, %._crit_edge296.i ] ; 9 uses
  %i.fq = icmp eq i32 %.sroa.0.1.i, -1
  %spec.store.select.i = select i1 %i.fq, i32 0, i32 %.sroa.0.1.i ; 6 uses
  %i.fr = icmp sgt i32 %spec.store.select.i, -1
  br i1 %i.fr, label %bb.z, label %.split221.us

.split221.us:                                     ; preds = %._crit_edge296.i.split, %._crit_edge296.i.split.us
  %.us-phi222 = phi i32 [ %.sroa.0.0.i, %._crit_edge296.i.split.us ], [ %.sroa.0.1.i, %._crit_edge296.i.split ]
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 0, i32 noundef %.us-phi222, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__165) #22
  unreachable

bb.z:                                             ; preds = %._crit_edge296.i.split
  %.not.i59 = icmp samesign ugt i32 %spec.store.select.i, %spec.select.i77.fr
  br i1 %.not.i59, label %.split224.us, label %.preheader.i

.split224.us:                                     ; preds = %bb.z, %bb.y
  %.us-phi225 = phi i32 [ %.sroa.0.0.i, %bb.y ], [ %.sroa.0.1.i, %bb.z ]
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %.us-phi225, i32 noundef %spec.select.i77.fr, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__166) #22
  unreachable

.preheader.i:                                     ; preds = %bb.z
  %i.fs = icmp samesign ult i32 %spec.store.select.i, %spec.select.i77.fr
  br i1 %i.fs, label %.lr.ph.i62, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73

.lr.ph.i62:                                       ; preds = %.preheader.i
  %i.ft = call i32 @llvm.usub.sat.i32(i32 %narrow.i26.i63.pre-phi, i32 %spec.store.select.i)
  %i.fu = xor i32 %spec.store.select.i, -1
  %i.fv = add nsw i32 %spec.select.i77.fr, %i.fu
  %.not33.not.i64 = icmp ugt i32 %i.ft, %i.fv
  br i1 %.not33.not.i64, label %.lr.ph.split.i68, label %bb.aa

.lr.ph.split.i68:                                 ; preds = %.lr.ph.i62
  %i.fw = zext nneg i32 %spec.store.select.i to i64 ; 4 uses
  %i.fx = sub nsw i64 %.pre-phi, %i.fw            ; 2 uses
  %xtraiter753 = and i64 %i.fx, 7                 ; 3 uses
  %i.fy = sub nsw i64 %i.fw, %.pre-phi
  %i.fz = icmp ugt i64 %i.fy, -8
  br i1 %i.fz, label %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader, label %.lr.ph.split.i68.new

.lr.ph.split.i68.new:                             ; preds = %.lr.ph.split.i68
  %unroll_iter758 = and i64 %i.fx, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i69

.split228.us:                                     ; preds = %bb.y
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %spec.select.i77.fr, i32 noundef %narrow.i.i75, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__167) #22
  unreachable

_ZNK2cv8MatShapeixEm.exit.i69:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i69, %.lr.ph.split.i68.new
  %indvars.iv.i70 = phi i64 [ %i.fw, %.lr.ph.split.i68.new ], [ %indvars.iv.next.i72.7, %_ZNK2cv8MatShapeixEm.exit.i69 ] ; 9 uses
  %.02129.i71 = phi i64 [ 1, %.lr.ph.split.i68.new ], [ %i.hm, %_ZNK2cv8MatShapeixEm.exit.i69 ]
  %niter759 = phi i64 [ 0, %.lr.ph.split.i68.new ], [ %niter759.next.7, %_ZNK2cv8MatShapeixEm.exit.i69 ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !71
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul i64 %.02129.i71, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !71
  %i.gh = sext i32 %i.gg to i64
  %i.gi = mul i64 %i.gd, %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !71
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul i64 %i.gi, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !71
  %i.gr = sext i32 %i.gq to i64
  %i.gs = mul i64 %i.gn, %i.gr
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !71
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul i64 %i.gs, %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 20
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !71
  %i.hb = sext i32 %i.ha to i64
  %i.hc = mul i64 %i.gx, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !71
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul i64 %i.hc, %i.hg
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 28
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !71
  %i.hl = sext i32 %i.hk to i64
  %i.hm = mul i64 %i.hh, %i.hl                    ; 3 uses
  %indvars.iv.next.i72.7 = add nuw nsw i64 %indvars.iv.i70, 8 ; 2 uses
  %niter759.next.7 = add i64 %niter759, 8         ; 2 uses
  %niter759.ncmp.7 = icmp eq i64 %niter759.next.7, %unroll_iter758
  br i1 %niter759.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i69, !llvm.loop !2

bb.aa:                                            ; preds = %.lr.ph.i62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #22
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hn = landingpad { ptr, i32 }
          cleanup
  %i.ho = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65: ; preds = %bb.ac
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !25
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i69
  %lcmp.mod755.not = icmp eq i64 %xtraiter753, 0
  br i1 %lcmp.mod755.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73, label %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa, %.lr.ph.split.i68
  %indvars.iv.i70.epil.init = phi i64 [ %i.fw, %.lr.ph.split.i68 ], [ %indvars.iv.next.i72.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa ]
  %.02129.i71.epil.init = phi i64 [ 1, %.lr.ph.split.i68 ], [ %i.hm, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa ]
  %lcmp.mod757 = icmp ne i64 %xtraiter753, 0
  call void @llvm.assume(i1 %lcmp.mod757)
  br label %_ZNK2cv8MatShapeixEm.exit.i69.epil

_ZNK2cv8MatShapeixEm.exit.i69.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i69.epil, %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader
  %indvars.iv.i70.epil = phi i64 [ %indvars.iv.i70.epil.init, %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader ], [ %indvars.iv.next.i72.epil, %_ZNK2cv8MatShapeixEm.exit.i69.epil ] ; 2 uses
  %.02129.i71.epil = phi i64 [ %.02129.i71.epil.init, %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader ], [ %i.hw, %_ZNK2cv8MatShapeixEm.exit.i69.epil ]
  %epil.iter754 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader ], [ %epil.iter754.next, %_ZNK2cv8MatShapeixEm.exit.i69.epil ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i70.epil
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !71
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul i64 %.02129.i71.epil, %i.hv         ; 2 uses
  %indvars.iv.next.i72.epil = add nuw nsw i64 %indvars.iv.i70.epil, 1
  %epil.iter754.next = add i64 %epil.iter754, 1   ; 2 uses
  %epil.iter754.cmp.not = icmp eq i64 %epil.iter754.next, %xtraiter753
  br i1 %epil.iter754.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73, label %_ZNK2cv8MatShapeixEm.exit.i69.epil, !llvm.loop !140

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i69.epil, %.preheader.i
  %.021.lcssa.i61 = phi i64 [ 1, %.preheader.i ], [ %i.hm, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa ], [ %i.hw, %_ZNK2cv8MatShapeixEm.exit.i69.epil ]
  %i.hx = icmp ne i64 %.021.lcssa.i61, %.021.lcssa.i.i
  %i.hy = icmp sgt i32 %.sroa.0.1.i, 0
  %i.hz = and i1 %i.hy, %i.hx
  %i.ia = add nsw i32 %.sroa.0.1.i, -1
  br i1 %i.hz, label %._crit_edge296.i.split, label %bb.ad, !llvm.loop !141

bb.ad:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73
  %i.ib = call fastcc noundef i64 @_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii(ptr noundef nonnull align 4 dereferenceable(52) %i.ai, i32 noundef %.sroa.0.1.i, i32 noundef %spec.select.i77.fr)
  %i.ic = icmp eq i64 %i.ib, %.021.lcssa.i.i
  br i1 %i.ic, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv3dnnL25computeShapeByReshapeMaskERKNS_8MatShapeES3_NS_5RangeERS1_, ptr noundef nonnull @.str.6, i32 noundef 109) #22
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.ai:                                            ; preds = %bb.af
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %21, align 8, !tbaa !31   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !25
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %i.id, %bb.ah ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ie, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %common.resume

bb.aj:                                            ; preds = %bb.ad
  %i.ik = icmp sgt i32 %.sroa.0.1.i, -1
  br i1 %i.ik, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %bb.aj, %._crit_edge.i
  %.sroa.0.2269.i = phi i32 [ %.sroa.0.1.i, %bb.aj ], [ %.sroa.0.0.extract.trunc258.i, %._crit_edge.i ] ; 3 uses
  %.not105.i = icmp sgt i32 %.sroa.0.2269.i, %spec.select.i77.fr
  %.not106.i = icmp samesign ugt i32 %spec.select.i77.fr, %narrow.i.i
  %or.cond.i = or i1 %.not106.i, %.not105.i
  br i1 %or.cond.i, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.thread.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cv3dnnL25computeShapeByReshapeMaskERKNS_8MatShapeES3_NS_5RangeERS1_, ptr noundef nonnull @.str.6, i32 noundef 112) #22
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i

bb.ao:                                            ; preds = %bb.al
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = load ptr, ptr %23, align 8, !tbaa !31   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i: ; preds = %bb.ao
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !25
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i, %bb.an
  %.pn107.i = phi { ptr, i32 } [ %i.il, %bb.an ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i ], [ %i.im, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %common.resume

bb.ap:                                            ; preds = %.thread.i
  %.neg.i = add nuw i32 %narrow.i130.i, %narrow.i.i
  %i.is = sub nuw i32 %.neg.i, %spec.select.i77.fr
  %i.it = add i32 %i.is, %.sroa.0.2269.i
  %i.iu = sext i32 %i.it to i64
  call void @_ZN2cv8MatShape6resizeEmi(ptr noundef nonnull align 4 dereferenceable(52) %i.aj, i64 noundef %i.iu, i32 noundef 0)
  %i.iv = call noundef ptr @_ZNK2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %i.ai) ; 3 uses
  %i.iw = call noundef ptr @_ZNK2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %i.ai)
  %i.ix = sext i32 %.sroa.0.2269.i to i64         ; 5 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = call noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %i.aj) ; 2 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iv to i64
  %i.jc = sub i64 %i.ja, %i.jb                    ; 3 uses
  %i.jd = icmp sgt i64 %i.jc, 4
  br i1 %i.jd, label %bb.aq, label %bb.ar, !prof !148

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.iz, ptr align 4 %i.iv, i64 %i.jc, i1 false)
  br label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.je = icmp eq i64 %i.jc, 4
  br i1 %i.je, label %bb.as, label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.jf = load i32, ptr %i.iv, align 4, !tbaa !71
  store i32 %i.jf, ptr %i.iz, align 4, !tbaa !71
  br label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit.i

_ZSt4copyIPKiPiET0_T_S4_S3_.exit.i:               ; preds = %bb.as, %bb.ar, %bb.aq
  %i.jg = call noundef ptr @_ZNK2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %i.ai)
  %i.jh = zext nneg i32 %spec.select.i77.fr to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jh ; 3 uses
  %i.jj = call noundef ptr @_ZNK2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %i.ai)
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %spec.select.i.i
  %i.jl = call noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %i.aj)
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.ix
  %sext109.i = shl nuw nsw i64 %spec.select.i131.i, 2
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %sext109.i ; 2 uses
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = ptrtoint ptr %i.ji to i64
  %i.jq = sub i64 %i.jo, %i.jp                    ; 3 uses
  %i.jr = icmp sgt i64 %i.jq, 4
  br i1 %i.jr, label %bb.at, label %bb.au, !prof !148

bb.at:                                            ; preds = %_ZSt4copyIPKiPiET0_T_S4_S3_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jn, ptr align 4 %i.ji, i64 %i.jq, i1 false)
  br label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit141.i

bb.au:                                            ; preds = %_ZSt4copyIPKiPiET0_T_S4_S3_.exit.i
  %i.js = icmp eq i64 %i.jq, 4
  br i1 %i.js, label %bb.av, label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit141.i

bb.av:                                            ; preds = %bb.au
  %i.jt = load i32, ptr %i.ji, align 4, !tbaa !71
  store i32 %i.jt, ptr %i.jn, align 4, !tbaa !71
  br label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit141.i

_ZSt4copyIPKiPiET0_T_S4_S3_.exit141.i:            ; preds = %bb.av, %bb.au, %bb.at
  %i.ju = icmp sgt i32 %i.al, 0
  br i1 %i.ju, label %.lr.ph304.i, label %._crit_edge305.i

.lr.ph304.i:                                      ; preds = %_ZSt4copyIPKiPiET0_T_S4_S3_.exit141.i
  %i.jv = getelementptr inbounds i8, ptr %i.ag, i64 -40
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %wide.trip.count.i = zext nneg i32 %i.al to i64
  br label %bb.aw

._crit_edge305.i:                                 ; preds = %_ZN2cv8MatShapeixEm.exit.i, %_ZSt4copyIPKiPiET0_T_S4_S3_.exit141.i
  %.078.lcssa.i = phi i32 [ -1, %_ZSt4copyIPKiPiET0_T_S4_S3_.exit141.i ], [ %.1.i, %_ZN2cv8MatShapeixEm.exit.i ] ; 3 uses
  %i.jx = load i32, ptr %i.ai, align 4, !tbaa !75
  %.fr.i142.i = freeze i32 %i.jx                  ; 3 uses
  %.not274.i = icmp slt i32 %.fr.i142.i, 1
  br i1 %.not274.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i, label %.lr.ph.i147.i

.lr.ph.i147.i:                                    ; preds = %._crit_edge305.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 9 uses
  %i.jz = zext nneg i32 %.fr.i142.i to i64        ; 2 uses
  %xtraiter760 = and i64 %i.jz, 7                 ; 3 uses
  %i.ka = icmp ult i32 %.fr.i142.i, 8
  br i1 %i.ka, label %_ZNK2cv8MatShapeixEm.exit.i154.i.epil.preheader, label %.lr.ph.i147.i.new

.lr.ph.i147.i.new:                                ; preds = %.lr.ph.i147.i
  %unroll_iter765 = and i64 %i.jz, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i154.i

_ZNK2cv8MatShapeixEm.exit.i154.i:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i154.i, %.lr.ph.i147.i.new
  %indvars.iv.i155.i = phi i64 [ 0, %.lr.ph.i147.i.new ], [ %indvars.iv.next.i157.i.7, %_ZNK2cv8MatShapeixEm.exit.i154.i ] ; 9 uses
  %.02129.i156.i = phi i64 [ 1, %.lr.ph.i147.i.new ], [ %i.ln, %_ZNK2cv8MatShapeixEm.exit.i154.i ]
  %niter766 = phi i64 [ 0, %.lr.ph.i147.i.new ], [ %niter766.next.7, %_ZNK2cv8MatShapeixEm.exit.i154.i ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !71
  %i.kd = sext i32 %i.kc to i64
  %i.ke = mul i64 %.02129.i156.i, %i.kd
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !71
  %i.ki = sext i32 %i.kh to i64
  %i.kj = mul i64 %i.ke, %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !71
  %i.kn = sext i32 %i.km to i64
  %i.ko = mul i64 %i.kj, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !71
  %i.ks = sext i32 %i.kr to i64
  %i.kt = mul i64 %i.ko, %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !71
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul i64 %i.kt, %i.kx
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 20
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !71
  %i.lc = sext i32 %i.lb to i64
  %i.ld = mul i64 %i.ky, %i.lc
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !71
  %i.lh = sext i32 %i.lg to i64
  %i.li = mul i64 %i.ld, %i.lh
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 28
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !71
  %i.lm = sext i32 %i.ll to i64
  %i.ln = mul i64 %i.li, %i.lm                    ; 3 uses
  %indvars.iv.next.i157.i.7 = add nuw nsw i64 %indvars.iv.i155.i, 8 ; 2 uses
  %niter766.next.7 = add i64 %niter766, 8         ; 2 uses
  %niter766.ncmp.7 = icmp eq i64 %niter766.next.7, %unroll_iter765
  br i1 %niter766.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i154.i, !llvm.loop !2

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i154.i
  %lcmp.mod762.not = icmp eq i64 %xtraiter760, 0
  br i1 %lcmp.mod762.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i, label %_ZNK2cv8MatShapeixEm.exit.i154.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i154.i.epil.preheader:  ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i.loopexit.unr-lcssa, %.lr.ph.i147.i
  %indvars.iv.i155.i.epil.init = phi i64 [ 0, %.lr.ph.i147.i ], [ %indvars.iv.next.i157.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i.loopexit.unr-lcssa ]
  %.02129.i156.i.epil.init = phi i64 [ 1, %.lr.ph.i147.i ], [ %i.ln, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i.loopexit.unr-lcssa ]
  %lcmp.mod764 = icmp ne i64 %xtraiter760, 0
  call void @llvm.assume(i1 %lcmp.mod764)
  br label %_ZNK2cv8MatShapeixEm.exit.i154.i.epil

_ZNK2cv8MatShapeixEm.exit.i154.i.epil:            ; preds = %_ZNK2cv8MatShapeixEm.exit.i154.i.epil, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil.preheader
  %indvars.iv.i155.i.epil = phi i64 [ %indvars.iv.next.i157.i.epil, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil ], [ %indvars.iv.i155.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil.preheader ] ; 2 uses
  %.02129.i156.i.epil = phi i64 [ %i.lr, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil ], [ %.02129.i156.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil.preheader ]
  %epil.iter761 = phi i64 [ %epil.iter761.next, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil.preheader ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i155.i.epil
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !71
  %i.lq = sext i32 %i.lp to i64
  %i.lr = mul i64 %.02129.i156.i.epil, %i.lq      ; 2 uses
  %indvars.iv.next.i157.i.epil = add nuw nsw i64 %indvars.iv.i155.i.epil, 1
  %epil.iter761.next = add i64 %epil.iter761, 1   ; 2 uses
  %epil.iter761.cmp.not = icmp eq i64 %epil.iter761.next, %xtraiter760
  br i1 %epil.iter761.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i, label %_ZNK2cv8MatShapeixEm.exit.i154.i.epil, !llvm.loop !142

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil, %._crit_edge305.i
  %.021.lcssa.i146.i = phi i64 [ 1, %._crit_edge305.i ], [ %i.ln, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i.loopexit.unr-lcssa ], [ %i.lr, %_ZNK2cv8MatShapeixEm.exit.i154.i.epil ] ; 3 uses
  %i.ls = load i32, ptr %i.aj, align 4, !tbaa !75
  %.fr.i159.i = freeze i32 %i.ls                  ; 4 uses
  %.not275.i = icmp slt i32 %.fr.i159.i, 1
  br i1 %.not275.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit175.thread.i, label %.lr.ph.i164.i

.lr.ph.i164.i:                                    ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit158.i
  %i.lt = getelementptr inbounds i8, ptr %i.ag, i64 -40 ; 9 uses
  %i.lu = zext nneg i32 %.fr.i159.i to i64        ; 2 uses
  %xtraiter767 = and i64 %i.lu, 7                 ; 3 uses
  %i.lv = icmp ult i32 %.fr.i159.i, 8
  br i1 %i.lv, label %_ZNK2cv8MatShapeixEm.exit.i171.i.epil.preheader, label %.lr.ph.i164.i.new

.lr.ph.i164.i.new:                                ; preds = %.lr.ph.i164.i
  %unroll_iter772 = and i64 %i.lu, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i171.i

_ZNK2cv8MatShapeixEm.exit.i171.i:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i171.i, %.lr.ph.i164.i.new
  %indvars.iv.i172.i = phi i64 [ 0, %.lr.ph.i164.i.new ], [ %indvars.iv.next.i174.i.7, %_ZNK2cv8MatShapeixEm.exit.i171.i ] ; 9 uses
  %.02129.i173.i = phi i64 [ 1, %.lr.ph.i164.i.new ], [ %i.ni, %_ZNK2cv8MatShapeixEm.exit.i171.i ]
  %niter773 = phi i64 [ 0, %.lr.ph.i164.i.new ], [ %niter773.next.7, %_ZNK2cv8MatShapeixEm.exit.i171.i ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i172.i
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !71
  %i.ly = sext i32 %i.lx to i64
  %i.lz = mul i64 %.02129.i173.i, %i.ly
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i172.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !71
  %i.md = sext i32 %i.mc to i64
  %i.me = mul i64 %i.lz, %i.md
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i172.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !71
  %i.mi = sext i32 %i.mh to i64
  %i.mj = mul i64 %i.me, %i.mi
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i172.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !71
  %i.mn = sext i32 %i.mm to i64
  %i.mo = mul i64 %i.mj, %i.mn
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i172.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !71
end_hunk_0
