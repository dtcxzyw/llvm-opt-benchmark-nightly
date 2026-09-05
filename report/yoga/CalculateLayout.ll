Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1590
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL23canSkipHeightFitContentEPKNS0_4NodeE:bb.a
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bz, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i.i ], [ %i.jc, %bb.bz ] ; 2 uses
  %i.jd = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i3.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.bz, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51 ], [ %i.jb, %bb.bz ], [ %i.jb, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !193
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge, %bb.ca
  %i.je = phi i64 [ %.pre131, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ 0, %bb.ca ] ; 2 uses
  %i.jf = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ null, %bb.ca ] ; 2 uses
  %.not.i3492 = icmp eq ptr %i.jf, null
  %i.jg = icmp eq i64 %i.je, 0
  %.not5693 = select i1 %.not.i3492, i1 %i.jg, i1 false
  br i1 %.not5693, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bx, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.ph = phi ptr [ %i.g, %bb.bx ], [ %i.jf, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %.ph232 = phi i64 [ 0, %bb.bx ], [ %i.je, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  br label %.lr.ph

bb.cb:                                            ; preds = %bb.cg
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.ji = phi ptr [ %i.ky, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ], [ %.ph, %.lr.ph.preheader ] ; 3 uses
  %i.jj = phi i64 [ %i.kx, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ], [ %.ph232, %.lr.ph.preheader ] ; 4 uses
  %.12294 = phi i64 [ %i.jv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 696
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 704
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !84
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !85 ; 3 uses
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = ashr exact i64 %i.jq, 3                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.jj, %i.jr
  br i1 %.not.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.jj, i64 noundef %i.jr) #14
          to label %.noexc unwind label %bb.ce

.noexc:                                           ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %.lr.ph
  %.not31.not.not = icmp ne i64 %.12294, 64       ; 3 uses
  br i1 %.not31.not.not, label %bb.cf, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

bb.ce:                                            ; preds = %bb.cc
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46

bb.cf:                                            ; preds = %bb.cd
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jj
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !25
  %i.jv = add i64 %.12294, 1                      ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.12294
  store ptr %i.ju, ptr %i.jw, align 8, !tbaa !25
  %i.jx = add nuw i64 %i.jj, 1                    ; 2 uses
  %.not11.i.i = icmp ult i64 %i.jx, %i.jr
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cf, %tailrecurse.i.i
  %i.jy = load ptr, ptr %i.d, align 8, !tbaa !96  ; 5 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !75

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !98
  store ptr %i.kb, ptr %2, align 8, !tbaa !92
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !99
  store i64 %i.kd, ptr %i.c, align 8, !tbaa !95
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !94
  store ptr %i.ke, ptr %i.d, align 8, !tbaa !94
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef 24) #16, !inline_history !100
  %i.kf = load i64, ptr %i.c, align 8, !tbaa !95
  %i.kg = add i64 %i.kf, 1                        ; 2 uses
  %i.kh = load ptr, ptr %2, align 8, !tbaa !92    ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 696
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 704
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !84
  %i.kl = load ptr, ptr %i.ki, align 8, !tbaa !85 ; 2 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = ashr exact i64 %i.ko, 3
  %.not.i.i = icmp ult i64 %i.kg, %i.kp
  br i1 %.not.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

_ZNK8facebook4yoga4Node8getChildEm.exit.i.i:      ; preds = %tailrecurse.i.i, %bb.cf
  %i.kq = phi ptr [ %i.ji, %bb.cf ], [ %i.kh, %tailrecurse.i.i ]
  %.lcssa6.i.i = phi i64 [ %i.jx, %bb.cf ], [ %i.kg, %tailrecurse.i.i ] ; 3 uses
  %.lcssa.i.i = phi ptr [ %i.jn, %bb.cf ], [ %i.kl, %tailrecurse.i.i ]
  store i64 %.lcssa6.i.i, ptr %i.c, align 8, !tbaa !95
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.i.i, i64 %.lcssa6.i.i
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !25
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 60
  %i.ku = load i8, ptr %i.kt, align 4
  %i.kv = and i8 %i.ku, 12
  %i.kw = icmp eq i8 %i.kv, 8
  br i1 %i.kw, label %bb.cg, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, !prof !93

bb.cg:                                            ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
          to label %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge unwind label %bb.cb

._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge: ; preds = %bb.cg
  %.pre132 = load ptr, ptr %2, align 8, !tbaa !92
  %.pre133 = load i64, ptr %i.c, align 8
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit: ; preds = %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  %i.kx = phi i64 [ %.pre133, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ 0, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %.lcssa6.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %i.ky = phi ptr [ %.pre132, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ null, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %i.kq, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %.not.i34 = icmp eq ptr %i.ky, null
  %i.kz = icmp eq i64 %i.kx, 0
  %.not56 = select i1 %.not.i34, i1 %i.kz, i1 false
  br i1 %.not56, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %.lr.ph

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, %bb.cd, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.122.lcssa = phi i64 [ %i.e, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ 64, %bb.cd ], [ %i.jv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ]
  %.not56.lcssa = phi i1 [ true, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ %.not31.not.not, %bb.cd ], [ %.not31.not.not, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ]
  %i.la = load ptr, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %.not12.i.i.i37 = icmp eq ptr %i.la, null
  br i1 %.not12.i.i.i37, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit41, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %.lr.ph.i.i.i38
  %.013.i.i.i39 = phi ptr [ %i.lb, %.lr.ph.i.i.i38 ], [ %i.la, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %i.lb = load ptr, ptr %.013.i.i.i39, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i39, i64 noundef 24) #16
  %.not.i.i.i40 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i40, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit41, label %.lr.ph.i.i.i38, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit41: ; preds = %.lr.ph.i.i.i38, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not56.lcssa, label %bb.c, label %.critedge, !llvm.loop !191

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46: ; preds = %bb.cb, %bb.ce
  %.pn = phi { ptr, i32 } [ %i.jh, %bb.cb ], [ %i.js, %bb.ce ]
  %i.lc = load ptr, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %.not12.i.i.i47 = icmp eq ptr %i.lc, null
  br i1 %.not12.i.i.i47, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51, label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46, %.lr.ph.i.i.i48
  %.013.i.i.i49 = phi ptr [ %i.ld, %.lr.ph.i.i.i48 ], [ %i.lc, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46 ] ; 2 uses
  %i.ld = load ptr, ptr %.013.i.i.i49, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i49, i64 noundef 24) #16
  %.not.i.i.i50 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i50, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51, label %.lr.ph.i.i.i48, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51: ; preds = %.lr.ph.i.i.i48, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %common.resume

.critedge:                                        ; preds = %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.i, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.thread155.i, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.ay, %bb.bf, %bb.ax, %bb.br, %bb.bs, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread148.i, %bb.bt, %bb.bu, %bb.bv, %_ZN8facebook4yogaL29isHeightFitContentIndependentERKNS0_4NodeE.exit, %bb.d, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.ch

bb.ch:                                            ; preds = %bb.a, %.critedge
  %.6 = phi i1 [ %.not, %.critedge ], [ false, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN8facebook4yogaL23hasAutoHorizontalMarginERKNS0_5StyleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.c = load i16, ptr %i.b, align 1
  %.fr89 = freeze i16 %i.c                        ; 5 uses
  %i.d = and i16 %.fr89, 7                        ; 4 uses
  %.not.i.i.not = icmp eq i16 %i.d, 0             ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.f = load i16, ptr %i.e, align 1
  %.fr90 = freeze i16 %i.f                        ; 4 uses
  %i.g = and i16 %.fr90, 7                        ; 6 uses
  %.not14.i.i = icmp eq i16 %i.g, 0               ; 7 uses
  %i.h = load i16, ptr %i.a, align 1
  %.fr88 = freeze i16 %i.h                        ; 6 uses
  %i.i = and i16 %.fr88, 7                        ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1
  %i.l = and i16 %i.k, 7
  %.not16.i.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i.i = select i1 %.not16.i.i, ptr %i.m, ptr %i.j ; 6 uses
  %i.n = and i16 %.fr89, 7                        ; 4 uses
  %.not14.i12.i = icmp eq i16 %i.n, 0             ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.p = load i16, ptr %i.o, align 1
  %.fr87 = freeze i16 %i.p                        ; 3 uses
  %i.q = and i16 %.fr87, 7                        ; 6 uses
  %.not15.i8.i = icmp eq i16 %i.q, 0
  br i1 %.not15.i8.i, label %.split.us.preheader, label %.split

.split.us.1:                                      ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us
  %i.r = or i16 %.fr89, %.fr88
  %i.s = and i16 %i.r, 7
  %brmerge81.not.1 = icmp eq i16 %i.s, 0
  %.mux82.1 = select i1 %.not.i.i.not, i16 %.fr88, i16 %.fr89
  br i1 %brmerge81.not.1, label %bb.b, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us.1

bb.b:                                             ; preds = %.split.us.1
  %.sroa.0.0.pre.i11.i.us.1 = load i16, ptr %spec.select.i.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us.1

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us.1: ; preds = %bb.b, %.split.us.1
  %.sroa.0.0.i.us.1 = phi i16 [ %.sroa.0.0.pre.i11.i.us.1, %bb.b ], [ %.mux82.1, %.split.us.1 ]
  %i.t = and i16 %.sroa.0.0.i.us.1, 7
  %i.u = icmp eq i16 %i.t, 4
  br i1 %i.u, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us.1
  br i1 %.not14.i.i, label %bb.d, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us.1

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.pre.i11.i16.us.1 = load i16, ptr %spec.select.i.i, align 1, !tbaa !12
  %.pre112 = and i16 %.sroa.0.0.pre.i11.i16.us.1, 7
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us.1

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us.1: ; preds = %bb.d, %bb.c
  %.pre-phi113 = phi i16 [ %.pre112, %bb.d ], [ %i.g, %bb.c ]
  %i.v = icmp eq i16 %.pre-phi113, 4
  br i1 %i.v, label %.thread, label %.split25.us

.split.us.preheader:                              ; preds = %bb.a
  %i.w = or i16 %.fr88, %.fr90
  %i.x = and i16 %i.w, 7
  %brmerge.not = icmp eq i16 %i.x, 0
  %.mux = select i1 %.not14.i.i, i16 %.fr88, i16 %.fr90
  br i1 %brmerge.not, label %bb.e, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us

bb.e:                                             ; preds = %.split.us.preheader
  %.sroa.0.0.pre.i11.i.us = load i16, ptr %spec.select.i.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us: ; preds = %.split.us.preheader, %bb.e
  %.sroa.0.0.i.us = phi i16 [ %.mux, %.split.us.preheader ], [ %.sroa.0.0.pre.i11.i.us, %bb.e ]
  %i.y = and i16 %.sroa.0.0.i.us, 7
  %i.z = icmp eq i16 %i.y, 4
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us
  br i1 %.not14.i12.i, label %bb.g, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.pre.i11.i16.us = load i16, ptr %spec.select.i.i, align 1, !tbaa !12
  %.pre = and i16 %.sroa.0.0.pre.i11.i16.us, 7
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us: ; preds = %bb.g, %bb.f
  %.pre-phi = phi i16 [ %.pre, %bb.g ], [ %i.n, %bb.f ]
  %i.aa = icmp eq i16 %.pre-phi, 4
  br i1 %i.aa, label %.thread, label %.split.us.1

.split:                                           ; preds = %bb.a
  %.not15.i.i = icmp eq i16 %i.i, 0
  br i1 %.not15.i.i, label %.split.split.us.preheader, label %.split.split

.split.split.us.1.a:                              ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32
  br i1 %.not.i.i.not, label %bb.h, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32.1

bb.h:                                             ; preds = %.split.split.us.1.a
  %.sroa.0.0.pre.i11.i.us31.1 = load i16, ptr %spec.select.i.i, align 1, !tbaa !12
  %.pre117.a = and i16 %.sroa.0.0.pre.i11.i.us31.1, 7
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32.1

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32.1: ; preds = %bb.h, %.split.split.us.1.a
  %.pre-phi118.a = phi i16 [ %.pre117.a, %bb.h ], [ %i.d, %.split.split.us.1.a ]
  %i.ab = icmp eq i16 %.pre-phi118.a, 4
  %spec.select = select i1 %.not14.i.i, i16 %i.q, i16 %i.g
  %i.ac = icmp eq i16 %spec.select, 4
  %or.cond154 = or i1 %i.ab, %i.ac
  br i1 %or.cond154, label %.thread, label %.split25.us

.split.split.us.preheader:                        ; preds = %.split
  br i1 %.not14.i.i, label %bb.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32

bb.i:                                             ; preds = %.split.split.us.preheader
  %.sroa.0.0.pre.i11.i.us31 = load i16, ptr %spec.select.i.i, align 1, !tbaa !12
  %.pre114 = and i16 %.sroa.0.0.pre.i11.i.us31, 7
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32: ; preds = %bb.i, %.split.split.us.preheader
  %.pre-phi115 = phi i16 [ %.pre114, %bb.i ], [ %i.g, %.split.split.us.preheader ]
  %i.ad = icmp eq i16 %.pre-phi115, 4
  %spec.select142 = select i1 %.not14.i12.i, i16 %i.q, i16 %i.n
  %i.ae = icmp eq i16 %spec.select142, 4
  %or.cond156 = or i1 %i.ad, %i.ae
  br i1 %or.cond156, label %.thread, label %.split.split.us.1.a

.split.split:                                     ; preds = %.split
  br i1 %.not.i.i.not, label %.split.split.split.us.preheader, label %.split.split.split

.split.split.split.us.preheader:                  ; preds = %.split.split
  %.sroa.0.0.i.us46 = select i1 %.not14.i.i, i16 %.fr88, i16 %.fr90
  %i.af = and i16 %.sroa.0.0.i.us46, 7
  %i.ag = icmp eq i16 %i.af, 4
  br i1 %i.ag, label %.thread, label %2

.split.split.split.us.1:                          ; preds = %2
  %.old = icmp eq i16 %i.i, 4
  br i1 %.old, label %.thread, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47.1

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47.1: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47, %.split.split.split.us.1
  %spec.select143 = select i1 %.not14.i.i, i16 %i.q, i16 %i.g
  %1 = icmp eq i16 %spec.select143, 4
  br i1 %1, label %.thread, label %.split25.us

2:                                                ; preds = %.split.split.split.us.preheader
  br i1 %.not14.i12.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47, label %.split.split.split.us.1

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47: ; preds = %2
  %i.ah = icmp eq i16 %i.q, 4
  %i.ai = icmp eq i16 %i.i, 4
  %or.cond.a = or i1 %i.ah, %i.ai
  br i1 %or.cond.a, label %.thread, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47.1

.split.split.split:                               ; preds = %.split.split
  br i1 %.not14.i.i, label %.split.split.split.split.us.preheader, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit

.split.split.split.split.us.preheader:            ; preds = %.split.split.split
  %i.aj = icmp eq i16 %i.i, 4
  br i1 %i.aj, label %.thread, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us60

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us60: ; preds = %.split.split.split.split.us.preheader
  %spec.select149 = select i1 %.not14.i12.i, i16 %.fr87, i16 %.fr89
  %i.ak = and i16 %spec.select149, 7
  %i.al = icmp eq i16 %i.ak, 4
  %i.am = icmp eq i16 %i.d, 4
  %or.cond145 = or i1 %i.al, %i.am
  %i.an = and i16 %.fr87, 7
  %i.ao = icmp eq i16 %i.an, 4
  %or.cond148 = or i1 %or.cond145, %i.ao
  br i1 %or.cond148, label %.thread, label %.split25.us

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit: ; preds = %.split.split.split
  %i.ap = icmp eq i16 %i.g, 4
  br i1 %i.ap, label %.thread, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit
  %spec.select152 = select i1 %.not14.i12.i, i16 %i.q, i16 %i.n
  %i.aq = icmp eq i16 %spec.select152, 4
  %i.ar = icmp eq i16 %i.d, 4
  %or.cond151 = or i1 %i.aq, %i.ar
  br i1 %or.cond151, label %.thread, label %.split25.us

.split25.us:                                      ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32.1, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us60, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47.1, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us.1
  br label %.thread

.thread:                                          ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us.1, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us.1, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32.1, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47.1, %.split.split.split.us.1, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47, %.split.split.split.us.preheader, %.split.split.split.split.us.preheader, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us60, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17, %.split25.us
  %.not21 = phi i1 [ false, %.split25.us ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17 ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us60 ], [ true, %.split.split.split.split.us.preheader ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us.1 ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us.1 ], [ true, %.split.split.split.us.preheader ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47 ], [ true, %.split.split.split.us.1 ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit17.us47.1 ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32 ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.us32.1 ]
  ret i1 %.not21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK8facebook4yoga5Style9flexBasisEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 1, !tbaa !12 ; 5 uses
  %i.b = and i16 %.sroa.0.0.copyload, 7           ; 3 uses
  switch i16 %i.b, label %bb.b [
    i16 0, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit
    i16 4, label %.fold.split.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %i.b, 5                      ; 3 uses
  %i.d = lshr i16 %.sroa.0.0.copyload, 4          ; 5 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = and i1 %i.c, %i.e
  br i1 %i.f, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i16 %i.d, 1
  %i.h = and i1 %i.c, %i.g
  br i1 %i.h, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i16 %i.d, 2
  %i.j = and i1 %i.c, %i.i
  br i1 %i.j, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = and i16 %.sroa.0.0.copyload, 8
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = zext nneg i16 %i.d to i64                ; 2 uses
  %i.m = icmp ult i16 %.sroa.0.0.copyload, 64
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.l
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.r = add nsw i64 %i.l, -4                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !104
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !105  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.r, %i.y
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.r, i64 noundef %i.y) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i:                 ; preds = %bb.h
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE2atEm.exit.i
  %.0.in.i = phi ptr [ %i.o, %bb.g ], [ %i.z, %_ZNSt6vectorIjSaIjEE2atEm.exit.i ]
  %.0.i2 = load float, ptr %.0.in.i, align 4, !tbaa !19
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.aa = and i16 %i.d, 2047
  %i.ab = zext nneg i16 %i.aa to i32              ; 2 uses
  %i.ac = sub nsw i32 0, %i.ab
  %.not.i13.i = icmp slt i16 %.sroa.0.0.copyload, 0
  %i.ad = select i1 %.not.i13.i, i32 %i.ac, i32 %i.ab
  %i.ae = sitofp i32 %i.ad to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit
  %i.af = phi float [ %.0.i2, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit ], [ %i.ae, %bb.j ] ; 2 uses
  %i.ag = icmp eq i16 %i.b, 1
  %i.ah = tail call float @llvm.fabs.f32(float %i.af) ; 2 uses
  %i.ai = bitcast float %i.af to i32
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %or.cond.i.i = fcmp one float %i.ah, +inf
  %i.ak = or disjoint i64 %i.aj, 4294967296
  %.sroa.03.0.insert.ext.i.i = select i1 %or.cond.i.i, i64 %i.ak, i64 2143289344
  br label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit

bb.m:                                             ; preds = %bb.k
  %or.cond.i3.i = fcmp ueq float %i.ah, +inf
  %i.al = or disjoint i64 %i.aj, 8589934592
  %.sroa.03.0.insert.ext.i4.i = select i1 %or.cond.i3.i, i64 2143289344, i64 %i.al
  br label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit

.fold.split.i:                                    ; preds = %bb.a
  br label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit

_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.l, %bb.m, %.fold.split.i
  %.sroa.0.1.in.i = phi i64 [ %.sroa.03.0.insert.ext.i4.i, %bb.m ], [ 2143289344, %bb.a ], [ 27913093120, %bb.d ], [ 19323158528, %bb.b ], [ 23618125824, %bb.c ], [ %.sroa.03.0.insert.ext.i.i, %bb.l ], [ 15028191232, %.fold.split.i ]
  ret i64 %.sroa.0.1.in.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN8facebook4yogaL14hasNonZeroFlexERKNS0_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(744) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 61
  %.sroa.0.0.copyload.i = load i16, ptr %i.a, align 1, !tbaa !12 ; 5 uses
  %i.b = and i16 %.sroa.0.0.copyload.i, 7
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK8facebook4yoga5Style4flexEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %.sroa.0.0.copyload.i, 8
  %.not.i.i = icmp eq i16 %i.d, 0
  %i.e = lshr i16 %.sroa.0.0.copyload.i, 4        ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i16 %i.e to i64                ; 2 uses
  %i.g = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 2 uses
  %i.l = add nsw i64 %i.f, -4                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.l, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.l, i64 noundef %i.s) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i:             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, %bb.d
  %.0.in.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.t, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i ]
  %.0.i7.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !19
  br label %_ZNK8facebook4yoga5Style4flexEv.exit

bb.g:                                             ; preds = %bb.b
  %i.u = and i16 %i.e, 2047
  %i.v = zext nneg i16 %i.u to i32                ; 2 uses
  %i.w = sub nsw i32 0, %i.v
  %.not.i6.i.i = icmp slt i16 %.sroa.0.0.copyload.i, 0
  %i.x = select i1 %.not.i6.i.i, i32 %i.w, i32 %i.v
  %i.y = sitofp i32 %i.x to float
  br label %_ZNK8facebook4yoga5Style4flexEv.exit

_ZNK8facebook4yoga5Style4flexEv.exit:             ; preds = %bb.a, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i, %bb.g
  %.sroa.05.0.i.i = phi float [ +qnan, %bb.a ], [ %.0.i7.i.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 63
  %.sroa.0.0.copyload.i8 = load i16, ptr %i.z, align 1, !tbaa !12 ; 5 uses
  %i.aa = and i16 %.sroa.0.0.copyload.i8, 7
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %_ZNK8facebook4yoga5Style8flexGrowEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook4yoga5Style4flexEv.exit
  %i.ac = and i16 %.sroa.0.0.copyload.i8, 8
  %.not.i.i9 = icmp eq i16 %i.ac, 0
  %i.ad = lshr i16 %.sroa.0.0.copyload.i8, 4      ; 2 uses
  br i1 %.not.i.i9, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = zext nneg i16 %i.ad to i64              ; 2 uses
  %i.af = icmp ult i16 %.sroa.0.0.copyload.i8, 64
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i12

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !101 ; 2 uses
  %i.ak = add nsw i64 %i.ae, -4                   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
end_hunk_0
