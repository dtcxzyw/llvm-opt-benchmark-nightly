Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bwlzh?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bwlzh_compress_verbose:bb.a
; Function Attrs: nounwind uwtable
define void @bwlzh_compress_no_lz77(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @bwlzh_compress_gen(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @bwlzh_compress_no_lz77_verbose(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @bwlzh_compress_gen(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @bwlzh_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @bwlzh_decompress_gen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bwlzh_decompress_gen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 524304, ptr noundef nonnull @.str, i32 noundef 563) #9
  %i.c = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 524304, ptr noundef nonnull @.str, i32 noundef 564) #9
  %i.d = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 14400000, ptr noundef nonnull @.str, i32 noundef 575) #9 ; 8 uses
  %i.e = mul nsw i32 %1, 3
  %i.f = tail call i32 @Ptngc_comp_huff_buflen(i32 noundef %i.e) #9
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 582) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2400000
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4800000
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 7200000
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 9600000
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12000000
  %i.n = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 1800000, ptr noundef nonnull @.str, i32 noundef 591) #9 ; 2 uses
  %.not = icmp eq i32 %3, 0                       ; 9 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.1, i32 noundef %1) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load i32, ptr %0, align 1
  %.not250 = icmp eq i32 %i.q, %1
  br i1 %.not250, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %.not251273 = icmp eq i32 %1, 0
  br i1 %.not251273, label %._crit_edge287, label %.lr.ph286

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite261 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 95, i64 1, ptr %i.r) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.lr.ph286:                                        ; preds = %.preheader, %bb.ae
  %.0222285 = phi ptr [ %.1, %bb.ae ], [ %i.d, %.preheader ] ; 2 uses
  %.0223284 = phi i32 [ %.4, %bb.ae ], [ 4, %.preheader ] ; 2 uses
  %.0225283 = phi i32 [ %i.mq, %bb.ae ], [ 0, %.preheader ] ; 2 uses
  %.0226282 = phi i32 [ %i.v, %bb.ae ], [ %1, %.preheader ]
  %.0227281 = phi i32 [ %.1228, %bb.ae ], [ 200000, %.preheader ] ; 2 uses
  %.0229280 = phi ptr [ %.1230, %bb.ae ], [ %i.m, %.preheader ]
  %.0231279 = phi ptr [ %.1232, %bb.ae ], [ %i.l, %.preheader ]
  %.0233278 = phi ptr [ %.1234, %bb.ae ], [ %i.k, %.preheader ]
  %.0236277 = phi ptr [ %.1237, %bb.ae ], [ %i.n, %.preheader ] ; 2 uses
  %.0238276 = phi ptr [ %.1239, %bb.ae ], [ %i.j, %.preheader ]
  %.0240275 = phi ptr [ %.1241, %bb.ae ], [ %i.i, %.preheader ]
  %.0242274 = phi ptr [ %.1243, %bb.ae ], [ %i.d, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.s = sext i32 %.0223284 to i64
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 9 uses
  %i.u = load i32, ptr %i.t, align 1              ; 12 uses
  %i.v = sub nsw i32 %.0226282, %i.u              ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i32                      ; 5 uses
  %i.z = getelementptr i8, ptr %i.t, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8                ; 5 uses
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = getelementptr i8, ptr %i.t, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 16               ; 5 uses
  %i.ai = or disjoint i32 %i.ad, %i.ah
  %i.aj = getelementptr i8, ptr %i.t, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw i32 %i.al, 24                   ; 5 uses
  %i.an = or disjoint i32 %i.ai, %i.am            ; 9 uses
  %i.ao = getelementptr i8, ptr %i.t, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr i8, ptr %i.t, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = or disjoint i32 %i.au, %i.aq
  %i.aw = getelementptr i8, ptr %i.t, i64 10
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 16
  %i.ba = or disjoint i32 %i.av, %i.az
  %i.bb = getelementptr i8, ptr %i.t, i64 11
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw i32 %i.bd, 24
  %i.bf = or disjoint i32 %i.ba, %i.be            ; 2 uses
  %i.bg = add nsw i32 %.0223284, 12
  %i.bh = icmp sgt i32 %i.u, %.0227281
  br i1 %i.bh, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph286
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bj = mul i32 %i.u, 60
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.21, i32 noundef %i.bj) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bl = mul nsw i32 %i.u, 18
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = call ptr @Ptngc_warnrealloc_x(ptr noundef %.0222285, i64 noundef %i.bn, ptr noundef nonnull @.str, i32 noundef 649) #9 ; 7 uses
  %i.bp = mul nsw i32 %i.u, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = mul nsw i32 %i.u, 6
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bt
  %i.bv = mul nsw i32 %i.u, 9
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bw
  %i.by = mul nsw i32 %i.u, 12
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bz
  %i.cb = mul nsw i32 %i.u, 15
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cc
  %i.ce = call ptr @Ptngc_warnrealloc_x(ptr noundef %.0236277, i64 noundef %i.bw, ptr noundef nonnull @.str, i32 noundef 658) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph286
  %.1243 = phi ptr [ %i.bo, %bb.g ], [ %.0242274, %.lr.ph286 ] ; 4 uses
  %.1241 = phi ptr [ %i.br, %bb.g ], [ %.0240275, %.lr.ph286 ] ; 5 uses
  %.1239 = phi ptr [ %i.bu, %bb.g ], [ %.0238276, %.lr.ph286 ] ; 16 uses
  %.1237 = phi ptr [ %i.ce, %bb.g ], [ %.0236277, %.lr.ph286 ] ; 7 uses
  %.1234 = phi ptr [ %i.bx, %bb.g ], [ %.0233278, %.lr.ph286 ] ; 4 uses
  %.1232 = phi ptr [ %i.ca, %bb.g ], [ %.0231279, %.lr.ph286 ] ; 16 uses
  %.1230 = phi ptr [ %i.cd, %bb.g ], [ %.0229280, %.lr.ph286 ] ; 4 uses
  %.1228 = phi i32 [ %i.u, %bb.g ], [ %.0227281, %.lr.ph286 ]
  %.1 = phi ptr [ %i.bo, %bb.g ], [ %.0222285, %.lr.ph286 ] ; 2 uses
  %i.cf = icmp sgt i32 %i.an, 0
  %i.cg = or disjoint i32 %i.am, %i.ah
  %i.ch = or disjoint i32 %i.cg, %i.ac
  %i.ci = or disjoint i32 %i.ch, %i.y
  %i.cj = zext nneg i32 %i.an to i64
  %wide.trip.count300 = zext i32 %i.ci to i64
  %i.ck = or disjoint i32 %i.am, %i.ah
  %i.cl = or disjoint i32 %i.ck, %i.ac
  %i.cm = or disjoint i32 %i.cl, %i.y
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = mul nuw nsw i64 %i.cn, 3
  %scevgep = getelementptr i8, ptr %.1237, i64 %i.co
  %i.cp = shl nuw nsw i64 %i.cn, 2
  %scevgep314 = getelementptr i8, ptr %.1239, i64 %i.cp
  %i.cq = or disjoint i32 %i.am, %i.ah
  %i.cr = or disjoint i32 %i.cq, %i.ac
  %i.cs = or disjoint i32 %i.cr, %i.y             ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 5 uses
  %i.cu = or disjoint i32 %i.am, %i.ah
  %i.cv = or disjoint i32 %i.cu, %i.ac
  %i.cw = or disjoint i32 %i.cv, %i.y
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.cs, 8
  %bound0 = icmp ult ptr %.1237, %scevgep314
  %bound1 = icmp ult ptr %.1239, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check315 = icmp ult i32 %i.cs, 32
  %i.cy = and i64 %i.ct, 24
  %n.vec = and i64 %i.ct, 4294967264              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ct
  %min.epilog.iters.check = icmp eq i64 %i.cy, 0
  %n.vec319 = and i64 %i.ct, 4294967288           ; 3 uses
  %cmp.n323 = icmp eq i64 %n.vec319, %i.ct
  %xtraiter364 = and i64 %i.cx, 7                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %indvars.iv302 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next303, %._crit_edge ] ; 3 uses
  %.1224272 = phi i32 [ %i.bg, %bb.h ], [ %.4, %._crit_edge ] ; 3 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.da = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.6, i32 noundef %i.da) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dc = sext i32 %.1224272 to i64
  %i.dd = getelementptr i8, ptr %0, i64 %i.dc     ; 9 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = getelementptr i8, ptr %i.dd, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i32
  %i.di = getelementptr i8, ptr %i.dd, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = or disjoint i32 %i.dl, %i.dh
  %i.dn = getelementptr i8, ptr %i.dd, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 16
  %i.dr = or disjoint i32 %i.dm, %i.dq
  %i.ds = getelementptr i8, ptr %i.dd, i64 4
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw i32 %i.du, 24
  %i.dw = or disjoint i32 %i.dr, %i.dv
  %i.dx = getelementptr i8, ptr %i.dd, i64 5
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !13
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dd, i64 6
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !13
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 8                ; 2 uses
  %i.ee = or disjoint i32 %i.ed, %i.dz
  %i.ef = getelementptr i8, ptr %i.dd, i64 7
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 16               ; 2 uses
  %i.ej = or disjoint i32 %i.ee, %i.ei
  %i.ek = getelementptr i8, ptr %i.dd, i64 8
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw i32 %i.em, 24                   ; 2 uses
  %i.eo = or disjoint i32 %i.ej, %i.en            ; 3 uses
  %i.ep = add nsw i32 %.1224272, 9                ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.er = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.22, i32 noundef %i.eo) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.es = sext i32 %i.ep to i64
  %i.et = getelementptr inbounds i8, ptr %0, i64 %i.es
  call void @Ptngc_comp_huff_decompress(ptr noundef nonnull %i.et, i32 noundef %i.eo, ptr noundef %.1234) #9
  %i.eu = add nsw i32 %i.eo, %i.ep                ; 6 uses
  switch i8 %i.de, label %bb.z [
    i8 1, label %bb.n
    i8 0, label %bb.w
  ]

bb.n:                                             ; preds = %bb.m
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %0, i64 %i.ev ; 4 uses
  %i.ex = load i32, ptr %i.ew, align 1            ; 5 uses
  %i.ey = add nsw i32 %i.eu, 4                    ; 2 uses
  %i.ez = icmp sgt i32 %i.ex, 0
  br i1 %i.ez, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds i8, ptr %0, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.fe = sext i32 %i.eu to i64
  %i.ff = getelementptr i8, ptr %0, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 5
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !13
  %i.fi = zext i8 %i.fh to i32
  %i.fj = getelementptr i8, ptr %i.ew, i64 6
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.fl = zext i8 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 8
  %i.fn = or disjoint i32 %i.fm, %i.fi
  %i.fo = getelementptr i8, ptr %i.ew, i64 7
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = zext i8 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 16
  %i.fs = or disjoint i32 %i.fn, %i.fr
  %i.ft = getelementptr i8, ptr %i.ew, i64 8
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !13
  %i.fv = zext i8 %i.fu to i32
  %i.fw = shl nuw i32 %i.fv, 24
  %i.fx = or disjoint i32 %i.fs, %i.fw            ; 2 uses
  %i.fy = add nsw i32 %i.eu, 9                    ; 2 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite258 = call i64 @fwrite(ptr nonnull @.str.23, i64 36, i64 1, ptr %i.fz) #11 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ga = sext i32 %i.fy to i64
  %i.gb = getelementptr inbounds i8, ptr %0, i64 %i.ga
  call void @Ptngc_comp_huff_decompress(ptr noundef nonnull %i.gb, i32 noundef %i.fx, ptr noundef %.1232) #9
  %i.gc = add nsw i32 %i.fx, %i.fy
  br label %.loopexit

bb.s:                                             ; preds = %bb.o
  br i1 %.not, label %iter.check347, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite257 = call i64 @fwrite(ptr nonnull @.str.24, i64 22, i64 1, ptr %i.gd) #11 ; 0 uses
  br label %iter.check347

iter.check347:                                    ; preds = %bb.s, %bb.t
  %i.ge = add i32 %.1224272, 14
  %i.gf = add i32 %i.ge, %i.en
  %i.gg = add i32 %i.gf, %i.ei
  %i.gh = add i32 %i.gg, %i.ed
  %i.gi = add i32 %i.gh, %i.dz
  %i.gj = sext i32 %i.gi to i64                   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.ex to i64   ; 10 uses
  %min.iters.check331 = icmp ult i32 %i.ex, 8
  br i1 %min.iters.check331, label %.lr.ph.preheader, label %vector.memcheck324

vector.memcheck324:                               ; preds = %iter.check347
  %i.gk = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep325 = getelementptr i8, ptr %.1232, i64 %i.gk
  %scevgep326 = getelementptr i8, ptr %0, i64 %i.gj
  %i.gl = shl nuw nsw i64 %wide.trip.count, 1
  %i.gm = getelementptr i8, ptr %0, i64 %i.gl
  %scevgep327 = getelementptr i8, ptr %i.gm, i64 %i.gj
  %bound0328 = icmp ult ptr %.1232, %scevgep327
  %bound1329 = icmp ult ptr %scevgep326, %scevgep325
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %.lr.ph.preheader, label %vector.main.loop.iter.check332

vector.main.loop.iter.check332:                   ; preds = %vector.memcheck324
  %min.iters.check333 = icmp ult i32 %i.ex, 32
  br i1 %min.iters.check333, label %vec.epilog.ph351, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check332
  %i.gn = and i64 %wide.trip.count, 24
  %n.vec335 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %i.go = shl nuw nsw i64 %n.vec335, 1
  %i.gp = add nsw i64 %i.go, %i.gj                ; 2 uses
  %invariant.gep369 = getelementptr i8, ptr %0, i64 %i.gj
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph334, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.gq = shl i64 %index337, 1
  %gep370 = getelementptr i8, ptr %invariant.gep369, i64 %i.gq ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %gep370, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %gep370, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %gep370, i64 48
  %wide.load338 = load <8 x i16>, ptr %gep370, align 1, !alias.scope !54
  %wide.load339 = load <8 x i16>, ptr %i.gr, align 1, !alias.scope !54
  %wide.load340 = load <8 x i16>, ptr %i.gs, align 1, !alias.scope !54
  %wide.load341 = load <8 x i16>, ptr %i.gt, align 1, !alias.scope !54
  %i.gu = zext <8 x i16> %wide.load338 to <8 x i32>
  %i.gv = zext <8 x i16> %wide.load339 to <8 x i32>
  %i.gw = zext <8 x i16> %wide.load340 to <8 x i32>
  %i.gx = zext <8 x i16> %wide.load341 to <8 x i32>
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %index337 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 96
  store <8 x i32> %i.gu, ptr %i.gy, align 4, !tbaa !12, !alias.scope !55, !noalias !54
  store <8 x i32> %i.gv, ptr %i.gz, align 4, !tbaa !12, !alias.scope !55, !noalias !54
  store <8 x i32> %i.gw, ptr %i.ha, align 4, !tbaa !12, !alias.scope !55, !noalias !54
  store <8 x i32> %i.gx, ptr %i.hb, align 4, !tbaa !12, !alias.scope !55, !noalias !54
  %index.next342 = add nuw i64 %index337, 32      ; 2 uses
  %i.hc = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.hc, label %middle.block343, label %vector.body336, !llvm.loop !41

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %n.vec335, %wide.trip.count
  br i1 %cmp.n344, label %.loopexit.loopexit, label %vec.epilog.iter.check349

vec.epilog.iter.check349:                         ; preds = %middle.block343
  %min.epilog.iters.check350 = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check350, label %.lr.ph.preheader, label %vec.epilog.ph351, !prof !16

vec.epilog.ph351:                                 ; preds = %vector.main.loop.iter.check332, %vec.epilog.iter.check349
  %vec.epilog.resume.val345 = phi i64 [ %n.vec335, %vec.epilog.iter.check349 ], [ 0, %vector.main.loop.iter.check332 ]
  %n.vec352 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.hd = shl nuw nsw i64 %n.vec352, 1
  %i.he = add nsw i64 %i.hd, %i.gj                ; 2 uses
  %invariant.gep371 = getelementptr i8, ptr %0, i64 %i.gj
  br label %vec.epilog.vector.body353

vec.epilog.vector.body353:                        ; preds = %vec.epilog.vector.body353, %vec.epilog.ph351
  %index354 = phi i64 [ %vec.epilog.resume.val345, %vec.epilog.ph351 ], [ %index.next356, %vec.epilog.vector.body353 ] ; 3 uses
  %i.hf = shl i64 %index354, 1
  %gep372 = getelementptr i8, ptr %invariant.gep371, i64 %i.hf
  %wide.load355 = load <8 x i16>, ptr %gep372, align 1, !alias.scope !54
  %i.hg = zext <8 x i16> %wide.load355 to <8 x i32>
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %index354
  store <8 x i32> %i.hg, ptr %i.hh, align 4, !tbaa !12, !alias.scope !55, !noalias !54
  %index.next356 = add nuw i64 %index354, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next356, %n.vec352
  br i1 %i.hi, label %vec.epilog.middle.block357, label %vec.epilog.vector.body353, !llvm.loop !42

vec.epilog.middle.block357:                       ; preds = %vec.epilog.vector.body353
  %cmp.n358 = icmp eq i64 %n.vec352, %wide.trip.count
  br i1 %cmp.n358, label %.loopexit.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check347, %vector.memcheck324, %vec.epilog.iter.check349, %vec.epilog.middle.block357
  %indvars.iv292.ph = phi i64 [ %i.gj, %iter.check347 ], [ %i.gj, %vector.memcheck324 ], [ %i.gp, %vec.epilog.iter.check349 ], [ %i.he, %vec.epilog.middle.block357 ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %iter.check347 ], [ 0, %vector.memcheck324 ], [ %n.vec335, %vec.epilog.iter.check349 ], [ %n.vec352, %vec.epilog.middle.block357 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv292.prol = phi i64 [ %indvars.iv.next293.prol, %.lr.ph.prol ], [ %indvars.iv292.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.hj = getelementptr inbounds i8, ptr %0, i64 %indvars.iv292.prol
  %i.hk = load i16, ptr %i.hj, align 1
  %i.hl = zext i16 %i.hk to i32
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv.prol
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !12
  %indvars.iv.next293.prol = add nsw i64 %indvars.iv292.prol, 2 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !43

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next293.lcssa361.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next293.prol, %.lr.ph.prol ]
  %indvars.iv292.unr = phi i64 [ %indvars.iv292.ph, %.lr.ph.preheader ], [ %indvars.iv.next293.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.hn = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ho = icmp ugt i64 %i.hn, -8
  br i1 %i.ho, label %.loopexit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv292 = phi i64 [ %indvars.iv.next293.7, %.lr.ph ], [ %indvars.iv292.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.hp = getelementptr inbounds i8, ptr %0, i64 %indvars.iv292
  %i.hq = load i16, ptr %i.hp, align 1
  %i.hr = zext i16 %i.hq to i32
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !12
  %i.ht = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.hu = getelementptr i8, ptr %i.ht, i64 2
  %i.hv = load i16, ptr %i.hu, align 1
  %i.hw = zext i16 %i.hv to i32
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store i32 %i.hw, ptr %i.hy, align 4, !tbaa !12
  %i.hz = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.ia = getelementptr i8, ptr %i.hz, i64 4
  %i.ib = load i16, ptr %i.ia, align 1
  %i.ic = zext i16 %i.ib to i32
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !12
  %i.if = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.ig = getelementptr i8, ptr %i.if, i64 6
  %i.ih = load i16, ptr %i.ig, align 1
  %i.ii = zext i16 %i.ih to i32
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  store i32 %i.ii, ptr %i.ik, align 4, !tbaa !12
  %i.il = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %i.in = load i16, ptr %i.im, align 1
  %i.io = zext i16 %i.in to i32
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i32 %i.io, ptr %i.iq, align 4, !tbaa !12
  %i.ir = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.is = getelementptr i8, ptr %i.ir, i64 10
  %i.it = load i16, ptr %i.is, align 1
  %i.iu = zext i16 %i.it to i32
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 20
  store i32 %i.iu, ptr %i.iw, align 4, !tbaa !12
  %i.ix = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.iy = getelementptr i8, ptr %i.ix, i64 12
  %i.iz = load i16, ptr %i.iy, align 1
  %i.ja = zext i16 %i.iz to i32
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  store i32 %i.ja, ptr %i.jc, align 4, !tbaa !12
  %i.jd = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.je = getelementptr i8, ptr %i.jd, i64 14
  %i.jf = load i16, ptr %i.je, align 1
  %i.jg = zext i16 %i.jf to i32
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 28
  store i32 %i.jg, ptr %i.ji, align 4, !tbaa !12
  %indvars.iv.next293.7 = add nsw i64 %indvars.iv292, 16 ; 2 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !44

.loopexit.loopexit:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block357, %middle.block343
  %indvars.iv.next293.lcssa = phi i64 [ %i.he, %vec.epilog.middle.block357 ], [ %i.gp, %middle.block343 ], [ %indvars.iv.next293.lcssa361.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next293.7, %.lr.ph ]
  %i.jj = trunc nsw i64 %indvars.iv.next293.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.r, %bb.n
  %.3 = phi i32 [ %i.gc, %bb.r ], [ %i.ey, %bb.n ], [ %i.jj, %.loopexit.loopexit ] ; 2 uses
  %i.jk = sext i32 %.3 to i64
  %i.jl = getelementptr i8, ptr %0, i64 %i.jk     ; 5 uses
  %i.jm = load i32, ptr %i.jl, align 1
  %i.jn = getelementptr i8, ptr %i.jl, i64 4
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !13
  %i.jp = zext i8 %i.jo to i32
  %i.jq = getelementptr i8, ptr %i.jl, i64 5
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !13
  %i.js = zext i8 %i.jr to i32
  %i.jt = shl nuw nsw i32 %i.js, 8
  %i.ju = or disjoint i32 %i.jt, %i.jp
  %i.jv = getelementptr i8, ptr %i.jl, i64 6
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !13
  %i.jx = zext i8 %i.jw to i32
  %i.jy = shl nuw nsw i32 %i.jx, 16
  %i.jz = or disjoint i32 %i.ju, %i.jy
  %i.ka = getelementptr i8, ptr %i.jl, i64 7
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !13
  %i.kc = zext i8 %i.kb to i32
  %i.kd = shl nuw i32 %i.kc, 24
  %i.ke = or disjoint i32 %i.jz, %i.kd            ; 3 uses
  %i.kf = add nsw i32 %.3, 8                      ; 3 uses
  br i1 %.not, label %.thread, label %bb.u

.thread:                                          ; preds = %.loopexit
end_hunk_0
