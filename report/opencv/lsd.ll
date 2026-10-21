Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lsd?download=true
inline.NumInlined: 937
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv23LineSegmentDetectorImpl11region_growERKNS_6Point_IiEERSt6vectorINS0_11RegionPointESaIS6_EERdRKd:bb.a
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.r, ptr %.sroa.6117.0..sroa_idx, align 8, !tbaa !113
  %.sroa.8120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %i.ac, ptr %.sroa.8120.0..sroa_idx, align 8, !tbaa !87
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %i.am, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE5clearEv.exit
  %i.aq = ptrtoint ptr %i.d to i64
  %i.ar = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775776
  br i1 %i.at, label %bb.d, label %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.au = ashr exact i64 %i.as, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 288230376151711743)
  %i.ay = select i1 %i.aw, i64 288230376151711743, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 5
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #22 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 6 uses
  store i32 %i.e, ptr %i.bb, align 8, !tbaa !73
  %.sroa.5114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.g, ptr %.sroa.5114.0..sroa_idx115, align 4, !tbaa !73
  %.sroa.6117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.r, ptr %.sroa.6117.0..sroa_idx118, align 8, !tbaa !113
  %.sroa.8120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store double %i.ac, ptr %.sroa.8120.0..sroa_idx121, align 8, !tbaa !87
  %.sroa.9.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store double %i.am, ptr %.sroa.9.0..sroa_idx123, align 8, !tbaa !87
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.e, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.a, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.not.i17.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !104
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.bg) #23
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ba, ptr %2, align 8, !tbaa !103
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !105
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bh, ptr %i.an, align 8, !tbaa !104
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bi = load double, ptr %3, align 8, !tbaa !87 ; 2 uses
  %i.bj = tail call double @cos(double noundef %i.bi) #24
  %i.bk = tail call double @sin(double noundef %i.bi) #24
  store i8 1, ptr %i.r, align 1, !tbaa !57
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !103   ; 2 uses
  %.not151 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not151, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit
  %i.bn = fptrunc double %i.bk to float
  %i.bo = fptrunc double %i.bj to float
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 432
  br label %bb.g

._crit_edge150:                                   ; preds = %._crit_edge142, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit
  ret void

bb.g:                                             ; preds = %.lr.ph149, %._crit_edge142
  %i.bt = phi ptr [ %i.bm, %.lr.ph149 ], [ %i.cn, %._crit_edge142 ] ; 2 uses
  %i.bu = phi ptr [ %i.bl, %.lr.ph149 ], [ %i.co, %._crit_edge142 ]
  %.0148 = phi float [ %i.bo, %.lr.ph149 ], [ %.1.lcssa, %._crit_edge142 ] ; 2 uses
  %.059147 = phi i64 [ 0, %.lr.ph149 ], [ %i.cp, %._crit_edge142 ] ; 2 uses
  %.060146 = phi float [ %i.bn, %.lr.ph149 ], [ %.161.lcssa, %._crit_edge142 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %.059147 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !178 ; 2 uses
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1) ; 2 uses
  %i.by = add i32 %i.bw, 1
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !91
  %i.ca = add i32 %i.bz, -1
  %.sroa.speculated102 = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.by) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !179 ; 2 uses
  %i.cd = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1) ; 2 uses
  %.sroa.speculated97 = add nsw i32 %i.cd, -1
  %i.ce = add nsw i32 %i.cc, 1
  %i.cf = load i32, ptr %i.bq, align 4, !tbaa !92
  %i.cg = add nsw i32 %i.cf, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.ce) ; 2 uses
  %.not136 = icmp sgt i32 %.sroa.speculated97, %.sroa.speculated
  %.sroa.speculated107 = add nsw i32 %i.bx, -1
  %.not64130 = icmp sgt i32 %.sroa.speculated107, %.sroa.speculated102
  %or.cond172 = select i1 %.not136, i1 true, i1 %.not64130
  br i1 %or.cond172, label %._crit_edge142, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ch = zext nneg i32 %i.bx to i64
  %i.ci = add nsw i64 %i.ch, -1
  %i.cj = add nuw i32 %.sroa.speculated102, 1
  %i.ck = zext nneg i32 %i.cd to i64
  %i.cl = add nsw i64 %i.ck, -1
  %i.cm = zext nneg i32 %.sroa.speculated to i64
  %wide.trip.count = zext i32 %i.cj to i64
  br label %.lr.ph

._crit_edge142.loopexit152:                       ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !105
  %.pre157 = load ptr, ptr %2, align 8, !tbaa !103
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit152, %bb.g
  %i.cn = phi ptr [ %i.bt, %bb.g ], [ %.pre157, %._crit_edge142.loopexit152 ] ; 2 uses
  %i.co = phi ptr [ %i.bu, %bb.g ], [ %.pre, %._crit_edge142.loopexit152 ] ; 2 uses
  %.161.lcssa = phi float [ %.060146, %bb.g ], [ %.363, %._crit_edge142.loopexit152 ]
  %.1.lcssa = phi float [ %.0148, %bb.g ], [ %.3, %._crit_edge142.loopexit152 ]
  %i.cp = add nuw i64 %.059147, 1                 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 5
  %i.cu = icmp ult i64 %i.cp, %i.ct
  br i1 %i.cu, label %bb.g, label %._crit_edge150, !llvm.loop !173

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv154 = phi i64 [ %i.cl, %.lr.ph.preheader ], [ %indvars.iv.next155, %._crit_edge ] ; 8 uses
  %.1139 = phi float [ %.0148, %.lr.ph.preheader ], [ %.3, %._crit_edge ]
  %.161137 = phi float [ %.060146, %.lr.ph.preheader ], [ %.363, %._crit_edge ]
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.cw = load i64, ptr %i.m, align 8, !tbaa !60
  %i.cx = mul i64 %i.cw, %indvars.iv154
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.da = load i64, ptr %i.x, align 8, !tbaa !60
  %i.db = mul i64 %i.da, %indvars.iv154
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db
  %i.dd = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.de = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.df = mul i64 %i.de, %indvars.iv154
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df
  %i.dh = trunc nuw nsw i64 %indvars.iv154 to i32 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %.not.not = icmp slt i64 %indvars.iv154, %i.cm
  br i1 %.not.not, label %.lr.ph, label %._crit_edge142.loopexit152, !llvm.loop !174

bb.h:                                             ; preds = %.lr.ph, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread
  %indvars.iv = phi i64 [ %i.ci, %.lr.ph ], [ %indvars.iv.next, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 7 uses
  %.2134 = phi float [ %.1139, %.lr.ph ], [ %.3, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 5 uses
  %.262131 = phi float [ %.161137, %.lr.ph ], [ %.363, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %i.cy, i64 %indvars.iv ; 4 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !57
  %.not65 = icmp ne i8 %i.dj, 1
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.dl = or i32 %i.dk, %i.dh
  %or.cond.not.i = icmp sgt i32 %i.dl, -1
  %or.cond = and i1 %or.cond.not.i, %.not65
  br i1 %or.cond, label %bb.i, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.dm = load i32, ptr %i.br, align 4, !tbaa !72
  %i.dn = sext i32 %i.dm to i64
  %.not.i75 = icmp slt i64 %indvars.iv, %i.dn
  %i.do = load i32, ptr %i.bs, align 8
  %i.dp = sext i32 %i.do to i64
  %.not28.i = icmp slt i64 %indvars.iv154, %i.dp
  %or.cond.i = select i1 %.not.i75, i1 %.not28.i, i1 false
  br i1 %or.cond.i, label %bb.j, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.dq = load i32, ptr %i.s, align 4, !tbaa !67
  %i.dr = icmp slt i32 %i.dq, 2
  %i.ds = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.dt = load i64, ptr %i.x, align 8
  %i.du = mul i64 %i.dt, %indvars.iv154
  %.sink.idx.i.i = select i1 %i.dr, i64 0, i64 %i.du
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sink.idx.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !87 ; 2 uses
  %i.dx = fcmp oeq double %i.dw, -1.024000e+03
  br i1 %i.dx, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dy = load double, ptr %3, align 8, !tbaa !87
  %i.dz = fsub double %i.dy, %i.dw                ; 3 uses
  %i.ea = fcmp olt double %i.dz, 0.000000e+00
  %i.eb = fneg double %i.dz
  %.0.i = select i1 %i.ea, double %i.eb, double %i.dz ; 3 uses
  %i.ec = fcmp ogt double %.0.i, f0x4012D97C7F3321D2
  br i1 %i.ec, label %bb.l, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ed = fadd double %.0.i, f0xC01921FB54442D18  ; 3 uses
  %i.ee = fcmp olt double %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.m, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.ef = fneg double %i.ed
  br label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.1.i = phi double [ %i.ef, %bb.m ], [ %i.ed, %bb.l ], [ %.0.i, %bb.k ]
  %i.eg = load double, ptr %4, align 8, !tbaa !87
  %i.eh = fcmp ugt double %.1.i, %i.eg
  br i1 %i.eh, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv ; 2 uses
  store i8 1, ptr %i.di, align 1, !tbaa !57
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !87 ; 2 uses
  %i.el = load double, ptr %i.ei, align 8, !tbaa !87 ; 2 uses
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !105 ; 8 uses
  %i.en = load ptr, ptr %i.an, align 8, !tbaa !104
  %.not.i76 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.dk, ptr %i.em, align 8, !tbaa !73
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %i.dh, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !73
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.di, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !113
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store double %i.el, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !87
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store double %i.ek, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !87
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store ptr %i.eo, ptr %i.b, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83

bb.p:                                             ; preds = %bb.n
  %i.ep = load ptr, ptr %2, align 8, !tbaa !103   ; 4 uses
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 5 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775776
  br i1 %i.et, label %bb.q, label %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77: ; preds = %bb.p
  %i.eu = ashr exact i64 %i.es, 5                 ; 3 uses
  %.sroa.speculated.i.i.i78 = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i78, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 288230376151711743)
  %i.ey = select i1 %i.ew, i64 288230376151711743, i64 %i.ex ; 3 uses
  %.not.i.i.i79 = icmp ne i64 %i.ey, 0
  tail call void @llvm.assume(i1 %.not.i.i.i79)
  %i.ez = shl nuw nsw i64 %i.ey, 5
  %i.fa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #22 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 6 uses
  store i32 %i.dk, ptr %i.fb, align 8, !tbaa !73
  %.sroa.5.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 %i.dh, ptr %.sroa.5.0..sroa_idx86, align 4, !tbaa !73
  %.sroa.6.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.di, ptr %.sroa.6.0..sroa_idx88, align 8, !tbaa !113
  %.sroa.7.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store double %i.el, ptr %.sroa.7.0..sroa_idx90, align 8, !tbaa !87
  %.sroa.8.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store double %i.ek, ptr %.sroa.8.0..sroa_idx92, align 8, !tbaa !87
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.r, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80

bb.r:                                             ; preds = %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 8 %i.ep, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80: ; preds = %bb.r, %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %.not.i17.i.i81 = icmp eq ptr %i.ep, null
  br i1 %.not.i17.i.i81, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80
  %i.fe = load ptr, ptr %i.an, align 8, !tbaa !104
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.er
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.fg) #23
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82: ; preds = %bb.s, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80
  store ptr %i.fa, ptr %2, align 8, !tbaa !103
  store ptr %i.fd, ptr %i.b, align 8, !tbaa !105
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.fa, i64 %i.ey
  store ptr %i.fh, ptr %i.an, align 8, !tbaa !104
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83: ; preds = %bb.o, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82
  %i.fi = load double, ptr %i.ei, align 8, !tbaa !87
  %i.fj = fptrunc double %i.fi to float           ; 2 uses
  %i.fk = tail call noundef float @cosf(float noundef %i.fj) #24
  %i.fl = fadd float %.2134, %i.fk                ; 2 uses
  %i.fm = tail call noundef float @sinf(float noundef %i.fj) #24
  %i.fn = fadd float %.262131, %i.fm              ; 2 uses
  %i.fo = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.fn, float noundef %i.fl)
  %i.fp = fpext float %i.fo to double
  %i.fq = fmul double %i.fp, f0x3F91DF46A2529D39
  store double %i.fq, ptr %3, align 8, !tbaa !87
  br label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread: ; preds = %bb.j, %bb.i, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit, %bb.h
  %.363 = phi float [ %i.fn, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83 ], [ %.262131, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit ], [ %.262131, %bb.h ], [ %.262131, %bb.j ], [ %.262131, %bb.i ] ; 3 uses
  %.3 = phi float [ %i.fl, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83 ], [ %.2134, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit ], [ %.2134, %bb.h ], [ %.2134, %bb.j ], [ %.2134, %bb.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !175
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv23LineSegmentDetectorImpl11region2rectERKSt6vectorINS0_11RegionPointESaIS2_EEdddRNS0_4rectE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2, double noundef %3, double noundef %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  store double %2, ptr %i.a, align 8, !tbaa !87
  store double %3, ptr %i.b, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !103    ; 5 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 5                   ; 2 uses
  %i.l = icmp eq i64 %i.j, 32
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.k, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.m = and i64 %i.j, 32
  %lcmp.mod.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.08496.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.unr-lcssa ]
  %.08595.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.08595.epil.init ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !87 ; 2 uses
  %i.q = load <2 x i32>, ptr %i.n, align 8, !tbaa !73
  %i.r = sitofp <2 x i32> %i.q to <2 x double>
  %i.s = insertelement <2 x double> poison, double %i.p, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %.epil.init)
  %i.v = fadd double %.08496.epil.init, %i.p
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa137 = phi <2 x double> [ %i.ap, %._crit_edge.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ]
  %.lcssa = phi double [ %i.aq, %._crit_edge.unr-lcssa ], [ %i.v, %.lr.ph.epil.preheader ] ; 2 uses
  %i.w = fcmp ogt double %.lcssa, 0.000000e+00
  br i1 %i.w, label %bb.d, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.08496 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ]
  %.08595 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 3 uses
  %i.x = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.08595 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !87 ; 2 uses
  %i.ab = load <2 x i32>, ptr %i.y, align 8, !tbaa !73
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>
  %i.ad = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ae, <2 x double> %i.x)
  %i.ag = fadd double %.08496, %i.aa
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.08595 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !87 ; 2 uses
  %i.al = load <2 x i32>, ptr %i.ai, align 8, !tbaa !73
  %i.am = sitofp <2 x i32> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ao, <2 x double> %i.af) ; 3 uses
  %i.aq = fadd double %i.ag, %i.ak                ; 3 uses
  %i.ar = add nuw i64 %.08595, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !180

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv23LineSegmentDetectorImpl11region2rectERKSt6vectorINS0_11RegionPointESaIS2_EEdddRNS0_4rectE, ptr noundef nonnull @.str.1, i32 noundef 670) #25
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.thread
  unreachable

bb.c:                                             ; preds = %._crit_edge.thread
end_hunk_0
