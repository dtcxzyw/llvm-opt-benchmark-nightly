Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1645
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL23canSkipHeightFitContentEPKNS0_4NodeE:bb.a
  %i.iz = and i8 %i.iy, 12
  %i.ja = icmp eq i8 %i.iz, 8
  br i1 %i.ja, label %bb.by, label %.lr.ph.preheader, !prof !93

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge unwind label %bb.bz

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge: ; preds = %bb.by
  %.pre = load ptr, ptr %2, align 8, !tbaa !92
  %.pre132 = load i64, ptr %i.c, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

bb.bz:                                            ; preds = %bb.by
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load ptr, ptr %i.d, align 8, !tbaa !94, !alias.scope !193 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bz, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i.i ], [ %i.jc, %bb.bz ] ; 2 uses
  %i.jd = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i3.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.bz, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp234, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40 ], [ %i.jb, %bb.bz ], [ %i.jb, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !193
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge, %bb.ca
  %i.je = phi i64 [ %.pre132, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ 0, %bb.ca ] ; 2 uses
  %i.jf = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ null, %bb.ca ] ; 2 uses
  %.not.i3492 = icmp eq ptr %i.jf, null
  %i.jg = icmp eq i64 %i.je, 0
  %.not5693 = select i1 %.not.i3492, i1 %i.jg, i1 false
  br i1 %.not5693, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bx, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.ph = phi ptr [ %i.g, %bb.bx ], [ %i.jf, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %.ph233 = phi i64 [ 0, %bb.bx ], [ %i.je, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.jh = phi ptr [ %i.ky, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ], [ %.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ji = phi i64 [ %i.kx, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ], [ %.ph233, %.lr.ph.preheader ] ; 4 uses
  %.12294 = phi i64 [ %i.jv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 696
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 704
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !84
  %i.jm = load ptr, ptr %i.jj, align 8, !tbaa !85 ; 3 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = ashr exact i64 %i.jp, 3                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ji, %i.jq
  br i1 %.not.i.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.ji, i64 noundef %i.jq) #14
          to label %.noexc unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %.lr.ph
  %.not31.not.not = icmp ne i64 %.12294, 64       ; 3 uses
  br i1 %.not31.not.not, label %bb.cd, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ce, %bb.cb
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          cleanup
  %i.jr = load ptr, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %.not12.i.i.i36 = icmp eq ptr %i.jr, null
  br i1 %.not12.i.i.i36, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.i.i.i37
  %.013.i.i.i38 = phi ptr [ %i.js, %.lr.ph.i.i.i37 ], [ %i.jr, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.js = load ptr, ptr %.013.i.i.i38, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i38, i64 noundef 24) #16
  %.not.i.i.i39 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i39, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40, label %.lr.ph.i.i.i37, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit40: ; preds = %.lr.ph.i.i.i37, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %common.resume

bb.cd:                                            ; preds = %bb.cc
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.ji
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !23
  %i.jv = add nuw nsw i64 %.12294, 1              ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.12294
  store ptr %i.ju, ptr %i.jw, align 8, !tbaa !23
  %i.jx = add nuw i64 %i.ji, 1                    ; 2 uses
  %.not11.i.i = icmp ult i64 %i.jx, %i.jq
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cd, %tailrecurse.i.i
  %i.jy = load ptr, ptr %i.d, align 8, !tbaa !96  ; 5 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !74

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

_ZNK8facebook4yoga4Node8getChildEm.exit.i.i:      ; preds = %tailrecurse.i.i, %bb.cd
  %i.kq = phi ptr [ %i.jh, %bb.cd ], [ %i.kh, %tailrecurse.i.i ]
  %.lcssa6.i.i = phi i64 [ %i.jx, %bb.cd ], [ %i.kg, %tailrecurse.i.i ] ; 3 uses
  %.lcssa.i.i = phi ptr [ %i.jm, %bb.cd ], [ %i.kl, %tailrecurse.i.i ]
  store i64 %.lcssa6.i.i, ptr %i.c, align 8, !tbaa !95
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.i.i, i64 %.lcssa6.i.i
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !23
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 60
  %i.ku = load i8, ptr %i.kt, align 4
  %i.kv = and i8 %i.ku, 12
  %i.kw = icmp eq i8 %i.kv, 8
  br i1 %i.kw, label %bb.ce, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, !prof !93

bb.ce:                                            ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
          to label %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge: ; preds = %bb.ce
  %.pre133 = load ptr, ptr %2, align 8, !tbaa !92
  %.pre134 = load i64, ptr %i.c, align 8
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit: ; preds = %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  %i.kx = phi i64 [ %.pre134, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ 0, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %.lcssa6.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %i.ky = phi ptr [ %.pre133, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ null, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %i.kq, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %.not.i34 = icmp eq ptr %i.ky, null
  %i.kz = icmp eq i64 %i.kx, 0
  %.not56 = select i1 %.not.i34, i1 %i.kz, i1 false
  br i1 %.not56, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46, label %.lr.ph

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, %bb.cc, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.122.lcssa = phi i64 [ %i.e, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ 64, %bb.cc ], [ %i.jv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ]
  %.not56.lcssa = phi i1 [ true, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ %.not31.not.not, %bb.cc ], [ %.not31.not.not, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ]
  %i.la = load ptr, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %.not12.i.i.i47 = icmp eq ptr %i.la, null
  br i1 %.not12.i.i.i47, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51, label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46, %.lr.ph.i.i.i48
  %.013.i.i.i49 = phi ptr [ %i.lb, %.lr.ph.i.i.i48 ], [ %i.la, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46 ] ; 2 uses
  %i.lb = load ptr, ptr %.013.i.i.i49, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i49, i64 noundef 24) #16
  %.not.i.i.i50 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i50, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51, label %.lr.ph.i.i.i48, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51: ; preds = %.lr.ph.i.i.i48, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not56.lcssa, label %bb.c, label %.critedge, !llvm.loop !191

.critedge:                                        ; preds = %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.i, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.thread155.i, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.ay, %bb.bf, %bb.ax, %bb.br, %bb.bs, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread148.i, %bb.bt, %bb.bu, %bb.bv, %_ZN8facebook4yogaL29isHeightFitContentIndependentERKNS0_4NodeE.exit, %bb.d, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.cf

bb.cf:                                            ; preds = %bb.a, %.critedge
  %.6 = phi i1 [ %.not, %.critedge ], [ false, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN8facebook4yogaL23hasAutoHorizontalMarginERKNS0_5StyleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.c = load i16, ptr %i.b, align 1
  %.fr84 = freeze i16 %i.c                        ; 3 uses
  %i.d = and i16 %.fr84, 7                        ; 5 uses
  %.not.i.i = icmp eq i16 %i.d, 0                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.f = load i16, ptr %i.e, align 1
  %.fr85 = freeze i16 %i.f                        ; 2 uses
  %i.g = and i16 %.fr85, 7                        ; 7 uses
  %.not14.i.i = icmp eq i16 %i.g, 0               ; 7 uses
  %i.h = load i16, ptr %i.a, align 1
  %.fr83 = freeze i16 %i.h                        ; 4 uses
  %i.i = and i16 %.fr83, 7                        ; 3 uses
  %.not15.i.i = icmp eq i16 %i.i, 0               ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.k = load i16, ptr %i.j, align 1              ; 2 uses
  %i.l = and i16 %i.k, 7
  %.not16.i.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29
  %.val.i.i = load i16, ptr %i.m, align 1
  %.sroa.0.0.pre.i.i = select i1 %.not16.i.i, i16 %.val.i.i, i16 %i.k ; 6 uses
  %i.n = and i16 %.fr84, 7                        ; 4 uses
  %.not14.i11.i = icmp eq i16 %i.n, 0             ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.p = load i16, ptr %i.o, align 1
  %.fr82 = freeze i16 %i.p                        ; 3 uses
  %i.q = and i16 %.fr82, 7                        ; 6 uses
  %.not15.i7.i = icmp eq i16 %i.q, 0
  br i1 %.not15.i7.i, label %.split.us.preheader, label %.split

.split.us.1:                                      ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us
  %spec.select.1 = select i1 %.not15.i.i, i16 %.sroa.0.0.pre.i.i, i16 %.fr83
  %.pre109 = and i16 %spec.select.1, 7
  %.pre-phi110 = select i1 %.not.i.i, i16 %.pre109, i16 %i.d
  %i.r = icmp eq i16 %.pre-phi110, 4
  br i1 %i.r, label %.thread, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us.1

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us.1: ; preds = %.split.us.1
  %.pre111 = and i16 %.sroa.0.0.pre.i.i, 7
  %spec.select143 = select i1 %.not14.i.i, i16 %.pre111, i16 %i.g
  %i.s = icmp eq i16 %spec.select143, 4
  br i1 %i.s, label %.thread, label %.split24.us

.split.us.preheader:                              ; preds = %bb.a
  %spec.select = select i1 %.not15.i.i, i16 %.sroa.0.0.pre.i.i, i16 %.fr83
  %.pre = and i16 %spec.select, 7
  %.pre-phi = select i1 %.not14.i.i, i16 %.pre, i16 %i.g
  %i.t = icmp eq i16 %.pre-phi, 4
  br i1 %i.t, label %.thread, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us: ; preds = %.split.us.preheader
  %.pre107 = and i16 %.sroa.0.0.pre.i.i, 7
  %spec.select144 = select i1 %.not14.i11.i, i16 %.pre107, i16 %i.n
  %i.u = icmp eq i16 %spec.select144, 4
  br i1 %i.u, label %.thread, label %.split.us.1

.split:                                           ; preds = %bb.a
  br i1 %.not15.i.i, label %.split.split.us.preheader, label %.split.split.a

.split.split.us.preheader:                        ; preds = %.split
  %.pre113 = and i16 %.sroa.0.0.pre.i.i, 7
  %spec.select145 = select i1 %.not14.i.i, i16 %.pre113, i16 %i.g
  %i.v = icmp eq i16 %spec.select145, 4
  %spec.select146 = select i1 %.not14.i11.i, i16 %i.q, i16 %i.n
  %i.w = icmp eq i16 %spec.select146, 4
  %or.cond157 = or i1 %i.v, %i.w
  br i1 %or.cond157, label %.thread, label %.split.split.us.1

.split.split.us.1:                                ; preds = %.split.split.us.preheader
  %.pre116 = and i16 %.sroa.0.0.pre.i.i, 7
  %spec.select147 = select i1 %.not.i.i, i16 %.pre116, i16 %i.d
  %i.x = icmp eq i16 %spec.select147, 4
  %spec.select148 = select i1 %.not14.i.i, i16 %i.q, i16 %i.g
  %i.y = icmp eq i16 %spec.select148, 4
  %or.cond158 = or i1 %i.x, %i.y
  br i1 %or.cond158, label %.thread, label %.split24.us

.split.split.a:                                   ; preds = %.split
  br i1 %.not.i.i, label %.split.split.split.us.preheader, label %.split.split.split.a

.split.split.split.us.preheader:                  ; preds = %.split.split.a
  %.sroa.0.0.i.us43 = select i1 %.not14.i.i, i16 %.fr83, i16 %.fr85
  %1 = and i16 %.sroa.0.0.i.us43, 7
  %2 = icmp eq i16 %1, 4
  br i1 %2, label %.thread, label %bb.b

bb.b:                                             ; preds = %.split.split.split.us.preheader
  %i.z = icmp eq i16 %i.q, 4
  %or.cond = and i1 %.not14.i11.i, %i.z
  %i.aa = icmp eq i16 %i.i, 4
  %or.cond149 = or i1 %or.cond, %i.aa
  %spec.select150 = select i1 %.not14.i.i, i16 %i.q, i16 %i.g
  %3 = icmp eq i16 %spec.select150, 4
  %or.cond159 = or i1 %or.cond149, %3
  br i1 %or.cond159, label %.thread, label %.split24.us

.split.split.split.a:                             ; preds = %.split.split.a
  br i1 %.not14.i.i, label %.split.split.split.split.us.preheader, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit

.split.split.split.split.us.preheader:            ; preds = %.split.split.split.a
  %i.ab = icmp eq i16 %i.i, 4
  br i1 %i.ab, label %.thread, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us57

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us57: ; preds = %.split.split.split.split.us.preheader
  %spec.select151 = select i1 %.not14.i11.i, i16 %.fr82, i16 %.fr84
  %i.ac = and i16 %spec.select151, 7
  %i.ad = icmp eq i16 %i.ac, 4
  %i.ae = icmp eq i16 %i.d, 4
  %or.cond152 = or i1 %i.ad, %i.ae
  %4 = and i16 %.fr82, 7
  %5 = icmp eq i16 %4, 4
  %or.cond154 = or i1 %or.cond152, %5
  br i1 %or.cond154, label %.thread, label %.split24.us

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit: ; preds = %.split.split.split.a
  %i.af = icmp eq i16 %i.g, 4
  br i1 %i.af, label %.thread, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit
  %spec.select156 = select i1 %.not14.i11.i, i16 %i.q, i16 %i.n
  %i.ag = icmp eq i16 %spec.select156, 4
  %i.ah = icmp eq i16 %i.d, 4
  %or.cond155 = or i1 %i.ag, %i.ah
  br i1 %or.cond155, label %.thread, label %.split24.us

.split24.us:                                      ; preds = %bb.b, %.split.split.us.1, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us57, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us.1
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us.1, %.split.us.1, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us, %.split.us.preheader, %.split.split.us.1, %.split.split.us.preheader, %.split.split.split.us.preheader, %.split.split.split.split.us.preheader, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us57, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16, %.split24.us
  %.not20 = phi i1 [ false, %.split24.us ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16 ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit ], [ true, %.split.us.preheader ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us57 ], [ true, %.split.split.split.split.us.preheader ], [ true, %.split.us.1 ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us ], [ true, %.split.split.split.us.preheader ], [ true, %bb.b ], [ true, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit16.us.1 ], [ true, %.split.split.us.preheader ], [ true, %.split.split.us.1 ]
  ret i1 %.not20
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
  %.0.i2 = load float, ptr %.0.in.i, align 4, !tbaa !17
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
  %.0.i7.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !17
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
