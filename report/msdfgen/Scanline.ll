Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Scanline?download=true
inline.NumInlined: 156
inline.NumDeleted: 73
begin_hunk_0_@_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE:bb.a
bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.d, %bb.e ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %i.a, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi double [ %i.e, %bb.b ], [ %3, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !13     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load double, ptr %i.g, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.k, %bb.d ], [ %3, %bb.c ] ; 3 uses
  %i.m = fcmp olt double %i.f, %2
  %i.n = fcmp olt double %i.l, %2
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.p = ptrtoint ptr %i.c to i64
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 4
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 4
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  br label %bb.f

.preheader:                                       ; preds = %bb.t, %bb.e
  %.097.lcssa = phi i8 [ 0, %bb.e ], [ %.198, %bb.t ] ; 2 uses
  %.093.lcssa = phi i8 [ 0, %bb.e ], [ %.194, %bb.t ] ; 2 uses
  %.089.lcssa = phi i32 [ 0, %bb.e ], [ %.190, %bb.t ]
  %.085.lcssa = phi i32 [ 0, %bb.e ], [ %.186, %bb.t ]
  %.081.lcssa = phi double [ %i.f, %bb.e ], [ %.182, %bb.t ] ; 2 uses
  %.080.lcssa = phi double [ %i.l, %bb.e ], [ %.1, %bb.t ] ; 2 uses
  %i.z = fcmp olt double %.081.lcssa, %3
  %i.aa = fcmp olt double %.080.lcssa, %3
  %i.ab = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %i.ab, label %.lr.ph135, label %._crit_edge

.lr.ph135:                                        ; preds = %.preheader
  %i.ac = ptrtoint ptr %i.c to i64
  %i.ad = ptrtoint ptr %i.a to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 4
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = ptrtoint ptr %i.i to i64
  %i.ai = ptrtoint ptr %i.g to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 4
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  br label %bb.u

bb.f:                                             ; preds = %.lr.ph, %bb.t
  %.080121 = phi double [ %i.l, %.lr.ph ], [ %.1, %bb.t ] ; 4 uses
  %.081120 = phi double [ %i.f, %.lr.ph ], [ %.182, %bb.t ] ; 4 uses
  %.085119 = phi i32 [ 0, %.lr.ph ], [ %.186, %bb.t ] ; 4 uses
  %.089118 = phi i32 [ 0, %.lr.ph ], [ %.190, %bb.t ] ; 4 uses
  %.093117 = phi i8 [ 0, %.lr.ph ], [ %.194, %bb.t ]
  %.097116 = phi i8 [ 0, %.lr.ph ], [ %.198, %bb.t ]
  %i.am = fcmp olt double %.080121, %.081120
  %i.an = select i1 %i.am, double %.080121, double %.081120 ; 2 uses
  %i.ao = fcmp oeq double %.081120, %i.an
  %i.ap = icmp slt i32 %.089118, %i.t
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.aq = sext i32 %.089118 to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !17 ; 4 uses
  switch i32 %4, label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = icmp ne i32 %i.at, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit

bb.i:                                             ; preds = %bb.g
  %i.av = trunc i32 %i.at to i1
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit

bb.j:                                             ; preds = %bb.g
  %i.aw = icmp sgt i32 %i.at, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit

bb.k:                                             ; preds = %bb.g
  %i.ax = icmp slt i32 %i.at, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit

_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i1 [ %i.ax, %bb.k ], [ %i.au, %bb.h ], [ %i.av, %bb.i ], [ %i.aw, %bb.j ], [ false, %bb.g ]
  %i.ay = zext i1 %.0.i to i8                     ; 2 uses
  %i.az = add nsw i32 %.089118, 1                 ; 4 uses
  %i.ba = icmp slt i32 %i.az, %i.t
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit, %bb.f
  %.198 = phi i8 [ %.097116, %bb.f ], [ %i.ay, %bb.l ], [ %i.ay, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit ] ; 2 uses
  %.190 = phi i32 [ %.089118, %bb.f ], [ %i.az, %bb.l ], [ %i.az, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit ] ; 2 uses
  %.182 = phi double [ %.081120, %bb.f ], [ %i.bd, %bb.l ], [ %3, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit ] ; 3 uses
  %i.be = fcmp oeq double %.080121, %i.an
  %i.bf = icmp slt i32 %.085119, %i.y
  %or.cond140 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond140, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bg = sext i32 %.085119 to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !17 ; 4 uses
  switch i32 %4, label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111 [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.bk = icmp ne i32 %i.bj, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111

bb.p:                                             ; preds = %bb.n
  %i.bl = trunc i32 %i.bj to i1
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111

bb.q:                                             ; preds = %bb.n
  %i.bm = icmp sgt i32 %i.bj, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111

bb.r:                                             ; preds = %bb.n
  %i.bn = icmp slt i32 %i.bj, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111

_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111: ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i110 = phi i1 [ %i.bn, %bb.r ], [ %i.bk, %bb.o ], [ %i.bl, %bb.p ], [ %i.bm, %bb.q ], [ false, %bb.n ]
  %i.bo = zext i1 %.0.i110 to i8                  ; 2 uses
  %i.bp = add nsw i32 %.085119, 1                 ; 4 uses
  %i.bq = icmp slt i32 %i.bp, %i.y
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111, %bb.m
  %.194 = phi i8 [ %.093117, %bb.m ], [ %i.bo, %bb.s ], [ %i.bo, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111 ] ; 2 uses
  %.186 = phi i32 [ %.085119, %bb.m ], [ %i.bp, %bb.s ], [ %i.bp, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111 ] ; 2 uses
  %.1 = phi double [ %.080121, %bb.m ], [ %i.bt, %bb.s ], [ %3, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit111 ] ; 3 uses
  %i.bu = fcmp olt double %.182, %2
  %i.bv = fcmp olt double %.1, %2
  %i.bw = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %i.bw, label %bb.f, label %.preheader, !llvm.loop !27

bb.u:                                             ; preds = %.lr.ph135, %bb.ai
  %.0134 = phi double [ %2, %.lr.ph135 ], [ %i.by, %bb.ai ]
  %.2133 = phi double [ %.080.lcssa, %.lr.ph135 ], [ %.3, %bb.ai ] ; 4 uses
  %.283132 = phi double [ %.081.lcssa, %.lr.ph135 ], [ %.384, %bb.ai ] ; 4 uses
  %.287131 = phi i32 [ %.085.lcssa, %.lr.ph135 ], [ %.388, %bb.ai ] ; 4 uses
  %.291130 = phi i32 [ %.089.lcssa, %.lr.ph135 ], [ %.392, %bb.ai ] ; 4 uses
  %.295129 = phi i8 [ %.093.lcssa, %.lr.ph135 ], [ %.396, %bb.ai ] ; 2 uses
  %.299128 = phi i8 [ %.097.lcssa, %.lr.ph135 ], [ %.3100, %bb.ai ] ; 2 uses
  %.0101127 = phi double [ 0.000000e+00, %.lr.ph135 ], [ %.1102, %bb.ai ] ; 2 uses
  %i.bx = fcmp olt double %.2133, %.283132
  %i.by = select i1 %i.bx, double %.2133, double %.283132 ; 5 uses
  %i.bz = icmp eq i8 %.295129, %.299128
  %i.ca = fsub double %i.by, %.0134
  %i.cb = fadd double %.0101127, %i.ca
  %.1102 = select i1 %i.bz, double %i.cb, double %.0101127 ; 2 uses
  %i.cc = fcmp oeq double %.283132, %i.by
  %i.cd = icmp slt i32 %.291130, %i.ag
  %or.cond141 = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond141, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ce = sext i32 %.291130 to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !17 ; 4 uses
  switch i32 %4, label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113 [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.ci = icmp ne i32 %i.ch, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113

bb.x:                                             ; preds = %bb.v
  %i.cj = trunc i32 %i.ch to i1
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113

bb.y:                                             ; preds = %bb.v
  %i.ck = icmp sgt i32 %i.ch, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113

bb.z:                                             ; preds = %bb.v
  %i.cl = icmp slt i32 %i.ch, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113

_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113: ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i112 = phi i1 [ %i.cl, %bb.z ], [ %i.ci, %bb.w ], [ %i.cj, %bb.x ], [ %i.ck, %bb.y ], [ false, %bb.v ]
  %i.cm = zext i1 %.0.i112 to i8                  ; 2 uses
  %i.cn = add nsw i32 %.291130, 1                 ; 4 uses
  %i.co = icmp slt i32 %i.cn, %i.ag
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113, %bb.u
  %.3100 = phi i8 [ %.299128, %bb.u ], [ %i.cm, %bb.aa ], [ %i.cm, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113 ] ; 2 uses
  %.392 = phi i32 [ %.291130, %bb.u ], [ %i.cn, %bb.aa ], [ %i.cn, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113 ]
  %.384 = phi double [ %.283132, %bb.u ], [ %i.cr, %bb.aa ], [ %3, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit113 ] ; 2 uses
  %i.cs = fcmp oeq double %.2133, %i.by
  %i.ct = icmp slt i32 %.287131, %i.al
  %or.cond142 = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond142, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.cu = sext i32 %.287131 to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !17 ; 4 uses
  switch i32 %4, label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115 [
    i32 0, label %bb.ad
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cy = icmp ne i32 %i.cx, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115

bb.ae:                                            ; preds = %bb.ac
  %i.cz = trunc i32 %i.cx to i1
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115

bb.af:                                            ; preds = %bb.ac
  %i.da = icmp sgt i32 %i.cx, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115

bb.ag:                                            ; preds = %bb.ac
  %i.db = icmp slt i32 %i.cx, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115

_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.0.i114 = phi i1 [ %i.db, %bb.ag ], [ %i.cy, %bb.ad ], [ %i.cz, %bb.ae ], [ %i.da, %bb.af ], [ false, %bb.ac ]
  %i.dc = zext i1 %.0.i114 to i8                  ; 2 uses
  %i.dd = add nsw i32 %.287131, 1                 ; 4 uses
  %i.de = icmp slt i32 %i.dd, %i.al
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115, %bb.ab
  %.396 = phi i8 [ %.295129, %bb.ab ], [ %i.dc, %bb.ah ], [ %i.dc, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115 ] ; 2 uses
  %.388 = phi i32 [ %.287131, %bb.ab ], [ %i.dd, %bb.ah ], [ %i.dd, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115 ]
  %.3 = phi double [ %.2133, %bb.ab ], [ %i.dh, %bb.ah ], [ %3, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115 ] ; 2 uses
  %i.di = fcmp olt double %.384, %3
  %i.dj = fcmp olt double %.3, %3
  %i.dk = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %i.dk, label %bb.u, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.ai, %.preheader
  %.0101.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.1102, %bb.ai ] ; 2 uses
  %.299.lcssa = phi i8 [ %.097.lcssa, %.preheader ], [ %.3100, %bb.ai ]
  %.295.lcssa = phi i8 [ %.093.lcssa, %.preheader ], [ %.396, %bb.ai ]
  %.0.lcssa = phi double [ %2, %.preheader ], [ %i.by, %bb.ai ]
  %i.dl = icmp eq i8 %.295.lcssa, %.299.lcssa
  %i.dm = fsub double %3, %.0.lcssa
  %i.dn = fadd double %.0101.lcssa, %i.dm
  %.2103 = select i1 %i.dl, double %i.dn, double %.0101.lcssa
  ret double %.2103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7msdfgen8ScanlineC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN7msdfgen8Scanline10preprocessEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((24, 28)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !24
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  tail call void @qsort(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 16, ptr noundef nonnull @_ZN7msdfgenL20compareIntersectionsEPKvS1_)
  %i.j = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not6 = icmp eq ptr %i.j, %i.k
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.08 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.02.07 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17
  %i.n = add nsw i32 %i.m, %.08                   ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZN7msdfgenL20compareIntersectionsEPKvS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !16
  %i.b = load double, ptr %1, align 8, !tbaa !16
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = fcmp ogt double %i.c, 0.000000e+00
  %i.e = zext i1 %i.d to i32
  %i.f = fcmp olt double %i.c, 0.000000e+00
  %.neg.i = sext i1 %i.f to i32
  %i.g = add nsw i32 %.neg.i, %i.e
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen8Scanline16setIntersectionsERKSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  tail call void @qsort(ptr noundef nonnull %i.c, i64 noundef %i.j, i64 noundef 16, ptr noundef nonnull @_ZN7msdfgenL20compareIntersectionsEPKvS1_)
  %i.k = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not6.i = icmp eq ptr %i.k, %i.l
  br i1 %.not6.i, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.08.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %bb.b ]
  %.sroa.02.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %i.o = add nsw i32 %i.n, %.08.i                 ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.l
  br i1 %.not.i, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %.lr.ph.i, !llvm.loop !0

_ZN7msdfgen8Scanline10preprocessEv.exit:          ; preds = %.lr.ph.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #15 ; 3 uses
  %i.p = icmp samesign ugt i64 %i.f, 16
  br i1 %i.p, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, label %bb.e, !prof !31

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 16
  br i1 %i.q, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split: ; preds = %bb.e, %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i
  %.sink = phi i64 [ %i.f, %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i ], [ 16, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %.sink, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #16
  br label %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !26
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !34
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.l:                                             ; preds = %bb.g
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN7msdfgen8Scanline12IntersectionES3_ET0_T_S5_S4_.exit

end_hunk_0
