Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/partbounds?download=true
inline.NumInlined: 222
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@partition_bounds_equal:bb.a
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv72
  %i.bc = load i8, ptr %i.bb, align 1, !range !7, !noundef !8
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv72
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = sext i16 %i.bf to i32
  %i.bh = tail call zeroext i1 @datumIsEqual(i64 noundef %i.av, i64 noundef %i.ba, i1 noundef zeroext %i.bd, i32 noundef %i.bg) #11
  br i1 %i.bh, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %..critedge_crit_edge, label %bb.h, !llvm.loop !38

..critedge_crit_edge:                             ; preds = %bb.l
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.bi = load i32, ptr %i.c, align 4
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next78, %i.bj
  br i1 %i.bk, label %.preheader, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %bb.g, %..critedge_crit_edge, %bb.i, %bb.k, %.preheader.lr.ph, %._crit_edge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ true, %._crit_edge ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ true, %.preheader.lr.ph ], [ true, %..critedge_crit_edge ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.g ]
  ret i1 %.2
}

declare zeroext i1 @datumIsEqual(i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @partition_bounds_copy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 56) #11 ; 13 uses
  %i.b = load i32, ptr %0, align 8
  store i32 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.d, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i16, ptr %i.i, align 4              ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 3 uses
  %i.l = sext i32 %i.d to i64                     ; 2 uses
  %i.m = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.l) #11
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 10 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ne ptr %i.p, null
  %i.r = icmp sgt i32 %i.d, 0                     ; 2 uses
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.b, label %.loopexit81

bb.b:                                             ; preds = %bb.a
  %i.s = shl nuw nsw i64 %i.l, 3
  %i.t = tail call ptr @palloc(i64 noundef %i.s) #11
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = mul i32 %i.d, %i.k
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 2
  %i.y = tail call ptr @palloc(i64 noundef %i.x) #11
  %i.z = sext i16 %i.j to i64
  %i.aa = shl nsw i64 %i.z, 2
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = mul i32 %i.ab, %i.k
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load ptr, ptr %i.u, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.u, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.o, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aj, ptr align 4 %i.am, i64 %i.aa, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit81.thread, label %bb.c, !llvm.loop !40

.loopexit81.thread:                               ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call ptr @bms_copy(ptr noundef %i.ao) #11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.d

.loopexit81:                                      ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call ptr @bms_copy(ptr noundef %i.at) #11
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.au, ptr %i.av, align 8
  br i1 %i.r, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.loopexit81.thread, %.loopexit81
  %i.aw = load i32, ptr %1, align 8
  %.fr88 = freeze i32 %i.aw
  %i.ax = icmp eq i32 %.fr88, 104                 ; 2 uses
  %i.ay = select i1 %i.ax, i32 2, i32 %i.k        ; 10 uses
  %i.az = mul i32 %i.ay, %i.d
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = tail call ptr @palloc(i64 noundef %i.bb) #11 ; 7 uses
  %i.bd = icmp sgt i32 %i.ay, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count115 = zext i32 %i.d to i64      ; 4 uses
  br i1 %i.bd, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %wide.trip.count115, 3      ; 3 uses
  %i.bi = add i32 %i.d, -1
  %i.bj = icmp ult i32 %i.bi, 3
  br i1 %i.bj, label %.split.epil.preheader, label %.split.preheader.new

.split.preheader.new:                             ; preds = %.split.preheader
  %unroll_iter = and i64 %wide.trip.count115, 4294967292
  br label %.split

.split.us:                                        ; preds = %bb.d
  %wide.trip.count110 = zext nneg i32 %i.ay to i64 ; 2 uses
  br i1 %i.ax, label %.lr.ph.us.us, label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.split.us, %._crit_edge.split.us.us.us
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %._crit_edge.split.us.us.us ], [ 0, %.split.us ] ; 6 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv112 to i32
  %i.bl = mul i32 %i.ay, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bm
  %i.bo = load ptr, ptr %i.n, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv112
  store ptr %i.bn, ptr %i.bp, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.us.us
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.h ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.bq = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv112
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv107
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bx = load ptr, ptr %i.bh, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv112
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv107
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = tail call i64 @datumCopy(i64 noundef %i.cb, i1 noundef zeroext true, i32 noundef 4) #11
  %i.cd = load ptr, ptr %i.n, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv112
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv107
  store i64 %i.cc, ptr %i.cg, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge.split.us.us.us, label %bb.e, !llvm.loop !41

._crit_edge.split.us.us.us:                       ; preds = %bb.h
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %.loopexit, label %.lr.ph.us.us, !llvm.loop !42

.lr.ph.us:                                        ; preds = %.split.us, %._crit_edge.split.us86
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge.split.us86 ], [ 0, %.split.us ] ; 6 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv102 to i32
  %i.ci = mul i32 %i.ay, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.cj
  %i.cl = load ptr, ptr %i.n, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv102
  store ptr %i.ck, ptr %i.cm, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.l ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.cn = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv102
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv97
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cu = load ptr, ptr %i.bf, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv97
  %i.cw = load i8, ptr %i.cv, align 1, !range !7, !noundef !8
  %i.cx = load ptr, ptr %i.bg, align 8
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv97
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = sext i16 %i.cz to i32
  %i.db = trunc nuw i8 %i.cw to i1
  %i.dc = load ptr, ptr %i.bh, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv102
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv97
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = tail call i64 @datumCopy(i64 noundef %i.dg, i1 noundef zeroext %i.db, i32 noundef %i.da) #11
  %i.di = load ptr, ptr %i.n, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv102
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv97
  store i64 %i.dh, ptr %i.dl, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count110
  br i1 %exitcond101.not, label %._crit_edge.split.us86, label %bb.i, !llvm.loop !41

._crit_edge.split.us86:                           ; preds = %bb.l
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count115
  br i1 %exitcond106.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !42

.split:                                           ; preds = %.split, %.split.preheader.new
  %indvars.iv92 = phi i64 [ 0, %.split.preheader.new ], [ %indvars.iv.next93.3, %.split ] ; 6 uses
  %niter = phi i64 [ 0, %.split.preheader.new ], [ %niter.next.3, %.split ]
  %i.dm = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.dn = mul i32 %i.ay, %i.dm
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.do
  %i.dq = load ptr, ptr %i.n, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv92
  store ptr %i.dp, ptr %i.dr, align 8
  %indvars.iv.next93 = or disjoint i64 %indvars.iv92, 1 ; 2 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv.next93 to i32
  %i.dt = mul i32 %i.ay, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.du
  %i.dw = load ptr, ptr %i.n, align 8
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next93
  store ptr %i.dv, ptr %i.dx, align 8
  %indvars.iv.next93.1 = or disjoint i64 %indvars.iv92, 2 ; 2 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv.next93.1 to i32
  %i.dz = mul i32 %i.ay, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ea
  %i.ec = load ptr, ptr %i.n, align 8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next93.1
  store ptr %i.eb, ptr %i.ed, align 8
  %indvars.iv.next93.2 = or disjoint i64 %indvars.iv92, 3 ; 2 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv.next93.2 to i32
  %i.ef = mul i32 %i.ay, %i.ee
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.eg
  %i.ei = load ptr, ptr %i.n, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next93.2
  store ptr %i.eh, ptr %i.ej, align 8
  %indvars.iv.next93.3 = add nuw nsw i64 %indvars.iv92, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit126.unr-lcssa, label %.split, !llvm.loop !42

.loopexit.loopexit126.unr-lcssa:                  ; preds = %.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.split.epil.preheader

.split.epil.preheader:                            ; preds = %.loopexit.loopexit126.unr-lcssa, %.split.preheader
  %indvars.iv92.epil.init = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next93.3, %.loopexit.loopexit126.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.split.epil

.split.epil:                                      ; preds = %.split.epil, %.split.epil.preheader
  %indvars.iv92.epil = phi i64 [ %indvars.iv.next93.epil, %.split.epil ], [ %indvars.iv92.epil.init, %.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.split.epil ], [ 0, %.split.epil.preheader ]
  %i.ek = trunc nuw nsw i64 %indvars.iv92.epil to i32
  %i.el = mul i32 %i.ay, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.em
  %i.eo = load ptr, ptr %i.n, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv92.epil
  store ptr %i.en, ptr %i.ep, align 8
  %indvars.iv.next93.epil = add nuw nsw i64 %indvars.iv92.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.split.epil, !llvm.loop !43

.loopexit:                                        ; preds = %.loopexit.loopexit126.unr-lcssa, %.split.epil, %._crit_edge.split.us86, %._crit_edge.split.us.us.us, %.loopexit81
  %i.eq = sext i32 %i.g to i64                    ; 2 uses
  %i.er = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.eq) #11 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.er, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = shl nsw i64 %i.eq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.er, ptr align 4 %i.eu, i64 %i.ev, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %i.ex, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.fa, ptr %i.fb, align 4
  ret ptr %i.a
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @bms_copy(ptr noundef) local_unnamed_addr #2

declare i64 @datumCopy(i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @partition_bounds_merge(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((0, 8)) %6, ptr nofree noundef captures(none) initializes((0, 8)) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.PartitionMap, align 8       ; 8 uses
  %9 = alloca %struct.PartitionMap, align 8       ; 8 uses
  %10 = alloca %struct.PartitionMap, align 8      ; 10 uses
  %11 = alloca %struct.PartitionMap, align 8      ; 10 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  store ptr null, ptr %7, align 8
  store ptr null, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.c = load ptr, ptr %i.b, align 8              ; 16 uses
  %i.d = load i32, ptr %i.c, align 8
  switch i32 %i.d, label %bb.hl [
    i32 114, label %bb.cs
    i32 108, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not.i = icmp eq i32 %i.h, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not307.i = icmp eq i32 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not308.i = icmp eq i32 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8
  %.not309.i = icmp eq i32 %i.n, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  %i.o = getelementptr i8, ptr %3, i64 416
  %.val167.i = load i32, ptr %i.o, align 8        ; 5 uses
  store i32 %.val167.i, ptr %10, align 8
  %i.p = sext i32 %.val167.i to i64               ; 3 uses
  %i.q = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.p) #11 ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = tail call ptr @palloc_mul(i64 noundef 1, i64 noundef %i.p) #11 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  store i8 0, ptr %i.u, align 8
  %i.v = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.p) #11 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8
  %i.x = icmp sgt i32 %.val167.i, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %init_partition_map.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %.val167.i to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %.val167.i, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.y = shl nuw nsw i64 %wide.trip.count.i.i, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.y ; 2 uses
end_hunk_0
