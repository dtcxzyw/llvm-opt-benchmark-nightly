Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lsd?download=true
inline.NumInlined: 937
inline.NumDeleted: 383
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv7MatExprD2Ev:bb.a
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #24
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
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
  %i.at = ptrtoint ptr %i.a to i64
  %i.au = sub i64 %i.as, %i.at                    ; 6 uses
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.au) #23
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bc, ptr %2, align 8, !tbaa !114
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !118
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !117
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bh = load double, ptr %3, align 8, !tbaa !99 ; 2 uses
  %i.bi = tail call double @cos(double noundef %i.bh) #24
  %i.bj = tail call double @sin(double noundef %i.bh) #24
  store i8 1, ptr %i.r, align 1, !tbaa !58
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !118 ; 2 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %.not151 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not151, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit
  %i.bm = fptrunc double %i.bj to float
  %i.bn = fptrunc double %i.bi to float
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 432
  br label %bb.g

._crit_edge150:                                   ; preds = %._crit_edge142, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit
  ret void

bb.g:                                             ; preds = %.lr.ph149, %._crit_edge142
  %i.bs = phi ptr [ %i.bl, %.lr.ph149 ], [ %i.cm, %._crit_edge142 ] ; 2 uses
  %i.bt = phi ptr [ %i.bk, %.lr.ph149 ], [ %i.cn, %._crit_edge142 ]
  %.0148 = phi float [ %i.bn, %.lr.ph149 ], [ %.1.lcssa, %._crit_edge142 ] ; 2 uses
  %.059147 = phi i64 [ 0, %.lr.ph149 ], [ %i.co, %._crit_edge142 ] ; 2 uses
  %.060146 = phi float [ %i.bm, %.lr.ph149 ], [ %.161.lcssa, %._crit_edge142 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %.059147 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !152 ; 2 uses
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 1) ; 2 uses
  %i.bx = add i32 %i.bv, 1
  %i.by = load i32, ptr %i.bo, align 8, !tbaa !103
  %i.bz = add i32 %i.by, -1
  %.sroa.speculated102 = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %i.bx) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !154 ; 2 uses
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 1) ; 2 uses
  %.sroa.speculated97 = add nsw i32 %i.cc, -1
  %i.cd = add nsw i32 %i.cb, 1
  %i.ce = load i32, ptr %i.bp, align 4, !tbaa !104
  %i.cf = add nsw i32 %i.ce, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.cd) ; 2 uses
  %.not136 = icmp sgt i32 %.sroa.speculated97, %.sroa.speculated
  %.sroa.speculated107 = add nsw i32 %i.bw, -1
  %.not64130 = icmp sgt i32 %.sroa.speculated107, %.sroa.speculated102
  %or.cond172 = select i1 %.not136, i1 true, i1 %.not64130
  br i1 %or.cond172, label %._crit_edge142, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.cg = zext nneg i32 %i.bw to i64
  %i.ch = add nsw i64 %i.cg, -1
  %i.ci = add nuw i32 %.sroa.speculated102, 1
  %i.cj = zext nneg i32 %i.cc to i64
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = zext nneg i32 %.sroa.speculated to i64
  %wide.trip.count = zext i32 %i.ci to i64
  br label %.lr.ph

._crit_edge142.loopexit152:                       ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !118
  %.pre157 = load ptr, ptr %2, align 8, !tbaa !114
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit152, %bb.g
  %i.cm = phi ptr [ %i.bs, %bb.g ], [ %.pre157, %._crit_edge142.loopexit152 ] ; 2 uses
  %i.cn = phi ptr [ %i.bt, %bb.g ], [ %.pre, %._crit_edge142.loopexit152 ] ; 2 uses
  %.161.lcssa = phi float [ %.060146, %bb.g ], [ %.363, %._crit_edge142.loopexit152 ]
  %.1.lcssa = phi float [ %.0148, %bb.g ], [ %.3, %._crit_edge142.loopexit152 ]
  %i.co = add nuw i64 %.059147, 1                 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 5
  %i.ct = icmp ult i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.g, label %._crit_edge150, !llvm.loop !155

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv154 = phi i64 [ %i.ck, %.lr.ph.preheader ], [ %indvars.iv.next155, %._crit_edge ] ; 8 uses
  %.1139 = phi float [ %.0148, %.lr.ph.preheader ], [ %.3, %._crit_edge ]
  %.161137 = phi float [ %.060146, %.lr.ph.preheader ], [ %.363, %._crit_edge ]
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.cv = load i64, ptr %i.m, align 8, !tbaa !62
  %i.cw = mul i64 %i.cv, %indvars.iv154
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  %i.cy = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.cz = load i64, ptr %i.x, align 8, !tbaa !62
  %i.da = mul i64 %i.cz, %indvars.iv154
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.dd = load i64, ptr %i.ai, align 8, !tbaa !62
  %i.de = mul i64 %i.dd, %indvars.iv154
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de
  %i.dg = trunc nuw nsw i64 %indvars.iv154 to i32 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %.not.not = icmp slt i64 %indvars.iv154, %i.cl
  br i1 %.not.not, label %.lr.ph, label %._crit_edge142.loopexit152, !llvm.loop !156

bb.h:                                             ; preds = %.lr.ph, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread
  %indvars.iv = phi i64 [ %i.ch, %.lr.ph ], [ %indvars.iv.next, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 7 uses
  %.2134 = phi float [ %.1139, %.lr.ph ], [ %.3, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 5 uses
  %.262131 = phi float [ %.161137, %.lr.ph ], [ %.363, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread ] ; 5 uses
  %i.dh = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv ; 4 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !58
  %.not65 = icmp ne i8 %i.di, 1
  %i.dj = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.dk = or i32 %i.dj, %i.dg
  %or.cond.not.i = icmp sgt i32 %i.dk, -1
  %or.cond = and i1 %or.cond.not.i, %.not65
  br i1 %or.cond, label %bb.i, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.dl = load i32, ptr %i.bq, align 4, !tbaa !79
  %i.dm = sext i32 %i.dl to i64
  %.not.i75 = icmp slt i64 %indvars.iv, %i.dm
  %i.dn = load i32, ptr %i.br, align 8
  %i.do = sext i32 %i.dn to i64
  %.not28.i = icmp slt i64 %indvars.iv154, %i.do
  %or.cond.i = select i1 %.not.i75, i1 %.not28.i, i1 false
  br i1 %or.cond.i, label %bb.j, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.dp = load i32, ptr %i.s, align 4, !tbaa !73
  %i.dq = icmp slt i32 %i.dp, 2
  %i.dr = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.ds = load i64, ptr %i.x, align 8
  %i.dt = mul i64 %i.ds, %indvars.iv154
  %.sink.idx.i.i = select i1 %i.dq, i64 0, i64 %i.dt
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sink.idx.i.i
  %i.du = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.dv = load double, ptr %i.du, align 8, !tbaa !99 ; 2 uses
  %i.dw = fcmp oeq double %i.dv, -1.024000e+03
  br i1 %i.dw, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dx = load double, ptr %3, align 8, !tbaa !99
  %i.dy = fsub double %i.dx, %i.dv                ; 3 uses
  %i.dz = fcmp olt double %i.dy, 0.000000e+00
  %i.ea = fneg double %i.dy
  %.0.i = select i1 %i.dz, double %i.ea, double %i.dy ; 3 uses
  %i.eb = fcmp ogt double %.0.i, f0x4012D97C7F3321D2
  br i1 %i.eb, label %bb.l, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ec = fadd double %.0.i, f0xC01921FB54442D18  ; 3 uses
  %i.ed = fcmp olt double %i.ec, 0.000000e+00
  br i1 %i.ed, label %bb.m, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.ee = fneg double %i.ec
  br label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit

_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.1.i = phi double [ %i.ee, %bb.m ], [ %i.ec, %bb.l ], [ %.0.i, %bb.k ]
  %i.ef = load double, ptr %4, align 8, !tbaa !99
  %i.eg = fcmp ugt double %.1.i, %i.ef
  br i1 %i.eg, label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.db, i64 %indvars.iv ; 2 uses
  store i8 1, ptr %i.dh, align 1, !tbaa !58
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.df, i64 %indvars.iv
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !99 ; 2 uses
  %i.ek = load double, ptr %i.eh, align 8, !tbaa !99 ; 2 uses
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !118 ; 8 uses
  %i.em = load ptr, ptr %i.ap, align 8, !tbaa !117
  %.not.i76 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.dj, ptr %i.el, align 8, !tbaa !81
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.dg, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !81
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.dh, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !151
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store double %i.ek, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !99
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store double %i.ej, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !99
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr %i.en, ptr %i.b, align 8, !tbaa !118
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83

bb.p:                                             ; preds = %bb.n
  %i.eo = load ptr, ptr %2, align 8, !tbaa !114   ; 4 uses
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 6 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775776
  br i1 %i.es, label %bb.q, label %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77: ; preds = %bb.p
  %i.et = ashr exact i64 %i.er, 5                 ; 3 uses
  %.sroa.speculated.i.i.i78 = tail call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i78, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 288230376151711743)
  %i.ex = select i1 %i.ev, i64 288230376151711743, i64 %i.ew ; 3 uses
  %.not.i.i.i79 = icmp ne i64 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i79)
  %i.ey = shl nuw nsw i64 %i.ex, 5
  %i.ez = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #22 ; 4 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 %i.er ; 6 uses
  store i32 %i.dj, ptr %i.fa, align 8, !tbaa !81
  %.sroa.5.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 %i.dg, ptr %.sroa.5.0..sroa_idx86, align 4, !tbaa !81
  %.sroa.6.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.dh, ptr %.sroa.6.0..sroa_idx88, align 8, !tbaa !151
  %.sroa.7.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store double %i.ek, ptr %.sroa.7.0..sroa_idx90, align 8, !tbaa !99
  %.sroa.8.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store double %i.ej, ptr %.sroa.8.0..sroa_idx92, align 8, !tbaa !99
  %i.fb = icmp sgt i64 %i.er, 0
  br i1 %i.fb, label %bb.r, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80

bb.r:                                             ; preds = %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr align 8 %i.eo, i64 %i.er, i1 false)
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80: ; preds = %bb.r, %_ZNKSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i77
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %.not.i17.i.i81 = icmp eq ptr %i.eo, null
  br i1 %.not.i17.i.i81, label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.er) #23
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82: ; preds = %bb.s, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i80
  store ptr %i.ez, ptr %2, align 8, !tbaa !114
  store ptr %i.fc, ptr %i.b, align 8, !tbaa !118
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %i.ex
  store ptr %i.fd, ptr %i.ap, align 8, !tbaa !117
  br label %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83

_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83: ; preds = %bb.o, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i82
  %i.fe = load double, ptr %i.eh, align 8, !tbaa !99
  %i.ff = fptrunc double %i.fe to float           ; 2 uses
  %i.fg = tail call noundef float @cosf(float noundef %i.ff) #24
  %i.fh = fadd float %.2134, %i.fg                ; 2 uses
  %i.fi = tail call noundef float @sinf(float noundef %i.ff) #24
  %i.fj = fadd float %.262131, %i.fi              ; 2 uses
  %i.fk = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.fj, float noundef %i.fh)
  %i.fl = fpext float %i.fk to double
  %i.fm = fmul double %i.fl, f0x3F91DF46A2529D39
  store double %i.fm, ptr %3, align 8, !tbaa !99
  br label %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread

_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit.thread: ; preds = %bb.j, %bb.i, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit, %bb.h
  %.363 = phi float [ %i.fj, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83 ], [ %.262131, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit ], [ %.262131, %bb.h ], [ %.262131, %bb.j ], [ %.262131, %bb.i ] ; 3 uses
  %.3 = phi float [ %i.fh, %_ZNSt6vectorIN2cv23LineSegmentDetectorImpl11RegionPointESaIS2_EE9push_backERKS2_.exit83 ], [ %.2134, %_ZNK2cv23LineSegmentDetectorImpl9isAlignedEiiRKdS2_.exit ], [ %.2134, %bb.h ], [ %.2134, %bb.j ], [ %.2134, %bb.i ] ; 3 uses
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
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
end_hunk_0
