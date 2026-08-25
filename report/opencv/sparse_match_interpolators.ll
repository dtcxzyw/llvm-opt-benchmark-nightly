Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sparse_match_interpolators?download=true
inline.NumInlined: 1684
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv8ximgproc19RICInterpolatorImpl18findSupportMatchesERSt6vectorIiSaIiEEiiRNS_3MatES7_S5_RS2_IfSaIfEE:bb.a
  %.not.i.i.i.i76 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i76, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !326
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.e, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.bm = load ptr, ptr %10, align 8, !tbaa !324  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv8ximgproc7MinHeapD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !326
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #29
  br label %_ZN2cv8ximgproc7MinHeapD2Ev.exit

_ZN2cv8ximgproc7MinHeapD2Ev.exit:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

bb.h:                                             ; preds = %.lr.ph115, %.critedge.thread
  %indvars.iv117 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next118, %.critedge.thread ] ; 3 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !317
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv117
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !88 ; 2 uses
  %i.bw = mul nsw i64 %indvars.iv117, %i.at       ; 2 uses
  %i.bx = load ptr, ptr %6, align 8, !tbaa !317
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %7, align 8, !tbaa !324
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  store i32 0, ptr %i.ak, align 4, !tbaa !472
  br i1 %.not6.i.i.i.i77, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit81, label %.lr.ph.i.i.i.i78.preheader

.lr.ph.i.i.i.i78.preheader:                       ; preds = %bb.h
  br i1 %min.iters.check143, label %.lr.ph.i.i.i.i78.preheader153, label %vector.body146

vector.body146:                                   ; preds = %.lr.ph.i.i.i.i78.preheader, %vector.body146
  %index147 = phi i64 [ %index.next149, %vector.body146 ], [ 0, %.lr.ph.i.i.i.i78.preheader ] ; 2 uses
  %i.cb = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %.sroa.092.0, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %next.gep148, align 4, !tbaa !27
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.cc, align 4, !tbaa !27
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next149, %n.vec145
  br i1 %i.cd, label %middle.block150, label %vector.body146, !llvm.loop !477

middle.block150:                                  ; preds = %vector.body146
  br i1 %cmp.n151, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit81, label %.lr.ph.i.i.i.i78.preheader153

.lr.ph.i.i.i.i78.preheader153:                    ; preds = %.lr.ph.i.i.i.i78.preheader, %middle.block150
  %.07.i.i.i.i79.ph = phi ptr [ %.sroa.092.0, %.lr.ph.i.i.i.i78.preheader ], [ %i.bb, %middle.block150 ]
  br label %.lr.ph.i.i.i.i78

.lr.ph.i.i.i.i78:                                 ; preds = %.lr.ph.i.i.i.i78.preheader153, %.lr.ph.i.i.i.i78
  %.07.i.i.i.i79 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i78 ], [ %.07.i.i.i.i79.ph, %.lr.ph.i.i.i.i78.preheader153 ] ; 2 uses
  store float f0x7F7FFFFF, ptr %.07.i.i.i.i79, align 4, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i79, i64 4 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.ce, %.0.i.i.i.i.i
  br i1 %.not.i.i.i.i80, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit81, label %.lr.ph.i.i.i.i78, !llvm.loop !478

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit81: ; preds = %.lr.ph.i.i.i.i78, %middle.block150, %bb.h
  %i.cf = sitofp i32 %i.bv to float
  %i.cg = invoke noundef i32 @_ZN2cv8ximgproc7MinHeap4PushEff(ptr noundef nonnull align 8 dereferenceable(56) %10, float noundef %i.cf, float noundef 0.000000e+00)
          to label %bb.i unwind label %.body      ; 0 uses

bb.i:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit81
  %i.ch = sext i32 %i.bv to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.092.0, i64 %i.ch
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !27
  %i.cj = load i32, ptr %i.ak, align 4, !tbaa !472 ; 2 uses
  %.not110 = icmp eq i32 %i.cj, 0
  br i1 %.not110, label %.critedge.thread, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !324 ; 9 uses
  %i.ck = load ptr, ptr %10, align 8, !tbaa !324  ; 7 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph112, %.critedge
  %i.cl = phi i32 [ %i.cj, %.lr.ph112 ], [ %i.gq, %.critedge ] ; 2 uses
  %.053111 = phi i32 [ 0, %.lr.ph112 ], [ %.1, %.critedge ] ; 3 uses
  %i.cm = load float, ptr %.pre.i, align 4, !tbaa !27 ; 3 uses
  %i.cn = load float, ptr %i.ck, align 4, !tbaa !27
  %i.co = add nsw i32 %i.cl, -1                   ; 4 uses
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27
  store float %i.cr, ptr %i.ck, align 4, !tbaa !27
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.cp
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !27 ; 3 uses
  store float %i.ct, ptr %.pre.i, align 4, !tbaa !27
  store i32 %i.co, ptr %i.ak, align 4, !tbaa !472
  %i.cu = load float, ptr %i.ck, align 4, !tbaa !27
  %i.cv = icmp sgt i32 %i.cl, 2
  br i1 %i.cv, label %.lr.ph.i, label %_ZN2cv8ximgproc7MinHeap3PopEPf.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.027.i = phi i32 [ %i.dq, %bb.m ], [ 1, %bb.j ] ; 5 uses
  %.02126.i = phi i32 [ %.1.i, %bb.m ], [ 0, %bb.j ] ; 2 uses
  %i.cw = add nsw i32 %.027.i, 1                  ; 3 uses
  %i.cx = icmp slt i32 %i.cw, %i.co
  br i1 %i.cx, label %bb.k, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.phi.trans.insert31.i = sext i32 %.027.i to i64 ; 2 uses
  %.phi.trans.insert32.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.phi.trans.insert31.i
  %.pre33.i = load float, ptr %.phi.trans.insert32.i, align 4, !tbaa !27
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !27 ; 2 uses
  %i.db = sext i32 %.027.i to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !27 ; 2 uses
  %i.de = fcmp olt float %i.da, %i.dd             ; 2 uses
  %spec.select.i = select i1 %i.de, i32 %i.cw, i32 %.027.i ; 2 uses
  %i.df = select i1 %i.de, float %i.da, float %i.dd
  %.pre34.i = sext i32 %spec.select.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph._crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert31.i, %.lr.ph._crit_edge.i ], [ %.pre34.i, %bb.k ] ; 2 uses
  %i.dg = phi float [ %.pre33.i, %.lr.ph._crit_edge.i ], [ %i.df, %bb.k ]
  %.1.i = phi i32 [ %.027.i, %.lr.ph._crit_edge.i ], [ %spec.select.i, %bb.k ] ; 3 uses
  %i.dh = fcmp olt float %i.ct, %i.dg
  br i1 %i.dh, label %._crit_edge.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.pre-phi.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.pre-phi.i
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !27
  %i.dl = sext i32 %.02126.i to i64               ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dl
  store float %i.dk, ptr %i.dm, align 4, !tbaa !27
  %i.dn = load float, ptr %i.di, align 4, !tbaa !27
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.dl
  store float %i.dn, ptr %i.do, align 4, !tbaa !27
  %i.dp = shl i32 %.1.i, 1
  %i.dq = or disjoint i32 %i.dp, 1                ; 2 uses
  %i.dr = icmp slt i32 %i.dq, %i.co
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !479

._crit_edge.loopexit.i:                           ; preds = %bb.m, %bb.l
  %.021.lcssa.ph.i = phi i32 [ %.1.i, %bb.m ], [ %.02126.i, %bb.l ]
  %i.ds = sext i32 %.021.lcssa.ph.i to i64
  br label %_ZN2cv8ximgproc7MinHeap3PopEPf.exit

_ZN2cv8ximgproc7MinHeap3PopEPf.exit:              ; preds = %bb.j, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ 0, %bb.j ], [ %i.ds, %._crit_edge.loopexit.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.021.lcssa.i
  store float %i.cu, ptr %i.dt, align 4, !tbaa !27
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.021.lcssa.i
  store float %i.ct, ptr %i.du, align 4, !tbaa !27
  %i.dv = fptosi float %i.cn to i32               ; 2 uses
  %i.dw = sext i32 %i.dv to i64                   ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.092.0, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !27
  %i.dz = fcmp ogt float %i.cm, %i.dy
  br i1 %i.dz, label %.critedge, label %bb.n, !llvm.loop !480

.body:                                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit81
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %.sroa.092.0, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIfSaIfEED2Ev.exit88, label %.body.thread

bb.n:                                             ; preds = %_ZN2cv8ximgproc7MinHeap3PopEPf.exit
  %i.eb = sext i32 %.053111 to i64                ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.eb
  store i32 %i.dv, ptr %i.ec, align 4, !tbaa !88
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.eb
  store float %i.cm, ptr %i.ed, align 4, !tbaa !27
  %i.ee = add nsw i32 %.053111, 1                 ; 4 uses
  %.not67 = icmp slt i32 %i.ee, %3
  br i1 %.not67, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %bb.n
  %i.ef = load i32, ptr %i.al, align 4, !tbaa !127 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i32, ptr %i.ak, align 4
  %i.eh = load i32, ptr %i.am, align 4, !tbaa !63
  %i.ei = icmp slt i32 %i.eh, 2
  %i.ej = load ptr, ptr %i.an, align 8, !tbaa !87
  %i.ek = load i32, ptr %i.as, align 8
  %i.el = load ptr, ptr %10, align 8              ; 3 uses
  %i.em = load ptr, ptr %.phi.trans.insert.i, align 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.ef to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %11 = phi i32 [ %.promoted, %.lr.ph ], [ %12, %bb.w ] ; 5 uses
  %i.en = load i64, ptr %i.ao, align 8
  %i.eo = mul i64 %i.en, %i.dw
  %.sink.idx.i = select i1 %i.ei, i64 0, i64 %i.eo
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sink.idx.i
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !88 ; 3 uses
  %i.er = icmp sgt i32 %i.eq, -1
  br i1 %i.er, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.es = load i32, ptr %i.ap, align 4, !tbaa !63
  %i.et = icmp slt i32 %i.es, 2
  %i.eu = load ptr, ptr %i.aq, align 8, !tbaa !87
  %i.ev = load i64, ptr %i.ar, align 8
  %i.ew = mul i64 %i.ev, %i.dw
  %.sink.idx.i82 = select i1 %i.et, i64 0, i64 %i.ew
  %.sink.i83 = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sink.idx.i82
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sink.i83, i64 %indvars.iv
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !27
  %i.ez = fadd float %i.cm, %i.ey                 ; 5 uses
  %i.fa = zext nneg i32 %i.eq to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.092.0, i64 %i.fa ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !27
  %i.fd = fcmp olt float %i.ez, %i.fc
  br i1 %i.fd, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp slt i32 %11, %i.ek
  br i1 %.not.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc86 unwind label %bb.v

.noexc86:                                         ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -211, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8ximgproc7MinHeap4PushEff, ptr noundef nonnull @.str.1, i32 noundef 1034) #30
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc86
  unreachable

bb.t:                                             ; preds = %.noexc86
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !42
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body.thread

bb.u:                                             ; preds = %bb.q
  %i.fk = uitofp nneg i32 %i.eq to float
  %i.fl = sext i32 %11 to i64                     ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fl
  store float %i.fk, ptr %i.fm, align 4, !tbaa !27
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fl ; 2 uses
  store float %i.ez, ptr %i.fn, align 4, !tbaa !27
  %i.fo = add nsw i32 %11, 1                      ; 2 uses
  store i32 %i.fo, ptr %i.ak, align 4, !tbaa !472
  %i.fp = add nsw i32 %11, -1
  %i.fq = sdiv i32 %i.fp, 2                       ; 2 uses
  %i.fr = sext i32 %i.fq to i64                   ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fr ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !27 ; 2 uses
  %i.fu = fcmp olt float %i.ez, %i.ft
  br i1 %i.fu, label %.lr.ph.i85, label %_ZN2cv8ximgproc7MinHeap4PushEff.exit

.lr.ph.i85:                                       ; preds = %bb.u, %.lr.ph.i85
  %i.fv = phi float [ %i.gn, %.lr.ph.i85 ], [ %i.ft, %bb.u ]
  %i.fw = phi ptr [ %i.gm, %.lr.ph.i85 ], [ %i.fs, %bb.u ]
  %i.fx = phi i64 [ %i.gl, %.lr.ph.i85 ], [ %i.fr, %bb.u ]
  %i.fy = phi i32 [ %i.gk, %.lr.ph.i85 ], [ %i.fq, %bb.u ] ; 2 uses
  %i.fz = phi float [ %i.gi, %.lr.ph.i85 ], [ %i.ez, %bb.u ]
  %i.ga = phi ptr [ %i.gh, %.lr.ph.i85 ], [ %i.fn, %bb.u ]
  %i.gb = phi i64 [ %i.gg, %.lr.ph.i85 ], [ %i.fl, %bb.u ]
  store float %i.fv, ptr %i.ga, align 4, !tbaa !27
  store float %i.fz, ptr %i.fw, align 4, !tbaa !27
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fx ; 2 uses
  %i.ge = load float, ptr %i.gc, align 4, !tbaa !27
  %i.gf = load float, ptr %i.gd, align 4, !tbaa !27
  store float %i.gf, ptr %i.gc, align 4, !tbaa !27
  store float %i.ge, ptr %i.gd, align 4, !tbaa !27
  %i.gg = sext i32 %i.fy to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.gg ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !27 ; 2 uses
  %i.gj = add nsw i32 %i.fy, -1
  %i.gk = sdiv i32 %i.gj, 2                       ; 2 uses
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.gl ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !27 ; 2 uses
  %i.go = fcmp olt float %i.gi, %i.gn
  br i1 %i.go, label %.lr.ph.i85, label %_ZN2cv8ximgproc7MinHeap4PushEff.exit, !llvm.loop !481

_ZN2cv8ximgproc7MinHeap4PushEff.exit:             ; preds = %.lr.ph.i85, %bb.u
  store float %i.ez, ptr %i.fb, align 4, !tbaa !27
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.w:                                             ; preds = %_ZN2cv8ximgproc7MinHeap4PushEff.exit, %bb.p
  %12 = phi i32 [ %i.fo, %_ZN2cv8ximgproc7MinHeap4PushEff.exit ], [ %11, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !482

.critedge:                                        ; preds = %bb.o, %bb.w, %.preheader, %_ZN2cv8ximgproc7MinHeap3PopEPf.exit
  %.1 = phi i32 [ %.053111, %_ZN2cv8ximgproc7MinHeap3PopEPf.exit ], [ %i.ee, %.preheader ], [ %i.ee, %bb.w ], [ %i.ee, %bb.o ]
  %i.gq = load i32, ptr %i.ak, align 4, !tbaa !472 ; 2 uses
  %.not = icmp eq i32 %i.gq, 0
  br i1 %.not, label %.critedge.thread, label %bb.j

.critedge.thread:                                 ; preds = %.critedge, %bb.n, %bb.i
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge, label %bb.h, !llvm.loop !483

.body.thread:                                     ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body
  %.pn.pn.pn106 = phi { ptr, i32 } [ %i.ea, %.body ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gp, %bb.v ]
  %i.gr = ptrtoint ptr %.sroa.15.0 to i64
  %i.gs = ptrtoint ptr %.sroa.092.0 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.092.0, i64 noundef %i.gt) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

_ZNSt6vectorIfSaIfEED2Ev.exit88:                  ; preds = %.body.thread, %.body, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.g ], [ %i.ea, %.body ], [ %.pn.pn.pn106, %.body.thread ]
  call void @_ZN2cv8ximgproc7MinHeapD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv8ximgproc19RICInterpolatorImpl15PropagateModelsEiRNS_3MatERSt6vectorIiSaIiEERS4_IfSaIfEEiRKS4_INS0_11SparseMatchESaISB_EES3_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(208) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.std::vector.27", align 8   ; 13 uses
  %12 = alloca %"class.cv::Range", align 4        ; 6 uses
  %13 = alloca %"class.std::function", align 8    ; 11 uses
  %14 = alloca %"class.cv::Range", align 4        ; 6 uses
  %15 = alloca %"class.std::function", align 8    ; 11 uses
  %16 = alloca %"class.cv::Range", align 4        ; 6 uses
  %17 = alloca %"class.std::function", align 8    ; 9 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !88
  store i32 %5, ptr %i.b, align 4, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.d = load i32, ptr %i.c, align 8, !tbaa !288
  tail call void @srand(i32 noundef 0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef %1, i32 noundef %5, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef 1, i32 noundef %5, i32 noundef 4)
          to label %bb.b unwind label %bb.z

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 1, i32 noundef 6, i32 noundef 5)
          to label %bb.c unwind label %bb.aa

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.d, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #30
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = shl nuw nsw i64 %i.e, 2
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc32 unwind label %bb.ab  ; 4 uses

.noexc32:                                         ; preds = %bb.e
  store ptr %i.h, ptr %11, align 8, !tbaa !324
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !326
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !27
  %i.k = getelementptr i8, ptr %i.h, i64 4        ; 3 uses
  %i.l = add nsw i64 %i.e, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc32
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc32
  %.0.i.i.i.i.i = phi ptr [ %i.n, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc32 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.o, align 8, !tbaa !327
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store i32 0, ptr %12, align 4, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %1, ptr %i.p, align 4, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %i.r = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %bb.i unwind label %bb.f       ; 9 uses

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !316  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %.body unwind label %bb.h      ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %7, ptr %i.r, align 16, !tbaa !484
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %8, ptr %.sroa.561.0..sroa_idx, align 8, !tbaa !484
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %11, ptr %.sroa.662.0..sroa_idx, align 16, !tbaa !485
  %.sroa.763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %0, ptr %.sroa.763.0..sroa_idx, align 8, !tbaa !312
  %.sroa.864.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %3, ptr %.sroa.864.0..sroa_idx, align 16, !tbaa !487
  %.sroa.965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.b, ptr %.sroa.965.0..sroa_idx, align 8, !tbaa !468
  %.sroa.1066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %4, ptr %.sroa.1066.0..sroa_idx, align 16, !tbaa !485
  %.sroa.1167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %6, ptr %.sroa.1167.0..sroa_idx, align 8, !tbaa !489
  store ptr %i.r, ptr %13, align 8, !tbaa !261
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc19RICInterpolatorImpl15PropagateModelsEiRNS0_3MatERSt6vectorIiSaIiEERS9_IfSaIfEEiRKS9_INS5_11SparseMatchESaISG_EES8_E3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.x, align 8, !tbaa !313
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc19RICInterpolatorImpl15PropagateModelsEiRNS0_3MatERSt6vectorIiSaIiEERS9_IfSaIfEEiRKS9_INS5_11SparseMatchESaISG_EES8_E3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation", ptr %i.q, align 8, !tbaa !316
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef align 8 %13)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !316  ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store i32 0, ptr %14, align 4, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.d, ptr %i.ac, align 4, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %i.ae = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28
          to label %bb.p unwind label %bb.m       ; 13 uses

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !316 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i33, label %.body35, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %.body35 unwind label %bb.o    ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #31
end_hunk_0
