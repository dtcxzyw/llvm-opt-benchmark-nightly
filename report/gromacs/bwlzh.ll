Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bwlzh?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bwlzh_compress_gen:bb.a

bb.k:                                             ; preds = %bb.j
  call void @Ptngc_comp_to_lz77(ptr noundef nonnull %i.r, i32 noundef %i.bc, ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, ptr noundef nonnull %i.u, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.g) #9
  %i.cw = load i32, ptr %i.h, align 4, !tbaa !12
  %i.cx = icmp slt i32 %i.cw, 2
  br i1 %i.cx, label %..thread249_crit_edge, label %.critedge240

..thread249_crit_edge:                            ; preds = %bb.k
  %.pre311 = load i32, ptr %i.a, align 4, !tbaa !12
  br label %.thread249

.thread256:                                       ; preds = %bb.j
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite228 = call i64 @fwrite(ptr nonnull @.str.7, i64 5, i64 1, ptr %i.cy) #11 ; 0 uses
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !12
  call void @Ptngc_comp_to_lz77(ptr noundef nonnull %i.r, i32 noundef %i.cz, ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, ptr noundef nonnull %i.u, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.g) #9
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.db = load i32, ptr %i.f, align 4, !tbaa !12
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.da, ptr noundef nonnull @.str.8, i32 noundef %i.db) #10 ; 0 uses
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.de = load i32, ptr %i.h, align 4, !tbaa !12
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.9, i32 noundef %i.de) #10 ; 0 uses
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dh = load i32, ptr %i.g, align 4, !tbaa !12
  %i.di = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.10, i32 noundef %i.dh) #10 ; 0 uses
  %i.dj = load i32, ptr %i.h, align 4, !tbaa !12
  %i.dk = icmp slt i32 %i.dj, 2
  br i1 %i.dk, label %.thread253, label %.thread257

bb.l:                                             ; preds = %._crit_edge
  br i1 %.not, label %.thread249, label %.thread253

.thread253:                                       ; preds = %.thread256, %bb.l
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite229 = call i64 @fwrite(ptr nonnull @.str.11, i64 4, i64 1, ptr %i.dl) #11 ; 0 uses
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !12
  call void @Ptngc_comp_conv_to_rle(ptr noundef nonnull %i.r, i32 noundef %i.dm, ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, i32 noundef 1) #9
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.do = load i32, ptr %i.f, align 4, !tbaa !12
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.12, i32 noundef %i.do) #10 ; 0 uses
  br label %.thread257

.thread249:                                       ; preds = %..thread249_crit_edge, %bb.l
  %i.dq = phi i32 [ %.pre311, %..thread249_crit_edge ], [ %i.bc, %bb.l ]
  call void @Ptngc_comp_conv_to_rle(ptr noundef nonnull %i.r, i32 noundef %i.dq, ptr noundef nonnull %i.s, ptr noundef nonnull %i.f, i32 noundef 1) #9
  br label %.critedge240

.thread257:                                       ; preds = %.thread256, %.thread253
  %.sink = phi i8 [ 0, %.thread253 ], [ 1, %.thread256 ]
  %i.dr = phi i1 [ false, %.thread253 ], [ true, %.thread256 ]
  %.1247255 = phi i32 [ 0, %.thread253 ], [ 1, %.thread256 ]
  %i.ds = sext i32 %.1218279 to i64
  %i.dt = getelementptr inbounds i8, ptr %2, i64 %i.ds ; 2 uses
  store i8 %.sink, ptr %i.dt, align 1, !tbaa !13
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite230 = call i64 @fwrite(ptr nonnull @.str.13, i64 8, i64 1, ptr %i.du) #11 ; 0 uses
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.dv = load i32, ptr %i.f, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.s, i32 noundef %i.dv, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dx = load i32, ptr %i.b, align 4, !tbaa !12
  %i.dy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.14, i32 noundef %i.dx) #10 ; 0 uses
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ea = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 0) #9
  %i.eb = load i32, ptr %i.c, align 4, !tbaa !12
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ed = sub nsw i32 %i.eb, %i.ec
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.15, ptr noundef %i.ea, i32 noundef %i.ed) #10 ; 0 uses
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.eg = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 1) #9
  %i.eh = load i32, ptr %i.y, align 4, !tbaa !12
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ej = sub nsw i32 %i.eh, %i.ei
  %i.ek = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.15, ptr noundef %i.eg, i32 noundef %i.ej) #10 ; 0 uses
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.em = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 2) #9
  %i.en = load i32, ptr %i.z, align 4, !tbaa !12
  %i.eo = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ep = sub nsw i32 %i.en, %i.eo
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.15, ptr noundef %i.em, i32 noundef %i.ep) #10 ; 0 uses
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.es = load i32, ptr %i.d, align 4, !tbaa !12
  %i.et = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef %i.es) #9
  %i.eu = load i32, ptr %i.i, align 4, !tbaa !12
  %i.ev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.16, ptr noundef %i.et, i32 noundef %i.eu) #10 ; 0 uses
  br label %bb.m

.critedge240:                                     ; preds = %bb.k, %.thread249
  %.sink321 = phi i8 [ 0, %.thread249 ], [ 1, %bb.k ]
  %i.ew = phi i1 [ false, %.thread249 ], [ true, %bb.k ]
  %.1247252 = phi i32 [ 0, %.thread249 ], [ 1, %bb.k ]
  %i.ex = sext i32 %.1218279 to i64
  %i.ey = getelementptr inbounds i8, ptr %2, i64 %i.ex ; 2 uses
  store i8 %.sink321, ptr %i.ey, align 1, !tbaa !13
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.ez = load i32, ptr %i.f, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.s, i32 noundef %i.ez, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  br label %bb.m

bb.m:                                             ; preds = %.critedge240, %.thread257
  %i.fa = phi ptr [ %i.ey, %.critedge240 ], [ %i.dt, %.thread257 ] ; 2 uses
  %i.fb = phi i1 [ %i.ew, %.critedge240 ], [ %i.dr, %.thread257 ]
  %.1247251 = phi i32 [ %.1247252, %.critedge240 ], [ %.1247255, %.thread257 ]
  %i.fc = load i32, ptr %i.f, align 4, !tbaa !12
  %i.fd = getelementptr i8, ptr %i.fa, i64 1
  store i32 %i.fc, ptr %i.fd, align 1
  %i.fe = load i32, ptr %i.i, align 4, !tbaa !12  ; 3 uses
  %i.ff = getelementptr i8, ptr %i.fa, i64 5
  store i32 %i.fe, ptr %i.ff, align 1
  %i.fg = add i32 %.1218279, 9                    ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %2, i64 %i.fh
  %i.fj = sext i32 %i.fe to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr align 1 %i.p, i64 %i.fj, i1 false)
  %i.fk = add i32 %i.fe, %i.fg                    ; 5 uses
  br i1 %i.fb, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.fl = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %2, i64 %i.fm ; 2 uses
  store i32 %i.fl, ptr %i.fn, align 1
  %i.fo = add nsw i32 %i.fk, 4                    ; 3 uses
  %i.fp = icmp sgt i32 %i.fl, 0
  br i1 %i.fp, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %.critedge242, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite231 = call i64 @fwrite(ptr nonnull @.str.17, i64 20, i64 1, ptr %i.fq) #11 ; 0 uses
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.fr = load i32, ptr %i.g, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.t, i32 noundef %i.fr, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ft = load i32, ptr %i.b, align 4, !tbaa !12
  %i.fu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.14, i32 noundef %i.ft) #10 ; 0 uses
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.fw = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 0) #9
  %i.fx = load i32, ptr %i.c, align 4, !tbaa !12
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !12
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.15, ptr noundef %i.fw, i32 noundef %i.fz) #10 ; 0 uses
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gc = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 1) #9
  %i.gd = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ge = load i32, ptr %i.b, align 4, !tbaa !12
  %i.gf = sub nsw i32 %i.gd, %i.ge
  %i.gg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gb, ptr noundef nonnull @.str.15, ptr noundef %i.gc, i32 noundef %i.gf) #10 ; 0 uses
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.gi = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 2) #9
  %i.gj = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.gk = load i32, ptr %i.b, align 4, !tbaa !12
  %i.gl = sub nsw i32 %i.gj, %i.gk
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.15, ptr noundef %i.gi, i32 noundef %i.gl) #10 ; 0 uses
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.go = load i32, ptr %i.d, align 4, !tbaa !12
  %i.gp = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef %i.go) #9
  %i.gq = load i32, ptr %i.i, align 4, !tbaa !12
  %i.gr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gn, ptr noundef nonnull @.str.16, ptr noundef %i.gp, i32 noundef %i.gq) #10 ; 0 uses
  br label %bb.q

.critedge242:                                     ; preds = %bb.o
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.t, i32 noundef %i.fl, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  br label %bb.q

bb.q:                                             ; preds = %.critedge242, %bb.p
  %i.gs = load i32, ptr %i.i, align 4, !tbaa !12  ; 4 uses
  %i.gt = load i32, ptr %i.g, align 4, !tbaa !12  ; 5 uses
  %i.gu = shl nsw i32 %i.gt, 1                    ; 2 uses
  %i.gv = icmp slt i32 %i.gs, %i.gu
  br i1 %i.gv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gw = sext i32 %i.fo to i64
  %i.gx = getelementptr inbounds i8, ptr %2, i64 %i.gw
  store i8 0, ptr %i.gx, align 1, !tbaa !13
  %i.gy = getelementptr i8, ptr %i.fn, i64 5
  store i32 %i.gs, ptr %i.gy, align 1
  %i.gz = add nsw i32 %i.fk, 9                    ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %2, i64 %i.ha
  %i.hc = sext i32 %i.gs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hb, ptr align 1 %i.p, i64 %i.hc, i1 false)
  %i.hd = add nsw i32 %i.gs, %i.gz
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.he = add i32 %i.fk, 5                        ; 2 uses
  %i.hf = sext i32 %i.fo to i64
  %i.hg = getelementptr inbounds i8, ptr %2, i64 %i.hf
  store i8 1, ptr %i.hg, align 1, !tbaa !13
  %i.hh = icmp sgt i32 %i.gt, 0
  br i1 %i.hh, label %iter.check, label %._crit_edge275

iter.check:                                       ; preds = %bb.s
  %i.hi = sext i32 %i.he to i64                   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.gt to i64   ; 10 uses
  %min.iters.check = icmp ult i32 %i.gt, 8
  br i1 %min.iters.check, label %.lr.ph274.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %2, i64 %i.hi
  %i.hj = shl nuw nsw i64 %wide.trip.count, 1
  %i.hk = getelementptr i8, ptr %2, i64 %i.hj
  %scevgep324 = getelementptr i8, ptr %i.hk, i64 %i.hi
  %i.hl = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.hl
  %bound0 = icmp ult ptr %scevgep, %scevgep326
  %bound1 = icmp ult ptr %i.t, %scevgep324
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph274.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check327 = icmp ult i32 %i.gt, 32
  br i1 %min.iters.check327, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hm = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.hn = shl nuw nsw i64 %n.vec, 1
  %i.ho = add nsw i64 %i.hn, %i.hi                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hp = shl i64 %index, 1
  %i.hq = add i64 %i.hp, %i.hi                    ; 4 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 96
  %wide.load = load <8 x i32>, ptr %i.hr, align 4, !tbaa !12, !alias.scope !35 ; 2 uses
  %wide.load328 = load <8 x i32>, ptr %6, align 4, !tbaa !12, !alias.scope !35 ; 2 uses
  %wide.load.a = load <8 x i32>, ptr %7, align 4, !tbaa !12, !alias.scope !35 ; 2 uses
  %wide.load328.a = load <8 x i32>, ptr %i.hs, align 4, !tbaa !12, !alias.scope !35 ; 2 uses
  %8 = getelementptr inbounds i8, ptr %2, i64 %i.hq
  %9 = getelementptr i8, ptr %2, i64 %i.hq
  %10 = getelementptr i8, ptr %9, i64 16
  %11 = getelementptr i8, ptr %2, i64 %i.hq
  %i.ht = getelementptr i8, ptr %11, i64 32
  %i.hu = getelementptr i8, ptr %2, i64 %i.hq
  %i.hv = getelementptr i8, ptr %i.hu, i64 48
  %12 = lshr <8 x i32> %wide.load, splat (i32 8)
  %13 = lshr <8 x i32> %wide.load328, splat (i32 8)
  %i.hw = lshr <8 x i32> %wide.load.a, splat (i32 8)
  %i.hx = lshr <8 x i32> %wide.load328.a, splat (i32 8)
  %14 = shufflevector <8 x i32> %wide.load, <8 x i32> %12, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i32> %14 to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %8, align 1, !tbaa !13, !alias.scope !36, !noalias !35
  %15 = shufflevector <8 x i32> %wide.load328, <8 x i32> %13, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec331 = trunc <16 x i32> %15 to <16 x i8>
  store <16 x i8> %interleaved.vec331, ptr %10, align 1, !tbaa !13, !alias.scope !36, !noalias !35
  %i.hy = shufflevector <8 x i32> %wide.load.a, <8 x i32> %i.hw, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec.a = trunc <16 x i32> %i.hy to <16 x i8>
  store <16 x i8> %interleaved.vec.a, ptr %i.ht, align 1, !tbaa !13, !alias.scope !36, !noalias !35
  %i.hz = shufflevector <8 x i32> %wide.load328.a, <8 x i32> %i.hx, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec329 = trunc <16 x i32> %i.hz to <16 x i8>
  store <16 x i8> %interleaved.vec329, ptr %i.hv, align 1, !tbaa !13, !alias.scope !36, !noalias !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge275.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph274.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec330 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.ib = shl nuw nsw i64 %n.vec330, 1
  %i.ic = add nsw i64 %i.ib, %i.hi                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.hi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index331 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next334, %vec.epilog.vector.body ] ; 3 uses
  %i.id = shl i64 %index331, 1
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index331
  %wide.load336 = load <8 x i32>, ptr %i.ie, align 4, !tbaa !12, !alias.scope !35 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.id
  %16 = lshr <8 x i32> %wide.load336, splat (i32 8)
  %17 = shufflevector <8 x i32> %wide.load336, <8 x i32> %16, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec337 = trunc <16 x i32> %17 to <16 x i8>
  store <16 x i8> %interleaved.vec337, ptr %gep, align 1, !tbaa !13, !alias.scope !36, !noalias !35
  %index.next334 = add nuw i64 %index331, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next334, %n.vec330
  br i1 %i.if, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n335 = icmp eq i64 %n.vec330, %wide.trip.count
  br i1 %cmp.n335, label %._crit_edge275.loopexit, label %.lr.ph274.preheader

.lr.ph274.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv301.ph = phi i64 [ %i.hi, %iter.check ], [ %i.hi, %vector.memcheck ], [ %i.ho, %vec.epilog.iter.check ], [ %i.ic, %vec.epilog.middle.block ] ; 2 uses
  %indvars.iv299.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec330, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph274.prol.loopexit, label %.lr.ph274.prol

.lr.ph274.prol:                                   ; preds = %.lr.ph274.preheader, %.lr.ph274.prol
  %indvars.iv301.prol = phi i64 [ %indvars.iv.next302.prol, %.lr.ph274.prol ], [ %indvars.iv301.ph, %.lr.ph274.preheader ] ; 2 uses
  %indvars.iv299.prol = phi i64 [ %indvars.iv.next300.prol, %.lr.ph274.prol ], [ %indvars.iv299.ph, %.lr.ph274.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph274.prol ], [ 0, %.lr.ph274.preheader ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv299.prol ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !12
  %i.ii = trunc i32 %i.ih to i8
  %i.ij = getelementptr inbounds i8, ptr %2, i64 %indvars.iv301.prol ; 2 uses
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !13
  %i.ik = load i32, ptr %i.ig, align 4, !tbaa !12
  %i.il = lshr i32 %i.ik, 8
  %i.im = trunc i32 %i.il to i8
  %indvars.iv.next302.prol = add nsw i64 %indvars.iv301.prol, 2 ; 3 uses
  %i.in = getelementptr i8, ptr %i.ij, i64 1
  store i8 %i.im, ptr %i.in, align 1, !tbaa !13
  %indvars.iv.next300.prol = add nuw nsw i64 %indvars.iv299.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph274.prol.loopexit, label %.lr.ph274.prol, !llvm.loop !30

.lr.ph274.prol.loopexit:                          ; preds = %.lr.ph274.prol, %.lr.ph274.preheader
  %indvars.iv.next302.lcssa373.unr = phi i64 [ poison, %.lr.ph274.preheader ], [ %indvars.iv.next302.prol, %.lr.ph274.prol ]
  %indvars.iv301.unr = phi i64 [ %indvars.iv301.ph, %.lr.ph274.preheader ], [ %indvars.iv.next302.prol, %.lr.ph274.prol ]
  %indvars.iv299.unr = phi i64 [ %indvars.iv299.ph, %.lr.ph274.preheader ], [ %indvars.iv.next300.prol, %.lr.ph274.prol ]
  %i.io = sub nsw i64 %indvars.iv299.ph, %wide.trip.count
  %i.ip = icmp ugt i64 %i.io, -4
  br i1 %i.ip, label %._crit_edge275.loopexit, label %.lr.ph274

.lr.ph274:                                        ; preds = %.lr.ph274.prol.loopexit, %.lr.ph274
  %indvars.iv301 = phi i64 [ %indvars.iv.next302.3, %.lr.ph274 ], [ %indvars.iv301.unr, %.lr.ph274.prol.loopexit ] ; 5 uses
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.3, %.lr.ph274 ], [ %indvars.iv299.unr, %.lr.ph274.prol.loopexit ] ; 5 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv299 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !12
  %i.is = trunc i32 %i.ir to i8
  %i.it = getelementptr inbounds i8, ptr %2, i64 %indvars.iv301 ; 2 uses
  store i8 %i.is, ptr %i.it, align 1, !tbaa !13
  %i.iu = load i32, ptr %i.iq, align 4, !tbaa !12
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = trunc i32 %i.iv to i8
  %i.ix = getelementptr i8, ptr %i.it, i64 1
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !13
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv299
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !12
  %i.jb = trunc i32 %i.ja to i8
  %i.jc = getelementptr i8, ptr %2, i64 %indvars.iv301 ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 2
  store i8 %i.jb, ptr %i.jd, align 1, !tbaa !13
  %i.je = load i32, ptr %i.iz, align 4, !tbaa !12
  %i.jf = lshr i32 %i.je, 8
  %i.jg = trunc i32 %i.jf to i8
  %i.jh = getelementptr i8, ptr %i.jc, i64 3
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !13
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv299
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !12
  %i.jl = trunc i32 %i.jk to i8
  %i.jm = getelementptr i8, ptr %2, i64 %indvars.iv301 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 4
  store i8 %i.jl, ptr %i.jn, align 1, !tbaa !13
  %i.jo = load i32, ptr %i.jj, align 4, !tbaa !12
  %i.jp = lshr i32 %i.jo, 8
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = getelementptr i8, ptr %i.jm, i64 5
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !13
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv299
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 12 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !12
  %i.jv = trunc i32 %i.ju to i8
  %i.jw = getelementptr i8, ptr %2, i64 %indvars.iv301 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 6
  store i8 %i.jv, ptr %i.jx, align 1, !tbaa !13
  %i.jy = load i32, ptr %i.jt, align 4, !tbaa !12
  %i.jz = lshr i32 %i.jy, 8
  %i.ka = trunc i32 %i.jz to i8
  %indvars.iv.next302.3 = add nsw i64 %indvars.iv301, 8 ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jw, i64 7
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !13
  %indvars.iv.next300.3 = add nuw nsw i64 %indvars.iv299, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next300.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge275.loopexit, label %.lr.ph274, !llvm.loop !31

._crit_edge275.loopexit:                          ; preds = %.lr.ph274.prol.loopexit, %.lr.ph274, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next302.lcssa = phi i64 [ %i.ic, %vec.epilog.middle.block ], [ %i.ho, %middle.block ], [ %indvars.iv.next302.lcssa373.unr, %.lr.ph274.prol.loopexit ], [ %indvars.iv.next302.3, %.lr.ph274 ]
  %i.kc = trunc nsw i64 %indvars.iv.next302.lcssa to i32
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit, %bb.s
  %.2.lcssa = phi i32 [ %i.he, %bb.s ], [ %i.kc, %._crit_edge275.loopexit ] ; 2 uses
  br i1 %.not, label %.critedge244, label %.thread263

.thread263:                                       ; preds = %._crit_edge275
  %i.kd = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ke = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kd, ptr noundef nonnull @.str.18, i32 noundef %i.gu) #10 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.n
  %.3 = phi i32 [ %i.hd, %bb.r ], [ %i.fo, %bb.n ] ; 2 uses
  br i1 %.not, label %.critedge244, label %bb.u

bb.u:                                             ; preds = %.thread263, %bb.t
  %.3265 = phi i32 [ %.2.lcssa, %.thread263 ], [ %.3, %bb.t ]
  %i.kf = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite232 = call i64 @fwrite(ptr nonnull @.str.19, i64 20, i64 1, ptr %i.kf) #11 ; 0 uses
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.kg = load i32, ptr %i.h, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.u, i32 noundef %i.kg, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  %i.kh = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ki = load i32, ptr %i.b, align 4, !tbaa !12
  %i.kj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kh, ptr noundef nonnull @.str.14, i32 noundef %i.ki) #10 ; 0 uses
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.kl = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 0) #9
  %i.km = load i32, ptr %i.c, align 4, !tbaa !12
  %i.kn = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ko = sub nsw i32 %i.km, %i.kn
  %i.kp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kk, ptr noundef nonnull @.str.15, ptr noundef %i.kl, i32 noundef %i.ko) #10 ; 0 uses
  %i.kq = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.kr = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 1) #9
  %i.ks = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.kt = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ku = sub nsw i32 %i.ks, %i.kt
  %i.kv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kq, ptr noundef nonnull @.str.15, ptr noundef %i.kr, i32 noundef %i.ku) #10 ; 0 uses
  %i.kw = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.kx = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef 2) #9
  %i.ky = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.kz = load i32, ptr %i.b, align 4, !tbaa !12
  %i.la = sub nsw i32 %i.ky, %i.kz
  %i.lb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kw, ptr noundef nonnull @.str.15, ptr noundef %i.kx, i32 noundef %i.la) #10 ; 0 uses
  %i.lc = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ld = load i32, ptr %i.d, align 4, !tbaa !12
  %i.le = call ptr @Ptngc_comp_get_huff_algo_name(i32 noundef %i.ld) #9
  %i.lf = load i32, ptr %i.i, align 4, !tbaa !12
  %i.lg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lc, ptr noundef nonnull @.str.16, ptr noundef %i.le, i32 noundef %i.lf) #10 ; 0 uses
  br label %bb.v

.critedge244:                                     ; preds = %._crit_edge275, %bb.t
  %.3262 = phi i32 [ %.3, %bb.t ], [ %.2.lcssa, %._crit_edge275 ]
  store i32 -1, ptr %i.d, align 4, !tbaa !12
  %i.lh = load i32, ptr %i.h, align 4, !tbaa !12
  call void @Ptngc_comp_huff_compress_verbose(ptr noundef nonnull %i.u, i32 noundef %i.lh, ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9
  br label %bb.v

bb.v:                                             ; preds = %.critedge244, %bb.u
  %.3261 = phi i32 [ %.3262, %.critedge244 ], [ %.3265, %bb.u ] ; 2 uses
  %i.li = load i32, ptr %i.h, align 4, !tbaa !12
  %i.lj = sext i32 %.3261 to i64
  %i.lk = getelementptr inbounds i8, ptr %2, i64 %i.lj ; 2 uses
  store i32 %i.li, ptr %i.lk, align 1
  %i.ll = load i32, ptr %i.i, align 4, !tbaa !12  ; 3 uses
  %i.lm = getelementptr i8, ptr %i.lk, i64 4
  store i32 %i.ll, ptr %i.lm, align 1
  %i.ln = add nsw i32 %.3261, 8                   ; 2 uses
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds i8, ptr %2, i64 %i.lo
  %i.lq = sext i32 %i.ll to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lp, ptr align 1 %i.p, i64 %i.lq, i1 false)
  %i.lr = add nsw i32 %i.ll, %i.ln
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.v
  %.4 = phi i32 [ %i.lr, %bb.v ], [ %i.fk, %bb.m ] ; 3 uses
  %i.ls = add nuw nsw i32 %.0222278, 1            ; 2 uses
  %exitcond310.not = icmp eq i32 %i.ls, 3
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
end_hunk_0
begin_hunk_1_@bwlzh_decompress_gen:bb.a
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
  %wide.load338 = load <8 x i16>, ptr %gep370, align 1, !alias.scope !53
  %wide.load339 = load <8 x i16>, ptr %i.gr, align 1, !alias.scope !53
  %wide.load340 = load <8 x i16>, ptr %i.gs, align 1, !alias.scope !53
  %wide.load341 = load <8 x i16>, ptr %i.gt, align 1, !alias.scope !53
  %i.gu = zext <8 x i16> %wide.load338 to <8 x i32>
  %i.gv = zext <8 x i16> %wide.load339 to <8 x i32>
  %i.gw = zext <8 x i16> %wide.load340 to <8 x i32>
  %i.gx = zext <8 x i16> %wide.load341 to <8 x i32>
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %index337 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 96
  store <8 x i32> %i.gu, ptr %i.gy, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  store <8 x i32> %i.gv, ptr %i.gz, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  store <8 x i32> %i.gw, ptr %i.ha, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  store <8 x i32> %i.gx, ptr %i.hb, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %index.next342 = add nuw i64 %index337, 32      ; 2 uses
  %i.hc = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.hc, label %middle.block343, label %vector.body336, !llvm.loop !40

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
  %wide.load355 = load <8 x i16>, ptr %gep372, align 1, !alias.scope !53
  %i.hg = zext <8 x i16> %wide.load355 to <8 x i32>
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %index354
  store <8 x i32> %i.hg, ptr %i.hh, align 4, !tbaa !12, !alias.scope !54, !noalias !53
  %index.next356 = add nuw i64 %index354, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next356, %n.vec352
  br i1 %i.hi, label %vec.epilog.middle.block357, label %vec.epilog.vector.body353, !llvm.loop !41

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !42

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
  br i1 %exitcond.not.7, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !43

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
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds i8, ptr %0, i64 %i.kg
  call void @Ptngc_comp_huff_decompress(ptr noundef nonnull %i.kh, i32 noundef %i.ke, ptr noundef %.1230) #9
  br label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite259 = call i64 @fwrite(ptr nonnull @.str.25, i64 36, i64 1, ptr %i.ki) #11 ; 0 uses
  %i.kj = sext i32 %i.kf to i64
  %i.kk = getelementptr inbounds i8, ptr %0, i64 %i.kj
  call void @Ptngc_comp_huff_decompress(ptr noundef nonnull %i.kk, i32 noundef %i.ke, ptr noundef %.1230) #9
  %i.kl = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite260 = call i64 @fwrite(ptr nonnull @.str.26, i64 20, i64 1, ptr %i.kl) #11 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %i.km = add nsw i32 %i.ke, %i.kf
  call void @Ptngc_comp_from_lz77(ptr noundef %.1234, i32 noundef %i.dw, ptr noundef %.1230, i32 noundef %i.jm, ptr noundef %.1232, i32 noundef %i.ex, ptr noundef %.1239, i32 noundef %i.an) #9
  br label %bb.z

bb.w:                                             ; preds = %bb.m
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kn = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite256 = call i64 @fwrite(ptr nonnull @.str.27, i64 25, i64 1, ptr %i.kn) #11 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @Ptngc_comp_conv_from_rle(ptr noundef %.1234, ptr noundef %.1239, i32 noundef %i.an) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %bb.y, %bb.v
  %.4 = phi i32 [ %i.km, %bb.v ], [ %i.eu, %bb.y ], [ %i.eu, %bb.m ] ; 2 uses
  br i1 %i.cf, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.z
  %i.ko = mul nuw nsw i64 %indvars.iv302, %i.cj
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.1237, i64 %i.ko ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check315, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %index ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 96
  %wide.load = load <8 x i32>, ptr %i.kp, align 4, !tbaa !12, !alias.scope !55
  %wide.load316 = load <8 x i32>, ptr %i.kq, align 4, !tbaa !12, !alias.scope !55
  %wide.load317 = load <8 x i32>, ptr %i.kr, align 4, !tbaa !12, !alias.scope !55
  %wide.load318 = load <8 x i32>, ptr %i.ks, align 4, !tbaa !12, !alias.scope !55
  %i.kt = trunc <8 x i32> %wide.load to <8 x i8>
  %i.ku = trunc <8 x i32> %wide.load316 to <8 x i8>
  %i.kv = trunc <8 x i32> %wide.load317 to <8 x i8>
  %i.kw = trunc <8 x i32> %wide.load318 to <8 x i8>
  %i.kx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store <8 x i8> %i.kt, ptr %i.kx, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  store <8 x i8> %i.ku, ptr %i.ky, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  store <8 x i8> %i.kv, ptr %i.kz, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  store <8 x i8> %i.kw, ptr %i.la, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index320 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next322, %vec.epilog.vector.body ] ; 3 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %index320
  %wide.load321 = load <8 x i32>, ptr %i.lc, align 4, !tbaa !12, !alias.scope !55
  %i.ld = trunc <8 x i32> %wide.load321 to <8 x i8>
  %i.le = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index320
  store <8 x i8> %i.ld, ptr %i.le, align 1, !tbaa !13, !alias.scope !56, !noalias !55
  %index.next322 = add nuw i64 %index320, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next322, %n.vec319
  br i1 %i.lf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n323, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv297.ph = phi i64 [ 0, %iter.check ], [ %n.vec319, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod365.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv297.prol = phi i64 [ %indvars.iv.next298.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv297.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv297.prol
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !12
  %i.li = trunc i32 %i.lh to i8
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv297.prol
  store i8 %i.li, ptr %gep.prol, align 1, !tbaa !13
  %indvars.iv.next298.prol = add nuw nsw i64 %indvars.iv297.prol, 1 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !49

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv297.unr = phi i64 [ %indvars.iv297.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next298.prol, %vec.epilog.scalar.ph.prol ]
  %i.lj = sub nsw i64 %indvars.iv297.ph, %i.cx
  %i.lk = icmp ugt i64 %i.lj, -8
  br i1 %i.lk, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.z
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next303, 3
  br i1 %exitcond305.not, label %bb.aa, label %bb.i, !llvm.loop !50

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv297 = phi i64 [ %indvars.iv.next298.7, %vec.epilog.scalar.ph ], [ %indvars.iv297.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv297
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !12
  %i.ln = trunc i32 %i.lm to i8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv297
  store i8 %i.ln, ptr %gep, align 1, !tbaa !13
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !12
  %i.lq = trunc i32 %i.lp to i8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298
  store i8 %i.lq, ptr %gep.1, align 1, !tbaa !13
  %indvars.iv.next298.1 = add nuw nsw i64 %indvars.iv297, 2 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.1
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !12
  %i.lt = trunc i32 %i.ls to i8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.1
  store i8 %i.lt, ptr %gep.2, align 1, !tbaa !13
  %indvars.iv.next298.2 = add nuw nsw i64 %indvars.iv297, 3 ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.2
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !12
  %i.lw = trunc i32 %i.lv to i8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.2
  store i8 %i.lw, ptr %gep.3, align 1, !tbaa !13
  %indvars.iv.next298.3 = add nuw nsw i64 %indvars.iv297, 4 ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.3
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !12
  %i.lz = trunc i32 %i.ly to i8
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.3
  store i8 %i.lz, ptr %gep.4, align 1, !tbaa !13
  %indvars.iv.next298.4 = add nuw nsw i64 %indvars.iv297, 5 ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !12
  %i.mc = trunc i32 %i.mb to i8
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.4
  store i8 %i.mc, ptr %gep.5, align 1, !tbaa !13
  %indvars.iv.next298.5 = add nuw nsw i64 %indvars.iv297, 6 ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.5
  %i.me = load i32, ptr %i.md, align 4, !tbaa !12
  %i.mf = trunc i32 %i.me to i8
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.5
  store i8 %i.mf, ptr %gep.6, align 1, !tbaa !13
  %indvars.iv.next298.6 = add nuw nsw i64 %indvars.iv297, 7 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1239, i64 %indvars.iv.next298.6
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !12
  %i.mi = trunc i32 %i.mh to i8
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next298.6
  store i8 %i.mi, ptr %gep.7, align 1, !tbaa !13
  %indvars.iv.next298.7 = add nuw nsw i64 %indvars.iv297, 8 ; 2 uses
  %exitcond301.not.7 = icmp eq i64 %indvars.iv.next298.7, %wide.trip.count300
  br i1 %exitcond301.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !51

bb.aa:                                            ; preds = %._crit_edge
  br i1 %.not, label %.thread264, label %bb.ab

.thread264:                                       ; preds = %bb.aa
  call void @Ptngc_comp_conv_from_mtf_partial3(ptr noundef %.1237, i32 noundef %i.an, ptr noundef %.1241) #9
  call void @Ptngc_comp_from_bwt(ptr noundef %.1241, i32 noundef %i.an, i32 noundef %i.bf, ptr noundef %.1243) #9
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mj = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite = call i64 @fwrite(ptr nonnull @.str.28, i64 13, i64 1, ptr %i.mj) #11 ; 0 uses
  call void @Ptngc_comp_conv_from_mtf_partial3(ptr noundef %.1237, i32 noundef %i.an, ptr noundef %.1241) #9
  %i.mk = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite252 = call i64 @fwrite(ptr nonnull @.str.29, i64 13, i64 1, ptr %i.mk) #11 ; 0 uses
  call void @Ptngc_comp_from_bwt(ptr noundef %.1241, i32 noundef %i.an, i32 noundef %i.bf, ptr noundef %.1243) #9
  %i.ml = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite253 = call i64 @fwrite(ptr nonnull @.str.30, i64 28, i64 1, ptr %i.ml) #11 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread264, %bb.ab
  %i.mm = sext i32 %.0225283 to i64
  %i.mn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.mm
  call void @Ptngc_comp_conv_from_vals16(ptr noundef %.1243, i32 noundef %i.an, ptr noundef %i.mn, ptr noundef nonnull %i.a) #9
  %i.mo = load i32, ptr %i.a, align 4, !tbaa !12
  %.not254 = icmp eq i32 %i.mo, %i.u
  br i1 %.not254, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite255 = call i64 @fwrite(ptr nonnull @.str.31, i64 65, i64 1, ptr %i.mp) #11 ; 0 uses
  call void @exit(i32 noundef 1) #12
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.mq = add nsw i32 %i.u, %.0225283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not251 = icmp eq i32 %i.v, 0
  br i1 %.not251, label %._crit_edge287, label %.lr.ph286, !llvm.loop !52

._crit_edge287:                                   ; preds = %bb.ae, %.preheader
  %.0236.lcssa = phi ptr [ %i.n, %.preheader ], [ %.1237, %bb.ae ]
  %.0222.lcssa = phi ptr [ %i.d, %.preheader ], [ %.1, %bb.ae ]
  call void @free(ptr noundef %i.c) #9
  call void @free(ptr noundef %i.b) #9
  call void @free(ptr noundef %i.h) #9
  call void @free(ptr noundef %.0236.lcssa) #9
  call void @free(ptr noundef %.0222.lcssa) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @bwlzh_decompress_verbose(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @bwlzh_decompress_gen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @Ptngc_warnmalloc_x(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Ptngc_comp_huff_buflen(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @Ptngc_comp_conv_to_vals16(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Ptngc_comp_to_bwt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Ptngc_comp_conv_to_mtf_partial3(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @Ptngc_comp_to_lz77(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Ptngc_comp_conv_to_rle(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Ptngc_comp_huff_compress_verbose(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Ptngc_comp_get_huff_algo_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare ptr @Ptngc_warnrealloc_x(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Ptngc_comp_huff_decompress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @Ptngc_comp_from_lz77(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Ptngc_comp_conv_from_rle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Ptngc_comp_conv_from_mtf_partial3(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @Ptngc_comp_from_bwt(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @Ptngc_comp_conv_from_vals16(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!5, !5, i64 0}
!13 = !{!4, !4, i64 0}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 8, i32 24}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !11, !14, !15}
!23 = distinct !{!23, !11, !14, !15}
!24 = distinct !{!24, !11, !14}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !11, !14, !15}
!29 = distinct !{!29, !11, !14, !15}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !11, !14}
!32 = distinct !{!32, !11}
!33 = !{!20}
!34 = !{!21}
!35 = !{!26}
!36 = !{!27}
!37 = distinct !{!37, i1 false, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !11, !14, !15}
!41 = distinct !{!41, !11, !14, !15}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !11, !14}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !11, !14, !15}
!48 = distinct !{!48, !11, !14, !15}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11, !14}
!52 = distinct !{!52, !11}
!53 = !{!38}
!54 = !{!39}
!55 = !{!45}
!56 = !{!46}
end_hunk_1
