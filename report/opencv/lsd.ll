Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lsd?download=true
inline.NumInlined: 937
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv7MatExprD2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23LineSegmentDetectorImpl11region_growERKNS_6Point_IiEERSt6vectorINS0_11RegionPointESaIS6_EERdRKd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !114    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv23LineSegmentDetectorImpl11RegionPointES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv23LineSegmentDetectorImpl11RegionPointES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !118
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv23LineSegmentDetectorImpl11RegionPointES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = phi ptr [ %i.c, %bb.a ], [ %i.a, %_ZSt8_DestroyIPN2cv23LineSegmentDetectorImpl11RegionPointES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 8 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !148    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !150  ; 2 uses
  %.sroa.038.0.copyload = load i64, ptr %1, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73
  %i.j = icmp slt i32 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = ashr i64 %.sroa.038.0.copyload, 32       ; 2 uses
  %i.p = mul i64 %i.n, %i.o
  %.sink.idx.i = select i1 %i.j, i64 0, i64 %i.p
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink.idx.i
  %sext.i = shl i64 %.sroa.038.0.copyload, 32     ; 2 uses
  %i.q = ashr exact i64 %sext.i, 32
  %i.r = getelementptr inbounds i8, ptr %.sink.i, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !73
  %i.u = icmp slt i32 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = mul i64 %i.y, %i.o
  %.sink.idx.i66 = select i1 %i.u, i64 0, i64 %i.z
  %.sink.i67 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink.idx.i66
  %i.aa = ashr exact i64 %sext.i, 29
  %i.ab = getelementptr inbounds i8, ptr %.sink.i67, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !99 ; 3 uses
  store double %i.ac, ptr %3, align 8, !tbaa !99
  %.sroa.0.0.copyload = load i64, ptr %1, align 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.af = icmp slt i32 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = ashr i64 %.sroa.0.0.copyload, 32
  %i.al = mul i64 %i.aj, %i.ak
  %.sink.idx.i69 = select i1 %i.af, i64 0, i64 %i.al
  %.sink.i70 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sink.idx.i69
  %sext.i71 = shl i64 %.sroa.0.0.copyload, 32
  %i.am = ashr exact i64 %sext.i71, 29
  %i.an = getelementptr inbounds i8, ptr %.sink.i70, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !99 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !117
  %.not.i = icmp eq ptr %i.d, %i.aq
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE5clearEv.exit
  store i32 %i.e, ptr %i.d, align 8, !tbaa !81
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.g, ptr %.sroa.5114.0..sroa_idx, align 4, !tbaa !81
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.r, ptr %.sroa.6117.0..sroa_idx, align 8, !tbaa !151
  %.sroa.8120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %i.ac, ptr %.sroa.8120.0..sroa_idx, align 8, !tbaa !99
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %i.ao, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !118
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE5clearEv.exit
  %i.as = ptrtoint ptr %i.d to i64
  %i.at = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775776
  br i1 %i.av, label %bb.d, label %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.aw = ashr exact i64 %i.au, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 288230376151711743)
  %i.ba = select i1 %i.ay, i64 288230376151711743, i64 %i.az ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 5
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #22 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 6 uses
  store i32 %i.e, ptr %i.bd, align 8, !tbaa !81
  %.sroa.5114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %i.g, ptr %.sroa.5114.0..sroa_idx115, align 4, !tbaa !81
  %.sroa.6117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.r, ptr %.sroa.6117.0..sroa_idx118, align 8, !tbaa !151
  %.sroa.8120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store double %i.ac, ptr %.sroa.8120.0..sroa_idx121, align 8, !tbaa !99
  %.sroa.9.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store double %i.ao, ptr %.sroa.9.0..sroa_idx123, align 8, !tbaa !99
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.e, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.a, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.not.i17.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.bi) #23
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bc, ptr %2, align 8, !tbaa !114
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !118
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bj, ptr %i.ap, align 8, !tbaa !117
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bk = load double, ptr %3, align 8, !tbaa !99 ; 2 uses
  %i.bl = tail call double @cos(double noundef %i.bk) #24
  %i.bm = tail call double @sin(double noundef %i.bk) #24
  store i8 1, ptr %i.r, align 1, !tbaa !58
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !118 ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %.not151 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not151, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit
  %i.bp = fptrunc double %i.bm to float
  %i.bq = fptrunc double %i.bl to float
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 432
  br label %bb.g

._crit_edge150:                                   ; preds = %._crit_edge142, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit
  ret void

bb.g:                                             ; preds = %.lr.ph149, %._crit_edge142
  %i.bv = phi ptr [ %i.bo, %.lr.ph149 ], [ %i.cp, %._crit_edge142 ] ; 2 uses
  %i.bw = phi ptr [ %i.bn, %.lr.ph149 ], [ %i.cq, %._crit_edge142 ]
  %.0148 = phi float [ %i.bq, %.lr.ph149 ], [ %.1.lcssa, %._crit_edge142 ] ; 2 uses
  %.059147 = phi i64 [ 0, %.lr.ph149 ], [ %i.cr, %._crit_edge142 ] ; 2 uses
  %.060146 = phi float [ %i.bp, %.lr.ph149 ], [ %.161.lcssa, %._crit_edge142 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.059147 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !152 ; 2 uses
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.by, i32 1) ; 2 uses
  %i.ca = add i32 %i.by, 1
  %i.cb = load i32, ptr %i.br, align 8, !tbaa !103
  %i.cc = add i32 %i.cb, -1
  %.sroa.speculated102 = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.ca) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !154 ; 2 uses
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 1) ; 2 uses
  %.sroa.speculated97 = add nsw i32 %i.cf, -1
  %i.cg = add nsw i32 %i.ce, 1
  %i.ch = load i32, ptr %i.bs, align 4, !tbaa !104
  %i.ci = add nsw i32 %i.ch, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cg) ; 2 uses
  %.not136 = icmp sgt i32 %.sroa.speculated97, %.sroa.speculated
  %.sroa.speculated107 = add nsw i32 %i.bz, -1
  %.not64130 = icmp sgt i32 %.sroa.speculated107, %.sroa.speculated102
  %or.cond172 = select i1 %.not136, i1 true, i1 %.not64130
  br i1 %or.cond172, label %._crit_edge142, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.cj = zext nneg i32 %i.bz to i64
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = add nuw i32 %.sroa.speculated102, 1
  %i.cm = zext nneg i32 %i.cf to i64
  %i.cn = add nsw i64 %i.cm, -1
  %i.co = zext nneg i32 %.sroa.speculated to i64
  %wide.trip.count = zext i32 %i.cl to i64
  br label %.lr.ph

._crit_edge142.loopexit152:                       ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !118
  %.pre157 = load ptr, ptr %2, align 8, !tbaa !114
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit152, %bb.g
  %i.cp = phi ptr [ %i.bv, %bb.g ], [ %.pre157, %._crit_edge142.loopexit152 ] ; 2 uses
  %i.cq = phi ptr [ %i.bw, %bb.g ], [ %.pre, %._crit_edge142.loopexit152 ] ; 2 uses
  %.161.lcssa = phi float [ %.060146, %bb.g ], [ %.363, %._crit_edge142.loopexit152 ]
  %.1.lcssa = phi float [ %.0148, %bb.g ], [ %.3, %._crit_edge142.loopexit152 ]
  %i.cr = add nuw i64 %.059147, 1                 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 5
  %i.cw = icmp ult i64 %i.cr, %i.cv
  br i1 %i.cw, label %bb.g, label %._crit_edge150, !llvm.loop !155

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv154 = phi i64 [ %i.cn, %.lr.ph.preheader ], [ %indvars.iv.next155, %._crit_edge ] ; 8 uses
  %.1139 = phi float [ %.0148, %.lr.ph.preheader ], [ %.3, %._crit_edge ]
  %.161137 = phi float [ %.060146, %.lr.ph.preheader ], [ %.363, %._crit_edge ]
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.cy = load i64, ptr %i.m, align 8, !tbaa !62
  %i.cz = mul i64 %i.cy, %indvars.iv154
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  %i.db = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.dc = load i64, ptr %i.x, align 8, !tbaa !62
  %i.dd = mul i64 %i.dc, %indvars.iv154
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd
  %i.df = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.dg = load i64, ptr %i.ai, align 8, !tbaa !62
  %i.dh = mul i64 %i.dg, %indvars.iv154
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh
  %i.dj = trunc nuw nsw i64 %indvars.iv154 to i32 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %.not.not = icmp slt i64 %indvars.iv154, %i.co
  br i1 %.not.not, label %.lr.ph, label %._crit_edge142.loopexit152, !llvm.loop !156

bb.h:                                             ; preds = %.lr.ph, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread
  %indvars.iv = phi i64 [ %i.ck, %.lr.ph ], [ %indvars.iv.next, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 7 uses
  %.2134 = phi float [ %.1139, %.lr.ph ], [ %.3, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 5 uses
  %.262131 = phi float [ %.161137, %.lr.ph ], [ %.363, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 5 uses
  %i.dk = getelementptr inbounds i8, ptr %i.da, i64 %indvars.iv ; 4 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !58
  %.not65 = icmp ne i8 %i.dl, 1
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.dn = or i32 %i.dm, %i.dj
  %or.cond.not.i = icmp sgt i32 %i.dn, -1
  %or.cond = and i1 %or.cond.not.i, %.not65
  br i1 %or.cond, label %bb.i, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.do = load i32, ptr %i.bt, align 4, !tbaa !79
  %i.dp = sext i32 %i.do to i64
  %.not.i75 = icmp slt i64 %indvars.iv, %i.dp
  %i.dq = load i32, ptr %i.bu, align 8
  %i.dr = sext i32 %i.dq to i64
  %.not28.i = icmp slt i64 %indvars.iv154, %i.dr
  %or.cond.i = select i1 %.not.i75, i1 %.not28.i, i1 false
  br i1 %or.cond.i, label %bb.j, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ds = load i32, ptr %i.s, align 4, !tbaa !73
  %i.dt = icmp slt i32 %i.ds, 2
  %i.du = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.dv = load i64, ptr %i.x, align 8
  %i.dw = mul i64 %i.dv, %indvars.iv154
  %.sink.idx.i.i = select i1 %i.dt, i64 0, i64 %i.dw
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sink.idx.i.i
  %i.dx = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !99 ; 2 uses
  %i.dz = fcmp oeq double %i.dy, -1.024000e+03
  br i1 %i.dz, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ea = load double, ptr %3, align 8, !tbaa !99
  %i.eb = fsub double %i.ea, %i.dy                ; 3 uses
  %i.ec = fcmp olt double %i.eb, 0.000000e+00
  %i.ed = fneg double %i.eb
  %.0.i = select i1 %i.ec, double %i.ed, double %i.eb ; 3 uses
  %i.ee = fcmp ogt double %.0.i, f0x4012D97C7F3321D2
  br i1 %i.ee, label %bb.l, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ef = fadd double %.0.i, f0xC01921FB54442D18  ; 3 uses
  %i.eg = fcmp olt double %i.ef, 0.000000e+00
  br i1 %i.eg, label %bb.m, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.eh = fneg double %i.ef
  br label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.1.i = phi double [ %i.eh, %bb.m ], [ %i.ef, %bb.l ], [ %.0.i, %bb.k ]
  %i.ei = load double, ptr %4, align 8, !tbaa !99
  %i.ej = fcmp ugt double %.1.i, %i.ei
  br i1 %i.ej, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.de, i64 %indvars.iv ; 2 uses
  store i8 1, ptr %i.dk, align 1, !tbaa !58
  %i.el = getelementptr inbounds [8 x i8], ptr %i.di, i64 %indvars.iv
  %i.em = load double, ptr %i.el, align 8, !tbaa !99 ; 2 uses
  %i.en = load double, ptr %i.ek, align 8, !tbaa !99 ; 2 uses
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !118 ; 8 uses
  %i.ep = load ptr, ptr %i.ap, align 8, !tbaa !117
  %.not.i76 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.dm, ptr %i.eo, align 8, !tbaa !81
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 %i.dj, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !81
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.dk, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !151
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store double %i.en, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !99
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store double %i.em, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !99
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store ptr %i.eq, ptr %i.b, align 8, !tbaa !118
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83

bb.p:                                             ; preds = %bb.n
  %i.er = load ptr, ptr %2, align 8, !tbaa !114   ; 4 uses
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 5 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775776
  br i1 %i.ev, label %bb.q, label %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77: ; preds = %bb.p
  %i.ew = ashr exact i64 %i.eu, 5                 ; 3 uses
  %.sroa.speculated.i.i.i78 = tail call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i78, %i.ew ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 288230376151711743)
  %i.fa = select i1 %i.ey, i64 288230376151711743, i64 %i.ez ; 3 uses
  %.not.i.i.i79 = icmp ne i64 %i.fa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i79)
  %i.fb = shl nuw nsw i64 %i.fa, 5
  %i.fc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #22 ; 4 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %i.eu ; 6 uses
  store i32 %i.dm, ptr %i.fd, align 8, !tbaa !81
  %.sroa.5.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %i.dj, ptr %.sroa.5.0..sroa_idx86, align 4, !tbaa !81
  %.sroa.6.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.dk, ptr %.sroa.6.0..sroa_idx88, align 8, !tbaa !151
  %.sroa.7.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store double %i.en, ptr %.sroa.7.0..sroa_idx90, align 8, !tbaa !99
  %.sroa.8.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store double %i.em, ptr %.sroa.8.0..sroa_idx92, align 8, !tbaa !99
  %i.fe = icmp sgt i64 %i.eu, 0
  br i1 %i.fe, label %bb.r, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80

bb.r:                                             ; preds = %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr align 8 %i.er, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80: ; preds = %bb.r, %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %.not.i17.i.i81 = icmp eq ptr %i.er, null
  br i1 %.not.i17.i.i81, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80
  %i.fg = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.fh, %i.et
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.fi) #23
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82: ; preds = %bb.s, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80
  store ptr %i.fc, ptr %2, align 8, !tbaa !114
  store ptr %i.ff, ptr %i.b, align 8, !tbaa !118
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fc, i64 %i.fa
  store ptr %i.fj, ptr %i.ap, align 8, !tbaa !117
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83: ; preds = %bb.o, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82
  %i.fk = load double, ptr %i.ek, align 8, !tbaa !99
  %i.fl = fptrunc double %i.fk to float           ; 2 uses
  %i.fm = tail call noundef float @cosf(float noundef %i.fl) #24
  %i.fn = fadd float %.2134, %i.fm                ; 2 uses
  %i.fo = tail call noundef float @sinf(float noundef %i.fl) #24
  %i.fp = fadd float %.262131, %i.fo              ; 2 uses
  %i.fq = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.fp, float noundef %i.fn)
  %i.fr = fpext float %i.fq to double
  %i.fs = fmul double %i.fr, f0x3F91DF46A2529D39
  store double %i.fs, ptr %3, align 8, !tbaa !99
  br label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread: ; preds = %bb.j, %bb.i, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit, %bb.h
  %.363 = phi float [ %i.fp, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83 ], [ %.262131, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit ], [ %.262131, %bb.h ], [ %.262131, %bb.j ], [ %.262131, %bb.i ] ; 3 uses
  %.3 = phi float [ %i.fn, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83 ], [ %.2134, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit ], [ %.2134, %bb.h ], [ %.2134, %bb.j ], [ %.2134, %bb.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !157
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
  store double %2, ptr %i.a, align 8, !tbaa !99
  store double %3, ptr %i.b, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !114    ; 5 uses
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
end_hunk_0
