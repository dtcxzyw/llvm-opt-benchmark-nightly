Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/sensor?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b2OverlapSensors:bb.a
  %spec.select309 = select i1 %i.fn, i32 8, i32 %i.fo ; 2 uses
  %i.fp = shl nsw i32 %spec.select309, 4
  %i.fq = sext i32 %i.fm to i64
  %i.fr = sext i32 %i.fp to i64
  %i.fs = tail call ptr @b2GrowAlloc(ptr noundef %.pre, i64 noundef %i.fq, i64 noundef %i.fr) #9 ; 2 uses
  store ptr %i.fs, ptr %i.w, align 8, !tbaa !123
  store i32 %spec.select309, ptr %i.y, align 4, !tbaa !122
  %.pre351 = load i32, ptr %i.x, align 8, !tbaa !121
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ft = phi i32 [ %.pre351, %bb.s ], [ %i.fk, %bb.r ]
  %i.fu = phi ptr [ %i.fs, %bb.s ], [ %.pre, %bb.r ]
  %i.fv = sext i32 %i.ft to i64
  %i.fw = getelementptr inbounds [16 x i8], ptr %i.fu, i64 %i.fv ; 6 uses
  store i32 %i.au, ptr %i.fw, align 4, !tbaa !94
  %.sroa.034.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i16 %i.av, ptr %.sroa.034.sroa.4.0..sroa_idx, align 4, !tbaa !95
  %.sroa.034.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  store i16 %i.ax, ptr %.sroa.034.sroa.5.0..sroa_idx, align 2, !tbaa !95
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i32 %i.fh, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !94
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i16 %i.dz, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !95
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 14
  store i16 %i.fj, ptr %.sroa.637.0..sroa_idx, align 2, !tbaa !95
  %i.fx = load i32, ptr %i.x, align 8, !tbaa !121
  %i.fy = add nsw i32 %i.fx, 1
  store i32 %i.fy, ptr %i.x, align 8, !tbaa !121
  %i.fz = add nsw i32 %.0282320, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.h, %bb.m, %bb.l
  %.1284 = phi i32 [ %i.dc, %bb.h ], [ %.0283319, %bb.l ], [ %i.dw, %bb.m ], [ %i.fg, %bb.q ], [ %.0283319, %bb.t ] ; 3 uses
  %.1 = phi i32 [ %.0282320, %bb.h ], [ %i.dv, %bb.l ], [ %i.dx, %bb.m ], [ %.0282320, %bb.q ], [ %i.fz, %bb.t ] ; 3 uses
  %i.ga = icmp slt i32 %.1284, %i.ba
  %i.gb = icmp slt i32 %.1, %i.bd
  %i.gc = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %i.gc, label %.lr.ph322, label %.preheader312, !llvm.loop !113

.preheader:                                       ; preds = %bb.w, %.preheader312
  %i.gd = icmp slt i32 %.0282.lcssa, %i.bd
  br i1 %i.gd, label %.lr.ph327.preheader, label %._crit_edge328

.lr.ph327.preheader:                              ; preds = %.preheader
  %i.ge = sext i32 %.0282.lcssa to i64
  %.pre371 = load i32, ptr %i.x, align 8, !tbaa !121
  %.pre372.pre = load ptr, ptr %i.w, align 8, !tbaa !123
  br label %.lr.ph327

.lr.ph325:                                        ; preds = %.lr.ph325.preheader, %bb.w
  %i.gf = phi i32 [ %.pre366, %.lr.ph325.preheader ], [ %i.hm, %bb.w ] ; 2 uses
  %i.gg = phi i32 [ %.pre362, %.lr.ph325.preheader ], [ %i.hh, %bb.w ]
  %indvars.iv342 = phi i64 [ %i.bk, %.lr.ph325.preheader ], [ %indvars.iv.next343, %bb.w ] ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv342 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !90
  %i.gj = add nsw i32 %i.gi, 1
  %i.gk = load i16, ptr %i.v, align 8, !tbaa !75
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gm = load i16, ptr %i.gl, align 4, !tbaa !91
  %i.gn = sext i32 %i.gg to i64
  %i.go = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.gn ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !92 ; 4 uses
  %.not302 = icmp slt i32 %i.gf, %i.gq
  br i1 %.not302, label %.lr.ph325._crit_edge, label %bb.v

.lr.ph325._crit_edge:                             ; preds = %.lr.ph325
  %.pre368 = load ptr, ptr %i.go, align 8, !tbaa !93
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph325
  %i.gr = shl nsw i32 %i.gq, 4
  %i.gs = icmp eq i32 %i.gq, 0
  %i.gt = shl nsw i32 %i.gq, 1
  %spec.select310 = select i1 %i.gs, i32 8, i32 %i.gt ; 2 uses
  %i.gu = shl nsw i32 %spec.select310, 4
  %i.gv = load ptr, ptr %i.go, align 8, !tbaa !93
  %i.gw = sext i32 %i.gr to i64
  %i.gx = sext i32 %i.gu to i64
  %i.gy = tail call ptr @b2GrowAlloc(ptr noundef %i.gv, i64 noundef %i.gw, i64 noundef %i.gx) #9 ; 2 uses
  %i.gz = load i32, ptr %i.aa, align 8, !tbaa !85
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.ha ; 3 uses
  store ptr %i.gy, ptr %i.hb, align 8, !tbaa !93
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 %spec.select310, ptr %i.hc, align 4, !tbaa !92
  %.phi.trans.insert369 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.pre370 = load i32, ptr %.phi.trans.insert369, align 8, !tbaa !88
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph325._crit_edge, %bb.v
  %i.hd = phi i32 [ %.pre370, %bb.v ], [ %i.gf, %.lr.ph325._crit_edge ]
  %i.he = phi ptr [ %i.gy, %bb.v ], [ %.pre368, %.lr.ph325._crit_edge ]
  %i.hf = sext i32 %i.hd to i64
  %i.hg = getelementptr inbounds [16 x i8], ptr %i.he, i64 %i.hf ; 6 uses
  store i32 %i.au, ptr %i.hg, align 4, !tbaa !94
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store i16 %i.av, ptr %.sroa.019.sroa.4.0..sroa_idx, align 4, !tbaa !95
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 6
  store i16 %i.ax, ptr %.sroa.019.sroa.5.0..sroa_idx, align 2, !tbaa !95
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i32 %i.gj, ptr %.sroa.420.0..sroa_idx, align 4, !tbaa !94
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i16 %i.gk, ptr %.sroa.521.0..sroa_idx, align 4, !tbaa !95
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 14
  store i16 %i.gm, ptr %.sroa.622.0..sroa_idx, align 2, !tbaa !95
  %i.hh = load i32, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !88
  %i.hm = add nsw i32 %i.hl, 1                    ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !88
  %indvars.iv.next343 = add nsw i64 %indvars.iv342, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next343 to i32
  %exitcond.not = icmp eq i32 %i.ba, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader, label %.lr.ph325, !llvm.loop !114

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.y
  %.pre372 = phi ptr [ %.pre372.pre, %.lr.ph327.preheader ], [ %.pre372374, %bb.y ] ; 2 uses
  %i.hn = phi i32 [ %.pre371, %.lr.ph327.preheader ], [ %i.ig, %bb.y ] ; 2 uses
  %indvars.iv345 = phi i64 [ %i.ge, %.lr.ph327.preheader ], [ %indvars.iv.next346, %bb.y ] ; 2 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv345 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !90
  %i.hq = add nsw i32 %i.hp, 1
  %i.hr = load i16, ptr %i.v, align 8, !tbaa !75
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.ht = load i16, ptr %i.hs, align 4, !tbaa !91
  %i.hu = load i32, ptr %i.y, align 4, !tbaa !122 ; 4 uses
  %.not301 = icmp slt i32 %i.hn, %i.hu
  br i1 %.not301, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph327
  %i.hv = shl nsw i32 %i.hu, 4
  %i.hw = icmp eq i32 %i.hu, 0
  %i.hx = shl nsw i32 %i.hu, 1
  %spec.select311 = select i1 %i.hw, i32 8, i32 %i.hx ; 2 uses
  %i.hy = shl nsw i32 %spec.select311, 4
  %i.hz = sext i32 %i.hv to i64
  %i.ia = sext i32 %i.hy to i64
  %i.ib = tail call ptr @b2GrowAlloc(ptr noundef %.pre372, i64 noundef %i.hz, i64 noundef %i.ia) #9 ; 2 uses
  store ptr %i.ib, ptr %i.w, align 8, !tbaa !123
  store i32 %spec.select311, ptr %i.y, align 4, !tbaa !122
  %.pre373 = load i32, ptr %i.x, align 8, !tbaa !121
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph327
  %.pre372374 = phi ptr [ %i.ib, %bb.x ], [ %.pre372, %.lr.ph327 ] ; 2 uses
  %i.ic = phi i32 [ %.pre373, %bb.x ], [ %i.hn, %.lr.ph327 ]
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [16 x i8], ptr %.pre372374, i64 %i.id ; 6 uses
  store i32 %i.au, ptr %i.ie, align 4, !tbaa !94
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i16 %i.av, ptr %.sroa.06.sroa.4.0..sroa_idx, align 4, !tbaa !95
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 6
  store i16 %i.ax, ptr %.sroa.06.sroa.5.0..sroa_idx, align 2, !tbaa !95
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i32 %i.hq, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !94
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i16 %i.hr, ptr %.sroa.58.0..sroa_idx, align 4, !tbaa !95
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 14
  store i16 %i.ht, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !95
  %i.if = load i32, ptr %i.x, align 8, !tbaa !121
  %i.ig = add nsw i32 %i.if, 1                    ; 2 uses
  store i32 %i.ig, ptr %i.x, align 8, !tbaa !121
  %indvars.iv.next346 = add nsw i64 %indvars.iv345, 1 ; 2 uses
  %lftr.wideiv348 = trunc i64 %indvars.iv.next346 to i32
  %exitcond349.not = icmp eq i32 %i.bd, %lftr.wideiv348
  br i1 %exitcond349.not, label %._crit_edge328, label %.lr.ph327, !llvm.loop !115

._crit_edge328:                                   ; preds = %bb.y, %.preheader
  %i.ih = add i64 %.0286330, -1
  %i.ii = and i64 %i.ih, %.0286330                ; 2 uses
  %.not = icmp eq i64 %i.ii, 0
  br i1 %.not, label %._crit_edge333, label %bb.d, !llvm.loop !116

._crit_edge333:                                   ; preds = %._crit_edge328, %bb.c
  %i.ij = add nuw i32 %.0287334, 1                ; 2 uses
  %exitcond350.not = icmp eq i32 %i.ij, %i.t
  br i1 %exitcond350.not, label %.loopexit, label %bb.c, !llvm.loop !117

.loopexit:                                        ; preds = %._crit_edge333, %._crit_edge318, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @b2SetBitCountAndClear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @b2ParallelFor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @b2SensorTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %4 = alloca %struct.b2DynamicArray_b2Visitor, align 8 ; 4 uses
  %5 = alloca %struct.b2SensorQueryContext, align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = icmp slt i32 %0, %1
  br i1 %i.f, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2176
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2144
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1920
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.o = sext i32 %0 to i64
  br label %bb.b

._crit_edge134:                                   ; preds = %bb.q, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph133, %bb.q
  %indvars.iv146 = phi i64 [ %i.o, %.lr.ph133 ], [ %indvars.iv.next147, %bb.q ] ; 6 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.q = getelementptr inbounds [56 x i8], ptr %i.p, i64 %indvars.iv146 ; 11 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [296 x i8], ptr %i.r, i64 %i.u ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !129
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !129
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 8 uses
  store i32 0, ptr %i.y, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !130 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 44 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  store i32 0, ptr %i.z, align 8, !tbaa !130
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !96
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [104 x i8], ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !133
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.al = phi i32 [ 0, %.lr.ph ], [ %i.bc, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.am = load i32, ptr %i.ac, align 4, !tbaa !97 ; 4 uses
  %.not118 = icmp slt i32 %i.al, %i.am
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !84  ; 2 uses
  br i1 %.not118, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = shl nsw i32 %i.am, 3
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = shl nsw i32 %i.am, 1
  %spec.select = select i1 %i.ao, i32 8, i32 %i.ap ; 2 uses
  %i.aq = shl nsw i32 %spec.select, 3
  %i.ar = sext i32 %i.an to i64
  %i.as = sext i32 %i.aq to i64
  %i.at = call ptr @b2GrowAlloc(ptr noundef %.pre, i64 noundef %i.ar, i64 noundef %i.as) #9 ; 2 uses
  store ptr %i.at, ptr %i.x, align 8, !tbaa !84
  store i32 %spec.select, ptr %i.ac, align 4, !tbaa !97
  %.pre150 = load i32, ptr %i.y, align 8, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = phi i32 [ %.pre150, %bb.d ], [ %i.al, %bb.c ]
  %i.av = phi ptr [ %i.at, %bb.d ], [ %.pre, %bb.c ]
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !98
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load i64, ptr %i.az, align 4
  store i64 %i.ba, ptr %i.ax, align 4
  %i.bb = load i32, ptr %i.y, align 8, !tbaa !82
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.y, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !124

bb.f:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 290
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !99, !range !100, !noundef !101
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !81
  %.not117 = icmp eq i32 %i.bh, 0
  br i1 %.not117, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val120 = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.bi = lshr i64 %indvars.iv146, 6
  %i.bj = and i64 %indvars.iv146, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = and i64 %i.bi, 67108863
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val120, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.bo = or i64 %i.bn, %i.bk
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !68
  br label %bb.q

bb.i:                                             ; preds = %bb.f
  %i.bp = call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %3, ptr noundef nonnull %i.ah) #9 ; 2 uses
  %i.bq = extractvalue { <2 x float>, <2 x float> } %i.bp, 0
  %i.br = extractvalue { <2 x float>, <2 x float> } %i.bp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %3, ptr %5, align 8, !tbaa !106
  store ptr %i.d, ptr %i.j, align 8, !tbaa !134
  store ptr %i.q, ptr %i.k, align 8, !tbaa !107
  store ptr %i.v, ptr %i.l, align 8, !tbaa !108
  %6 = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !109
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.bs, align 8, !tbaa !109 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !109 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !135
  %i.bv = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.e, <2 x float> %.sroa.026.0.copyload, <2 x float> %.sroa.6.0.copyload, i64 noundef %i.bu, ptr noundef nonnull @b2SensorQueryCallback, ptr noundef nonnull %5) #9 ; 0 uses
  %i.bw = load i64, ptr %i.bt, align 8, !tbaa !135
  %i.bx = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.m, <2 x float> %.sroa.026.0.copyload, <2 x float> %.sroa.6.0.copyload, i64 noundef %i.bw, ptr noundef nonnull @b2SensorQueryCallback, ptr noundef nonnull %5) #9 ; 0 uses
  %i.by = load i64, ptr %i.bt, align 8, !tbaa !135
  %i.bz = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.n, <2 x float> %.sroa.026.0.copyload, <2 x float> %.sroa.6.0.copyload, i64 noundef %i.by, ptr noundef nonnull @b2SensorQueryCallback, ptr noundef nonnull %5) #9 ; 0 uses
  %i.ca = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.cb = load i32, ptr %i.y, align 8, !tbaa !82
  %i.cc = sext i32 %i.cb to i64
  call void @qsort(ptr noundef %i.ca, i64 noundef %i.cc, i64 noundef 8, ptr noundef nonnull @b2CompareVisitors) #9
  %i.cd = load i32, ptr %i.y, align 8, !tbaa !82  ; 4 uses
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !84  ; 12 uses
  %i.cf = icmp sgt i32 %i.cd, 0
  br i1 %i.cf, label %.lr.ph125.preheader, label %._crit_edge126.thread

.lr.ph125.preheader:                              ; preds = %bb.i
  %wide.trip.count139 = zext nneg i32 %i.cd to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count139, 1
  %i.cg = icmp eq i32 %i.cd, 1
  br i1 %i.cg, label %.lr.ph125.epil.preheader, label %.lr.ph125.preheader.new

.lr.ph125.preheader.new:                          ; preds = %.lr.ph125.preheader
  %unroll_iter = and i64 %wide.trip.count139, 2147483646
  br label %.lr.ph125

._crit_edge126.unr-lcssa:                         ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv136.epil.init = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next137.1, %._crit_edge126.unr-lcssa ] ; 2 uses
  %.0108122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %.1.1, %._crit_edge126.unr-lcssa ] ; 4 uses
  %lcmp.mod167 = trunc i32 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod167)
  %i.ch = icmp eq i32 %.0108122.epil.init, 0
  br i1 %i.ch, label %.lr.ph125._crit_edge.epil, label %bb.j

bb.j:                                             ; preds = %.lr.ph125.epil.preheader
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv136.epil.init
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !90
  %i.ck = sext i32 %.0108122.epil.init to i64     ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !90
  %.not116.epil = icmp eq i32 %i.cj, %i.cn
  br i1 %.not116.epil, label %._crit_edge126, label %.lr.ph125._crit_edge.epil

.lr.ph125._crit_edge.epil:                        ; preds = %bb.j, %.lr.ph125.epil.preheader
  %.pre-phi.epil = phi i64 [ %i.ck, %bb.j ], [ 0, %.lr.ph125.epil.preheader ]
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %.pre-phi.epil
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv136.epil.init
  %i.cq = load i64, ptr %i.cp, align 4
  store i64 %i.cq, ptr %i.co, align 4
  %i.cr = add nsw i32 %.0108122.epil.init, 1
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %bb.j, %.lr.ph125._crit_edge.epil, %._crit_edge126.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge126.unr-lcssa ], [ %i.cr, %.lr.ph125._crit_edge.epil ], [ %.0108122.epil.init, %bb.j ] ; 4 uses
  store i32 %.1.lcssa, ptr %i.y, align 8, !tbaa !82
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !81
  %.not = icmp eq i32 %i.ct, %.1.lcssa
  br i1 %.not, label %.preheader, label %.loopexit.sink.split

._crit_edge126.thread:                            ; preds = %bb.i
  store i32 0, ptr %i.y, align 8, !tbaa !82
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !81
  %.not158 = icmp eq i32 %i.cv, 0
  br i1 %.not158, label %.loopexit, label %.loopexit.sink.split

.preheader:                                       ; preds = %._crit_edge126
  %i.cw = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.cw, label %.lr.ph128, label %.loopexit

.lr.ph128:                                        ; preds = %.preheader
  %i.cx = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !84
  %wide.trip.count144 = zext nneg i32 %.1.lcssa to i64
  br label %bb.o

.lr.ph125:                                        ; preds = %bb.m, %.lr.ph125.preheader.new
  %indvars.iv136 = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %indvars.iv.next137.1, %bb.m ] ; 4 uses
  %.0108122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %.1.1, %bb.m ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter.next.1, %bb.m ]
  %i.cz = icmp eq i32 %.0108122, 0
  br i1 %i.cz, label %.lr.ph125._crit_edge, label %bb.k

bb.k:                                             ; preds = %.lr.ph125
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv136
  %i.db = load i32, ptr %i.da, align 4, !tbaa !90
  %i.dc = sext i32 %.0108122 to i64               ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %i.ce, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !90
  %.not116 = icmp eq i32 %i.db, %i.df
  br i1 %.not116, label %.lr.ph125.1, label %.lr.ph125._crit_edge

.lr.ph125._crit_edge:                             ; preds = %.lr.ph125, %bb.k
  %.pre-phi = phi i64 [ %i.dc, %bb.k ], [ 0, %.lr.ph125 ]
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %.pre-phi
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv136
  %i.di = load i64, ptr %i.dh, align 4
  store i64 %i.di, ptr %i.dg, align 4
  %i.dj = add nsw i32 %.0108122, 1
  br label %.lr.ph125.1

.lr.ph125.1:                                      ; preds = %bb.k, %.lr.ph125._crit_edge
  %.1 = phi i32 [ %i.dj, %.lr.ph125._crit_edge ], [ %.0108122, %bb.k ] ; 4 uses
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1 ; 2 uses
  %i.dk = icmp eq i32 %.1, 0
  br i1 %i.dk, label %.lr.ph125._crit_edge.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph125.1
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next137
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !90
  %i.dn = sext i32 %.1 to i64                     ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.ce, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !90
  %.not116.1 = icmp eq i32 %i.dm, %i.dq
  br i1 %.not116.1, label %bb.m, label %.lr.ph125._crit_edge.1

.lr.ph125._crit_edge.1:                           ; preds = %bb.l, %.lr.ph125.1
  %.pre-phi.1 = phi i64 [ %i.dn, %bb.l ], [ 0, %.lr.ph125.1 ]
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %.pre-phi.1
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next137
  %i.dt = load i64, ptr %i.ds, align 4
  store i64 %i.dt, ptr %i.dr, align 4
  %i.du = add nsw i32 %.1, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph125._crit_edge.1, %bb.l
  %.1.1 = phi i32 [ %i.du, %.lr.ph125._crit_edge.1 ], [ %.1, %bb.l ] ; 3 uses
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !125

bb.n:                                             ; preds = %bb.p
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit, label %bb.o, !llvm.loop !126

bb.o:                                             ; preds = %.lr.ph128, %bb.n
  %indvars.iv141 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next142, %bb.n ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv141 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv141 ; 2 uses
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !90
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !90
  %.not114 = icmp eq i32 %i.dx, %i.dy
  br i1 %.not114, label %bb.p, label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.o
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !91
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ec = load i16, ptr %i.eb, align 4, !tbaa !91
  %.not115 = icmp eq i16 %i.ea, %i.ec
  br i1 %.not115, label %bb.n, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.o, %bb.p, %._crit_edge126, %._crit_edge126.thread
  %.val = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.ed = lshr i64 %indvars.iv146, 6
  %i.ee = and i64 %indvars.iv146, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ed, 67108863
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.eg ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !68
  %i.ej = or i64 %i.ei, %i.ef
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split, %._crit_edge126.thread, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.h, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next147 to i32
  %exitcond149.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond149.not, label %._crit_edge134, label %bb.b, !llvm.loop !127
}

declare void @b2InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @b2GrowAlloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b2DestroySensor(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.e ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !82
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 3 uses
  %.pre = load i32, ptr %i.n, align 8, !tbaa !85  ; 2 uses
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert72 = getelementptr inbounds [16 x i8], ptr %i.m, i64 %.phi.trans.insert
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert72, i64 8
  %.pre74 = load i32, ptr %.phi.trans.insert73, align 8, !tbaa !88
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @b2Free(ptr noundef %i.o, i64 noundef %i.s) #9
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !139
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3
  tail call void @b2Free(ptr noundef %i.u, i64 noundef %i.y) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !97
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  tail call void @b2Free(ptr noundef %i.z, i64 noundef %i.ad) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 3 uses
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !137 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !94
  %i.ai = add nsw i32 %i.ah, -1                   ; 3 uses
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.ag, %i.ai
  br i1 %.not.i, label %b2RemoveHelper.exit.thread, label %b2RemoveHelper.exit

b2RemoveHelper.exit:                              ; preds = %._crit_edge
  %i.aj = mul nsw i32 %i.ag, 56
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ak
  %i.am = mul nsw i32 %i.ai, 56
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.al, ptr noundef nonnull align 1 dereferenceable(56) %i.ao, i64 56, i1 false)
  %i.ap = load i32, ptr %i.af, align 8, !tbaa !94
  %.not = icmp eq i32 %i.ap, -1
  br i1 %.not, label %b2RemoveHelper.exit.thread, label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.aq = phi i32 [ %.pre74, %.lr.ph ], [ %i.cb, %bb.d ] ; 2 uses
  %i.ar = phi i32 [ %.pre, %.lr.ph ], [ %i.bw, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.au = load i32, ptr %1, align 8, !tbaa !110
  %i.av = add nsw i32 %i.au, 1
  %i.aw = load i16, ptr %i.k, align 8, !tbaa !75  ; 2 uses
  %i.ax = load i16, ptr %i.l, align 8, !tbaa !80
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !90
  %i.az = add nsw i32 %i.ay, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !91
  %i.bc = sext i32 %i.ar to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !92 ; 4 uses
  %.not66 = icmp slt i32 %i.aq, %i.bf
  br i1 %.not66, label %._crit_edge75, label %bb.c

._crit_edge75:                                    ; preds = %bb.b
  %.pre76 = load ptr, ptr %i.bd, align 8, !tbaa !93
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bg = shl nsw i32 %i.bf, 4
  %i.bh = icmp eq i32 %i.bf, 0
  %i.bi = shl nsw i32 %i.bf, 1
  %spec.select = select i1 %i.bh, i32 8, i32 %i.bi ; 2 uses
  %i.bj = shl nsw i32 %spec.select, 4
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !93
  %i.bl = sext i32 %i.bg to i64
  %i.bm = sext i32 %i.bj to i64
  %i.bn = tail call ptr @b2GrowAlloc(ptr noundef %i.bk, i64 noundef %i.bl, i64 noundef %i.bm) #9 ; 2 uses
  %i.bo = load i32, ptr %i.n, align 8, !tbaa !85
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.bp ; 3 uses
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !93
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 %spec.select, ptr %i.br, align 4, !tbaa !92
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre78 = load i32, ptr %.phi.trans.insert77, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge75, %bb.c
  %i.bs = phi i32 [ %.pre78, %bb.c ], [ %i.aq, %._crit_edge75 ]
  %i.bt = phi ptr [ %i.bn, %bb.c ], [ %.pre76, %._crit_edge75 ]
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bu ; 6 uses
  store i32 %i.av, ptr %i.bv, align 4, !tbaa !94
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i16 %i.aw, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !95
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  store i16 %i.ax, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !95
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.az, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !94
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i16 %i.aw, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !95
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 14
  store i16 %i.bb, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !95
  %i.bw = load i32, ptr %i.n, align 8, !tbaa !85  ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !88
  %i.cb = add nsw i32 %i.ca, 1                    ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i32, ptr %i.h, align 8, !tbaa !82
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.b, label %._crit_edge, !llvm.loop !136

bb.e:                                             ; preds = %b2RemoveHelper.exit
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.cg = load i32, ptr %i.c, align 8, !tbaa !137 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [56 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !70
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !74
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [296 x i8], ptr %i.ck, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i32 %i.cg, ptr %i.cp, align 8, !tbaa !137
  br label %b2RemoveHelper.exit.thread

b2RemoveHelper.exit.thread:                       ; preds = %._crit_edge, %bb.e, %b2RemoveHelper.exit
  ret void
}

declare void @b2Free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @b2DynamicTree_Query(ptr noundef, <2 x float>, <2 x float>, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b2SensorQueryCallback(i32 %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct.b2DistanceInput, align 4    ; 7 uses
  %4 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %5 = alloca %struct.b2SimplexCache, align 8     ; 4 uses
  %6 = alloca %struct.b2DistanceOutput, align 4   ; 4 uses
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 8 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = icmp eq i32 %i.d, %i.a
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !106    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %sext = shl i64 %1, 32
  %i.i = ashr exact i64 %sext, 32
  %i.j = getelementptr inbounds [296 x i8], ptr %i.h, i64 %i.i ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 290
  %i.l = load i8, ptr %i.k, align 2, !tbaa !99, !range !100, !noundef !101
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !96   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !96
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %.sroa.558.0.copyload = load i32, ptr %.sroa.558.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.s = icmp eq i32 %.sroa.5.0.copyload, %.sroa.558.0.copyload
  %i.t = icmp ne i32 %.sroa.5.0.copyload, 0
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %.split, label %b2ShouldShapesCollide.exit

.split:                                           ; preds = %bb.d
  %i.u = icmp sgt i32 %.sroa.558.0.copyload, 0
  br i1 %i.u, label %bb.e, label %bb.l

b2ShouldShapesCollide.exit:                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.4.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx55, align 8
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %.sroa.457.0.copyload = load i64, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.056.0.copyload = load i64, ptr %i.w, align 8
  %i.x = and i64 %.sroa.056.0.copyload, %.sroa.4.0.copyload
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i64 %.sroa.457.0.copyload, %.sroa.0.0.copyload
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.split, %b2ShouldShapesCollide.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !140, !range !100, !noundef !101
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 292
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !140, !range !100, !noundef !101
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 2640
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.d, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 2736
  %i.am = load i16, ptr %i.al, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !80
  %i.ap = add i64 %1, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 2648
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !142
  %.sroa.513.0.insert.ext = zext i16 %i.ao to i64
  %.sroa.513.0.insert.shift = shl nuw i64 %.sroa.513.0.insert.ext, 48
  %.sroa.412.0.insert.ext = zext i16 %i.am to i64
  %.sroa.412.0.insert.shift = shl nuw nsw i64 %.sroa.412.0.insert.ext, 32 ; 2 uses
  %.sroa.011.0.insert.ext = zext i32 %i.ak to i64
  %i.au = or disjoint i64 %.sroa.513.0.insert.shift, %.sroa.011.0.insert.ext
  %.sroa.011.0.insert.insert = or disjoint i64 %i.au, %.sroa.412.0.insert.shift
  %.sroa.5.0.insert.ext = zext i16 %i.ar to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.09.0.insert.ext = and i64 %i.ap, 4294967295
  %i.av = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.09.0.insert.ext
  %.sroa.09.0.insert.insert = or disjoint i64 %i.av, %.sroa.412.0.insert.shift
  %i.aw = tail call zeroext i1 %i.aj(i64 %.sroa.011.0.insert.insert, i64 %.sroa.09.0.insert.insert, ptr noundef %i.at) #9
  br i1 %i.aw, label %..critedge_crit_edge, label %bb.l

..critedge_crit_edge:                             ; preds = %bb.h
  %.pre = load i32, ptr %i.n, align 4, !tbaa !96
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.g, %bb.f
  %i.ax = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.o, %bb.g ], [ %i.o, %bb.f ]
  %i.ay = tail call { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef nonnull %i.f, i32 noundef %i.ax) #9 ; 2 uses
  %i.az = extractvalue { <2 x float>, <2 x float> } %i.ay, 0
  %i.ba = extractvalue { <2 x float>, <2 x float> } %i.ay, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef nonnull %i.c) #9
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef nonnull %i.j) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.bb, ptr noundef nonnull align 4 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load <2 x float>, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load <2 x float>, ptr %i.bf, align 8    ; 4 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.ba, %i.bh           ; 2 uses
  %i.bj = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = fmul <2 x float> %i.bj, %i.bk           ; 2 uses
  %i.bm = fadd <2 x float> %i.bi, %i.bl
  %i.bn = fsub <2 x float> %i.bi, %i.bl
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bp = fsub <2 x float> %i.az, %i.be           ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = fmul <2 x float> %i.bg, %i.bq           ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = fadd <2 x float> %i.br, %i.bu
  %i.bw = fsub <2 x float> %i.br, %i.bu
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 1, i32 2>
  %7 = shufflevector <2 x float> %i.bx, <2 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.bc, align 4, !tbaa !109
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i8 1, ptr %i.by, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %6, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #9
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !149
  %i.cb = fcmp uge float %i.ca, f0x35A00000
  br i1 %i.cb, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !107 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 44 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !94 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !94 ; 4 uses
  %.not.i = icmp slt i32 %i.ch, %i.ci
  %.pre.i = load ptr, ptr %i.ce, align 8, !tbaa !150 ; 2 uses
  br i1 %.not.i, label %b2EmplaceHelper.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = shl nsw i32 %i.ci, 3
  %i.ck = icmp eq i32 %i.ci, 0
  %i.cl = shl nsw i32 %i.ci, 1
  %i.cm = select i1 %i.ck, i32 8, i32 %i.cl       ; 2 uses
  %i.cn = shl nsw i32 %i.cm, 3
  %i.co = sext i32 %i.cj to i64
  %i.cp = sext i32 %i.cn to i64
  %i.cq = call ptr @b2GrowAlloc(ptr noundef %.pre.i, i64 noundef %i.co, i64 noundef %i.cp) #9 ; 2 uses
  store ptr %i.cq, ptr %i.ce, align 8, !tbaa !150
  store i32 %i.cm, ptr %i.cg, align 4, !tbaa !94
  %.pre17.i = load i32, ptr %i.cf, align 8, !tbaa !94
  br label %b2EmplaceHelper.exit

b2EmplaceHelper.exit:                             ; preds = %bb.i, %bb.j
  %i.cr = phi i32 [ %.pre17.i, %bb.j ], [ %i.ch, %bb.i ] ; 2 uses
  %i.cs = phi ptr [ %i.cq, %bb.j ], [ %.pre.i, %bb.i ]
  %i.ct = add nsw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.cf, align 8, !tbaa !94
  %i.cu = shl nsw i32 %i.cr, 3
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv ; 2 uses
  store i32 %i.a, ptr %i.cw, align 4, !tbaa !90
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.cy = load i16, ptr %i.cx, align 8, !tbaa !80
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i16 %i.cy, ptr %i.cz, align 4, !tbaa !91
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %b2EmplaceHelper.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.l

bb.l:                                             ; preds = %.split, %bb.k, %bb.b, %bb.c, %b2ShouldShapesCollide.exit, %bb.h, %bb.a
  ret i1 true
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @b2CompareVisitors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !90
  %i.b = load i32, ptr %1, align 4, !tbaa !90
  %i.c = icmp slt i32 %i.a, %i.b
  %. = select i1 %i.c, i32 -1, i32 1
  ret i32 %.
}

declare { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @b2MakeShapeDistanceProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @b2ShapeDistance(ptr dead_on_unwind writable sret(%struct.b2DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS12b2StackEntry", !8, i64 0}
!11 = !{!"b2DynamicArray_b2StackEntry", !10, i64 0, !5, i64 8, !5, i64 12}
!12 = !{!"b2Stack", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !11, i64 24}
!13 = !{!"p1 int", !8, i64 0}
!14 = !{!"b2DynamicArray_int", !13, i64 0, !5, i64 8, !5, i64 12}
!15 = !{!"p1 _ZTS12b2MoveResult", !8, i64 0}
!16 = !{!"p1 _ZTS10b2MovePair", !8, i64 0}
!17 = !{!"b2AtomicInt", !5, i64 0}
!18 = !{!"p1 _ZTS9b2SetItem", !8, i64 0}
!19 = !{!"b2HashSet", !18, i64 0, !5, i64 8, !5, i64 12}
!20 = !{!"b2BroadPhase", !4, i64 0, !4, i64 216, !14, i64 264, !15, i64 280, !16, i64 288, !5, i64 296, !17, i64 300, !19, i64 304}
!21 = !{!"b2ConstraintGraph", !4, i64 0}
!22 = !{!"b2IdPool", !14, i64 0, !5, i64 16}
!23 = !{!"p1 _ZTS6b2Body", !8, i64 0}
!24 = !{!"b2DynamicArray_b2Body", !23, i64 0, !5, i64 8, !5, i64 12}
!25 = !{!"p1 _ZTS11b2SolverSet", !8, i64 0}
!26 = !{!"b2DynamicArray_b2SolverSet", !25, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!"p1 _ZTS7b2Joint", !8, i64 0}
!28 = !{!"b2DynamicArray_b2Joint", !27, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 _ZTS9b2Contact", !8, i64 0}
!30 = !{!"b2DynamicArray_b2Contact", !29, i64 0, !5, i64 8, !5, i64 12}
!31 = !{!"p1 _ZTS8b2Island", !8, i64 0}
!32 = !{!"b2DynamicArray_b2Island", !31, i64 0, !5, i64 8, !5, i64 12}
!33 = !{!"p1 _ZTS7b2Shape", !8, i64 0}
!34 = !{!"b2DynamicArray_b2Shape", !33, i64 0, !5, i64 8, !5, i64 12}
!35 = !{!"p1 _ZTS12b2ChainShape", !8, i64 0}
!36 = !{!"b2DynamicArray_b2ChainShape", !35, i64 0, !5, i64 8, !5, i64 12}
!37 = !{!"p1 _ZTS8b2Sensor", !8, i64 0}
!38 = !{!"b2DynamicArray_b2Sensor", !37, i64 0, !5, i64 8, !5, i64 12}
!39 = !{!"p1 _ZTS13b2TaskContext", !8, i64 0}
!40 = !{!"b2DynamicArray_b2TaskContext", !39, i64 0, !5, i64 8, !5, i64 12}
!41 = !{!"p1 _ZTS19b2SensorTaskContext", !8, i64 0}
!42 = !{!"b2DynamicArray_b2SensorTaskContext", !41, i64 0, !5, i64 8, !5, i64 12}
!43 = !{!"p1 _ZTS15b2BodyMoveEvent", !8, i64 0}
!44 = !{!"b2DynamicArray_b2BodyMoveEvent", !43, i64 0, !5, i64 8, !5, i64 12}
!45 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !8, i64 0}
!46 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !45, i64 0, !5, i64 8, !5, i64 12}
!47 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !8, i64 0}
!48 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !47, i64 0, !5, i64 8, !5, i64 12}
!49 = !{!"p1 _ZTS17b2ContactHitEvent", !8, i64 0}
!50 = !{!"b2DynamicArray_b2ContactHitEvent", !49, i64 0, !5, i64 8, !5, i64 12}
!51 = !{!"p1 _ZTS12b2JointEvent", !8, i64 0}
!52 = !{!"b2DynamicArray_b2JointEvent", !51, i64 0, !5, i64 8, !5, i64 12}
!53 = !{!"p1 long", !8, i64 0}
!54 = !{!"b2BitSet", !53, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!"long", !4, i64 0}
!56 = !{!"float", !4, i64 0}
!57 = !{!"b2Vec2", !56, i64 0, !56, i64 4}
!58 = !{!"short", !4, i64 0}
!59 = !{!"b2Profile", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84}
!60 = !{!"b2Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!61 = !{!"p1 _ZTS11b2Scheduler", !8, i64 0}
!62 = !{!"p1 _ZTS11b2Recording", !8, i64 0}
!63 = !{!"_Bool", !4, i64 0}
!64 = !{!"b2World", !12, i64 0, !20, i64 40, !21, i64 360, !22, i64 1896, !24, i64 1920, !22, i64 1936, !26, i64 1960, !22, i64 1976, !28, i64 2000, !22, i64 2016, !30, i64 2040, !22, i64 2056, !32, i64 2080, !22, i64 2096, !22, i64 2120, !34, i64 2144, !36, i64 2160, !38, i64 2176, !40, i64 2192, !42, i64 2208, !44, i64 2224, !46, i64 2240, !48, i64 2256, !4, i64 2272, !4, i64 2304, !5, i64 2336, !50, i64 2344, !52, i64 2360, !54, i64 2376, !54, i64 2392, !54, i64 2408, !54, i64 2424, !55, i64 2440, !5, i64 2448, !57, i64 2452, !56, i64 2460, !56, i64 2464, !56, i64 2468, !56, i64 2472, !56, i64 2476, !56, i64 2480, !56, i64 2484, !8, i64 2488, !8, i64 2496, !58, i64 2504, !59, i64 2508, !60, i64 2596, !8, i64 2616, !8, i64 2624, !8, i64 2632, !8, i64 2640, !8, i64 2648, !5, i64 2656, !8, i64 2664, !8, i64 2672, !8, i64 2680, !8, i64 2688, !61, i64 2696, !8, i64 2704, !62, i64 2712, !56, i64 2720, !56, i64 2724, !5, i64 2728, !5, i64 2732, !58, i64 2736, !63, i64 2738, !63, i64 2739, !63, i64 2740, !63, i64 2741, !63, i64 2742}
!65 = !{!64, !41, i64 2208}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!54, !53, i64 0}
!68 = !{!55, !55, i64 0}
!69 = !{!64, !37, i64 2176}
!70 = !{!64, !33, i64 2144}
!71 = !{!"p1 _ZTS9b2Visitor", !8, i64 0}
!72 = !{!"b2DynamicArray_b2Visitor", !71, i64 0, !5, i64 8, !5, i64 12}
!73 = !{!"b2Sensor", !72, i64 0, !72, i64 16, !72, i64 32, !5, i64 48}
!74 = !{!73, !5, i64 48}
!75 = !{!64, !58, i64 2736}
!76 = !{!"b2SurfaceMaterial", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !55, i64 16, !5, i64 24}
!77 = !{!"b2AABB", !57, i64 0, !57, i64 8}
!78 = !{!"b2Filter", !55, i64 0, !55, i64 8, !5, i64 16}
!79 = !{!"b2Shape", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !76, i64 24, !56, i64 56, !56, i64 60, !77, i64 64, !77, i64 80, !57, i64 96, !5, i64 104, !78, i64 112, !8, i64 136, !4, i64 144, !58, i64 288, !63, i64 290, !63, i64 291, !63, i64 292, !63, i64 293, !63, i64 294, !63, i64 295}
!80 = !{!79, !58, i64 288}
!81 = !{!73, !5, i64 24}
!82 = !{!73, !5, i64 40}
!83 = !{!73, !71, i64 16}
!84 = !{!73, !71, i64 32}
!85 = !{!64, !5, i64 2336}
!86 = !{!"p1 _ZTS21b2SensorEndTouchEvent", !8, i64 0}
!87 = !{!"b2DynamicArray_b2SensorEndTouchEvent", !86, i64 0, !5, i64 8, !5, i64 12}
!88 = !{!87, !5, i64 8}
!89 = !{!"b2Visitor", !5, i64 0, !58, i64 4}
!90 = !{!89, !5, i64 0}
!91 = !{!89, !58, i64 4}
!92 = !{!87, !5, i64 12}
!93 = !{!87, !86, i64 0}
!94 = !{!5, !5, i64 0}
end_hunk_0
