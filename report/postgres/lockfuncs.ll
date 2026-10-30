Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/lockfuncs?download=true
inline.NumInlined: 86
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pg_lock_status:bb.a
bb.p:                                             ; preds = %bb.h
  %i.dy = zext i32 %i.bq to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.ec, ptr %i.ed, align 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.eg, ptr %i.eh, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ej = load i16, ptr %i.ei, align 4
  %i.ek = sext i16 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 %i.ek, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  store i8 1, ptr %i.en, align 1
  store i32 16843009, ptr %i.em, align 2
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.eo = zext i32 %i.bq to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.eo, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.es, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.ew, ptr %i.ex, align 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ez = load i16, ptr %i.ey, align 4
  %i.fa = sext i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 %i.fa, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.fc, i8 1, i64 5, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.fe = load i32, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.fg = load i32, ptr %i.ff, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.fh = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %i.fe, i32 noundef %i.fg) #5 ; 0 uses
  %i.fi = call ptr @cstring_to_text(ptr noundef nonnull %i.b) #5
  %i.fj = ptrtoint ptr %i.fi to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %i.fj, ptr %i.fk, align 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.fm = load i32, ptr %i.fl, align 8            ; 2 uses
  %.not148 = icmp eq i32 %i.fm, 0
  br i1 %.not148, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %i.fn, ptr %i.fo, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  store i8 1, ptr %i.fp, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fq = getelementptr inbounds nuw i8, ptr %i.am, i64 15
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i16
  %i.ft = call ptr @GetLockmodeName(i16 noundef zeroext %i.fs, i32 noundef %.2135) #5
  %i.fu = call ptr @cstring_to_text(ptr noundef %i.ft) #5
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.fv, ptr %i.fw, align 16
  %i.fx = zext i1 %.0136154 to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %i.fx, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ga = load i8, ptr %i.fz, align 8, !range !6, !noundef !7
  %i.gb = zext nneg i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %i.gb, ptr %i.gc, align 16
  br i1 %.0136154, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ge = load i64, ptr %i.gd, align 8            ; 2 uses
  %.not149 = icmp eq i64 %i.ge, 0
  br i1 %.not149, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %i.ge, ptr %i.gf, align 8
  br label %.thread155

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.gg = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  store i8 1, ptr %i.gg, align 1
  br label %.thread155

.thread155:                                       ; preds = %bb.w, %bb.x
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call ptr @heap_form_tuple(ptr noundef %i.gi, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #5
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  %.val150 = load ptr, ptr %i.gk, align 8
  %i.gl = call i64 @HeapTupleHeaderGetDatum(ptr noundef %.val150) #5
  %i.gm = load i64, ptr %i.aa, align 8
  %i.gn = add i64 %i.gm, 1
  store i64 %i.gn, ptr %i.aa, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store i32 1, ptr %i.gq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.ak

bb.y:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.gr = load i32, ptr %i.ad, align 8
  %i.gs = icmp slt i32 %i.be, %i.gr
  br i1 %i.gs, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.c
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8            ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8            ; 3 uses
  %i.gx = load i32, ptr %i.gu, align 8
  %i.gy = icmp slt i32 %i.gw, %i.gx
  br i1 %i.gy, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %._crit_edge
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = sext i32 %i.gw to i64                   ; 2 uses
  %i.hc = getelementptr inbounds [16 x i8], ptr %i.ha, i64 %i.hb ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds [168 x i8], ptr %i.he, i64 %i.hb ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.hg, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.hh = add nsw i32 %i.gw, 1
  store i32 %i.hh, ptr %i.gv, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 12 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4
  %.not = icmp eq i32 %i.hj, 0
  br i1 %.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hl = load i32, ptr %i.hk, align 4
  %.not143 = icmp ne i32 %i.hl, -1
  %i.hm = zext i1 %.not143 to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.hn = phi i32 [ %i.hm, %bb.aa ], [ 2, %bb.z ] ; 3 uses
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr @PredicateLockTagTypeNames, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = tail call ptr @cstring_to_text(ptr noundef %i.hq) #5
  %i.hs = ptrtoint ptr %i.hr to i64
  store i64 %i.hs, ptr %i.g, align 16
  %i.ht = load i32, ptr %i.hc, align 4
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.hu, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.hy, ptr %i.hz, align 16
  %i.ia = icmp eq i32 %i.hn, 2
  br i1 %i.ia, label %.thread159, label %bb.ac

.thread159:                                       ; preds = %bb.ab
  %i.ib = load i32, ptr %i.hi, align 4
  %i.ic = and i32 %i.ib, 65535
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.id, ptr %i.ie, align 16
  br label %1

bb.ac:                                            ; preds = %bb.ab
  %i.if = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i8 1, ptr %i.if, align 4
  br label %1

1:                                                ; preds = %bb.ac, %.thread159
  %.not190 = icmp eq i32 %i.hn, 0
  br i1 %.not190, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.ii, ptr %i.ij, align 8
  br label %bb.af

bb.ae:                                            ; preds = %1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  store i8 1, ptr %i.ik, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.il, i8 1, i64 5, i1 false)
  %i.im = load i32, ptr %i.hf, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.io = load i32, ptr %i.in, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ip = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %i.im, i32 noundef %i.io) #5 ; 0 uses
  %i.iq = call ptr @cstring_to_text(ptr noundef nonnull %i.a) #5
  %i.ir = ptrtoint ptr %i.iq to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.is = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 %i.ir, ptr %i.is, align 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.hf, i64 160
  %i.iu = load i32, ptr %i.it, align 8            ; 2 uses
  %.not144 = icmp eq i32 %i.iu, 0
  br i1 %.not144, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 %i.iv, ptr %i.iw, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ix = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  store i8 1, ptr %i.ix, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.iy = call ptr @cstring_to_text(ptr noundef nonnull @.str.24) #5
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %i.iz, ptr %i.ja, align 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 1, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i64 0, ptr %i.jc, align 16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  store i8 1, ptr %i.jd, align 1
  %i.je = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = call ptr @heap_form_tuple(ptr noundef %i.jf, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #5
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  %.val = load ptr, ptr %i.jh, align 8
  %i.ji = call i64 @HeapTupleHeaderGetDatum(ptr noundef %.val) #5
  %i.jj = load i64, ptr %i.aa, align 8
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.aa, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store i32 1, ptr %i.jn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  tail call void @end_MultiFuncCall(ptr noundef nonnull %0, ptr noundef %i.aa) #5
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  store i32 2, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.jr, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %.thread155, %bb.ai, %bb.aj
  %.2 = phi i64 [ %i.gl, %.thread155 ], [ 0, %bb.aj ], [ %i.ji, %bb.ai ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @init_MultiFuncCall(ptr noundef) local_unnamed_addr #2

declare ptr @CreateTemplateTupleDesc(i32 noundef) local_unnamed_addr #2

declare void @TupleDescInitEntry(ptr noundef, i16 noundef signext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @TupleDescFinalize(ptr noundef) local_unnamed_addr #2

declare ptr @BlessTupleDesc(ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare ptr @GetLockStatusData() local_unnamed_addr #2

declare ptr @GetPredicateLockStatusData() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @per_MultiFuncCall(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #2

declare ptr @GetLockmodeName(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @heap_form_tuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @end_MultiFuncCall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_blocking_pids(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call ptr @GetBlockerStatusData(i32 noundef %i.c) #5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call ptr @palloc(i64 noundef %i.h) #5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph74, %._crit_edge69
  %indvars.iv86 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next87, %._crit_edge69 ] ; 2 uses
  %.05571 = phi i32 [ 0, %.lr.ph74 ], [ %.156.lcssa, %._crit_edge69 ] ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv86 ; 5 uses
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [56 x i8], ptr %i.q, i64 %i.t ; 6 uses
  %i.v = load ptr, ptr %i.n, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ad = load i32, ptr %i.p, align 4             ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ae = icmp ult i32 %i.ab, 4
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.05162 = phi ptr [ null, %.lr.ph.new ], [ %spec.select.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp eq i32 %i.ah, %i.ad
  %spec.select = select i1 %i.ai, ptr %i.af, ptr %.05162
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.am, %i.ad
  %spec.select.1 = select i1 %i.an, ptr %i.ak, ptr %spec.select
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.ar, %i.ad
  %spec.select.2 = select i1 %i.as, ptr %i.ap, ptr %spec.select.1
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 208
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp eq i32 %i.aw, %i.ad
  %spec.select.3 = select i1 %i.ax, ptr %i.au, ptr %spec.select.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !8

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_0
