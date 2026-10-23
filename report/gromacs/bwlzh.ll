Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bwlzh?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bwlzh_compress_gen:bb.a
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = getelementptr i8, ptr %2, i64 %indvars.iv301 ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 6
  store i8 %i.kh, ptr %i.kj, align 1, !tbaa !13
  %i.kk = load i32, ptr %i.kf, align 4, !tbaa !12
  %i.kl = lshr i32 %i.kk, 8
  %i.km = trunc i32 %i.kl to i8
  %indvars.iv.next302.3 = add nsw i64 %indvars.iv301, 8 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.ki, i64 7
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !13
  %indvars.iv.next300.3 = add nuw nsw i64 %indvars.iv299, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next300.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge275.loopexit, label %.lr.ph274, !llvm.loop !31

._crit_edge275.loopexit:                          ; preds = %.lr.ph274.prol.loopexit, %.lr.ph274, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next302.lcssa = phi i64 [ %i.im, %vec.epilog.middle.block ], [ %i.ho, %middle.block ], [ %indvars.iv.next302.lcssa377.unr, %.lr.ph274.prol.loopexit ], [ %indvars.iv.next302.3, %.lr.ph274 ]
  %i.ko = trunc nsw i64 %indvars.iv.next302.lcssa to i32
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit, %bb.s
  %.2.lcssa = phi i32 [ %i.he, %bb.s ], [ %i.ko, %._crit_edge275.loopexit ] ; 2 uses
  br i1 %.not, label %.critedge244, label %.thread263

.thread263:                                       ; preds = %._crit_edge275
  %i.kp = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.kq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kp, ptr noundef nonnull @.str.18, i32 noundef %i.gu) #10 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.n
  %.3 = phi i32 [ %i.hd, %bb.r ], [ %i.fo, %bb.n ] ; 2 uses
  br i1 %.not, label %.critedge244, label %bb.u

bb.u:                                             ; preds = %.thread263, %bb.t
  %.3265 = phi i32 [ %.2.lcssa, %.thread263 ], [ %.3, %bb.t ]
  %i.kr = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite232 = call i64 @fwrite(ptr nonnull @.str.19, i64 20, i64 1, ptr %i.kr) #11 ; 0 uses
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.ks = load i32, ptr %i.h, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.u, i32 noundef %i.ks, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  %i.kt = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ku = load i32, ptr %i.b, align 4, !tbaa !12
  %i.kv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kt, ptr noundef nonnull @.str.14, i32 noundef %i.ku) #10 ; 0 uses
  %i.kw = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.kx = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 0) #9
  %i.ky = load i32, ptr %i.c, align 4, !tbaa !12
  %i.kz = load i32, ptr %i.b, align 4, !tbaa !12
  %i.la = sub nsw i32 %i.ky, %i.kz
  %i.lb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kw, ptr noundef nonnull @.str.15, ptr noundef %i.kx, i32 noundef %i.la) #10 ; 0 uses
  %i.lc = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ld = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 1) #9
  %i.le = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.lf = load i32, ptr %i.b, align 4, !tbaa !12
  %i.lg = sub nsw i32 %i.le, %i.lf
  %i.lh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lc, ptr noundef nonnull @.str.15, ptr noundef %i.ld, i32 noundef %i.lg) #10 ; 0 uses
  %i.li = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.lj = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 2) #9
  %i.lk = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.ll = load i32, ptr %i.b, align 4, !tbaa !12
  %i.lm = sub nsw i32 %i.lk, %i.ll
  %i.ln = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.li, ptr noundef nonnull @.str.15, ptr noundef %i.lj, i32 noundef %i.lm) #10 ; 0 uses
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.lp = load i32, ptr %i.d, align 4, !tbaa !12
  %i.lq = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef %i.lp) #9
  %i.lr = load i32, ptr %i.i, align 4, !tbaa !12
  %i.ls = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lo, ptr noundef nonnull @.str.16, ptr noundef %i.lq, i32 noundef %i.lr) #10 ; 0 uses
  br label %bb.v

.critedge244:                                     ; preds = %._crit_edge275, %bb.t
  %.3262 = phi i32 [ %.3, %bb.t ], [ %.2.lcssa, %._crit_edge275 ]
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.lt = load i32, ptr %i.h, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.u, i32 noundef %i.lt, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  br label %bb.v

bb.v:                                             ; preds = %.critedge244, %bb.u
  %.3261 = phi i32 [ %.3262, %.critedge244 ], [ %.3265, %bb.u ] ; 2 uses
  %i.lu = load i32, ptr %i.h, align 4, !tbaa !12
  %i.lv = sext i32 %.3261 to i64
  %i.lw = getelementptr inbounds i8, ptr %2, i64 %i.lv ; 2 uses
  store i32 %i.lu, ptr %i.lw, align 1
  %i.lx = load i32, ptr %i.i, align 4, !tbaa !12  ; 3 uses
  %i.ly = getelementptr i8, ptr %i.lw, i64 4
  store i32 %i.lx, ptr %i.ly, align 1
  %i.lz = add nsw i32 %.3261, 8                   ; 2 uses
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds i8, ptr %2, i64 %i.ma
  %i.mc = sext i32 %i.lx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mb, ptr align 1 %i.p, i64 %i.mc, i1 false)
  %i.md = add nsw i32 %i.lx, %i.lz
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.v
  %.4 = phi i32 [ %i.md, %bb.v ], [ %i.fk, %bb.m ] ; 3 uses
  %i.me = add nuw nsw i32 %.0222278, 1            ; 2 uses
  %exitcond310.not = icmp eq i32 %i.me, 3
  br i1 %exitcond310.not, label %.loopexit, label %bb.g, !llvm.loop !32

._crit_edge288:                                   ; preds = %.loopexit, %bb.c
  %.0217.lcssa = phi i32 [ 4, %bb.c ], [ %.4, %.loopexit ]
  store i32 %.0217.lcssa, ptr %3, align 4, !tbaa !12
  call void @free(ptr noundef %i.k) #9
  call void @free(ptr noundef %i.j) #9
  call void @free(ptr noundef %i.p) #9
  call void @free(ptr noundef %i.v) #9
  call void @free(ptr noundef %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @bwlzh_compress_verbose(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @bwlzh_compress_gen(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 1)
  ret void
}

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
  %.0225283 = phi i32 [ %i.lb, %bb.ae ], [ 0, %.preheader ] ; 2 uses
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
  %4 = getelementptr i8, ptr %i.t, i64 4
  %5 = load i8, ptr %4, align 1, !tbaa !13
  %6 = zext i8 %5 to i32                          ; 5 uses
  %i.w = getelementptr i8, ptr %i.t, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i32
  %7 = shl nuw nsw i32 %i.y, 8                    ; 5 uses
  %8 = or disjoint i32 %7, %6
  %i.z = getelementptr i8, ptr %i.t, i64 6
  %9 = load i8, ptr %i.z, align 1, !tbaa !13
  %i.aa = zext i8 %9 to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16               ; 5 uses
  %i.ac = or disjoint i32 %8, %i.ab
  %i.ad = getelementptr i8, ptr %i.t, i64 7
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 24                   ; 5 uses
  %i.ah = or disjoint i32 %i.ac, %i.ag            ; 9 uses
  %10 = getelementptr i8, ptr %i.t, i64 8
  %11 = load i8, ptr %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i32
  %i.ai = getelementptr i8, ptr %i.t, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i32
  %13 = shl nuw nsw i32 %i.ak, 8
  %14 = or disjoint i32 %13, %12
  %i.al = getelementptr i8, ptr %i.t, i64 10
  %15 = load i8, ptr %i.al, align 1, !tbaa !13
  %i.am = zext i8 %15 to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %i.ao = or disjoint i32 %14, %i.an
  %i.ap = getelementptr i8, ptr %i.t, i64 11
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 24
  %i.at = or disjoint i32 %i.ao, %i.as            ; 2 uses
  %i.au = add nsw i32 %.0223284, 12
  %i.av = icmp sgt i32 %i.u, %.0227281
  br i1 %i.av, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph286
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ax = mul i32 %i.u, 60
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.21, i32 noundef %i.ax) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.az = mul nsw i32 %i.u, 18
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = call ptr @Ptngc_warnrealloc_x(ptr noundef %.0222285, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 649) #9 ; 7 uses
  %i.bd = mul nsw i32 %i.u, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.be
  %i.bg = mul nsw i32 %i.u, 6
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bh
  %i.bj = mul nsw i32 %i.u, 9
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = mul nsw i32 %i.u, 12
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bn
  %i.bp = mul nsw i32 %i.u, 15
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bq
  %i.bs = call ptr @Ptngc_warnrealloc_x(ptr noundef %.0236277, i64 noundef %i.bk, ptr noundef nonnull @.str, i32 noundef 658) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph286
  %.1243 = phi ptr [ %i.bc, %bb.g ], [ %.0242274, %.lr.ph286 ] ; 4 uses
  %.1241 = phi ptr [ %i.bf, %bb.g ], [ %.0240275, %.lr.ph286 ] ; 5 uses
  %.1239 = phi ptr [ %i.bi, %bb.g ], [ %.0238276, %.lr.ph286 ] ; 16 uses
  %.1237 = phi ptr [ %i.bs, %bb.g ], [ %.0236277, %.lr.ph286 ] ; 7 uses
  %.1234 = phi ptr [ %i.bl, %bb.g ], [ %.0233278, %.lr.ph286 ] ; 4 uses
  %.1232 = phi ptr [ %i.bo, %bb.g ], [ %.0231279, %.lr.ph286 ] ; 16 uses
  %.1230 = phi ptr [ %i.br, %bb.g ], [ %.0229280, %.lr.ph286 ] ; 4 uses
  %.1228 = phi i32 [ %i.u, %bb.g ], [ %.0227281, %.lr.ph286 ]
  %.1 = phi ptr [ %i.bc, %bb.g ], [ %.0222285, %.lr.ph286 ] ; 2 uses
  %i.bt = icmp sgt i32 %i.ah, 0
  %i.bu = or disjoint i32 %i.ag, %i.ab
  %16 = or disjoint i32 %i.bu, %7
  %i.bv = or disjoint i32 %16, %6
  %i.bw = zext nneg i32 %i.ah to i64
  %wide.trip.count300 = zext i32 %i.bv to i64
  %i.bx = or disjoint i32 %i.ag, %i.ab
  %17 = or disjoint i32 %i.bx, %7
  %i.by = or disjoint i32 %17, %6
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = mul nuw nsw i64 %i.bz, 3
  %scevgep = getelementptr i8, ptr %.1237, i64 %i.ca
  %i.cb = shl nuw nsw i64 %i.bz, 2
  %scevgep314 = getelementptr i8, ptr %.1239, i64 %i.cb
  %i.cc = or disjoint i32 %i.ag, %i.ab
  %18 = or disjoint i32 %i.cc, %7
  %i.cd = or disjoint i32 %18, %6                 ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 5 uses
  %i.cf = or disjoint i32 %i.ag, %i.ab
  %19 = or disjoint i32 %i.cf, %7
  %i.cg = or disjoint i32 %19, %6
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.cd, 8
  %bound0 = icmp ult ptr %.1237, %scevgep314
  %bound1 = icmp ult ptr %.1239, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check315 = icmp ult i32 %i.cd, 32
  %i.ci = and i64 %i.ce, 24
  %n.vec = and i64 %i.ce, 4294967264              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ce
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  %n.vec319 = and i64 %i.ce, 4294967288           ; 3 uses
  %cmp.n323 = icmp eq i64 %n.vec319, %i.ce
  %xtraiter364 = and i64 %i.ch, 7                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %indvars.iv302 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next303, %._crit_edge ] ; 3 uses
  %.1224272 = phi i32 [ %i.au, %bb.h ], [ %.4, %._crit_edge ] ; 3 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ck = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.cl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.6, i32 noundef %i.ck) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cm = sext i32 %.1224272 to i64
  %20 = getelementptr i8, ptr %0, i64 %i.cm       ; 9 uses
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %i.cn = getelementptr i8, ptr %20, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %22 = zext i8 %i.co to i32
  %i.cp = getelementptr i8, ptr %20, i64 2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i32
  %23 = shl nuw nsw i32 %i.cr, 8
  %24 = or disjoint i32 %23, %22
  %i.cs = getelementptr i8, ptr %20, i64 3
  %25 = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.ct = zext i8 %25 to i32
  %i.cu = shl nuw nsw i32 %i.ct, 16
  %i.cv = or disjoint i32 %24, %i.cu
  %i.cw = getelementptr i8, ptr %20, i64 4
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw i32 %i.cy, 24
  %i.da = or disjoint i32 %i.cv, %i.cz
  %26 = getelementptr i8, ptr %20, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i32                        ; 2 uses
  %i.db = getelementptr i8, ptr %20, i64 6
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i32
  %29 = shl nuw nsw i32 %i.dd, 8                  ; 2 uses
  %30 = or disjoint i32 %29, %28
  %i.de = getelementptr i8, ptr %20, i64 7
  %31 = load i8, ptr %i.de, align 1, !tbaa !13
  %i.df = zext i8 %31 to i32
  %i.dg = shl nuw nsw i32 %i.df, 16               ; 2 uses
  %i.dh = or disjoint i32 %30, %i.dg
  %i.di = getelementptr i8, ptr %20, i64 8
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw i32 %i.dk, 24                   ; 2 uses
  %i.dm = or disjoint i32 %i.dh, %i.dl            ; 3 uses
  %i.dn = add nsw i32 %.1224272, 9                ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.22, i32 noundef %i.dm) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dq = sext i32 %i.dn to i64
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.dq
  call void @Ptngc_comp_huff_decompress(ptr noundef nonnull %i.dr, i32 noundef %i.dm, ptr noundef %.1234) #9
  %i.ds = add nsw i32 %i.dm, %i.dn                ; 6 uses
  switch i8 %21, label %bb.z [
    i8 1, label %bb.n
    i8 0, label %bb.w
  ]

bb.n:                                             ; preds = %bb.m
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %0, i64 %i.dt ; 4 uses
  %i.dv = load i32, ptr %i.du, align 1            ; 5 uses
  %i.dw = add nsw i32 %i.ds, 4                    ; 2 uses
  %i.dx = icmp sgt i32 %i.dv, 0
  br i1 %i.dx, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds i8, ptr %0, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !13
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ec = sext i32 %i.ds to i64
  %i.ed = getelementptr i8, ptr %0, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 5
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13
  %i.eg = zext i8 %i.ef to i32
  %i.eh = getelementptr i8, ptr %i.du, i64 6
  %32 = load i8, ptr %i.eh, align 1, !tbaa !13
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %34, %i.eg
  %36 = getelementptr i8, ptr %i.du, i64 7
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %i.ei = zext i8 %37 to i32
  %i.ej = shl nuw nsw i32 %i.ei, 16
  %i.ek = or disjoint i32 %35, %i.ej
  %i.el = getelementptr i8, ptr %i.du, i64 8
  %i.em = load i8, ptr %i.el, align 1, !tbaa !13
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 24
  %i.ep = or disjoint i32 %i.ek, %i.eo            ; 2 uses
  %i.eq = add nsw i32 %i.ds, 9                    ; 2 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite258 = call i64 @fwrite(ptr nonnull @.str.23, i64 36, i64 1, ptr %i.er) #11 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds i8, ptr %0, i64 %i.es
  call void @Ptngc_comp_huff_decompress(ptr noundef nonnull %i.et, i32 noundef %i.ep, ptr noundef %.1232) #9
  %i.eu = add nsw i32 %i.ep, %i.eq
  br label %.loopexit

bb.s:                                             ; preds = %bb.o
  br i1 %.not, label %iter.check347, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite257 = call i64 @fwrite(ptr nonnull @.str.24, i64 22, i64 1, ptr %i.ev) #11 ; 0 uses
  br label %iter.check347

iter.check347:                                    ; preds = %bb.s, %bb.t
  %i.ew = add i32 %.1224272, 14
  %38 = add i32 %i.ew, %i.dl
  %i.ex = add i32 %38, %i.dg
  %i.ey = add i32 %i.ex, %29
  %i.ez = add i32 %i.ey, %28
  %i.fa = sext i32 %i.ez to i64                   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.dv to i64   ; 10 uses
  %min.iters.check331 = icmp ult i32 %i.dv, 8
  br i1 %min.iters.check331, label %.lr.ph.preheader, label %vector.memcheck324

vector.memcheck324:                               ; preds = %iter.check347
  %i.fb = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep325 = getelementptr i8, ptr %.1232, i64 %i.fb
  %scevgep326 = getelementptr i8, ptr %0, i64 %i.fa
  %i.fc = shl nuw nsw i64 %wide.trip.count, 1
  %i.fd = getelementptr i8, ptr %0, i64 %i.fc
  %scevgep327 = getelementptr i8, ptr %i.fd, i64 %i.fa
  %bound0328 = icmp ult ptr %.1232, %scevgep327
  %bound1329 = icmp ult ptr %scevgep326, %scevgep325
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %.lr.ph.preheader, label %vector.main.loop.iter.check332

vector.main.loop.iter.check332:                   ; preds = %vector.memcheck324
  %min.iters.check333 = icmp ult i32 %i.dv, 32
  br i1 %min.iters.check333, label %vec.epilog.ph351, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check332
  %i.fe = and i64 %wide.trip.count, 24
  %n.vec335 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %i.ff = shl nuw nsw i64 %n.vec335, 1
  %i.fg = add nsw i64 %i.ff, %i.fa                ; 2 uses
  %invariant.gep369 = getelementptr i8, ptr %0, i64 %i.fa
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph334, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.fh = shl i64 %index337, 1
  %gep370 = getelementptr i8, ptr %invariant.gep369, i64 %i.fh ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %gep370, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %gep370, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %gep370, i64 48
  %wide.load338 = load <8 x i16>, ptr %gep370, align 1, !alias.scope !53
  %wide.load339 = load <8 x i16>, ptr %i.fi, align 1, !alias.scope !53
  %wide.load340 = load <8 x i16>, ptr %i.fj, align 1, !alias.scope !53
  %wide.load341 = load <8 x i16>, ptr %i.fk, align 1, !alias.scope !53
  %i.fl = zext <8 x i16> %wide.load338 to <8 x i32>
  %i.fm = zext <8 x i16> %wide.load339 to <8 x i32>
  %i.fn = zext <8 x i16> %wide.load340 to <8 x i32>
  %i.fo = zext <8 x i16> %wide.load341 to <8 x i32>
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %index337 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 96
  store <8 x i32> %i.fl, ptr %i.fp, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  store <8 x i32> %i.fm, ptr %i.fq, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  store <8 x i32> %i.fn, ptr %i.fr, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  store <8 x i32> %i.fo, ptr %i.fs, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %index.next342 = add nuw i64 %index337, 32      ; 2 uses
  %i.ft = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.ft, label %middle.block343, label %vector.body336, !llvm.loop !40

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %n.vec335, %wide.trip.count
  br i1 %cmp.n344, label %.loopexit.loopexit, label %vec.epilog.iter.check349

vec.epilog.iter.check349:                         ; preds = %middle.block343
  %min.epilog.iters.check350 = icmp eq i64 %i.fe, 0
  br i1 %min.epilog.iters.check350, label %.lr.ph.preheader, label %vec.epilog.ph351, !prof !16

vec.epilog.ph351:                                 ; preds = %vector.main.loop.iter.check332, %vec.epilog.iter.check349
  %vec.epilog.resume.val345 = phi i64 [ %n.vec335, %vec.epilog.iter.check349 ], [ 0, %vector.main.loop.iter.check332 ]
  %n.vec352 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.fu = shl nuw nsw i64 %n.vec352, 1
  %i.fv = add nsw i64 %i.fu, %i.fa                ; 2 uses
  %invariant.gep371 = getelementptr i8, ptr %0, i64 %i.fa
  br label %vec.epilog.vector.body353

vec.epilog.vector.body353:                        ; preds = %vec.epilog.vector.body353, %vec.epilog.ph351
  %index354 = phi i64 [ %vec.epilog.resume.val345, %vec.epilog.ph351 ], [ %index.next356, %vec.epilog.vector.body353 ] ; 3 uses
  %i.fw = shl i64 %index354, 1
  %gep372 = getelementptr i8, ptr %invariant.gep371, i64 %i.fw
  %wide.load355 = load <8 x i16>, ptr %gep372, align 1, !alias.scope !53
  %i.fx = zext <8 x i16> %wide.load355 to <8 x i32>
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %index354
  store <8 x i32> %i.fx, ptr %i.fy, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %index.next356 = add nuw i64 %index354, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next356, %n.vec352
  br i1 %i.fz, label %vec.epilog.middle.block357, label %vec.epilog.vector.body353, !llvm.loop !41

vec.epilog.middle.block357:                       ; preds = %vec.epilog.vector.body353
  %cmp.n358 = icmp eq i64 %n.vec352, %wide.trip.count
  br i1 %cmp.n358, label %.loopexit.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check347, %vector.memcheck324, %vec.epilog.iter.check349, %vec.epilog.middle.block357
  %indvars.iv292.ph = phi i64 [ %i.fa, %iter.check347 ], [ %i.fa, %vector.memcheck324 ], [ %i.fg, %vec.epilog.iter.check349 ], [ %i.fv, %vec.epilog.middle.block357 ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %iter.check347 ], [ 0, %vector.memcheck324 ], [ %n.vec335, %vec.epilog.iter.check349 ], [ %n.vec352, %vec.epilog.middle.block357 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv292.prol = phi i64 [ %indvars.iv.next293.prol, %.lr.ph.prol ], [ %indvars.iv292.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ga = getelementptr inbounds i8, ptr %0, i64 %indvars.iv292.prol
  %i.gb = load i16, ptr %i.ga, align 1
  %i.gc = zext i16 %i.gb to i32
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv.prol
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !12
  %indvars.iv.next293.prol = add nsw i64 %indvars.iv292.prol, 2 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !42

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next293.lcssa361.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next293.prol, %.lr.ph.prol ]
  %indvars.iv292.unr = phi i64 [ %indvars.iv292.ph, %.lr.ph.preheader ], [ %indvars.iv.next293.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ge = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gf = icmp ugt i64 %i.ge, -8
  br i1 %i.gf, label %.loopexit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv292 = phi i64 [ %indvars.iv.next293.7, %.lr.ph ], [ %indvars.iv292.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.gg = getelementptr inbounds i8, ptr %0, i64 %indvars.iv292
  %i.gh = load i16, ptr %i.gg, align 1
  %i.gi = zext i16 %i.gh to i32
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !12
  %i.gk = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.gl = getelementptr i8, ptr %i.gk, i64 2
  %i.gm = load i16, ptr %i.gl, align 1
  %i.gn = zext i16 %i.gm to i32
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 %i.gn, ptr %i.gp, align 4, !tbaa !12
  %i.gq = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.gr = getelementptr i8, ptr %i.gq, i64 4
  %i.gs = load i16, ptr %i.gr, align 1
  %i.gt = zext i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i32 %i.gt, ptr %i.gv, align 4, !tbaa !12
  %i.gw = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.gx = getelementptr i8, ptr %i.gw, i64 6
  %i.gy = load i16, ptr %i.gx, align 1
  %i.gz = zext i16 %i.gy to i32
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 %i.gz, ptr %i.hb, align 4, !tbaa !12
  %i.hc = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  %i.he = load i16, ptr %i.hd, align 1
  %i.hf = zext i16 %i.he to i32
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i32 %i.hf, ptr %i.hh, align 4, !tbaa !12
  %i.hi = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.hj = getelementptr i8, ptr %i.hi, i64 10
  %i.hk = load i16, ptr %i.hj, align 1
  %i.hl = zext i16 %i.hk to i32
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !12
  %i.ho = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.hp = getelementptr i8, ptr %i.ho, i64 12
  %i.hq = load i16, ptr %i.hp, align 1
  %i.hr = zext i16 %i.hq to i32
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i32 %i.hr, ptr %i.ht, align 4, !tbaa !12
  %i.hu = getelementptr i8, ptr %0, i64 %indvars.iv292
  %i.hv = getelementptr i8, ptr %i.hu, i64 14
  %i.hw = load i16, ptr %i.hv, align 1
  %i.hx = zext i16 %i.hw to i32
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !12
  %indvars.iv.next293.7 = add nsw i64 %indvars.iv292, 16 ; 2 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !43

.loopexit.loopexit:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block357, %middle.block343
  %indvars.iv.next293.lcssa = phi i64 [ %i.fv, %vec.epilog.middle.block357 ], [ %i.fg, %middle.block343 ], [ %indvars.iv.next293.lcssa361.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next293.7, %.lr.ph ]
  %i.ia = trunc nsw i64 %indvars.iv.next293.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.r, %bb.n
  %.3 = phi i32 [ %i.eu, %bb.r ], [ %i.dw, %bb.n ], [ %i.ia, %.loopexit.loopexit ] ; 2 uses
  %i.ib = sext i32 %.3 to i64
  %i.ic = getelementptr i8, ptr %0, i64 %i.ib     ; 5 uses
  %i.id = load i32, ptr %i.ic, align 1
  %39 = getelementptr i8, ptr %i.ic, i64 4
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %i.ie = getelementptr i8, ptr %i.ic, i64 5
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !13
  %i.ig = zext i8 %i.if to i32
  %42 = shl nuw nsw i32 %i.ig, 8
  %43 = or disjoint i32 %42, %41
  %i.ih = getelementptr i8, ptr %i.ic, i64 6
  %44 = load i8, ptr %i.ih, align 1, !tbaa !13
  %i.ii = zext i8 %44 to i32
  %i.ij = shl nuw nsw i32 %i.ii, 16
  %i.ik = or disjoint i32 %43, %i.ij
  %i.il = getelementptr i8, ptr %i.ic, i64 7
  %i.im = load i8, ptr %i.il, align 1, !tbaa !13
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw i32 %i.in, 24
  %i.ip = or disjoint i32 %i.ik, %i.io            ; 3 uses
  %i.iq = add nsw i32 %.3, 8                      ; 3 uses
  br i1 %.not, label %.thread, label %bb.u

.thread:                                          ; preds = %.loopexit
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds i8, ptr %0, i64 %i.ir
  call void @Ptngc_comp_huff_decompress(ptr noundef nonnull %i.is, i32 noundef %i.ip, ptr noundef %.1230) #9
  br label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.it = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite259 = call i64 @fwrite(ptr nonnull @.str.25, i64 36, i64 1, ptr %i.it) #11 ; 0 uses
  %i.iu = sext i32 %i.iq to i64
  %i.iv = getelementptr inbounds i8, ptr %0, i64 %i.iu
  call void @Ptngc_comp_huff_decompress(ptr noundef nonnull %i.iv, i32 noundef %i.ip, ptr noundef %.1230) #9
  %i.iw = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite260 = call i64 @fwrite(ptr nonnull @.str.26, i64 20, i64 1, ptr %i.iw) #11 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %i.ix = add nsw i32 %i.ip, %i.iq
  call void @Ptngc_comp_from_lz77(ptr noundef %.1234, i32 noundef %i.da, ptr noundef %.1230, i32 noundef %i.id, ptr noundef %.1232, i32 noundef %i.dv, ptr noundef %.1239, i32 noundef %i.ah) #9
  br label %bb.z

bb.w:                                             ; preds = %bb.m
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite256 = call i64 @fwrite(ptr nonnull @.str.27, i64 25, i64 1, ptr %i.iy) #11 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @Ptngc_comp_conv_from_rle(ptr noundef %.1234, ptr noundef %.1239, i32 noundef %i.ah) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %bb.y, %bb.v
  %.4 = phi i32 [ %i.ix, %bb.v ], [ %i.ds, %bb.y ], [ %i.ds, %bb.m ] ; 2 uses
  br i1 %i.bt, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.z
  %i.iz = mul nuw nsw i64 %indvars.iv302, %i.bw
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.1237, i64 %i.iz ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check315, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %index ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 96
  %wide.load = load <8 x i32>, ptr %i.ja, align 4, !tbaa !12, !alias.scope !55
  %wide.load316 = load <8 x i32>, ptr %i.jb, align 4, !tbaa !12, !alias.scope !55
  %wide.load317 = load <8 x i32>, ptr %i.jc, align 4, !tbaa !12, !alias.scope !55
  %wide.load318 = load <8 x i32>, ptr %i.jd, align 4, !tbaa !12, !alias.scope !55
  %i.je = trunc <8 x i32> %wide.load to <8 x i8>
  %i.jf = trunc <8 x i32> %wide.load316 to <8 x i8>
  %i.jg = trunc <8 x i32> %wide.load317 to <8 x i8>
  %i.jh = trunc <8 x i32> %wide.load318 to <8 x i8>
  %i.ji = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store <8 x i8> %i.je, ptr %i.ji, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  store <8 x i8> %i.jf, ptr %i.jj, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  store <8 x i8> %i.jg, ptr %i.jk, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  store <8 x i8> %i.jh, ptr %i.jl, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index320 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next322, %vec.epilog.vector.body ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %index320
  %wide.load321 = load <8 x i32>, ptr %i.jn, align 4, !tbaa !12, !alias.scope !55
  %i.jo = trunc <8 x i32> %wide.load321 to <8 x i8>
  %i.jp = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index320
  store <8 x i8> %i.jo, ptr %i.jp, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  %index.next322 = add nuw i64 %index320, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next322, %n.vec319
  br i1 %i.jq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n323, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv297.ph = phi i64 [ 0, %iter.check ], [ %n.vec319, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod365.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv297.prol = phi i64 [ %indvars.iv.next298.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv297.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv297.prol
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !12
  %i.jt = trunc i32 %i.js to i8
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv297.prol
  store i8 %i.jt, ptr %gep.prol, align 1, !tbaa !13
  %indvars.iv.next298.prol = add nuw nsw i64 %indvars.iv297.prol, 1 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !49

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv297.unr = phi i64 [ %indvars.iv297.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next298.prol, %vec.epilog.scalar.ph.prol ]
  %i.ju = sub nsw i64 %indvars.iv297.ph, %i.ch
  %i.jv = icmp ugt i64 %i.ju, -8
  br i1 %i.jv, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.z
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next303, 3
  br i1 %exitcond305.not, label %bb.aa, label %bb.i, !llvm.loop !50

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv297 = phi i64 [ %indvars.iv.next298.7, %vec.epilog.scalar.ph ], [ %indvars.iv297.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv297
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !12
  %i.jy = trunc i32 %i.jx to i8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv297
  store i8 %i.jy, ptr %gep, align 1, !tbaa !13
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !12
  %i.kb = trunc i32 %i.ka to i8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298
  store i8 %i.kb, ptr %gep.1, align 1, !tbaa !13
  %indvars.iv.next298.1 = add nuw nsw i64 %indvars.iv297, 2 ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.1
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !12
  %i.ke = trunc i32 %i.kd to i8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.1
  store i8 %i.ke, ptr %gep.2, align 1, !tbaa !13
  %indvars.iv.next298.2 = add nuw nsw i64 %indvars.iv297, 3 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.2
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !12
  %i.kh = trunc i32 %i.kg to i8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.2
  store i8 %i.kh, ptr %gep.3, align 1, !tbaa !13
  %indvars.iv.next298.3 = add nuw nsw i64 %indvars.iv297, 4 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.3
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !12
  %i.kk = trunc i32 %i.kj to i8
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.3
  store i8 %i.kk, ptr %gep.4, align 1, !tbaa !13
  %indvars.iv.next298.4 = add nuw nsw i64 %indvars.iv297, 5 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !12
  %i.kn = trunc i32 %i.km to i8
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.4
  store i8 %i.kn, ptr %gep.5, align 1, !tbaa !13
  %indvars.iv.next298.5 = add nuw nsw i64 %indvars.iv297, 6 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.5
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !12
  %i.kq = trunc i32 %i.kp to i8
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.5
  store i8 %i.kq, ptr %gep.6, align 1, !tbaa !13
  %indvars.iv.next298.6 = add nuw nsw i64 %indvars.iv297, 7 ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.6
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !12
  %i.kt = trunc i32 %i.ks to i8
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.6
  store i8 %i.kt, ptr %gep.7, align 1, !tbaa !13
  %indvars.iv.next298.7 = add nuw nsw i64 %indvars.iv297, 8 ; 2 uses
  %exitcond301.not.7 = icmp eq i64 %indvars.iv.next298.7, %wide.trip.count300
  br i1 %exitcond301.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !51

bb.aa:                                            ; preds = %._crit_edge
  br i1 %.not, label %.thread264, label %bb.ab

.thread264:                                       ; preds = %bb.aa
  call void @Ptngc_comp_conv_from_mtf_partial3(ptr noundef %.1237, i32 noundef %i.ah, ptr noundef %.1241) #9
  call void @Ptngc_comp_from_bwt(ptr noundef %.1241, i32 noundef %i.ah, i32 noundef %i.at, ptr noundef %.1243) #9
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ku = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite = call i64 @fwrite(ptr nonnull @.str.28, i64 13, i64 1, ptr %i.ku) #11 ; 0 uses
  call void @Ptngc_comp_conv_from_mtf_partial3(ptr noundef %.1237, i32 noundef %i.ah, ptr noundef %.1241) #9
  %i.kv = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite252 = call i64 @fwrite(ptr nonnull @.str.29, i64 13, i64 1, ptr %i.kv) #11 ; 0 uses
  call void @Ptngc_comp_from_bwt(ptr noundef %.1241, i32 noundef %i.ah, i32 noundef %i.at, ptr noundef %.1243) #9
end_hunk_0
