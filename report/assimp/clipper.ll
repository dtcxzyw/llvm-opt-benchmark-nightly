Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10ClipperLib7Clipper16DoSimplePolygonsEv:bb.a
  %i.jq = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 8
  %i.jr = load i64, ptr %i.jq, align 8            ; 3 uses
  %.not75.i.i = icmp slt i64 %i.jr, %i.iv
  %i.js = load i64, ptr %i.jp, align 8            ; 3 uses
  %i.jt = icmp sgt i64 %i.js, %i.iv               ; 2 uses
  br i1 %.not75.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.jt, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ju = sub nuw nsw i32 1, %.055.i.i
  br label %._crit_edge89.i.i

bb.be:                                            ; preds = %bb.bc
  %i.jv = sub nsw i64 %i.jr, %i.iv
  %i.jw = sitofp i64 %i.jv to double
  %i.jx = sub nsw i64 %i.iz, %i.iu
  %i.jy = sitofp i64 %i.jx to double
  %i.jz = sub nsw i64 %i.js, %i.iv
  %i.ka = sitofp i64 %i.jz to double
  %i.kb = sub nsw i64 %i.jm, %i.iu
  %i.kc = sitofp i64 %i.kb to double
  %i.kd = fneg double %i.kc
  %i.ke = fmul nnan double %i.kd, %i.ka
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.jy, double %i.ke) ; 2 uses
  %i.kg = fcmp une double %i.kf, 0.000000e+00
  br i1 %i.kg, label %bb.bf, label %_ZN10ClipperLib14PointInPolygonERKNS_8IntPointEPNS_5OutPtE.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.kh = fcmp ogt double %i.kf, 0.000000e+00
  %i.ki = icmp sle i64 %i.iz, %i.jm
  %i.kj = xor i1 %i.ki, %i.kh
  %i.kk = sub nuw nsw i32 1, %.055.i.i
  %spec.select.i.i = select i1 %i.kj, i32 %i.kk, i32 %.055.i.i
  br label %._crit_edge89.i.i

bb.bg:                                            ; preds = %bb.bb
  br i1 %i.jt, label %bb.bh, label %._crit_edge89.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.kl = sub nsw i64 %i.jr, %i.iv
  %i.km = sitofp i64 %i.kl to double
  %i.kn = sub nsw i64 %i.iz, %i.iu
  %i.ko = sitofp i64 %i.kn to double
  %i.kp = sub nsw i64 %i.js, %i.iv
  %i.kq = sitofp i64 %i.kp to double
  %i.kr = sub nsw i64 %i.jm, %i.iu
  %i.ks = sitofp i64 %i.kr to double
  %i.kt = fneg double %i.ks
  %i.ku = fmul nnan double %i.kt, %i.kq
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.km, double %i.ko, double %i.ku) ; 2 uses
  %i.kw = fcmp une double %i.kv, 0.000000e+00
  br i1 %i.kw, label %bb.bi, label %_ZN10ClipperLib14PointInPolygonERKNS_8IntPointEPNS_5OutPtE.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.kx = fcmp ogt double %i.kv, 0.000000e+00
  %i.ky = icmp sle i64 %i.iz, %i.jm
  %i.kz = xor i1 %i.ky, %i.kx
  %i.la = sub nuw nsw i32 1, %.055.i.i
  %spec.select76.i.i = select i1 %i.kz, i32 %i.la, i32 %.055.i.i
  br label %._crit_edge89.i.i

._crit_edge89.i.i:                                ; preds = %bb.bi, %bb.bg, %bb.bf, %bb.bd, %bb.ba, %bb.az
  %.5.i.i = phi i32 [ %i.ju, %bb.bd ], [ %spec.select.i.i, %bb.bf ], [ %spec.select76.i.i, %bb.bi ], [ %.055.i.i, %bb.bg ], [ %.055.i.i, %bb.ba ], [ %.055.i.i, %bb.az ] ; 2 uses
  %i.lb = icmp eq ptr %i.ir, %i.ix
  br i1 %i.lb, label %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.i, label %bb.aw, !llvm.loop !3

_ZN10ClipperLib14PointInPolygonERKNS_8IntPointEPNS_5OutPtE.exit.thread.i: ; preds = %bb.bh, %bb.be, %bb.az, %bb.ax
  %i.lc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %.not.i12.i = icmp eq ptr %i.ld, %i.ip
  br i1 %.not.i12.i, label %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread.i, label %bb.av, !llvm.loop !4

_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.i: ; preds = %._crit_edge89.i.i
  %.not16.i = icmp eq i32 %.5.i.i, 0
  br i1 %.not16.i, label %bb.bj, label %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread.i

_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread.i: ; preds = %_ZN10ClipperLib14PointInPolygonERKNS_8IntPointEPNS_5OutPtE.exit.thread.i, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.i
  store ptr %i.au, ptr %i.ii, align 8
  %.pre.i77 = load ptr, ptr %0, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread.i, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.i, %_ZN10ClipperLibL14ParseFirstLeftEPNS_6OutRecE.exit.i
  %i.le = phi ptr [ %i.ie, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.i ], [ %.pre.i77, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread.i ], [ %i.ie, %_ZN10ClipperLibL14ParseFirstLeftEPNS_6OutRecE.exit.i ] ; 2 uses
  %i.lf = add nuw i64 %.017.i, 1                  ; 2 uses
  %i.lg = getelementptr i8, ptr %i.le, i64 -24
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = getelementptr inbounds i8, ptr %0, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 80
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 88
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = load ptr, ptr %i.lj, align 8            ; 2 uses
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = ashr exact i64 %i.lp, 3
  %i.lr = icmp ult i64 %i.lf, %i.lq
  br i1 %i.lr, label %.lr.ph.i, label %_ZN10ClipperLib7Clipper16FixupFirstLefts1EPNS_6OutRecES2_.exit, !llvm.loop !35

_ZN10ClipperLib7Clipper16FixupFirstLefts1EPNS_6OutRecES2_.exit: ; preds = %bb.bj, %bb.as, %bb.ac, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread, %bb.ar, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit75.thread, %bb.aq, %bb.g, %bb.f, %bb.e
  %.1 = phi ptr [ %.0106, %bb.e ], [ %.0106, %bb.g ], [ %.0106, %bb.f ], [ %.060, %bb.aq ], [ %.060, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit75.thread ], [ %.060, %bb.ac ], [ %.060, %bb.ar ], [ %.060, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread ], [ %.060, %bb.as ], [ %.060, %bb.bj ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %.0 = load ptr, ptr %i.ls, align 8              ; 3 uses
  %i.lt = load ptr, ptr %i.o, align 8
  %.not66 = icmp eq ptr %.0, %i.lt
  br i1 %.not66, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !119

._crit_edge.loopexit:                             ; preds = %_ZN10ClipperLib7Clipper16FixupFirstLefts1EPNS_6OutRecES2_.exit
  %.pre = load ptr, ptr %i.w, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.lu = phi ptr [ %.0104, %bb.d ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.lv = phi ptr [ %i.v, %bb.d ], [ %.0, %._crit_edge.loopexit ] ; 2 uses
  %.not67 = icmp eq ptr %i.lu, %i.lv
  br i1 %.not67, label %.loopexit.loopexit, label %bb.d, !llvm.loop !120

.loopexit.loopexit:                               ; preds = %._crit_edge
  %.pre113 = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.c
  %i.lw = phi ptr [ %.pre113, %.loopexit.loopexit ], [ %i.j, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 -24
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds i8, ptr %0, i64 %i.ly ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 80
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 88
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = ashr exact i64 %i.mg, 3
  %i.mi = icmp ult i64 %i.l, %i.mh
  br i1 %i.mi, label %bb.b, label %._crit_edge110

._crit_edge110:                                   ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ClipperLib7Clipper10ClearJoinsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(135) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE6resizeEm.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.e = icmp eq ptr %i.l, %i.k
  br i1 %i.e, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN10ClipperLib4JoinES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN10ClipperLib4JoinES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.k, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE6resizeEm.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN10ClipperLib4JoinES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.k, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = phi ptr [ %i.l, %bb.c ], [ %i.c, %bb.a ]
  %.06 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.06
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #33
  %.pre = load ptr, ptr %i.b, align 8
  %.pre10 = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %.pre10, %bb.b ] ; 4 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %i.m = add nuw i64 %.06, 1                      ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.m, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib7Clipper15SetWindingCountERNS_5TEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(136) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %.078.in115 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.078116 = load ptr, ptr %.078.in115, align 8   ; 2 uses
  %.not117 = icmp eq ptr %.078116, null
  br i1 %.not117, label %.critedge96, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %.078118 = phi ptr [ %.078116, %.lr.ph ], [ %.078, %.critedge2 ] ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.078118, i64 56
  %i.d = load i32, ptr %i.c, align 8
  %.not88 = icmp eq i32 %i.d, %i.b
  br i1 %.not88, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.078118, i64 64
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.b, %bb.c
  %.078.in = getelementptr inbounds nuw i8, ptr %.078118, i64 112
  %.078 = load ptr, ptr %.078.in, align 8         ; 2 uses
  %.not = icmp eq ptr %.078, null
  br i1 %.not, label %.critedge96, label %bb.b, !llvm.loop !121

.critedge96:                                      ; preds = %.critedge2, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge96
  %i.m = icmp eq i32 %i.l, 0
  %.in.v = select i1 %i.m, i64 128, i64 124
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.n = load i32, ptr %.in, align 4
  %i.o = icmp eq i32 %i.n, 3
  %i.p = select i1 %i.o, i32 -1, i32 1
  br label %bb.e

bb.e:                                             ; preds = %.critedge96, %bb.d
  %.sink = phi i32 [ %i.p, %bb.d ], [ %i.i, %.critedge96 ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.sink, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.r, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  br label %bb.p

.critedge:                                        ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %3 = load i32, ptr %2, align 8                  ; 7 uses
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %bb.f, label %.thread

bb.f:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i32, ptr %i.w, align 8
  %.not89 = icmp eq i32 %i.x, 1
  br i1 %.not89, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.078118, i64 72
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.aa, ptr %i.ab, align 8
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp eq i32 %i.b, 0
  %.0.in.in.v.i = select i1 %i.ac, i64 128, i64 124
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.v.i
  %.0.in.i = load i32, ptr %.0.in.in.i, align 4
  %.0.i = icmp eq i32 %.0.in.i, 0
  br i1 %.0.i, label %.preheader110, label %6

.preheader110:                                    ; preds = %bb.h
  %.0.in119 = getelementptr inbounds nuw i8, ptr %.078118, i64 112
  %.0120 = load ptr, ptr %.0.in119, align 8       ; 2 uses
  %.not90121 = icmp eq ptr %.0120, null
  br i1 %.not90121, label %._crit_edge, label %.lr.ph124

.thread:                                          ; preds = %.critedge
  %5 = icmp eq i32 %i.b, 0
  %.0.in.in.v.i101 = select i1 %5, i64 128, i64 124
  %.0.in.in.i102 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.v.i101
  %.0.in.i103 = load i32, ptr %.0.in.in.i102, align 4
  %.0.i104 = icmp eq i32 %.0.in.i103, 0
  br i1 %.0.i104, label %._crit_edge, label %.thread106

.lr.ph124:                                        ; preds = %.preheader110, %bb.j
  %.0123 = phi ptr [ %.0, %bb.j ], [ %.0120, %.preheader110 ] ; 3 uses
  %.077122 = phi i8 [ %.1, %bb.j ], [ 1, %.preheader110 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0123, i64 56
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ae, %i.b
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph124
  %i.ag = getelementptr inbounds nuw i8, ptr %.0123, i64 64
  %i.ah = load i32, ptr %i.ag, align 8
  %.not91 = icmp ne i32 %i.ah, 0
  %i.ai = zext i1 %.not91 to i8
  %spec.select146.a = xor i8 %.077122, %i.ai
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph124
  %.1 = phi i8 [ %.077122, %.lr.ph124 ], [ %spec.select146.a, %bb.i ] ; 2 uses
  %.0.in = getelementptr inbounds nuw i8, ptr %.0123, i64 112
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not90 = icmp eq ptr %.0, null
  br i1 %.not90, label %._crit_edge.loopexit, label %.lr.ph124, !llvm.loop !122

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.aj = xor i8 %.1, 1
  %i.ak = zext nneg i8 %i.aj to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %.preheader110, %._crit_edge.loopexit
  %.sink147 = phi i32 [ %i.ak, %._crit_edge.loopexit ], [ 0, %.preheader110 ], [ %3, %.thread ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.sink147, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.078118, i64 72
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.an, ptr %i.ao, align 8
  br label %bb.p

6:                                                ; preds = %bb.h
  %7 = getelementptr inbounds nuw i8, ptr %.078118, i64 68
  %8 = load i32, ptr %7, align 4                  ; 4 uses
  %9 = mul nsw i32 %8, %i.f
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %bb.k, label %bb.n

.thread106:                                       ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %.078118, i64 68
  %i.aq = load i32, ptr %i.ap, align 4            ; 3 uses
  %i.ar = mul nsw i32 %i.aq, %i.f
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.k, label %.thread107

bb.k:                                             ; preds = %.thread106, %6
  %11 = phi i32 [ %i.aq, %.thread106 ], [ %8, %6 ] ; 2 uses
  %i.at = add i32 %11, -2
  %i.au = icmp ult i32 %i.at, -3
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = mul nsw i32 %3, %i.f
  %i.aw = icmp slt i32 %i.av, 0
  %i.ax = select i1 %i.aw, i32 0, i32 %3
  %spec.select151 = add nsw i32 %11, %i.ax
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %spec.select = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %bb.o

bb.n:                                             ; preds = %6
  %.inv = icmp sgt i32 %8, -1
  %.v = select i1 %.inv, i32 1, i32 -1
  %i.ay = add nsw i32 %.v, %8
  br label %bb.o

.thread107:                                       ; preds = %.thread106
  %i.az = mul nsw i32 %3, %i.f
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = select i1 %i.ba, i32 0, i32 %3
  %spec.select152 = add nsw i32 %i.aq, %i.bb
  br label %bb.o

bb.o:                                             ; preds = %.thread107, %bb.l, %bb.n, %bb.m
  %.sink149 = phi i32 [ %i.ay, %bb.n ], [ %spec.select152, %.thread107 ], [ %spec.select151, %bb.l ], [ %spec.select, %bb.m ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.sink149, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.078118, i64 72
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.be, ptr %i.bf, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.o, %._crit_edge, %bb.e
  %.promoted = phi i32 [ %i.aa, %bb.g ], [ %i.an, %._crit_edge ], [ %i.be, %bb.o ], [ 0, %bb.e ] ; 2 uses
  %i.bg = phi i32 [ %i.b, %bb.g ], [ %i.b, %._crit_edge ], [ %i.b, %bb.o ], [ %i.l, %bb.e ]
  %.078.pn92 = phi ptr [ %.078118, %bb.g ], [ %.078118, %._crit_edge ], [ %.078118, %bb.o ], [ %i.v, %bb.e ]
  %.179.in = getelementptr inbounds nuw i8, ptr %.078.pn92, i64 104
  %.179 = load ptr, ptr %.179.in, align 8         ; 3 uses
  %i.bh = icmp eq i32 %i.bg, 0
  %.0.in.in.v.i97 = select i1 %i.bh, i64 124, i64 128
  %.0.in.in.i98 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.v.i97
  %.0.in.i99 = load i32, ptr %.0.in.in.i98, align 4
  %.0.i100 = icmp eq i32 %.0.in.i99, 0
  %.not94128 = icmp eq ptr %.179, %1              ; 2 uses
  br i1 %.0.i100, label %.preheader, label %.preheader108

.preheader108:                                    ; preds = %bb.p
  br i1 %.not94128, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %.preheader108
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.t

.preheader:                                       ; preds = %bb.p
  br i1 %.not94128, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph130, %bb.s
  %i.bk = phi i32 [ %.promoted, %.lr.ph130 ], [ %i.bp, %bb.s ] ; 2 uses
  %.2129 = phi ptr [ %.179, %.lr.ph130 ], [ %i.br, %bb.s ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.2129, i64 64
  %i.bm = load i32, ptr %i.bl, align 8
  %.not95 = icmp eq i32 %i.bm, 0
  br i1 %.not95, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp eq i32 %i.bk, 0
  %i.bo = zext i1 %i.bn to i32                    ; 2 uses
  store i32 %i.bo, ptr %i.bj, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = phi i32 [ %i.bo, %bb.r ], [ %i.bk, %bb.q ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.2129, i64 104
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not94 = icmp eq ptr %i.br, %1
  br i1 %.not94, label %.loopexit, label %bb.q, !llvm.loop !123

bb.t:                                             ; preds = %.lr.ph127, %bb.t
  %i.bs = phi i32 [ %.promoted, %.lr.ph127 ], [ %i.bv, %bb.t ]
  %.3126 = phi ptr [ %.179, %.lr.ph127 ], [ %i.bx, %bb.t ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.3126, i64 64
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = add nsw i32 %i.bs, %i.bu                ; 2 uses
  store i32 %i.bv, ptr %i.bi, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.3126, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not93 = icmp eq ptr %i.bx, %1
  br i1 %.not93, label %.loopexit, label %bb.t, !llvm.loop !124

.loopexit:                                        ; preds = %bb.t, %bb.s, %.preheader108, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK10ClipperLib7Clipper17IsEvenOddFillTypeERKNS_5TEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %.0.in.in.v = select i1 %i.c, i64 128, i64 124
  %.0.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.v
  %.0.in = load i32, ptr %.0.in.in, align 4
  %.0 = icmp eq i32 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK10ClipperLib7Clipper20IsEvenOddAltFillTypeERKNS_5TEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %.0.in.in.v = select i1 %i.c, i64 124, i64 128
  %.0.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.v
  %.0.in = load i32, ptr %.0.in.in, align 4
  %.0 = icmp eq i32 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK10ClipperLib7Clipper14IsContributingERKNS_5TEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.val = load i32, ptr %i.e, align 4             ; 3 uses
  %.val36 = load i32, ptr %i.d, align 8           ; 3 uses
  %.0 = select i1 %i.c, i32 %.val, i32 %.val36    ; 3 uses
  %.030 = select i1 %i.c, i32 %.val36, i32 %.val
  switch i32 %.030, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ne i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4
  %.not33 = icmp eq i32 %i.j, 1
  %or.cond = select i1 %i.h, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.f, label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @llvm.abs.i32(i32 %i.l, i1 false)
  %.not32 = icmp eq i32 %i.m, 1
  br i1 %.not32, label %bb.f, label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i32, ptr %i.n, align 4
  %.not = icmp eq i32 %i.o, 1
  br i1 %.not, label %bb.f, label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = load i32, ptr %i.p, align 4
  %.not34 = icmp eq i32 %i.q, -1
  br i1 %.not34, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load i32, ptr %i.r, align 8
  switch i32 %i.s, label %bb.ac [
    i32 0, label %bb.g
    i32 1, label %bb.k
    i32 2, label %bb.o
    i32 3, label %bb.x
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i32, ptr %i.t, align 8              ; 3 uses
  switch i32 %.0, label %bb.j [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.v = icmp ne i32 %i.u, 0
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %i.u, 0
  br label %bb.ac

bb.j:                                             ; preds = %bb.g
  %i.x = icmp slt i32 %i.u, 0
  br label %bb.ac

bb.k:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i32, ptr %i.y, align 8              ; 3 uses
  switch i32 %.0, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.aa = icmp eq i32 %i.z, 0
  br label %bb.ac

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp slt i32 %i.z, 1
end_hunk_0
begin_hunk_1_@_ZN10ClipperLib7Clipper14IntersectEdgesEPNS_5TEdgeES2_RNS_8IntPointE:bb.a

bb.ar:                                            ; preds = %bb.ap
  %i.cz = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZN10ClipperLib7Clipper13AppendPolygonEPNS_5TEdgeES2_(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.at:                                            ; preds = %bb.ar
  tail call void @_ZN10ClipperLib7Clipper13AppendPolygonEPNS_5TEdgeES2_(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %2, ptr noundef nonnull %1)
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.au:                                            ; preds = %bb.am, %bb.al
  %i.da = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.db = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4
  store i32 %i.df, ptr %i.dc, align 4
  store i32 %i.dd, ptr %i.de, align 4
  %i.dg = load i32, ptr %i.a, align 4
  %i.dh = load i32, ptr %i.d, align 4
  store i32 %i.dh, ptr %i.a, align 4
  store i32 %i.dg, ptr %i.d, align 4
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.av:                                            ; preds = %bb.aj
  br i1 %i.c, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %or.cond7 = icmp ult i64 %.0185, 2
  br i1 %or.cond7, label %bb.ax, label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.ax:                                            ; preds = %bb.aw
  %i.di = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4
  store i32 %i.dm, ptr %i.dj, align 4
  store i32 %i.dk, ptr %i.dl, align 4
  %i.dn = load i32, ptr %i.a, align 4
  %i.do = load i32, ptr %i.d, align 4
  store i32 %i.do, ptr %i.a, align 4
  store i32 %i.dn, ptr %i.d, align 4
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.ay:                                            ; preds = %bb.av
  br i1 %i.f, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %or.cond9 = icmp ult i64 %.0186, 2
  br i1 %or.cond9, label %bb.ba, label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.ba:                                            ; preds = %bb.az
  %i.dp = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4
  store i32 %i.dt, ptr %i.dq, align 4
  store i32 %i.dr, ptr %i.ds, align 4
  %i.du = load i32, ptr %i.a, align 4
  %i.dv = load i32, ptr %i.d, align 4
  store i32 %i.dv, ptr %i.a, align 4
  store i32 %i.du, ptr %i.d, align 4
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bb:                                            ; preds = %bb.ay
  %i.dw = icmp eq i64 %.0186, 1
  %or.cond11 = icmp ult i64 %.0186, 2
  br i1 %or.cond11, label %bb.bc, label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.dx = icmp eq i64 %.0185, 1
  %or.cond13 = icmp ult i64 %.0185, 2
  br i1 %or.cond13, label %bb.bd, label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dz = load i32, ptr %i.dy, align 8            ; 3 uses
  switch i32 %.0188, label %bb.bg [
    i32 2, label %bb.be
    i32 3, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.ea = sext i32 %i.dz to i64
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.eb = sub nsw i32 0, %i.dz
  %i.ec = sext i32 %i.eb to i64
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.ed = tail call i32 @llvm.abs.i32(i32 %i.dz, i1 false)
  %i.ee = zext i32 %i.ed to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.0184 = phi i64 [ %i.ee, %bb.bg ], [ %i.ea, %bb.be ], [ %i.ec, %bb.bf ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.eg = load i32, ptr %i.ef, align 8            ; 3 uses
  switch i32 %.0187, label %bb.bk [
    i32 2, label %bb.bi
    i32 3, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.eh = sext i32 %i.eg to i64
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.ei = sub nsw i32 0, %i.eg
  %i.ej = sext i32 %i.ei to i64
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bh
  %i.ek = tail call i32 @llvm.abs.i32(i32 %i.eg, i1 false)
  %i.el = zext i32 %i.ek to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0 = phi i64 [ %i.el, %bb.bk ], [ %i.eh, %bb.bi ], [ %i.ej, %bb.bj ] ; 4 uses
  %.not = icmp eq i32 %i.bw, %i.ca
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.em = tail call noundef ptr @_ZN10ClipperLib7Clipper15AddLocalMinPolyEPNS_5TEdgeES2_RKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bn:                                            ; preds = %bb.bl
  %or.cond15 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond15, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eo = load i32, ptr %i.en, align 8
  switch i32 %i.eo, label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit [
    i32 0, label %bb.bp
    i32 1, label %bb.br
    i32 2, label %bb.bt
    i32 3, label %bb.bw
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ep = icmp sgt i64 %.0184, 0
  %i.eq = icmp sgt i64 %.0, 0
  %or.cond17 = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %or.cond17, label %bb.bq, label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bq:                                            ; preds = %bb.bp
  %i.er = tail call noundef ptr @_ZN10ClipperLib7Clipper15AddLocalMinPolyEPNS_5TEdgeES2_RKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.br:                                            ; preds = %bb.bo
  %i.es = icmp slt i64 %.0184, 1
  %i.et = icmp slt i64 %.0, 1
  %or.cond19 = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond19, label %bb.bs, label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bs:                                            ; preds = %bb.br
  %i.eu = tail call noundef ptr @_ZN10ClipperLib7Clipper15AddLocalMinPolyEPNS_5TEdgeES2_RKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bt:                                            ; preds = %bb.bo
  %i.ev = icmp eq i32 %i.bw, 1
  %i.ew = icmp sgt i64 %.0184, 0
  %or.cond21 = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = icmp sgt i64 %.0, 0
  %or.cond23 = select i1 %or.cond21, i1 %i.ex, i1 false
  br i1 %or.cond23, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ey = icmp slt i64 %.0184, 1
  %or.cond25 = select i1 %i.bx, i1 %i.ey, i1 false
  %i.ez = icmp slt i64 %.0, 1
  %or.cond27 = select i1 %or.cond25, i1 %i.ez, i1 false
  br i1 %or.cond27, label %bb.bv, label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.fa = tail call noundef ptr @_ZN10ClipperLib7Clipper15AddLocalMinPolyEPNS_5TEdgeES2_RKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bw:                                            ; preds = %bb.bo
  %i.fb = tail call noundef ptr @_ZN10ClipperLib7Clipper15AddLocalMinPolyEPNS_5TEdgeES2_RKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

bb.bx:                                            ; preds = %bb.bn
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4
  store i32 %i.ff, ptr %i.fc, align 4
  store i32 %i.fd, ptr %i.fe, align 4
  br label %_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit

_ZN10ClipperLib7Clipper15AddLocalMaxPolyEPNS_5TEdgeES2_RKNS_8IntPointE.exit: ; preds = %bb.e, %.thread224, %bb.j, %bb.l, %bb.at, %bb.as, %bb.aq, %bb.au, %bb.az, %bb.ba, %bb.bc, %bb.bb, %bb.ax, %bb.aw, %bb.bx, %bb.bu, %bb.bv, %bb.br, %bb.bs, %bb.bp, %bb.bq, %bb.bw, %bb.bo, %bb.bm, %.thread212, %bb.p, %bb.r, %bb.q, %bb.m, %bb.n, %bb.f, %bb.g, %bb.h, %bb.i, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib7Clipper12SetHoleStateEPNS_5TEdgeEPNS_6OutRecE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #18 align 2 {
bb.a:
  %.017.in22 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.01723 = load ptr, ptr %.017.in22, align 8     ; 2 uses
  %.not24 = icmp eq ptr %.01723, null
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.01726 = phi ptr [ %.017, %bb.e ], [ %.01723, %bb.a ] ; 4 uses
  %.025 = phi ptr [ %.1, %bb.e ], [ null, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01726, i64 76
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.01726, i64 64
  %i.e = load i32, ptr %i.d, align 8
  %.not20 = icmp eq i32 %i.e, 0
  br i1 %.not20, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not21 = icmp eq ptr %.025, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.025, i64 76
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, %i.b
  %spec.store.select = select i1 %i.h, ptr null, ptr %.025
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %.lr.ph
  %.1 = phi ptr [ %spec.store.select, %bb.d ], [ %.025, %.lr.ph ], [ %.025, %bb.b ], [ %.01726, %bb.c ] ; 3 uses
  %.017.in = getelementptr inbounds nuw i8, ptr %.01726, i64 112
  %.017 = load ptr, ptr %.017.in, align 8         ; 2 uses
  %.not = icmp eq ptr %.017, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.e
  %.not19 = icmp eq ptr %.1, null
  br i1 %.not19, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.i, align 8
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 76
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i8, ptr %i.v, align 4, !range !47, !noundef !48
  %i.x = xor i8 %i.w, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  %.sink = phi i8 [ 0, %._crit_edge.thread ], [ %i.x, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %.sink, ptr %i.y, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10ClipperLib15GetLowermostRecEPNS_6OutRecES1_(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree noundef captures(ret: address, provenance) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.0.in46.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.047.i = load ptr, ptr %.0.in46.i, align 8     ; 2 uses
  %.not48.i = icmp eq ptr %.047.i, %i.d
  br i1 %.not48.i, label %_ZN10ClipperLib11GetBottomPtEPNS_5OutPtE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.h
  %.051.i = phi ptr [ %.0.i, %bb.h ], [ %.047.i, %bb.b ] ; 8 uses
  %.03050.i = phi ptr [ %.1.i, %bb.h ], [ null, %bb.b ] ; 4 uses
  %.03149.i = phi ptr [ %.132.i, %bb.h ], [ %i.d, %bb.b ] ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.051.i, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.051.i, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.03149.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.03149.i, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i64 %i.g, %i.j
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = icmp eq i64 %i.g, %i.j
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8              ; 2 uses
  %i.n = load i64, ptr %i.h, align 8              ; 2 uses
  %.not41.i = icmp sgt i64 %i.m, %i.n
  br i1 %.not41.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i64 %i.m, %i.n
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.051.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %.not42.i = icmp eq ptr %i.q, %.03149.i
  br i1 %.not42.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.051.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %.not43.i = icmp eq ptr %i.s, %.03149.i
  %spec.select.i = select i1 %.not43.i, ptr %.03050.i, ptr %.051.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph.i
  %.132.i = phi ptr [ %.03149.i, %bb.c ], [ %.051.i, %.lr.ph.i ], [ %.051.i, %bb.e ], [ %.03149.i, %bb.g ], [ %.03149.i, %bb.f ], [ %.03149.i, %bb.d ] ; 6 uses
  %.1.i = phi ptr [ %.03050.i, %bb.c ], [ null, %.lr.ph.i ], [ null, %bb.e ], [ %spec.select.i, %bb.g ], [ %.03050.i, %bb.f ], [ %.03050.i, %bb.d ] ; 4 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.051.i, i64 24
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  %.not.i = icmp eq ptr %.0.i, %.132.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.h
  %.not39.i = icmp eq ptr %.1.i, null
  %.not4054.i = icmp eq ptr %.1.i, %.132.i
  %or.cond.i = or i1 %.not39.i, %.not4054.i
  br i1 %or.cond.i, label %_ZN10ClipperLib11GetBottomPtEPNS_5OutPtE.exit, label %.lr.ph57.i

.loopexit.i:                                      ; preds = %bb.i
  %.not40.i = icmp eq ptr %.3.i, %.132.i
  br i1 %.not40.i, label %_ZN10ClipperLib11GetBottomPtEPNS_5OutPtE.exit, label %.lr.ph57.i, !llvm.loop !8

.lr.ph57.i:                                       ; preds = %._crit_edge.i, %.loopexit.i
  %.256.i = phi ptr [ %.3.i, %.loopexit.i ], [ %.1.i, %._crit_edge.i ] ; 3 uses
  %.23355.i = phi ptr [ %spec.select44.i, %.loopexit.i ], [ %.132.i, %._crit_edge.i ]
  %i.t = tail call noundef zeroext i1 @_ZN10ClipperLib15FirstIsBottomPtEPKNS_5OutPtES2_(ptr noundef %.0.i, ptr noundef nonnull %.256.i)
  %spec.select44.i = select i1 %i.t, ptr %.23355.i, ptr %.256.i ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select44.i, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select44.i, i64 16
  %i.x = load i64, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph57.i
  %.2.pn.i = phi ptr [ %.256.i, %.lr.ph57.i ], [ %.3.i, %bb.i ]
  %.3.in.i = getelementptr inbounds nuw i8, ptr %.2.pn.i, i64 24
  %.3.i = load ptr, ptr %.3.in.i, align 8         ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %.not.i.i = icmp ne i64 %i.z, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %.3.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ne i64 %i.ab, %i.x
  %i.ad = select i1 %.not.i.i, i1 true, i1 %i.ac
  br i1 %i.ad, label %bb.i, label %.loopexit.i, !llvm.loop !9

_ZN10ClipperLib11GetBottomPtEPNS_5OutPtE.exit:    ; preds = %.loopexit.i, %bb.b, %._crit_edge.i
  %.4.i = phi ptr [ %.132.i, %._crit_edge.i ], [ %i.d, %bb.b ], [ %spec.select44.i, %.loopexit.i ] ; 2 uses
  store ptr %.4.i, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN10ClipperLib11GetBottomPtEPNS_5OutPtE.exit, %bb.a
  %i.ae = phi ptr [ %.4.i, %_ZN10ClipperLib11GetBottomPtEPNS_5OutPtE.exit ], [ %i.b, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.ag, null
  br i1 %.not37, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.0.in46.i38 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.047.i39 = load ptr, ptr %.0.in46.i38, align 8 ; 2 uses
  %.not48.i40 = icmp eq ptr %.047.i39, %i.ai
  br i1 %.not48.i40, label %_ZN10ClipperLib11GetBottomPtEPNS_5OutPtE.exit69, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.k, %bb.q
end_hunk_1
