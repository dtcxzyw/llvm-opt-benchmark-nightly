Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/json_simple?download=true
inline.NumInlined: 15359
inline.NumDeleted: 6624
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5arrow9rapidjson8internal18CheckWithinHalfULPEdRKNS1_10BigIntegerEi:bb.a
  %i.en = call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.em, i64 %i.ck)
  %i.eo = getelementptr [8 x i8], ptr %i.ek, i64 %i.ct
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !101
  %i.ep = add i64 %.025.i65, -4                   ; 2 uses
  %.not.i66.3 = icmp eq i64 %i.ep, 0
  br i1 %.not.i66.3, label %._crit_edge.i67, label %.lr.ph.i64, !llvm.loop !51

bb.j:                                             ; preds = %._crit_edge.i67
  %i.eq = add i64 %i.do, 1
  br label %.sink.split.i69

.sink.split.i69:                                  ; preds = %bb.j, %bb.h
  %.sink.i70 = phi i64 [ %i.eq, %bb.j ], [ %i.cz, %bb.h ]
  store i64 %.sink.i70, ptr %i.cm, align 8, !tbaa !679
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i69, %._crit_edge.i67
  %i.er = shl nuw nsw i64 %i.ct, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(3336) %i.cl, i8 0, i64 %i.er, i1 false)
  br label %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit71

_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit71: ; preds = %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 3328 ; 2 uses
  store i64 1, ptr %i.es, align 8, !tbaa !679
  store i64 1, ptr %5, align 8, !tbaa !101
  %i.et = zext nneg i32 %i.x to i64               ; 7 uses
  %i.eu = call noundef nonnull align 8 dereferenceable(3336) ptr @_ZN5arrow9rapidjson8internal10BigInteger12MultiplyPow5Ej(ptr noundef nonnull align 8 dereferenceable(3336) %5, i32 noundef %.0) ; 14 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 3328 ; 6 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !679 ; 3 uses
  %i.ex = icmp eq i64 %i.ew, 1
  %i.ey = load i64, ptr %i.eu, align 8
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = select i1 %i.ex, i1 %i.ez, i1 false
  %i.fb = icmp sle i32 %.2, %spec.select.i61
  %or.cond.i72 = or i1 %i.fb, %i.fa
  br i1 %or.cond.i72, label %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit81, label %bb.l

bb.l:                                             ; preds = %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit71
  %i.fc = lshr i64 %i.et, 6                       ; 10 uses
  %i.fd = and i64 %i.et, 63                       ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fc
  %i.fg = shl i64 %i.ew, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ff, ptr nonnull align 8 dereferenceable(3336) %i.eu, i64 %i.fg, i1 false)
  %i.fh = load i64, ptr %i.ev, align 8, !tbaa !679
  %i.fi = add i64 %i.fh, %i.fc
  br label %.sink.split.i79

bb.n:                                             ; preds = %bb.l
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ew
  store i64 0, ptr %i.fj, align 8, !tbaa !101
  %i.fk = load i64, ptr %i.ev, align 8, !tbaa !679 ; 5 uses
  %.not24.i73 = icmp eq i64 %i.fk, 0
  br i1 %.not24.i73, label %._crit_edge.i77, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %bb.n
  %xtraiter143 = and i64 %i.fk, 3                 ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.lr.ph.i74.prol.loopexit, label %.lr.ph.i74.prol

.lr.ph.i74.prol:                                  ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74.prol
  %.025.i75.prol = phi i64 [ %i.fr, %.lr.ph.i74.prol ], [ %i.fk, %.lr.ph.i74.preheader ] ; 2 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %.lr.ph.i74.prol ], [ 0, %.lr.ph.i74.preheader ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.025.i75.prol ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !101
  %i.fn = getelementptr i8, ptr %i.fl, i64 -8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !101
  %i.fp = call i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fo, i64 %i.et)
  %i.fq = getelementptr [8 x i8], ptr %i.fl, i64 %i.fc
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !101
  %i.fr = add i64 %.025.i75.prol, -1              ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %.lr.ph.i74.prol.loopexit, label %.lr.ph.i74.prol, !llvm.loop !5950

.lr.ph.i74.prol.loopexit:                         ; preds = %.lr.ph.i74.prol, %.lr.ph.i74.preheader
  %.025.i75.unr = phi i64 [ %i.fk, %.lr.ph.i74.preheader ], [ %i.fr, %.lr.ph.i74.prol ]
  %i.fs = icmp ult i64 %i.fk, 4
  br i1 %i.fs, label %._crit_edge.i77, label %.lr.ph.i74

._crit_edge.i77:                                  ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74, %bb.n
  %i.ft = load i64, ptr %i.eu, align 8, !tbaa !101
  %i.fu = shl i64 %i.ft, %i.fd
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fc
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !101
  %i.fw = load i64, ptr %i.ev, align 8, !tbaa !679
  %i.fx = add i64 %i.fw, %i.fc                    ; 3 uses
  store i64 %i.fx, ptr %i.ev, align 8, !tbaa !679
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !101
  %.not23.i78 = icmp eq i64 %i.fz, 0
  br i1 %.not23.i78, label %bb.p, label %bb.o

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74
  %.025.i75 = phi i64 [ %i.gy, %.lr.ph.i74 ], [ %.025.i75.unr, %.lr.ph.i74.prol.loopexit ] ; 5 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.025.i75 ; 3 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !101
  %i.gc = getelementptr i8, ptr %i.ga, i64 -8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !101 ; 2 uses
  %i.ge = call i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gd, i64 %i.et)
  %i.gf = getelementptr [8 x i8], ptr %i.ga, i64 %i.fc
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !101
  %i.gg = getelementptr [8 x i8], ptr %i.eu, i64 %.025.i75 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -8
  %i.gi = getelementptr i8, ptr %i.gg, i64 -16
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !101 ; 2 uses
  %i.gk = call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gj, i64 %i.et)
  %i.gl = getelementptr [8 x i8], ptr %i.gh, i64 %i.fc
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !101
  %i.gm = getelementptr [8 x i8], ptr %i.eu, i64 %.025.i75 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 -16
  %i.go = getelementptr i8, ptr %i.gm, i64 -24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !101 ; 2 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gp, i64 %i.et)
  %i.gr = getelementptr [8 x i8], ptr %i.gn, i64 %i.fc
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !101
  %i.gs = getelementptr [8 x i8], ptr %i.eu, i64 %.025.i75 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 -24
  %i.gu = getelementptr i8, ptr %i.gs, i64 -32
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !101
  %i.gw = call i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gv, i64 %i.et)
  %i.gx = getelementptr [8 x i8], ptr %i.gt, i64 %i.fc
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !101
  %i.gy = add i64 %.025.i75, -4                   ; 2 uses
  %.not.i76.3 = icmp eq i64 %i.gy, 0
  br i1 %.not.i76.3, label %._crit_edge.i77, label %.lr.ph.i74, !llvm.loop !51

bb.o:                                             ; preds = %._crit_edge.i77
  %i.gz = add i64 %i.fx, 1
  br label %.sink.split.i79

.sink.split.i79:                                  ; preds = %bb.o, %bb.m
  %.sink.i80 = phi i64 [ %i.gz, %bb.o ], [ %i.fi, %bb.m ]
  store i64 %.sink.i80, ptr %i.ev, align 8, !tbaa !679
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i79, %._crit_edge.i77
  %i.ha = shl nuw nsw i64 %i.fc, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(3336) %i.eu, i8 0, i64 %i.ha, i1 false)
  br label %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit81

_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit81: ; preds = %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit71, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 3328 ; 3 uses
  store i64 1, ptr %i.hb, align 8, !tbaa !679
  store i64 0, ptr %6, align 8, !tbaa !101
  %i.hc = load i64, ptr %i.y, align 8, !tbaa !679 ; 4 uses
  %i.hd = load i64, ptr %.sroa.gep, align 8, !tbaa !679 ; 3 uses
  %.not.i.i82 = icmp eq i64 %i.hc, %i.hd
  br i1 %.not.i.i82, label %.preheader.i.i.preheader, label %.split.i

.preheader.i.i.preheader:                         ; preds = %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit81
  %.not18.i.i128 = icmp eq i64 %i.hc, 0
  br i1 %.not18.i.i128, label %.thread.ithread-pre-split, label %.lr.ph

.split.i:                                         ; preds = %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit81
  %i.he = icmp ult i64 %i.hc, %i.hd
  %cond.fr44.i = freeze i1 %i.he
  br i1 %cond.fr44.i, label %.thread.i, label %bb.q

.preheader.i.i:                                   ; preds = %.lr.ph
  %.not18.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not18.i.i, label %.thread.ithread-pre-split, label %.lr.ph, !llvm.loop !5951

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.011.i.i129 = phi i64 [ %i.hf, %.preheader.i.i ], [ %i.hc, %.preheader.i.i.preheader ]
  %i.hf = add i64 %.011.i.i129, -1                ; 4 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !101 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hf
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !101 ; 2 uses
  %.not19.i.i = icmp eq i64 %i.hh, %i.hj
  br i1 %.not19.i.i, label %.preheader.i.i, label %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit.i, !llvm.loop !5951

_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit.i: ; preds = %.lr.ph
  %i.hk = icmp ult i64 %i.hh, %i.hj
  %cond.fr.i = freeze i1 %i.hk
  br i1 %cond.fr.i, label %.thread.ithread-pre-split, label %bb.q

bb.q:                                             ; preds = %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit.i, %.split.i
  br label %.thread.ithread-pre-split

.thread.ithread-pre-split:                        ; preds = %.preheader.i.i, %.preheader.i.i.preheader, %bb.q, %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit.i
  %.sroa.phi.ph = phi ptr [ %.sroa.gep, %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit.i ], [ %i.y, %bb.q ], [ %i.y, %.preheader.i.i.preheader ], [ %i.y, %.preheader.i.i ]
  %.ph = phi ptr [ %4, %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit.i ], [ %3, %bb.q ], [ %3, %.preheader.i.i.preheader ], [ %3, %.preheader.i.i ]
  %.sroa.phi90.ph = phi ptr [ %i.y, %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit.i ], [ %.sroa.gep, %bb.q ], [ %.sroa.gep, %.preheader.i.i.preheader ], [ %.sroa.gep, %.preheader.i.i ]
  %.ph95 = phi ptr [ %3, %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit.i ], [ %4, %bb.q ], [ %4, %.preheader.i.i.preheader ], [ %4, %.preheader.i.i ]
  %.pr = load i64, ptr %.sroa.phi.ph, align 8, !tbaa !679
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.ithread-pre-split, %.split.i
  %i.hl = phi i64 [ %.pr, %.thread.ithread-pre-split ], [ %i.hd, %.split.i ] ; 2 uses
  %i.hm = phi ptr [ %.ph, %.thread.ithread-pre-split ], [ %4, %.split.i ]
  %.sroa.phi90 = phi ptr [ %.sroa.phi90.ph, %.thread.ithread-pre-split ], [ %i.y, %.split.i ]
  %i.hn = phi ptr [ %.ph95, %.thread.ithread-pre-split ], [ %3, %.split.i ]
  %.not34.i = icmp eq i64 %i.hl, 0
  br i1 %.not34.i, label %_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit, label %.lr.ph.i83.preheader

.lr.ph.i83.preheader:                             ; preds = %.thread.i
  %7 = load i64, ptr %.sroa.phi90, align 8, !tbaa !679
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.preheader, %._crit_edge36.i
  %.02533.i = phi i64 [ %.pre.i, %._crit_edge36.i ], [ 0, %.lr.ph.i83.preheader ] ; 5 uses
  %.02632.i = phi i64 [ %i.hw, %._crit_edge36.i ], [ 0, %.lr.ph.i83.preheader ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.02533.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !101 ; 2 uses
  %i.hq = sub i64 %i.hp, %.02632.i                ; 2 uses
  %i.hr = icmp ult i64 %.02533.i, %7
  br i1 %i.hr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i83
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.02533.i
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !101
  %i.hu = sub i64 %i.hq, %i.ht
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i83
  %.0.i = phi i64 [ %i.hu, %bb.r ], [ %i.hq, %.lr.ph.i83 ] ; 3 uses
  %i.hv = icmp ugt i64 %.0.i, %i.hp
  %i.hw = zext i1 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.02533.i
  store i64 %.0.i, ptr %i.hx, align 8, !tbaa !101
  %.not.i84 = icmp eq i64 %.0.i, 0
  %.pre.i = add nuw nsw i64 %.02533.i, 1          ; 3 uses
  br i1 %.not.i84, label %._crit_edge36.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %.pre.i, ptr %i.hb, align 8, !tbaa !679
  br label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.t, %bb.s
  %exitcond.not = icmp eq i64 %.pre.i, %i.hl
  br i1 %exitcond.not, label %_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit.loopexit, label %.lr.ph.i83, !llvm.loop !5952

_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit.loopexit: ; preds = %._crit_edge36.i
  %.pre = load i64, ptr %i.hb, align 8, !tbaa !679
  br label %_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit

_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit: ; preds = %_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit.loopexit, %.thread.i
  %i.hy = phi i64 [ %.pre, %_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit.loopexit ], [ 1, %.thread.i ] ; 4 uses
  %i.hz = load i64, ptr %i.es, align 8, !tbaa !679 ; 2 uses
  %.not.i86 = icmp eq i64 %i.hy, %i.hz
  br i1 %.not.i86, label %.preheader.i.preheader, label %bb.u

.preheader.i.preheader:                           ; preds = %_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit
  %.not18.i130 = icmp eq i64 %i.hy, 0
  br i1 %.not18.i130, label %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit, label %.lr.ph132

bb.u:                                             ; preds = %_ZNK5arrow9rapidjson8internal10BigInteger10DifferenceERKS2_PS2_.exit
  %i.ia = icmp ult i64 %i.hy, %i.hz
  %i.ib = select i1 %i.ia, i32 -1, i32 1
  br label %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit

.preheader.i:                                     ; preds = %.lr.ph132
  %.not18.i = icmp eq i64 %i.ic, 0
  br i1 %.not18.i, label %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit, label %.lr.ph132, !llvm.loop !5951

.lr.ph132:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.011.i131 = phi i64 [ %i.ic, %.preheader.i ], [ %i.hy, %.preheader.i.preheader ]
  %i.ic = add i64 %.011.i131, -1                  ; 4 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !101 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ic
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !101 ; 2 uses
  %.not19.i = icmp eq i64 %i.ie, %i.ig
  br i1 %.not19.i, label %.preheader.i, label %bb.v, !llvm.loop !5951

bb.v:                                             ; preds = %.lr.ph132
  %i.ih = icmp ult i64 %i.ie, %i.ig
  %i.ii = select i1 %i.ih, i32 -1, i32 1
  br label %_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit

_ZNK5arrow9rapidjson8internal10BigInteger7CompareERKS2_.exit: ; preds = %.preheader.i, %.preheader.i.preheader, %bb.u, %bb.v
  %.1.i87 = phi i32 [ %i.ib, %bb.u ], [ %i.ii, %bb.v ], [ 0, %.preheader.i.preheader ], [ 0, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i32 %.1.i87
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson8internal10BigInteger15AppendDecimal64IcEEvPKT_S6_(ptr noundef nonnull align 8 dereferenceable(3336) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = sub i64 %i.b, %i.a
  %i.e = icmp ugt i64 %i.d, -4
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.09.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ] ; 5 uses
  %.068.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.af, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.f = mul i64 %.068.i, 10
  %i.g = load i8, ptr %.09.i, align 1, !tbaa !99
  %i.h = sext i8 %i.g to i64
  %i.i = add nsw i64 %i.h, 4294967248
  %i.j = and i64 %i.i, 4294967295
  %i.k = add i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i, i64 1
  %i.m = mul i64 %i.k, 10
  %i.n = load i8, ptr %i.l, align 1, !tbaa !99
  %i.o = sext i8 %i.n to i64
  %i.p = add nsw i64 %i.o, 4294967248
  %i.q = and i64 %i.p, 4294967295
  %i.r = add i64 %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.t = mul i64 %i.r, 10
  %i.u = load i8, ptr %i.s, align 1, !tbaa !99
  %i.v = sext i8 %i.u to i64
  %i.w = add nsw i64 %i.v, 4294967248
  %i.x = and i64 %i.w, 4294967295
  %i.y = add i64 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.aa = mul i64 %i.y, 10
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !99
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = add i64 %i.ae, %i.aa                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5953

_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09.i.epil.init = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.ag, %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit.loopexit.unr-lcssa ]
  %.068.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.af, %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.09.i.epil = phi ptr [ %i.an, %.lr.ph.i.epil ], [ %.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.068.i.epil = phi i64 [ %i.am, %.lr.ph.i.epil ], [ %.068.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ah = mul i64 %.068.i.epil, 10
  %i.ai = load i8, ptr %.09.i.epil, align 1, !tbaa !99
  %i.aj = sext i8 %i.ai to i64
  %i.ak = add nsw i64 %i.aj, 4294967248
  %i.al = and i64 %i.ak, 4294967295
  %i.am = add i64 %i.al, %i.ah                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit, label %.lr.ph.i.epil, !llvm.loop !5954

_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit: ; preds = %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.06.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.af, %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.i.epil ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !679
  %i.aq = icmp eq i64 %i.ap, 1
  %i.ar = load i64, ptr %0, align 8
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit
  store i64 %.06.lcssa.i, ptr %0, align 8, !tbaa !101
  store i64 1, ptr %i.ao, align 8, !tbaa !679
  br label %_ZN5arrow9rapidjson8internal10BigIntegerpLEm.exit

bb.c:                                             ; preds = %_ZN5arrow9rapidjson8internal10BigInteger11ParseUint64IcEEmPKT_S6_.exit
  %i.au = ptrtoint ptr %2 to i64
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 8 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i64 %i.aw, 4294967295               ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(3336) ptr @_ZN5arrow9rapidjson8internal10BigInteger12MultiplyPow5Ej(ptr noundef nonnull align 8 dereferenceable(3336) %0, i32 noundef %i.ax) ; 18 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3328 ; 9 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !679 ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 1
  %i.bd = load i64, ptr %i.az, align 8            ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = select i1 %i.bc, i1 %i.be, i1 false
  %i.bg = icmp eq i64 %i.ay, 0
  %or.cond.i = or i1 %i.bg, %i.bf
  br i1 %or.cond.i, label %_ZN5arrow9rapidjson8internal10BigIntegerlSEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = lshr i64 %i.ay, 6                       ; 10 uses
  %i.bi = and i64 %i.aw, 63                       ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bh
  %i.bl = shl i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr nonnull align 8 dereferenceable(3336) %i.az, i64 %i.bl, i1 false)
  %i.bm = load i64, ptr %i.ba, align 8, !tbaa !679
  %i.bn = add i64 %i.bm, %i.bh
  br label %.sink.split.i
end_hunk_0
