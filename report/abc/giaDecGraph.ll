Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph15DecisionDiagram5buildEv:bb.a
  %.not.i.i.i21 = icmp eq ptr %.sroa.041.0.lcssa114, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit20
  %i.dg = sub i64 %.sroa.16.0.lcssa112, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.041.0.lcssa114, i64 noundef %i.dg) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit20, %bb.ac
  ret void

bb.ad:                                            ; preds = %.lr.ph84, %bb.ad
  %.sroa.023.082 = phi ptr [ %i.cm, %.lr.ph84 ], [ %i.dj, %bb.ad ] ; 2 uses
  %i.dh = load i32, ptr %.sroa.023.082, align 4, !tbaa !46
  %i.di = ashr i32 %i.dh, 1
  call void @_ZN8DecGraph15DecisionDiagram7topoRecEiRSt3setIiSt4lessIiESaIiEERSt6vectorIiS4_E(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.di, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.co)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.023.082, i64 4 ; 2 uses
  %.not58 = icmp eq ptr %i.dj, %i.cn
  br i1 %.not58, label %._crit_edge85.loopexit, label %bb.ad
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.9", align 16    ; 15 uses
  %3 = alloca %"class.std::vector.9", align 8     ; 15 uses
  %4 = alloca %"class.std::set.70", align 8       ; 7 uses
  %5 = alloca %"class.std::vector.9", align 8     ; 10 uses
  %6 = alloca %"class.std::vector.30", align 8    ; 9 uses
  %7 = alloca %"class.DecGraph::TruthTable", align 8 ; 6 uses
  %8 = alloca %"class.std::set.70", align 8       ; 10 uses
  %9 = alloca %"class.std::vector.9", align 16    ; 5 uses
  %10 = alloca %"class.std::vector.24", align 8   ; 5 uses
  %11 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %12 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %13 = alloca %"class.std::set.70", align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !67     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %bb.c, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !92

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37
  %.pre = load ptr, ptr %1, align 8, !tbaa !93    ; 2 uses
  %.pre823 = load ptr, ptr %i.a, align 8, !tbaa !93
  %.pre839 = ptrtoint ptr %.pre823 to i64
  %.pre840 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi841 = phi i64 [ %.pre840, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre839, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 7 uses
  store ptr %i.j, ptr %2, align 16, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %i.m, align 16, !tbaa !75
  %i.n = sub i64 %.pre-phi, %.pre-phi841          ; 4 uses
  %i.o = icmp sgt i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !94

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.n, i1 false)
  %.pre824 = load i32, ptr %i.i, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.n, 4
  %.pre825 = load i32, ptr %i.i, align 4, !tbaa !46 ; 3 uses
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %.pre825, ptr %i.j, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.q = phi i32 [ %.pre824, %bb.d ], [ %.pre825, %bb.e ], [ %.pre825, %bb.f ]
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %i.k, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.t = icmp eq i64 %.pre-phi, %.pre-phi841
  br i1 %i.t, label %._crit_edge784, label %.lr.ph783

.lr.ph783:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.v = sext i32 %i.q to i64
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i8, ptr %i.x, align 8, !tbaa !49    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not.i.i.i.i196 = icmp eq i8 %i.y, 0           ; 3 uses
  %i.ao = zext i8 %i.y to i64                     ; 6 uses
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 15 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = zext i8 %i.y to i64                     ; 2 uses
  %i.bh = add nsw i64 %i.ap, -4                   ; 2 uses
  %i.bi = lshr exact i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check1190 = icmp ult i64 %i.bh, 28
  %n.vec1192 = and i64 %i.bj, 9223372036854775800 ; 3 uses
  %i.bk = shl i64 %n.vec1192, 2
  %cmp.n1198 = icmp eq i64 %i.bj, %n.vec1192
  %min.iters.check1175 = icmp ult i8 %i.y, 8
  %n.vec1178 = and i64 %i.ao, 248                 ; 3 uses
  %cmp.n1187 = icmp eq i64 %n.vec1178, %i.ao
  %xtraiter1262 = and i64 %i.ao, 1
  %lcmp.mod1263.not = icmp eq i64 %xtraiter1262, 0
  %i.bl = add nsw i64 %i.ao, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph783, %_ZNSt6vectorIiSaIiEED2Ev.exit368
  %i.bm = phi ptr [ %i.r, %.lr.ph783 ], [ %i.atg, %_ZNSt6vectorIiSaIiEED2Ev.exit368 ] ; 2 uses
  %i.bn = phi ptr [ %i.j, %.lr.ph783 ], [ %i.atf, %_ZNSt6vectorIiSaIiEED2Ev.exit368 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZN8DecGraph15DecisionDiagram17computeSupportSetERSt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.9") align 8 %3, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN8DecGraph19getInvalidVariablesEPNS_15DecisionDiagramERSt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::set.70") align 8 %4, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.bo = load ptr, ptr %i.z, align 8, !tbaa !66
  %i.bp = load ptr, ptr %3, align 8, !tbaa !67
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = trunc i64 %i.bt to i32                  ; 8 uses
  %i.bv = call i32 @llvm.smax.i32(i32 %i.bu, i32 2)
  %i.bw = call i32 @llvm.umin.i32(i32 %i.bv, i32 4) ; 15 uses
  %i.bx = zext nneg i32 %i.bw to i64              ; 8 uses
  %i.by = icmp ugt i64 %i.bt, %i.bx
  br i1 %i.by, label %.lr.ph.i, label %bb.bl

.lr.ph.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.bz = sub i32 %i.bu, %i.bw                    ; 7 uses
  %i.ca = icmp sgt i32 %i.bw, %i.bz               ; 2 uses
  br i1 %i.ca, label %bb.h, label %.lr.ph.i114

bb.h:                                             ; preds = %.lr.ph.i
  %.not14.i = icmp slt i32 %i.bz, 1
  br i1 %.not14.i, label %.lr.ph.i122.loopexit, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %bb.h, %.lr.ph.i
  %.pre-phi845 = phi i32 [ %i.bz, %.lr.ph.i ], [ %i.bw, %bb.h ] ; 5 uses
  %i.cb = phi i32 [ %i.bw, %.lr.ph.i ], [ %i.bz, %bb.h ] ; 3 uses
  %i.cc = add nsw i32 %i.cb, -1
  %xtraiter = and i32 %i.cb, 3                    ; 3 uses
  %i.cd = icmp ult i32 %i.cc, 3
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.i114.new

.lr.ph.i114.new:                                  ; preds = %.lr.ph.i114
  %unroll_iter = and i32 %i.cb, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i114.new
  %.016.i = phi i32 [ 1, %.lr.ph.i114.new ], [ %i.cs, %bb.i ]
  %.sroa.010.015.i = phi i32 [ 1, %.lr.ph.i114.new ], [ %i.ct, %bb.i ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph.i114.new ], [ %niter.next.3, %bb.i ]
  %i.ce = add nsw i32 %.pre-phi845, %.sroa.010.015.i
  %i.cf = mul nsw i32 %i.ce, %.016.i
  %i.cg = sdiv i32 %i.cf, %.sroa.010.015.i
  %i.ch = add nuw nsw i32 %.sroa.010.015.i, 1     ; 2 uses
  %i.ci = add nsw i32 %.pre-phi845, %i.ch
  %i.cj = mul nsw i32 %i.ci, %i.cg
  %i.ck = sdiv i32 %i.cj, %i.ch
  %i.cl = add nuw nsw i32 %.sroa.010.015.i, 2     ; 2 uses
  %i.cm = add nsw i32 %.pre-phi845, %i.cl
  %i.cn = mul nsw i32 %i.cm, %i.ck
  %i.co = sdiv i32 %i.cn, %i.cl
  %i.cp = add nuw nsw i32 %.sroa.010.015.i, 3     ; 2 uses
  %i.cq = add nsw i32 %.pre-phi845, %i.cp
  %i.cr = mul nsw i32 %i.cq, %i.co
  %i.cs = sdiv i32 %i.cr, %i.cp                   ; 3 uses
  %i.ct = add nuw nsw i32 %.sroa.010.015.i, 4     ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa, label %bb.i

_ZN8DecGraph11Combination5countEv.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8DecGraph11Combination5countEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa, %.lr.ph.i114
  %.016.i.epil.init = phi i32 [ 1, %.lr.ph.i114 ], [ %i.cs, %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa ]
  %.sroa.010.015.i.epil.init = phi i32 [ 1, %.lr.ph.i114 ], [ %i.ct, %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa ]
  %lcmp.mod1245 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1245)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.016.i.epil = phi i32 [ %.016.i.epil.init, %.epil.preheader ], [ %i.cw, %bb.j ]
  %.sroa.010.015.i.epil = phi i32 [ %.sroa.010.015.i.epil.init, %.epil.preheader ], [ %i.cx, %bb.j ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.cu = add nsw i32 %.pre-phi845, %.sroa.010.015.i.epil
  %i.cv = mul nsw i32 %i.cu, %.016.i.epil
  %i.cw = sdiv i32 %i.cv, %.sroa.010.015.i.epil   ; 2 uses
  %i.cx = add nuw nsw i32 %.sroa.010.015.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8DecGraph11Combination5countEv.exit, label %bb.j, !llvm.loop !411

_ZN8DecGraph11Combination5countEv.exit:           ; preds = %bb.j, %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.cs, %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa ], [ %i.cw, %bb.j ] ; 3 uses
  %i.cy = icmp slt i32 %.lcssa, 0
  br i1 %i.cy, label %bb.k, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %_ZN8DecGraph11Combination5countEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN8DecGraph11Combination5countEv.exit
  %i.cz = zext nneg i32 %.lcssa to i64
  %.not.i.i.i.i116 = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i.i.i116, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %.lr.ph.i122.loopexit

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.lr.ph.i122

.lr.ph.i122.loopexit:                             ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.da = phi i64 [ %i.cz, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ 1, %bb.h ] ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 2                ; 3 uses
  %i.dc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #37 ; 5 uses
  store ptr %i.dc, ptr %5, align 8, !tbaa !67
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dd, ptr %i.aa, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dc, i8 0, i64 %i.db, i1 false), !tbaa !46
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.loopexit, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.df = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.dc, %.lr.ph.i122.loopexit ] ; 13 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.de, %.lr.ph.i122.loopexit ] ; 5 uses
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  br i1 %i.ca, label %bb.l, label %.lr.ph.i130

bb.l:                                             ; preds = %.lr.ph.i122
  %.not14.i129 = icmp slt i32 %i.bz, 1
  br i1 %.not14.i129, label %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %bb.l, %.lr.ph.i122
  %.pre-phi843 = phi i32 [ %i.bz, %.lr.ph.i122 ], [ %i.bw, %bb.l ] ; 5 uses
  %i.dg = phi i32 [ %i.bw, %.lr.ph.i122 ], [ %i.bz, %bb.l ] ; 3 uses
  %i.dh = add nsw i32 %i.dg, -1
  %xtraiter1247 = and i32 %i.dg, 3                ; 3 uses
  %i.di = icmp ult i32 %i.dh, 3
  br i1 %i.di, label %.epil.preheader1246, label %.lr.ph.i130.new

.lr.ph.i130.new:                                  ; preds = %.lr.ph.i130
  %unroll_iter1252 = and i32 %i.dg, 2147483644
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i130.new
  %.016.i131 = phi i32 [ 1, %.lr.ph.i130.new ], [ %i.dx, %bb.m ]
  %.sroa.010.015.i132 = phi i32 [ 1, %.lr.ph.i130.new ], [ %i.dy, %bb.m ] ; 6 uses
  %niter1253 = phi i32 [ 0, %.lr.ph.i130.new ], [ %niter1253.next.3, %bb.m ]
  %i.dj = add nsw i32 %.pre-phi843, %.sroa.010.015.i132
  %i.dk = mul nsw i32 %i.dj, %.016.i131
  %i.dl = sdiv i32 %i.dk, %.sroa.010.015.i132
  %i.dm = add nuw nsw i32 %.sroa.010.015.i132, 1  ; 2 uses
  %i.dn = add nsw i32 %.pre-phi843, %i.dm
  %i.do = mul nsw i32 %i.dn, %i.dl
  %i.dp = sdiv i32 %i.do, %i.dm
  %i.dq = add nuw nsw i32 %.sroa.010.015.i132, 2  ; 2 uses
  %i.dr = add nsw i32 %.pre-phi843, %i.dq
  %i.ds = mul nsw i32 %i.dr, %i.dp
  %i.dt = sdiv i32 %i.ds, %i.dq
  %i.du = add nuw nsw i32 %.sroa.010.015.i132, 3  ; 2 uses
  %i.dv = add nsw i32 %.pre-phi843, %i.du
  %i.dw = mul nsw i32 %i.dv, %i.dt
  %i.dx = sdiv i32 %i.dw, %i.du                   ; 3 uses
  %i.dy = add nuw nsw i32 %.sroa.010.015.i132, 4  ; 2 uses
  %niter1253.next.3 = add nuw i32 %niter1253, 4   ; 2 uses
  %niter1253.ncmp.3 = icmp eq i32 %niter1253.next.3, %unroll_iter1252
  br i1 %niter1253.ncmp.3, label %_ZN8DecGraph11Combination5countEv.exit135.unr-lcssa, label %bb.m

_ZN8DecGraph11Combination5countEv.exit135.unr-lcssa: ; preds = %bb.m
  %lcmp.mod1249.not = icmp eq i32 %xtraiter1247, 0
  br i1 %lcmp.mod1249.not, label %_ZN8DecGraph11Combination5countEv.exit135, label %.epil.preheader1246

.epil.preheader1246:                              ; preds = %_ZN8DecGraph11Combination5countEv.exit135.unr-lcssa, %.lr.ph.i130
  %.016.i131.epil.init = phi i32 [ 1, %.lr.ph.i130 ], [ %i.dx, %_ZN8DecGraph11Combination5countEv.exit135.unr-lcssa ]
  %.sroa.010.015.i132.epil.init = phi i32 [ 1, %.lr.ph.i130 ], [ %i.dy, %_ZN8DecGraph11Combination5countEv.exit135.unr-lcssa ]
  %lcmp.mod1251 = icmp ne i32 %xtraiter1247, 0
  call void @llvm.assume(i1 %lcmp.mod1251)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader1246
  %.016.i131.epil = phi i32 [ %.016.i131.epil.init, %.epil.preheader1246 ], [ %i.eb, %bb.n ]
  %.sroa.010.015.i132.epil = phi i32 [ %.sroa.010.015.i132.epil.init, %.epil.preheader1246 ], [ %i.ec, %bb.n ] ; 3 uses
  %epil.iter1248 = phi i32 [ 0, %.epil.preheader1246 ], [ %epil.iter1248.next, %bb.n ]
  %i.dz = add nsw i32 %.pre-phi843, %.sroa.010.015.i132.epil
  %i.ea = mul nsw i32 %i.dz, %.016.i131.epil
  %i.eb = sdiv i32 %i.ea, %.sroa.010.015.i132.epil ; 2 uses
  %i.ec = add nuw nsw i32 %.sroa.010.015.i132.epil, 1
  %epil.iter1248.next = add i32 %epil.iter1248, 1 ; 2 uses
  %epil.iter1248.cmp.not = icmp eq i32 %epil.iter1248.next, %xtraiter1247
  br i1 %epil.iter1248.cmp.not, label %_ZN8DecGraph11Combination5countEv.exit135, label %bb.n, !llvm.loop !412

_ZN8DecGraph11Combination5countEv.exit135:        ; preds = %bb.n, %_ZN8DecGraph11Combination5countEv.exit135.unr-lcssa
  %.lcssa1212 = phi i32 [ %i.dx, %_ZN8DecGraph11Combination5countEv.exit135.unr-lcssa ], [ %i.eb, %bb.n ] ; 3 uses
  %i.ed = icmp slt i32 %.lcssa1212, 0
  br i1 %i.ed, label %bb.o, label %_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i

bb.o:                                             ; preds = %_ZN8DecGraph11Combination5countEv.exit135
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i: ; preds = %_ZN8DecGraph11Combination5countEv.exit135
  %i.ee = zext nneg i32 %.lcssa1212 to i64
  %.not.i.i.i.i136 = icmp eq i32 %.lcssa1212, 0
  br i1 %.not.i.i.i.i136, label %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i, label %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i

_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i: ; preds = %_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %_ZN8DecGraph11CombinationD2Ev.exit139

_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  %i.ef = phi i64 [ %i.ee, %_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i ], [ 1, %bb.l ] ; 6 uses
  %i.eg = mul nuw nsw i64 %i.ef, 48
  %i.eh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #37 ; 6 uses
  store ptr %i.eh, ptr %6, align 8, !tbaa !98
  %i.ei = getelementptr inbounds nuw [48 x i8], ptr %i.eh, i64 %i.ef
  store ptr %i.ei, ptr %i.ac, align 8, !tbaa !448
  %i.ej = add nsw i64 %i.ef, -1
  %xtraiter1254 = and i64 %i.ef, 3                ; 2 uses
  %lcmp.mod1255.not = icmp eq i64 %xtraiter1254, 0
  br i1 %lcmp.mod1255.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.prol ], [ %i.eh, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.prol ], [ %i.ef, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !104
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ek, ptr %i.em, align 8, !tbaa !136
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.en, align 8, !tbaa !105
  %i.eo = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1254
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !413

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i
  %.lcssa1213.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.eh, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.ef, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.prol ]
  %i.eq = icmp ult i64 %i.ej, 3
  br i1 %i.eq, label %_ZN8DecGraph11CombinationD2Ev.exit139, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.er, ptr %i.es, align 8, !tbaa !104
  %i.et = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.er, ptr %i.et, align 8, !tbaa !136
  %i.eu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.eu, align 8, !tbaa !105
  %i.ev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !104
  %i.ey = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !136
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ez, align 8, !tbaa !105
  %i.fa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i8 0, i64 24, i1 false)
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !104
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !136
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.fe, align 8, !tbaa !105
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.fg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false)
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !104
  %i.fi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !136
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.fj, align 8, !tbaa !105
  %i.fk = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i137.3 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i.i.i137.3, label %_ZN8DecGraph11CombinationD2Ev.exit139, label %.lr.ph.i.i.i.i.i, !llvm.loop !414

_ZN8DecGraph11CombinationD2Ev.exit139:            ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i
  %i.fm = phi ptr [ null, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i ], [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i ], [ %.lcssa1213.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fl, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !449
  %.not647723 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not647723, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit, %_ZN8DecGraph11CombinationD2Ev.exit139
  %i.fn = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.fo = ptrtoint ptr %i.df to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 8 uses
  %.not.i.i.i.i140 = icmp eq ptr %.0.i.i.i.i.i.i.i, %i.df ; 3 uses
  br i1 %.not.i.i.i.i140, label %.thread638, label %bb.p

.thread638:                                       ; preds = %._crit_edge
  %i.fq = getelementptr inbounds nuw i8, ptr null, i64 %i.fp
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit143

bb.p:                                             ; preds = %._crit_edge
  %i.fr = icmp ugt i64 %i.fp, 9223372036854775804
  br i1 %i.fr, label %bb.q, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i142, !prof !92

bb.q:                                             ; preds = %bb.p
  call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i142:   ; preds = %bb.p
  %i.fs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #37 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fp ; 3 uses
  %i.fu = icmp samesign ugt i64 %i.fp, 4
  br i1 %i.fu, label %bb.r, label %bb.s, !prof !95

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.df, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit143

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i142
  %i.fv = icmp eq i64 %i.fp, 4
  br i1 %i.fv, label %bb.t, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit143

bb.t:                                             ; preds = %bb.s
  %i.fw = load i32, ptr %i.df, align 4, !tbaa !46
  store i32 %i.fw, ptr %i.fs, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit143

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit143:             ; preds = %.thread638, %bb.r, %bb.s, %bb.t
  %i.fx = phi ptr [ %i.ft, %bb.r ], [ %i.ft, %bb.s ], [ %i.ft, %bb.t ], [ %i.fq, %.thread638 ]
  %i.fy = phi ptr [ %i.fs, %bb.r ], [ %i.fs, %bb.s ], [ %i.fs, %bb.t ], [ null, %.thread638 ] ; 4 uses
  %i.fz = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ga = ptrtoint ptr %i.fm to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 48                ; 3 uses
  %.not648725 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.fm
  br i1 %.not648725, label %._crit_edge728, label %.lr.ph727.preheader

.lr.ph727.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit143
  %xtraiter1256 = and i64 %i.gc, 3                ; 3 uses
  %i.gd = icmp ult i64 %i.gc, 4
  br i1 %i.gd, label %.lr.ph727.epil.preheader, label %.lr.ph727.preheader.new

.lr.ph727.preheader.new:                          ; preds = %.lr.ph727.preheader
  %unroll_iter1260 = and i64 %i.gc, -4
  br label %.lr.ph727

.lr.ph:                                           ; preds = %_ZN8DecGraph11CombinationD2Ev.exit139, %_ZN8DecGraph10TruthTableD2Ev.exit
  %.sroa.0592.0724 = phi ptr [ %i.hr, %_ZN8DecGraph10TruthTableD2Ev.exit ], [ %i.bn, %_ZN8DecGraph11CombinationD2Ev.exit139 ] ; 2 uses
  %i.ge = load i32, ptr %.sroa.0592.0724, align 4, !tbaa !46
  %i.gf = sext i32 %i.ge to i64
  %i.gg = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.gh = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.gf ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !36 ; 9 uses
  store ptr %i.gj, ptr %7, align 8, !tbaa !36
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45 ; 6 uses
  store ptr %i.gl, ptr %i.ae, align 8, !tbaa !45
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !49
  store i8 %i.gn, ptr %i.af, align 8, !tbaa !49
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !37
  store i64 %i.gp, ptr %i.ag, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.thread, label %bb.u

_ZN8DecGraph10TruthTableC2ERKS0_.exit.thread:     ; preds = %.lr.ph
  call void @_ZN8DecGraph15doDecompositionENS_10TruthTableEiRSt6vectorIiSaIiEES4_RS1_ISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_EESaISF_EE(ptr noundef nonnull align 8 %7, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

bb.u:                                             ; preds = %.lr.ph
  %i.gq = load i32, ptr %i.gl, align 4, !tbaa !46
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gl, align 4, !tbaa !46
  call void @_ZN8DecGraph15doDecompositionENS_10TruthTableEiRSt6vectorIiSaIiEES4_RS1_ISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_EESaISF_EE(ptr noundef nonnull align 8 %7, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.gs = load i32, ptr %i.gl, align 4, !tbaa !46 ; 2 uses
end_hunk_0
