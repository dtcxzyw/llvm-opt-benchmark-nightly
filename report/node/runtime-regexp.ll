inline.NumInlined: 3452
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal12StringSearchIhhE13InitialSearchEPS2_NS_4base6VectorIKhEEi:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aj, i64 61312
  store <4 x i32> %broadcast.splat, ptr %i.cq, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aj, i64 61328
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 61344
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 61360
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aj, i64 61376
  store <4 x i32> %broadcast.splat, ptr %i.cu, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aj, i64 61392
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 61408
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aj, i64 61424
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aj, i64 61440
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4
  br label %.loopexit.i

bb.i:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ak, i8 -1, i64 1024, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.ph, %bb.i
  %i.da = add nsw i32 %i.c, -1                    ; 2 uses
  %i.db = icmp slt i32 %i.am, %i.da
  br i1 %i.db, label %.lr.ph.preheader.i, label %_ZN2v88internal12StringSearchIhhE31PopulateBoyerMooreHorspoolTableEv.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %i.dc = sext i32 %i.am to i64                   ; 4 uses
  %wide.trip.count.i = sext i32 %i.da to i64      ; 3 uses
  %i.dd = sub nsw i64 %wide.trip.count.i, %i.dc
  %xtraiter = and i64 %i.dd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv23.i.prol = phi i64 [ %indvars.iv.next24.i.prol, %.lr.ph.i.prol ], [ %i.dc, %.lr.ph.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.de = load ptr, ptr %i.a, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv23.i.prol
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.dh
  %i.dj = trunc nsw i64 %indvars.iv23.i.prol to i32
  store i32 %i.dj, ptr %i.di, align 4
  %indvars.iv.next24.i.prol = add nsw i64 %indvars.iv23.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !237

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv23.i.unr = phi i64 [ %i.dc, %.lr.ph.preheader.i ], [ %indvars.iv.next24.i.prol, %.lr.ph.i.prol ]
  %i.dk = sub nsw i64 %i.dc, %wide.trip.count.i
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %_ZN2v88internal12StringSearchIhhE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %.lr.ph.i ], [ %indvars.iv23.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dm = load ptr, ptr %i.a, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv23.i
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.dp
  %i.dr = trunc nsw i64 %indvars.iv23.i to i32
  store i32 %i.dr, ptr %i.dq, align 4
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.ds = load ptr, ptr %i.a, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.next24.i
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.dv
  %i.dx = trunc nsw i64 %indvars.iv.next24.i to i32
  store i32 %i.dx, ptr %i.dw, align 4
  %indvars.iv.next24.i.1 = add nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %i.dy = load ptr, ptr %i.a, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.next24.i.1
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.eb
  %i.ed = trunc nsw i64 %indvars.iv.next24.i.1 to i32
  store i32 %i.ed, ptr %i.ec, align 4
  %indvars.iv.next24.i.2 = add nsw i64 %indvars.iv23.i, 3 ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next24.i.2
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.eh
  %i.ej = trunc nsw i64 %indvars.iv.next24.i.2 to i32
  store i32 %i.ej, ptr %i.ei, align 4
  %indvars.iv.next24.i.3 = add nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %exitcond26.not.i.3 = icmp eq i64 %indvars.iv.next24.i.3, %wide.trip.count.i
  br i1 %exitcond26.not.i.3, label %_ZN2v88internal12StringSearchIhhE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i, !llvm.loop !238

_ZN2v88internal12StringSearchIhhE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIhhE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.ek, align 8
  %i.el = tail call noundef i32 @_ZN2v88internal12StringSearchIhhE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef nonnull %0, ptr %1, i64 %2, i32 noundef %.03758)
  br label %_ZN2v88internal18FindFirstCharacterIhhEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread

bb.j:                                             ; preds = %.split.loop.exit77
  %i.em = add nsw i32 %i.l, %.136
  %i.en = add nuw nsw i32 %i.x, 1
  %.not.not = icmp sgt i32 %i.f, %i.x
  br i1 %.not.not, label %bb.d, label %_ZN2v88internal18FindFirstCharacterIhhEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !239

_ZN2v88internal18FindFirstCharacterIhhEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread: ; preds = %.split.loop.exit77, %bb.j, %_ZN2v88internal18FindFirstCharacterIhhEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, %bb.e, %bb.g, %_ZNK2v84base6VectorIKhE6lengthEv.exit46, %_ZN2v88internal12StringSearchIhhE31PopulateBoyerMooreHorspoolTableEv.exit
  %spec.select = phi i32 [ %i.el, %_ZN2v88internal12StringSearchIhhE31PopulateBoyerMooreHorspoolTableEv.exit ], [ -1, %bb.e ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit46 ], [ -1, %bb.g ], [ -1, %bb.j ], [ %i.x, %.split.loop.exit77 ], [ -1, %_ZN2v88internal18FindFirstCharacterIhhEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhhE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload64 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 4 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit62, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit62:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 4 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60432 ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 6 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload64, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1               ; 3 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sub nsw i32 %i.h, %i.n                   ; 2 uses
  %i.p = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %i.q = icmp samesign ugt i64 %.sroa.5.0.copyload.fr, 1
  br i1 %i.q, label %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us.preheader, label %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split

_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us.preheader: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit62
  %i.r = sub nsw i32 0, %i.e
  %i.s = add nuw nsw i64 %.sroa.5.0.copyload.fr, 4294967294
  %i.t = and i64 %i.s, 4294967295
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us

_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us.preheader, %.critedge.us
  %.053.us = phi i32 [ %i.ak, %.critedge.us ], [ %3, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us.preheader ] ; 2 uses
  %.048.us = phi i32 [ %i.an, %.critedge.us ], [ %i.r, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us.preheader ]
  %.not.us = icmp sgt i32 %.053.us, %i.p
  br i1 %.not.us, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us, %bb.d
  %.154.us = phi i32 [ %i.ac, %bb.d ], [ %.053.us, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us ] ; 5 uses
  %.149.us = phi i32 [ %i.ad, %bb.d ], [ %.048.us, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us ] ; 2 uses
  %i.u = add nsw i32 %.154.us, %i.h
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %.not60.us = icmp eq i8 %i.k, %i.x
  br i1 %.not60.us, label %.lr.ph.us, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sub nsw i32 %i.h, %i.aa                 ; 2 uses
  %i.ac = add nsw i32 %i.ab, %.154.us             ; 2 uses
  %reass.sub.us = add i32 %.149.us, 1
  %i.ad = sub i32 %reass.sub.us, %i.ab
  %.not61.us = icmp sgt i32 %i.ac, %i.p
  br i1 %.not61.us, label %.thread, label %.preheader.us, !llvm.loop !240

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.ae = sext i32 %.154.us to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ae
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %4
  %indvars.iv = phi i64 [ %i.t, %.lr.ph.us ], [ %indvars.iv.next, %4 ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload64, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ah = load i8, ptr %gep, align 1
  %i.ai = icmp eq i8 %i.ag, %i.ah
  br i1 %i.ai, label %4, label %.critedge.us

4:                                                ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = icmp sgt i64 %indvars.iv, 0
  br i1 %5, label %bb.e, label %.thread, !llvm.loop !241

.critedge.us:                                     ; preds = %bb.e
  %i.aj = trunc nsw i64 %indvars.iv to i32
  %i.ak = add nsw i32 %.154.us, %i.o              ; 2 uses
  %i.al = add i32 %.149.us, %i.e
  %i.am = add i32 %i.o, %i.aj
  %i.an = sub i32 %i.al, %i.am                    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.split.us, label %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us, !llvm.loop !242

_ZNK2v84base6VectorIKhE6lengthEv.exit62.split:    ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit62
  %.not = icmp sgt i32 %3, %i.p
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split, %bb.f
  %.154 = phi i32 [ %i.ax, %bb.f ], [ %3, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split ] ; 3 uses
  %i.ap = add nsw i32 %.154, %i.h
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not60 = icmp eq i8 %i.k, %i.as
  br i1 %.not60, label %.thread, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = sub nsw i32 %i.h, %i.av
  %i.ax = add nsw i32 %i.aw, %.154                ; 2 uses
  %.not61 = icmp sgt i32 %i.ax, %i.p
  br i1 %.not61, label %.thread, label %.preheader, !llvm.loop !240

.split.us:                                        ; preds = %.critedge.us
  tail call void @_ZN2v88internal12StringSearchIhhE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIhhE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.ay, align 8
  %i.az = tail call noundef i32 @_ZN2v88internal12StringSearchIhhE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i32 noundef %i.ak)
  br label %.thread

.thread:                                          ; preds = %bb.f, %.preheader, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us, %bb.d, %4, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split, %.split.us
  %.4 = phi i32 [ %.154.us, %4 ], [ %i.az, %.split.us ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split.us ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit62.split ], [ -1, %bb.d ], [ -1, %bb.f ], [ %.154, %.preheader ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StringSearchIhhE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 10 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = trunc nuw nsw i64 %i.b to i32            ; 14 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 12 uses
  %i.i = sub i32 %i.e, %i.h                       ; 7 uses
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 61456 ; 4 uses
  %i.l = sext i32 %i.h to i64                     ; 7 uses
  %i.m = sub nsw i64 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 62460
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.m ; 9 uses
  %i.q = icmp slt i32 %i.h, %i.e
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.r = sub nsw i64 %i.b, %i.l                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit128, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b
  store i32 1, ptr %i.w, align 4
  %i.x = add nuw i32 %i.e, 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.x, ptr %i.y, align 4
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader130 ] ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.i, ptr %i.z, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit128, label %.lr.ph, !llvm.loop !244

.loopexit128:                                     ; preds = %.lr.ph, %middle.block
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b ; 3 uses
  store i32 1, ptr %i.aa, align 4
  %i.ab = add nuw i32 %i.e, 1                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.b
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1
  br label %bb.c

bb.c:                                             ; preds = %.loopexit128, %.critedge94
  %.083108 = phi i32 [ %i.e, %.loopexit128 ], [ %.2, %.critedge94 ] ; 3 uses
  %.084107 = phi i32 [ %i.ab, %.loopexit128 ], [ %.286, %.critedge94 ] ; 3 uses
  %i.ag = sext i32 %.083108 to i64
  %i.ah = getelementptr i8, ptr %i.f, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1
  %.not9198 = icmp sgt i32 %.084107, %i.e
  br i1 %.not9198, label %.critedge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.18599 = phi i32 [ %i.at, %bb.f ], [ %.084107, %bb.c ] ; 3 uses
  %i.ak = sext i32 %.18599 to i64                 ; 3 uses
  %i.al = getelementptr i8, ptr %i.f, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1
  %.not92 = icmp eq i8 %i.aj, %i.an
  br i1 %.not92, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph101
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ak ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, %i.i
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.18599, %.083108
  store i32 %i.ar, ptr %i.ao, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !245

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr i8, ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1
  %.not93 = icmp eq i8 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !246

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !247

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !248

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhhE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit66, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit66:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not81 = icmp sgt i32 %3, %i.q
  br i1 %.not81, label %.thread, label %.preheader74.lr.ph

.preheader74.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit66
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r
  br i1 %.not, label %.preheader74, label %.preheader74.us

.preheader74.us:                                  ; preds = %.preheader74.lr.ph, %.preheader74.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader74.us.backedge ], [ %3, %.preheader74.lr.ph ] ; 5 uses
  %i.t = add nsw i32 %.150.us, %i.m
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %.not64.us = icmp eq i8 %i.p, %i.w
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader74.us
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = sub nsw i32 %i.m, %i.z
  %i.ab = add nsw i32 %i.aa, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ab, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader74.us.backedge

.preheader74.us.backedge:                         ; preds = %bb.d, %bb.h
  %.150.us.be = phi i32 [ %i.ab, %bb.d ], [ %.251.us, %bb.h ]
  br label %.preheader74.us, !llvm.loop !249

bb.e:                                             ; preds = %.preheader.us, %4
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %4 ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ae = load i8, ptr %gep, align 1              ; 2 uses
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %4, label %.critedge.us

4:                                                ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = icmp sgt i64 %indvars.iv, 0
  br i1 %5, label %bb.e, label %.thread, !llvm.loop !250

.critedge.us:                                     ; preds = %bb.e
  %i.ag = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ah = icmp sgt i32 %i.g, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.us
  %i.ai = and i64 %indvars.iv, 4294967295
  %i.aj = getelementptr [4 x i8], ptr %i.l, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 61460
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i8 %i.ae to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sub nsw i32 %i.ag, %i.ao
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.ap)
  br label %bb.h

bb.g:                                             ; preds = %.critedge.us
  %i.aq = load i32, ptr %i.s, align 4
  %i.ar = sub nsw i32 %i.m, %i.aq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.us = phi i32 [ %i.ar, %bb.g ], [ %spec.select.us, %bb.f ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader74.us.backedge

.preheader.us:                                    ; preds = %.preheader74.us
  %i.as = sext i32 %.150.us to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.as
  br label %bb.e

.preheader74:                                     ; preds = %.preheader74.lr.ph, %bb.i
  %.150 = phi i32 [ %i.bb, %bb.i ], [ %3, %.preheader74.lr.ph ] ; 3 uses
  %i.at = add nsw i32 %.150, %i.m
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %.not64 = icmp eq i8 %i.p, %i.aw
  br i1 %.not64, label %.thread, label %bb.i

bb.i:                                             ; preds = %.preheader74
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sub nuw nsw i32 %i.m, %i.az
  %i.bb = add nsw i32 %i.ba, %.150                ; 2 uses
  %.not65 = icmp sgt i32 %i.bb, %i.q
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !251

.thread:                                          ; preds = %bb.h, %bb.d, %4, %bb.i, %.preheader74, %_ZNK2v84base6VectorIKhE6lengthEv.exit66
  %.4 = phi i32 [ %.150.us, %4 ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit66 ], [ %.150, %.preheader74 ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.h ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhtE16SingleCharSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %i.b = load i8, ptr %.sroa.01.0.copyload, align 1 ; 3 uses
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = trunc nuw nsw i64 %.sroa.22.0.copyload to i32
  %i.g = sub nsw i32 %i.e, %i.f                   ; 3 uses
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = icmp eq i8 %i.b, 0
  br i1 %i.i, label %.preheader.i, label %.preheader40.i

.preheader40.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.j = zext i8 %i.b to i32
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i8 %i.b to i16
  br label %bb.e

.preheader.i:                                     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %.not43.i = icmp sgt i32 %3, %i.g
  br i1 %.not43.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.m = sext i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.m, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i16, ptr %i.n, align 2
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %.thread.loopexit.split.loop.exit57.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.h, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.i, !llvm.loop !252

bb.e:                                             ; preds = %bb.g, %.preheader40.i
  %.0.i = phi i32 [ %i.af, %bb.g ], [ %3, %.preheader40.i ] ; 2 uses
  %i.q = sext i32 %.0.i to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %1, i64 %i.q
  %i.s = sub i32 %i.h, %.0.i
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  %i.v = tail call noundef ptr @memchr(ptr noundef %i.r, i32 noundef %i.j, i64 noundef %i.u) #23 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = and i64 %i.x, -2
  %i.z = sub i64 %i.y, %i.k                       ; 2 uses
  %i.aa = lshr exact i64 %i.z, 1
  %i.ab = trunc i64 %i.aa to i32                  ; 3 uses
  %sext.i = shl i64 %i.z, 31
  %i.ac = ashr i64 %sext.i, 32
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %.not39.i = icmp eq i16 %i.ae, %i.l
  br i1 %.not39.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.ab, 1
  %i.ag = icmp sgt i32 %i.g, %i.ab
  br i1 %i.ag, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !144

.thread.loopexit.split.loop.exit57.i:             ; preds = %.lr.ph.i
  %i.ah = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit

_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %.preheader.i, %.thread.loopexit.split.loop.exit57.i
  %.4.i = phi i32 [ -1, %.preheader.i ], [ -1, %bb.d ], [ %i.ah, %.thread.loopexit.split.loop.exit57.i ], [ -1, %bb.e ], [ %i.ab, %bb.f ], [ -1, %bb.g ]
  ret i32 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhtE12LinearSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload17 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %.sroa.5.0.copyload to i32
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload17, i64 1
  %i.j = shl nuw nsw i64 %.sroa.5.0.copyload, 32
  %sext = add nsw i64 %i.j, -4294967296
  %i.k = ashr exact i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11CharCompareIhtEEbPKT_PKT0_i.exit, %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.013 = phi i32 [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ %i.am, %_ZN2v88internal11CharCompareIhtEEbPKT_PKT0_i.exit ] ; 3 uses
  %.not = icmp sgt i32 %.013, %i.f
  br i1 %.not, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.d
  %i.l = load i8, ptr %.sroa.0.0.copyload17, align 1 ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %.preheader40.i

.preheader40.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.n = zext i8 %i.l to i32
  %i.o = zext i8 %i.l to i16
  br label %bb.f

.lr.ph.preheader.i:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.p = sext i32 %.013 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %.thread.loopexit.split.loop.exit57.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.g, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !252

bb.f:                                             ; preds = %bb.h, %.preheader40.i
  %.0.i = phi i32 [ %i.ai, %bb.h ], [ %.013, %.preheader40.i ] ; 2 uses
  %i.t = sext i32 %.0.i to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %1, i64 %i.t
  %i.v = sub i32 %i.g, %.0.i
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 1
  %i.y = tail call noundef ptr @memchr(ptr noundef %i.u, i32 noundef %i.n, i64 noundef %i.x) #23 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN2v88internal12StringSearchIhtE13InitialSearchEPS2_NS_4base6VectorIKtEEi:bb.a
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.au, i64 61392
  %i.di = getelementptr inbounds nuw i8, ptr %i.au, i64 61408
  store <4 x i32> %broadcast.splat, ptr %i.dh, align 4
  store <4 x i32> %broadcast.splat, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.au, i64 61424
  %i.dk = getelementptr inbounds nuw i8, ptr %i.au, i64 61440
  store <4 x i32> %broadcast.splat, ptr %i.dj, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dk, align 4
  br label %.loopexit.i

bb.j:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.av, i8 -1, i64 1024, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.ph, %bb.j
  %i.dl = add nsw i32 %i.c, -1                    ; 2 uses
  %i.dm = icmp slt i32 %i.ax, %i.dl
  br i1 %i.dm, label %.lr.ph.preheader.i51, label %_ZN2v88internal12StringSearchIhtE31PopulateBoyerMooreHorspoolTableEv.exit

.lr.ph.preheader.i51:                             ; preds = %.loopexit.i
  %i.dn = sext i32 %i.ax to i64                   ; 4 uses
  %wide.trip.count.i = sext i32 %i.dl to i64      ; 3 uses
  %i.do = sub nsw i64 %wide.trip.count.i, %i.dn
  %xtraiter = and i64 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol

.lr.ph.i52.prol:                                  ; preds = %.lr.ph.preheader.i51, %.lr.ph.i52.prol
  %indvars.iv23.i.prol = phi i64 [ %indvars.iv.next24.i.prol, %.lr.ph.i52.prol ], [ %i.dn, %.lr.ph.preheader.i51 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i52.prol ], [ 0, %.lr.ph.preheader.i51 ]
  %i.dp = load ptr, ptr %i.a, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv23.i.prol
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ds
  %i.du = trunc nsw i64 %indvars.iv23.i.prol to i32
  store i32 %i.du, ptr %i.dt, align 4
  %indvars.iv.next24.i.prol = add nsw i64 %indvars.iv23.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol, !llvm.loop !256

.lr.ph.i52.prol.loopexit:                         ; preds = %.lr.ph.i52.prol, %.lr.ph.preheader.i51
  %indvars.iv23.i.unr = phi i64 [ %i.dn, %.lr.ph.preheader.i51 ], [ %indvars.iv.next24.i.prol, %.lr.ph.i52.prol ]
  %i.dv = sub nsw i64 %i.dn, %wide.trip.count.i
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %_ZN2v88internal12StringSearchIhtE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %.lr.ph.i52 ], [ %indvars.iv23.i.unr, %.lr.ph.i52.prol.loopexit ] ; 6 uses
  %i.dx = load ptr, ptr %i.a, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv23.i
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ea
  %i.ec = trunc nsw i64 %indvars.iv23.i to i32
  store i32 %i.ec, ptr %i.eb, align 4
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.ed = load ptr, ptr %i.a, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next24.i
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.eg
  %i.ei = trunc nsw i64 %indvars.iv.next24.i to i32
  store i32 %i.ei, ptr %i.eh, align 4
  %indvars.iv.next24.i.1 = add nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %i.ej = load ptr, ptr %i.a, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next24.i.1
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.em
  %i.eo = trunc nsw i64 %indvars.iv.next24.i.1 to i32
  store i32 %i.eo, ptr %i.en, align 4
  %indvars.iv.next24.i.2 = add nsw i64 %indvars.iv23.i, 3 ; 2 uses
  %i.ep = load ptr, ptr %i.a, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv.next24.i.2
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.es
  %i.eu = trunc nsw i64 %indvars.iv.next24.i.2 to i32
  store i32 %i.eu, ptr %i.et, align 4
  %indvars.iv.next24.i.3 = add nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %exitcond26.not.i.3 = icmp eq i64 %indvars.iv.next24.i.3, %wide.trip.count.i
  br i1 %exitcond26.not.i.3, label %_ZN2v88internal12StringSearchIhtE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i52, !llvm.loop !257

_ZN2v88internal12StringSearchIhtE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52, %.loopexit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIhtE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi, ptr %i.ev, align 8
  %i.ew = tail call noundef i32 @_ZN2v88internal12StringSearchIhtE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef nonnull %0, ptr %1, i64 %2, i32 noundef %.03766)
  br label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread

bb.k:                                             ; preds = %.split.loop.exit90
  %i.ex = add nsw i32 %i.l, %.136
  %i.ey = add nuw nsw i32 %.4.i, 1
  %.not.not = icmp slt i32 %.4.i, %i.f
  br i1 %.not.not, label %bb.d, label %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !258

_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread: ; preds = %.split.loop.exit90, %bb.k, %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, %bb.f, %bb.h, %bb.e, %_ZNK2v84base6VectorIKtE6lengthEv.exit, %_ZN2v88internal12StringSearchIhtE31PopulateBoyerMooreHorspoolTableEv.exit
  %spec.select = phi i32 [ -1, %bb.f ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ %i.ew, %_ZN2v88internal12StringSearchIhtE31PopulateBoyerMooreHorspoolTableEv.exit ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.k ], [ %.4.i, %.split.loop.exit90 ], [ -1, %_ZN2v88internal18FindFirstCharacterIhtEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhtE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload63 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 4 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 4 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60432 ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 6 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload63, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = zext i8 %i.k to i16                      ; 2 uses
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sub nsw i32 %i.h, %i.o                   ; 2 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %i.r = icmp samesign ugt i64 %.sroa.5.0.copyload.fr, 1
  br i1 %i.r, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us.preheader, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.split

_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us.preheader: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.s = sub nsw i32 0, %i.e
  %i.t = add nuw nsw i64 %.sroa.5.0.copyload.fr, 4294967294
  %i.u = and i64 %i.t, 4294967295
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us

_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us:   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us.preheader, %.critedge.us
  %.053.us = phi i32 [ %i.an, %.critedge.us ], [ %3, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us.preheader ] ; 2 uses
  %.048.us = phi i32 [ %i.aq, %.critedge.us ], [ %i.s, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us.preheader ]
  %.not.us = icmp sgt i32 %.053.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us
  %.154.us = phi i32 [ %i.ae, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ %.053.us, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us ] ; 5 uses
  %.149.us = phi i32 [ %i.af, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ %.048.us, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us ] ; 2 uses
  %i.v = add nsw i32 %.154.us, %i.h
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 3 uses
  %.not60.us = icmp eq i16 %i.y, %i.l
  br i1 %.not60.us, label %.lr.ph.us, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %i.z = icmp ugt i16 %i.y, 255
  br i1 %i.z, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = zext nneg i16 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us: ; preds = %bb.e, %bb.d
  %.0.i.us = phi i32 [ %i.ac, %bb.e ], [ -1, %bb.d ]
  %i.ad = sub nsw i32 %i.h, %.0.i.us              ; 2 uses
  %i.ae = add nsw i32 %i.ad, %.154.us             ; 2 uses
  %reass.sub.us = add i32 %.149.us, 1
  %i.af = sub i32 %reass.sub.us, %i.ad
  %.not61.us = icmp sgt i32 %i.ae, %i.q
  br i1 %.not61.us, label %.thread, label %.preheader.us, !llvm.loop !259

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.ag = sext i32 %.154.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.ag
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %4
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.us ], [ %indvars.iv.next, %4 ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload63, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aj = load i16, ptr %gep, align 2
  %i.ak = zext i8 %i.ai to i16
  %i.al = icmp eq i16 %i.aj, %i.ak
  br i1 %i.al, label %4, label %.critedge.us

4:                                                ; preds = %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = icmp sgt i64 %indvars.iv, 0
  br i1 %5, label %bb.f, label %.thread, !llvm.loop !260

.critedge.us:                                     ; preds = %bb.f
  %i.am = trunc nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %.154.us, %i.p              ; 2 uses
  %i.ao = add i32 %.149.us, %i.e
  %i.ap = add i32 %i.p, %i.am
  %i.aq = sub i32 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.split.us, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us, !llvm.loop !261

_ZNK2v84base6VectorIKhE6lengthEv.exit.split:      ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.not = icmp sgt i32 %3, %i.q
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.split, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit
  %.154 = phi i32 [ %i.bb, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ %3, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split ] ; 3 uses
  %i.as = add nsw i32 %.154, %i.h
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2            ; 3 uses
  %.not60 = icmp eq i16 %i.av, %i.l
  br i1 %.not60, label %.thread, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.aw = icmp ugt i16 %i.av, 255
  br i1 %i.aw, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = zext nneg i16 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.az, %bb.h ], [ -1, %bb.g ]
  %i.ba = sub nsw i32 %i.h, %.0.i
  %i.bb = add nsw i32 %i.ba, %.154                ; 2 uses
  %.not61 = icmp sgt i32 %i.bb, %i.q
  br i1 %.not61, label %.thread, label %.preheader, !llvm.loop !259

.split.us:                                        ; preds = %.critedge.us
  tail call void @_ZN2v88internal12StringSearchIhtE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIhtE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi, ptr %i.bc, align 8
  %i.bd = tail call noundef i32 @_ZN2v88internal12StringSearchIhtE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i32 noundef %i.an)
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, %.preheader, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, %4, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split, %.split.us
  %.4 = phi i32 [ %.154.us, %4 ], [ %i.bd, %.split.us ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split.us ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit.split ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ %.154, %.preheader ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StringSearchIhtE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 10 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = trunc nuw nsw i64 %i.b to i32            ; 14 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 12 uses
  %i.i = sub i32 %i.e, %i.h                       ; 7 uses
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 61456 ; 4 uses
  %i.l = sext i32 %i.h to i64                     ; 7 uses
  %i.m = sub nsw i64 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 62460
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.m ; 9 uses
  %i.q = icmp slt i32 %i.h, %i.e
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.r = sub nsw i64 %i.b, %i.l                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit128, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b
  store i32 1, ptr %i.w, align 4
  %i.x = add nuw i32 %i.e, 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.x, ptr %i.y, align 4
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader130 ] ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.i, ptr %i.z, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit128, label %.lr.ph, !llvm.loop !263

.loopexit128:                                     ; preds = %.lr.ph, %middle.block
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b ; 3 uses
  store i32 1, ptr %i.aa, align 4
  %i.ab = add nuw i32 %i.e, 1                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.b
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1
  br label %bb.c

bb.c:                                             ; preds = %.loopexit128, %.critedge94
  %.083108 = phi i32 [ %i.e, %.loopexit128 ], [ %.2, %.critedge94 ] ; 3 uses
  %.084107 = phi i32 [ %i.ab, %.loopexit128 ], [ %.286, %.critedge94 ] ; 3 uses
  %i.ag = sext i32 %.083108 to i64
  %i.ah = getelementptr i8, ptr %i.f, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1
  %.not9198 = icmp sgt i32 %.084107, %i.e
  br i1 %.not9198, label %.critedge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.18599 = phi i32 [ %i.at, %bb.f ], [ %.084107, %bb.c ] ; 3 uses
  %i.ak = sext i32 %.18599 to i64                 ; 3 uses
  %i.al = getelementptr i8, ptr %i.f, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1
  %.not92 = icmp eq i8 %i.aj, %i.an
  br i1 %.not92, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph101
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ak ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, %i.i
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.18599, %.083108
  store i32 %i.ar, ptr %i.ao, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !264

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr i8, ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1
  %.not93 = icmp eq i8 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
end_hunk_1
begin_hunk_2_@_ZN2v88internal12StringSearchIhtE23PopulateBoyerMooreTableEv:bb.a
.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !266

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !267

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIhtE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not83 = icmp sgt i32 %3, %i.n
  br i1 %.not83, label %.thread, label %.preheader76.lr.ph

.preheader76.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.o = sext i32 %i.m to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = zext i8 %i.q to i16                      ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader76, label %.preheader76.us

.preheader76.us:                                  ; preds = %.preheader76.lr.ph, %.preheader76.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader76.us.backedge ], [ %3, %.preheader76.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.150.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2              ; 3 uses
  %.not64.us = icmp eq i16 %i.x, %i.r
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader76.us
  %i.y = icmp ugt i16 %i.x, 255
  br i1 %i.y, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i16 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us: ; preds = %bb.e, %bb.d
  %.0.i.us = phi i32 [ %i.ab, %bb.e ], [ -1, %bb.d ]
  %i.ac = sub nsw i32 %i.m, %.0.i.us
  %i.ad = add nsw i32 %i.ac, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.n
  br i1 %.not65.us, label %.thread, label %.preheader76.us.backedge

.preheader76.us.backedge:                         ; preds = %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, %bb.j
  %.150.us.be = phi i32 [ %i.ad, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ %.251.us, %bb.j ]
  br label %.preheader76.us, !llvm.loop !268

bb.f:                                             ; preds = %.preheader.us, %4
  %indvars.iv = phi i64 [ %i.o, %.preheader.us ], [ %indvars.iv.next, %4 ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i16, ptr %gep, align 2             ; 3 uses
  %i.ah = zext i8 %i.af to i16
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %4, label %.critedge.us

4:                                                ; preds = %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = icmp sgt i64 %indvars.iv, 0
  br i1 %5, label %bb.f, label %.thread, !llvm.loop !269

.critedge.us:                                     ; preds = %bb.f
  %i.aj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ak = icmp sgt i32 %i.g, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge.us
  %i.al = and i64 %indvars.iv, 4294967295
  %i.am = getelementptr [4 x i8], ptr %i.l, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 61460
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp ugt i16 %i.ag, 255
  br i1 %i.ap, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = zext nneg i16 %i.ag to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us: ; preds = %bb.h, %bb.g
  %.0.i67.us = phi i32 [ %i.as, %bb.h ], [ -1, %bb.g ]
  %i.at = sub nsw i32 %i.aj, %.0.i67.us
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.at)
  br label %bb.j

bb.i:                                             ; preds = %.critedge.us
  %i.au = load i32, ptr %i.t, align 4
  %i.av = sub nsw i32 %i.m, %i.au
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us
  %.pn.us = phi i32 [ %i.av, %bb.i ], [ %spec.select.us, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit68.us ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.n
  br i1 %.not.us, label %.thread, label %.preheader76.us.backedge

.preheader.us:                                    ; preds = %.preheader76.us
  %i.aw = sext i32 %.150.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.aw
  br label %bb.f

.preheader76:                                     ; preds = %.preheader76.lr.ph, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit
  %.150 = phi i32 [ %i.bg, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ %3, %.preheader76.lr.ph ] ; 3 uses
  %i.ax = add nsw i32 %.150, %i.m
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2            ; 3 uses
  %.not64 = icmp eq i16 %i.ba, %i.r
  br i1 %.not64, label %.thread, label %bb.k

bb.k:                                             ; preds = %.preheader76
  %i.bb = icmp ugt i16 %i.ba, 255
  br i1 %i.bb, label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = zext nneg i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  br label %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit

_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi i32 [ %i.be, %bb.l ], [ -1, %bb.k ]
  %i.bf = sub nuw nsw i32 %i.m, %.0.i
  %i.bg = add nsw i32 %i.bf, %.150                ; 2 uses
  %.not65 = icmp sgt i32 %i.bg, %i.n
  br i1 %.not65, label %.thread, label %.preheader76, !llvm.loop !270

.thread:                                          ; preds = %bb.j, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us, %4, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit, %.preheader76, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.4 = phi i32 [ %.150.us, %4 ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ %.150, %.preheader76 ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit ], [ -1, %_ZN2v88internal12StringSearchIhtE14CharOccurrenceEPit.exit.us ], [ -1, %bb.j ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = sub i64 %i.r, %i.g
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ac, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ae, ptr %.08.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !272

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEESF_ET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEELm8ESaISF_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal21DirectHandleUncheckedINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEElET_SG_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

declare ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi:bb.a
  store <4 x i32> %broadcast.splat, ptr %i.cm, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 61200
  %i.cp = getelementptr inbounds nuw i8, ptr %i.an, i64 61216
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 61232
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 61248
  store <4 x i32> %broadcast.splat, ptr %i.cq, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 61264
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 61280
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 61296
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 61312
  store <4 x i32> %broadcast.splat, ptr %i.cu, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 61328
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 61344
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 61360
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 61376
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.an, i64 61392
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 61408
  store <4 x i32> %broadcast.splat, ptr %i.da, align 4
  store <4 x i32> %broadcast.splat, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 61424
  %i.dd = getelementptr inbounds nuw i8, ptr %i.an, i64 61440
  store <4 x i32> %broadcast.splat, ptr %i.dc, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4
  br label %.loopexit.i

bb.i:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ao, i8 -1, i64 1024, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.ph, %bb.i
  %i.de = add nsw i32 %i.c, -1                    ; 2 uses
  %i.df = icmp slt i32 %i.aq, %i.de
  br i1 %i.df, label %.lr.ph.preheader.i, label %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %i.dg = sext i32 %i.aq to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.de to i64      ; 3 uses
  %i.dh = sub nsw i64 %wide.trip.count.i, %i.dg
  %xtraiter = and i64 %i.dh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.di = load ptr, ptr %i.a, align 8
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.dg
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = and i16 %i.dk, 255
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.dm
  store i32 %i.aq, ptr %i.dn, align 4
  %indvars.iv.next24.i.prol = add nsw i64 %i.dg, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv23.i.unr = phi i64 [ %i.dg, %.lr.ph.preheader.i ], [ %indvars.iv.next24.i.prol, %.lr.ph.i.prol ]
  %i.do = add nsw i64 %wide.trip.count.i, -1
  %i.dp = icmp eq i64 %i.do, %i.dg
  br i1 %i.dp, label %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.1, %.lr.ph.i ], [ %indvars.iv23.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.dq = load ptr, ptr %i.a, align 8
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %indvars.iv23.i
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = and i16 %i.ds, 255
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.du
  %i.dw = trunc nsw i64 %indvars.iv23.i to i32
  store i32 %i.dw, ptr %i.dv, align 4
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.dx = load ptr, ptr %i.a, align 8
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv.next24.i
  %i.dz = load i16, ptr %i.dy, align 2
  %i.ea = and i16 %i.dz, 255
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.eb
  %i.ed = trunc nsw i64 %indvars.iv.next24.i to i32
  store i32 %i.ed, ptr %i.ec, align 4
  %indvars.iv.next24.i.1 = add nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %exitcond26.not.i.1 = icmp eq i64 %indvars.iv.next24.i.1, %wide.trip.count.i
  br i1 %exitcond26.not.i.1, label %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i, !llvm.loop !284

_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.ee, align 8
  %i.ef = tail call noundef i32 @_ZN2v88internal12StringSearchIthE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef nonnull %0, ptr %1, i64 %2, i32 noundef %.03757)
  br label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread

bb.j:                                             ; preds = %.split.loop.exit76
  %i.eg = add nsw i32 %i.l, %.136
  %i.eh = add nuw nsw i32 %i.aa, 1
  %.not.not = icmp sgt i32 %i.f, %i.aa
  br i1 %.not.not, label %bb.d, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !285

_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread: ; preds = %.split.loop.exit76, %bb.j, %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, %bb.e, %bb.g, %_ZNK2v84base6VectorIKhE6lengthEv.exit, %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit
  %spec.select = phi i32 [ %i.ef, %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit ], [ -1, %bb.e ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ -1, %bb.g ], [ -1, %bb.j ], [ %i.aa, %.split.loop.exit76 ], [ -1, %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload63 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 4 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 4 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60432 ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 6 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload63, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = and i16 %i.k, 255
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sub nsw i32 %i.h, %i.o                   ; 2 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %i.r = icmp samesign ugt i64 %.sroa.5.0.copyload.fr, 1
  br i1 %i.r, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split

_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.s = sub nsw i32 0, %i.e
  %i.t = add nuw nsw i64 %.sroa.5.0.copyload.fr, 4294967294
  %i.u = and i64 %i.t, 4294967295
  br label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us

_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us:   ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader, %.critedge.us
  %.053.us = phi i32 [ %i.an, %.critedge.us ], [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader ] ; 2 uses
  %.048.us = phi i32 [ %i.aq, %.critedge.us ], [ %i.s, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader ]
  %.not.us = icmp sgt i32 %.053.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us, %bb.d
  %.154.us = phi i32 [ %i.ae, %bb.d ], [ %.053.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us ] ; 5 uses
  %.149.us = phi i32 [ %i.af, %bb.d ], [ %.048.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us ] ; 2 uses
  %i.v = add nsw i32 %.154.us, %i.h
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = zext i8 %i.y to i16
  %.not60.us = icmp eq i16 %i.k, %i.z
  br i1 %.not60.us, label %.lr.ph.us, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sub nsw i32 %i.h, %i.ac                 ; 2 uses
  %i.ae = add nsw i32 %i.ad, %.154.us             ; 2 uses
  %reass.sub.us = add i32 %.149.us, 1
  %i.af = sub i32 %reass.sub.us, %i.ad
  %.not61.us = icmp sgt i32 %i.ae, %i.q
  br i1 %.not61.us, label %.thread, label %.preheader.us, !llvm.loop !286

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.ag = sext i32 %.154.us to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %4
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.us ], [ %indvars.iv.next, %4 ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload63, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.aj = load i8, ptr %gep, align 1
  %i.ak = zext i8 %i.aj to i16
  %i.al = icmp eq i16 %i.ai, %i.ak
  br i1 %i.al, label %4, label %.critedge.us

4:                                                ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = icmp sgt i64 %indvars.iv, 0
  br i1 %5, label %bb.e, label %.thread, !llvm.loop !287

.critedge.us:                                     ; preds = %bb.e
  %i.am = trunc nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %.154.us, %i.p              ; 2 uses
  %i.ao = add i32 %.149.us, %i.e
  %i.ap = add i32 %i.p, %i.am
  %i.aq = sub i32 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.split.us, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us, !llvm.loop !288

_ZNK2v84base6VectorIKtE6lengthEv.exit.split:      ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.not = icmp sgt i32 %3, %i.q
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.split, %bb.f
  %.154 = phi i32 [ %i.bb, %bb.f ], [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split ] ; 3 uses
  %i.as = add nsw i32 %.154, %i.h
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = zext i8 %i.av to i16
  %.not60 = icmp eq i16 %i.k, %i.aw
  br i1 %.not60, label %.thread, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.ax = zext i8 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sub nsw i32 %i.h, %i.az
  %i.bb = add nsw i32 %i.ba, %.154                ; 2 uses
  %.not61 = icmp sgt i32 %i.bb, %i.q
  br i1 %.not61, label %.thread, label %.preheader, !llvm.loop !286

.split.us:                                        ; preds = %.critedge.us
  tail call void @_ZN2v88internal12StringSearchIthE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.bc, align 8
  %i.bd = tail call noundef i32 @_ZN2v88internal12StringSearchIthE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i32 noundef %i.an)
  br label %.thread

.thread:                                          ; preds = %bb.f, %.preheader, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us, %bb.d, %4, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split, %.split.us
  %.4 = phi i32 [ %.154.us, %4 ], [ %i.bd, %.split.us ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split ], [ -1, %bb.d ], [ -1, %bb.f ], [ %.154, %.preheader ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StringSearchIthE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 10 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = trunc nuw nsw i64 %i.b to i32            ; 14 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 12 uses
  %i.i = sub i32 %i.e, %i.h                       ; 7 uses
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 61456 ; 4 uses
  %i.l = sext i32 %i.h to i64                     ; 7 uses
  %i.m = sub nsw i64 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 62460
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.m ; 9 uses
  %i.q = icmp slt i32 %i.h, %i.e
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.r = sub nsw i64 %i.b, %i.l                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit128, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b
  store i32 1, ptr %i.w, align 4
  %i.x = add nuw i32 %i.e, 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.x, ptr %i.y, align 4
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader130 ] ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.i, ptr %i.z, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit128, label %.lr.ph, !llvm.loop !290

.loopexit128:                                     ; preds = %.lr.ph, %middle.block
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b ; 3 uses
  store i32 1, ptr %i.aa, align 4
  %i.ab = add nuw i32 %i.e, 1                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr [2 x i8], ptr %i.f, i64 %i.b
  %i.ae = getelementptr i8, ptr %i.ad, i64 -2
  %i.af = load i16, ptr %i.ae, align 2
  br label %bb.c

bb.c:                                             ; preds = %.loopexit128, %.critedge94
  %.083108 = phi i32 [ %i.e, %.loopexit128 ], [ %.2, %.critedge94 ] ; 3 uses
  %.084107 = phi i32 [ %i.ab, %.loopexit128 ], [ %.286, %.critedge94 ] ; 3 uses
  %i.ag = sext i32 %.083108 to i64
  %i.ah = getelementptr [2 x i8], ptr %i.f, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2
  %.not9198 = icmp sgt i32 %.084107, %i.e
  br i1 %.not9198, label %.critedge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.18599 = phi i32 [ %i.at, %bb.f ], [ %.084107, %bb.c ] ; 3 uses
  %i.ak = sext i32 %.18599 to i64                 ; 3 uses
  %i.al = getelementptr [2 x i8], ptr %i.f, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -2
  %i.an = load i16, ptr %i.am, align 2
  %.not92 = icmp eq i16 %i.aj, %i.an
  br i1 %.not92, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph101
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ak ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, %i.i
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.18599, %.083108
  store i32 %i.ar, ptr %i.ao, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !291

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2
  %.not93 = icmp eq i16 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !292

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !293

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !294

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2              ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not80 = icmp sgt i32 %3, %i.q
  br i1 %.not80, label %.thread, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = and i16 %i.p, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader73, label %.preheader73.us

.preheader73.us:                                  ; preds = %.preheader73.lr.ph, %.preheader73.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader73.us.backedge ], [ %3, %.preheader73.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.150.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i16
  %.not64.us = icmp eq i16 %i.p, %i.y
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader73.us
  %i.z = zext i8 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 %i.m, %i.ab
  %i.ad = add nsw i32 %i.ac, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader73.us.backedge

.preheader73.us.backedge:                         ; preds = %bb.d, %bb.h
  %.150.us.be = phi i32 [ %i.ad, %bb.d ], [ %.251.us, %bb.h ]
  br label %.preheader73.us, !llvm.loop !295

bb.e:                                             ; preds = %.preheader.us, %4
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %4 ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i8, ptr %gep, align 1              ; 2 uses
  %i.ah = zext i8 %i.ag to i16
  %i.ai = icmp eq i16 %i.af, %i.ah
  br i1 %i.ai, label %4, label %.critedge.us

4:                                                ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = icmp sgt i64 %indvars.iv, 0
  br i1 %5, label %bb.e, label %.thread, !llvm.loop !296

.critedge.us:                                     ; preds = %bb.e
  %i.aj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ak = icmp sgt i32 %i.g, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.us
  %i.al = and i64 %indvars.iv, 4294967295
  %i.am = getelementptr [4 x i8], ptr %i.l, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 61460
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i8 %i.ag to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sub nsw i32 %i.aj, %i.ar
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.as)
  br label %bb.h

bb.g:                                             ; preds = %.critedge.us
  %i.at = load i32, ptr %i.t, align 4
  %i.au = sub nsw i32 %i.m, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.us = phi i32 [ %i.au, %bb.g ], [ %spec.select.us, %bb.f ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader73.us.backedge

.preheader.us:                                    ; preds = %.preheader73.us
  %i.av = sext i32 %.150.us to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.av
  br label %bb.e

.preheader73:                                     ; preds = %.preheader73.lr.ph, %bb.i
  %.150 = phi i32 [ %i.bf, %bb.i ], [ %3, %.preheader73.lr.ph ] ; 3 uses
  %i.aw = add nsw i32 %.150, %i.m
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.ba = zext i8 %i.az to i16
  %.not64 = icmp eq i16 %i.p, %i.ba
  br i1 %.not64, label %.thread, label %bb.i

bb.i:                                             ; preds = %.preheader73
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sub nuw nsw i32 %i.m, %i.bd
  %i.bf = add nsw i32 %i.be, %.150                ; 2 uses
  %.not65 = icmp sgt i32 %i.bf, %i.q
  br i1 %.not65, label %.thread, label %.preheader73, !llvm.loop !297

.thread:                                          ; preds = %bb.h, %bb.d, %4, %bb.i, %.preheader73, %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.4 = phi i32 [ %.150.us, %4 ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ %.150, %.preheader73 ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.h ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE16SingleCharSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %i.b = load i16, ptr %.sroa.01.0.copyload, align 2 ; 4 uses
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit33.i:        ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = trunc nuw nsw i64 %.sroa.22.0.copyload to i32
  %i.g = sub nsw i32 %i.e, %i.f                   ; 3 uses
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = icmp eq i16 %i.b, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %.not44.i = icmp sgt i32 %3, %i.g
  br i1 %.not44.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.j = sext i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.l = load i16, ptr %i.k, align 2
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %.thread.loopexit.split.loop.exit58.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.h, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.i, !llvm.loop !298

bb.e:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.n = trunc i16 %i.b to i8
  %i.o = lshr i16 %i.b, 8
  %i.p = trunc nuw i16 %i.o to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.n, i8 %i.p)
  %i.q = zext i8 %.sroa.speculated.i.i to i32
  %i.r = ptrtoint ptr %1 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.0.i = phi i32 [ %3, %bb.e ], [ %i.ah, %bb.h ] ; 2 uses
  %i.s = sext i32 %.0.i to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %1, i64 %i.s
  %i.u = sub i32 %i.h, %.0.i
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 1
  %i.x = tail call noundef ptr @memchr(ptr noundef %i.t, i32 noundef %i.q, i64 noundef %i.w) #23 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = and i64 %i.z, -2
  %i.ab = sub i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  %sext.i = shl i64 %i.ab, 31
  %i.ae = ashr i64 %sext.i, 32
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %.not41.i = icmp eq i16 %i.ag, %i.b
  br i1 %.not41.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.ad, 1
  %i.ai = icmp sgt i32 %i.g, %i.ad
  br i1 %i.ai, label %bb.f, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !299

.thread.loopexit.split.loop.exit58.i:             ; preds = %.lr.ph.i
  %i.aj = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit

_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.d, %.preheader.i, %.thread.loopexit.split.loop.exit58.i
  %.4.i = phi i32 [ -1, %.preheader.i ], [ -1, %bb.d ], [ %i.aj, %.thread.loopexit.split.loop.exit58.i ], [ -1, %bb.f ], [ %i.ad, %bb.g ], [ -1, %bb.h ]
  ret i32 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE12LinearSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload18 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit15, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit15:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %.sroa.5.0.copyload to i32
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload18, i64 2
  %i.j = shl nuw nsw i64 %.sroa.5.0.copyload, 32
  %sext = add nsw i64 %i.j, -4294967296
  %i.k = ashr exact i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit, %_ZNK2v84base6VectorIKtE6lengthEv.exit15
  %.013 = phi i32 [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit15 ], [ %i.ao, %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit ] ; 3 uses
  %.not = icmp sgt i32 %.013, %i.f
  br i1 %.not, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i

_ZNK2v84base6VectorIKtE6lengthEv.exit33.i:        ; preds = %bb.d
  %i.l = load i16, ptr %.sroa.0.0.copyload18, align 2 ; 4 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %bb.f

.lr.ph.preheader.i:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.n = sext i32 %.013 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %.thread.loopexit.split.loop.exit58.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.g, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !298

bb.f:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.r = trunc i16 %i.l to i8
  %i.s = lshr i16 %i.l, 8
  %i.t = trunc nuw i16 %i.s to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.r, i8 %i.t)
  %i.u = zext i8 %.sroa.speculated.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.0.i = phi i32 [ %.013, %bb.f ], [ %i.ak, %bb.i ] ; 2 uses
  %i.v = sext i32 %.0.i to i64
end_hunk_3
begin_hunk_4_@_ZN2v88internal12StringSearchIttE13InitialSearchEPS2_NS_4base6VectorIKtEEi:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 61184
  store <4 x i32> %broadcast.splat, ptr %i.cu, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.av, i64 61200
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 61216
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.av, i64 61232
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 61248
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 61264
  %i.db = getelementptr inbounds nuw i8, ptr %i.av, i64 61280
  store <4 x i32> %broadcast.splat, ptr %i.da, align 4
  store <4 x i32> %broadcast.splat, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 61296
  %i.dd = getelementptr inbounds nuw i8, ptr %i.av, i64 61312
  store <4 x i32> %broadcast.splat, ptr %i.dc, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.av, i64 61328
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 61344
  store <4 x i32> %broadcast.splat, ptr %i.de, align 4
  store <4 x i32> %broadcast.splat, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.av, i64 61360
  %i.dh = getelementptr inbounds nuw i8, ptr %i.av, i64 61376
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.av, i64 61392
  %i.dj = getelementptr inbounds nuw i8, ptr %i.av, i64 61408
  store <4 x i32> %broadcast.splat, ptr %i.di, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.av, i64 61424
  %i.dl = getelementptr inbounds nuw i8, ptr %i.av, i64 61440
  store <4 x i32> %broadcast.splat, ptr %i.dk, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 4
  br label %.loopexit.i

bb.k:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.aw, i8 -1, i64 1024, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.ph, %bb.k
  %i.dm = add nsw i32 %i.c, -1                    ; 2 uses
  %i.dn = icmp slt i32 %i.ay, %i.dm
  br i1 %i.dn, label %.lr.ph.preheader.i52, label %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit

.lr.ph.preheader.i52:                             ; preds = %.loopexit.i
  %i.do = sext i32 %i.ay to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.dm to i64      ; 3 uses
  %i.dp = sub nsw i64 %wide.trip.count.i, %i.do
  %xtraiter = and i64 %i.dp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol

.lr.ph.i53.prol:                                  ; preds = %.lr.ph.preheader.i52
  %i.dq = load ptr, ptr %i.a, align 8
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.do
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = and i16 %i.ds, 255
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.du
  store i32 %i.ay, ptr %i.dv, align 4
  %indvars.iv.next24.i.prol = add nsw i64 %i.do, 1
  br label %.lr.ph.i53.prol.loopexit

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.preheader.i52
  %indvars.iv23.i.unr = phi i64 [ %i.do, %.lr.ph.preheader.i52 ], [ %indvars.iv.next24.i.prol, %.lr.ph.i53.prol ]
  %i.dw = add nsw i64 %wide.trip.count.i, -1
  %i.dx = icmp eq i64 %i.dw, %i.do
  br i1 %i.dx, label %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.1, %.lr.ph.i53 ], [ %indvars.iv23.i.unr, %.lr.ph.i53.prol.loopexit ] ; 4 uses
  %i.dy = load ptr, ptr %i.a, align 8
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %indvars.iv23.i
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = and i16 %i.ea, 255
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ec
  %i.ee = trunc nsw i64 %indvars.iv23.i to i32
  store i32 %i.ee, ptr %i.ed, align 4
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.ef = load ptr, ptr %i.a, align 8
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %indvars.iv.next24.i
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = and i16 %i.eh, 255
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ej
  %i.el = trunc nsw i64 %indvars.iv.next24.i to i32
  store i32 %i.el, ptr %i.ek, align 4
  %indvars.iv.next24.i.1 = add nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %exitcond26.not.i.1 = icmp eq i64 %indvars.iv.next24.i.1, %wide.trip.count.i
  br i1 %exitcond26.not.i.1, label %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i53, !llvm.loop !303

_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %.loopexit.i
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIttE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi, ptr %i.em, align 8
  %i.en = tail call noundef i32 @_ZN2v88internal12StringSearchIttE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef nonnull %0, ptr %1, i64 %2, i32 noundef %.03767)
  br label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread

bb.l:                                             ; preds = %.split.loop.exit91
  %i.eo = add nsw i32 %i.l, %.136
  %i.ep = add nuw nsw i32 %.4.i, 1
  %.not.not = icmp slt i32 %.4.i, %i.f
  br i1 %.not.not, label %bb.d, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !304

_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread: ; preds = %.split.loop.exit91, %bb.l, %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, %bb.g, %bb.i, %bb.e, %_ZNK2v84base6VectorIKtE6lengthEv.exit46, %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit
  %spec.select = phi i32 [ -1, %bb.g ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit46 ], [ %i.en, %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit ], [ -1, %bb.e ], [ -1, %bb.i ], [ -1, %bb.l ], [ %.4.i, %.split.loop.exit91 ], [ -1, %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload64 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 4 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit62:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 4 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60432 ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 6 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload64, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = and i16 %i.k, 255
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sub nsw i32 %i.h, %i.o                   ; 2 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %i.r = icmp samesign ugt i64 %.sroa.5.0.copyload.fr, 1
  br i1 %i.r, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split

_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62
  %i.s = sub nsw i32 0, %i.e
  %i.t = add nuw nsw i64 %.sroa.5.0.copyload.fr, 4294967294
  %i.u = and i64 %i.t, 4294967295
  br label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us

_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader, %.critedge.us
  %.053.us = phi i32 [ %i.am, %.critedge.us ], [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader ] ; 2 uses
  %.048.us = phi i32 [ %i.ap, %.critedge.us ], [ %i.s, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader ]
  %.not.us = icmp sgt i32 %.053.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us, %bb.d
  %.154.us = phi i32 [ %i.ae, %bb.d ], [ %.053.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us ] ; 5 uses
  %.149.us = phi i32 [ %i.af, %bb.d ], [ %.048.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us ] ; 2 uses
  %i.v = add nsw i32 %.154.us, %i.h
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %.not60.us = icmp eq i16 %i.k, %i.y
  br i1 %.not60.us, label %.lr.ph.us, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %i.z = and i16 %i.y, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sub nsw i32 %i.h, %i.ac                 ; 2 uses
  %i.ae = add nsw i32 %i.ad, %.154.us             ; 2 uses
  %reass.sub.us = add i32 %.149.us, 1
  %i.af = sub i32 %reass.sub.us, %i.ad
  %.not61.us = icmp sgt i32 %i.ae, %i.q
  br i1 %.not61.us, label %.thread, label %.preheader.us, !llvm.loop !305

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.ag = sext i32 %.154.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %4
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.us ], [ %indvars.iv.next, %4 ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload64, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aj = load i16, ptr %gep, align 2
  %i.ak = icmp eq i16 %i.ai, %i.aj
  br i1 %i.ak, label %4, label %.critedge.us

4:                                                ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = icmp sgt i64 %indvars.iv, 0
  br i1 %5, label %bb.e, label %.thread, !llvm.loop !306

.critedge.us:                                     ; preds = %bb.e
  %i.al = trunc nsw i64 %indvars.iv to i32
  %i.am = add nsw i32 %.154.us, %i.p              ; 2 uses
  %i.an = add i32 %.149.us, %i.e
  %i.ao = add i32 %i.p, %i.al
  %i.ap = sub i32 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.split.us, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us, !llvm.loop !307

_ZNK2v84base6VectorIKtE6lengthEv.exit62.split:    ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62
  %.not = icmp sgt i32 %3, %i.q
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split, %bb.f
  %.154 = phi i32 [ %i.ba, %bb.f ], [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split ] ; 3 uses
  %i.ar = add nsw i32 %.154, %i.h
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2            ; 2 uses
  %.not60 = icmp eq i16 %i.k, %i.au
  br i1 %.not60, label %.thread, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.av = and i16 %i.au, 255
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub nsw i32 %i.h, %i.ay
  %i.ba = add nsw i32 %i.az, %.154                ; 2 uses
  %.not61 = icmp sgt i32 %i.ba, %i.q
  br i1 %.not61, label %.thread, label %.preheader, !llvm.loop !305

.split.us:                                        ; preds = %.critedge.us
  tail call void @_ZN2v88internal12StringSearchIttE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIttE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi, ptr %i.bb, align 8
  %i.bc = tail call noundef i32 @_ZN2v88internal12StringSearchIttE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i32 noundef %i.am)
  br label %.thread

.thread:                                          ; preds = %bb.f, %.preheader, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us, %bb.d, %4, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split, %.split.us
  %.4 = phi i32 [ %.154.us, %4 ], [ %i.bc, %.split.us ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split ], [ -1, %bb.d ], [ -1, %bb.f ], [ %.154, %.preheader ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StringSearchIttE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 10 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = trunc nuw nsw i64 %i.b to i32            ; 14 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 12 uses
  %i.i = sub i32 %i.e, %i.h                       ; 7 uses
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 61456 ; 4 uses
  %i.l = sext i32 %i.h to i64                     ; 7 uses
  %i.m = sub nsw i64 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 62460
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.m ; 9 uses
  %i.q = icmp slt i32 %i.h, %i.e
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.r = sub nsw i64 %i.b, %i.l                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit128, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b
  store i32 1, ptr %i.w, align 4
  %i.x = add nuw i32 %i.e, 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.x, ptr %i.y, align 4
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader130 ] ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.i, ptr %i.z, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit128, label %.lr.ph, !llvm.loop !309

.loopexit128:                                     ; preds = %.lr.ph, %middle.block
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b ; 3 uses
  store i32 1, ptr %i.aa, align 4
  %i.ab = add nuw i32 %i.e, 1                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr [2 x i8], ptr %i.f, i64 %i.b
  %i.ae = getelementptr i8, ptr %i.ad, i64 -2
  %i.af = load i16, ptr %i.ae, align 2
  br label %bb.c

bb.c:                                             ; preds = %.loopexit128, %.critedge94
  %.083108 = phi i32 [ %i.e, %.loopexit128 ], [ %.2, %.critedge94 ] ; 3 uses
  %.084107 = phi i32 [ %i.ab, %.loopexit128 ], [ %.286, %.critedge94 ] ; 3 uses
  %i.ag = sext i32 %.083108 to i64
  %i.ah = getelementptr [2 x i8], ptr %i.f, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2
  %.not9198 = icmp sgt i32 %.084107, %i.e
  br i1 %.not9198, label %.critedge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.18599 = phi i32 [ %i.at, %bb.f ], [ %.084107, %bb.c ] ; 3 uses
  %i.ak = sext i32 %.18599 to i64                 ; 3 uses
  %i.al = getelementptr [2 x i8], ptr %i.f, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -2
  %i.an = load i16, ptr %i.am, align 2
  %.not92 = icmp eq i16 %i.aj, %i.an
  br i1 %.not92, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph101
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ak ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, %i.i
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.18599, %.083108
  store i32 %i.ar, ptr %i.ao, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !310

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2
  %.not93 = icmp eq i16 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !311

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !312

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !313

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit66, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit66:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2              ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not81 = icmp sgt i32 %3, %i.q
  br i1 %.not81, label %.thread, label %.preheader74.lr.ph

.preheader74.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = and i16 %i.p, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader74, label %.preheader74.us

.preheader74.us:                                  ; preds = %.preheader74.lr.ph, %.preheader74.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader74.us.backedge ], [ %3, %.preheader74.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.150.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2              ; 2 uses
  %.not64.us = icmp eq i16 %i.p, %i.x
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader74.us
  %i.y = and i16 %i.x, 255
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 %i.m, %i.ab
  %i.ad = add nsw i32 %i.ac, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader74.us.backedge

.preheader74.us.backedge:                         ; preds = %bb.d, %bb.h
  %.150.us.be = phi i32 [ %i.ad, %bb.d ], [ %.251.us, %bb.h ]
  br label %.preheader74.us, !llvm.loop !314

bb.e:                                             ; preds = %.preheader.us, %4
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %4 ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i16, ptr %gep, align 2             ; 2 uses
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %4, label %.critedge.us

4:                                                ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = icmp sgt i64 %indvars.iv, 0
  br i1 %5, label %bb.e, label %.thread, !llvm.loop !315

.critedge.us:                                     ; preds = %bb.e
  %i.ai = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.aj = icmp sgt i32 %i.g, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.us
  %i.ak = and i64 %indvars.iv, 4294967295
  %i.al = getelementptr [4 x i8], ptr %i.l, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 61460
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i16 %i.ag, 255
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sub nsw i32 %i.ai, %i.ar
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %i.as)
  br label %bb.h

bb.g:                                             ; preds = %.critedge.us
  %i.at = load i32, ptr %i.t, align 4
  %i.au = sub nsw i32 %i.m, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.us = phi i32 [ %i.au, %bb.g ], [ %spec.select.us, %bb.f ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader74.us.backedge

.preheader.us:                                    ; preds = %.preheader74.us
  %i.av = sext i32 %.150.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.av
  br label %bb.e

.preheader74:                                     ; preds = %.preheader74.lr.ph, %bb.i
  %.150 = phi i32 [ %i.bf, %bb.i ], [ %3, %.preheader74.lr.ph ] ; 3 uses
  %i.aw = add nsw i32 %.150, %i.m
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2            ; 2 uses
  %.not64 = icmp eq i16 %i.p, %i.az
  br i1 %.not64, label %.thread, label %bb.i

bb.i:                                             ; preds = %.preheader74
  %i.ba = and i16 %i.az, 255
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sub nuw nsw i32 %i.m, %i.bd
  %i.bf = add nsw i32 %i.be, %.150                ; 2 uses
  %.not65 = icmp sgt i32 %i.bf, %i.q
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !316

.thread:                                          ; preds = %bb.h, %bb.d, %4, %bb.i, %.preheader74, %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.4 = phi i32 [ %.150.us, %4 ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit66 ], [ %.150, %.preheader74 ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.h ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = sub i64 %i.r, %i.g
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !318

_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !319
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %.not.i = icmp eq i64 %2, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = or disjoint i64 %i.d, 1
  %.idx.i.i9 = shl nuw nsw i64 %2, 1              ; 2 uses
  %i.f = icmp eq i64 %2, 0                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %bb.b
  %.sroa.090.0 = phi i64 [ %i.e, %bb.b ], [ %i.cc, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.b ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.g = add i64 %.sroa.090.0, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 9 uses
  %i.i = load atomic volatile i64, ptr %i.h acquire, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.p [
    i16 8, label %bb.d
    i16 0, label %bb.e
    i16 9, label %bb.f
    i16 1, label %bb.f
    i16 10, label %bb.g
    i16 2, label %bb.k
    i16 11, label %bb.o
    i16 3, label %bb.o
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = sext i32 %.0 to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr %1, i64 %2)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = sext i32 %.0 to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i9
  br i1 %i.f, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %1, %bb.e ] ; 2 uses
end_hunk_4
